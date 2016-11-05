-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 16, 2016 at 05:58 PM
-- Server version: 5.6.21
-- PHP Version: 5.5.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


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
`meta_id` bigint(20) unsigned NOT NULL,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ofs2616_2_comments`
--

CREATE TABLE IF NOT EXISTS `ofs2616_2_comments` (
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
-- Dumping data for table `ofs2616_2_comments`
--

INSERT INTO `ofs2616_2_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Mr WordPress', '', 'http://localhost/onefabshop/', '', '2016-03-12 03:01:56', '2016-03-12 03:01:56', 'Hi, this is a comment.\nTo delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ofs2616_2_ewwwio_images`
--

CREATE TABLE IF NOT EXISTS `ofs2616_2_ewwwio_images` (
`id` mediumint(9) NOT NULL,
  `path` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_md5` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `results` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gallery` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_size` int(10) unsigned DEFAULT NULL,
  `orig_size` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=475 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ofs2616_2_ewwwio_images`
--

INSERT INTO `ofs2616_2_ewwwio_images` (`id`, `path`, `image_md5`, `results`, `gallery`, `image_size`, `orig_size`) VALUES
(1, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952275670.jpg', NULL, 'No savings', NULL, 25074, 25074),
(2, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952275670-150x150.jpg', NULL, 'Reduced by 12.4% (473.0&nbsp;B)', NULL, 3336, 3809),
(3, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952275670-205x300.jpg', NULL, 'Reduced by 9.6% (745.0&nbsp;B)', NULL, 7056, 7801),
(4, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952275670-699x1024.jpg', NULL, 'Reduced by 6.0% (3.5&nbsp;kB)', NULL, 56407, 59992),
(5, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952275670-180x180.jpg', NULL, 'Reduced by 10.7% (551.0&nbsp;B)', NULL, 4578, 5129),
(6, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952275670-300x300.jpg', NULL, 'Reduced by 6.6% (812.0&nbsp;B)', NULL, 11495, 12307),
(7, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952275670-600x600.jpg', NULL, 'Reduced by 4.4% (1.6&nbsp;kB)', NULL, 36026, 37684),
(8, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952275670-520x260.jpg', NULL, 'Reduced by 3.5% (698.0&nbsp;B)', NULL, 19305, 20003),
(9, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952275670-520x520.jpg', NULL, 'Reduced by 4.6% (1.4&nbsp;kB)', NULL, 28881, 30278),
(10, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952275670-290x260.jpg', NULL, 'Reduced by 6.8% (747.0&nbsp;B)', NULL, 10192, 10939),
(11, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952275670-70x70.jpg', NULL, 'Reduced by 23.7% (394.0&nbsp;B)', NULL, 1265, 1659),
(12, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952284617.jpg', NULL, 'No savings', NULL, 74455, 74455),
(13, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952284617-150x150.jpg', NULL, 'Reduced by 9.7% (1.1&nbsp;kB)', NULL, 10096, 11179),
(14, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952284617-176x300.jpg', NULL, 'Reduced by 8.6% (1.8&nbsp;kB)', NULL, 19191, 20998),
(15, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952284617-601x1024.jpg', NULL, 'Reduced by 6.4% (7.7&nbsp;kB)', NULL, 115381, 123310),
(16, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952284617-180x180.jpg', NULL, 'Reduced by 9.1% (1.3&nbsp;kB)', NULL, 13575, 14933),
(17, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952284617-300x300.jpg', NULL, 'Reduced by 8.3% (2.4&nbsp;kB)', NULL, 27608, 30108),
(18, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952284617-600x600.jpg', NULL, 'Reduced by 6.7% (5.1&nbsp;kB)', NULL, 72411, 77587),
(19, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952284617-520x260.jpg', NULL, 'Reduced by 6.7% (2.0&nbsp;kB)', NULL, 28747, 30814),
(20, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952284617-520x520.jpg', NULL, 'Reduced by 7.0% (4.4&nbsp;kB)', NULL, 59062, 63533),
(21, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952284617-290x260.jpg', NULL, 'Reduced by 8.5% (2.2&nbsp;kB)', NULL, 23939, 26151),
(22, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952284617-70x70.jpg', NULL, 'Reduced by 11.7% (434.0&nbsp;B)', NULL, 3285, 3719),
(23, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952291056.jpg', NULL, 'No savings', NULL, 37062, 37062),
(24, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952291056-150x150.jpg', NULL, 'Reduced by 9.0% (535.0&nbsp;B)', NULL, 5437, 5972),
(25, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952291056-189x300.jpg', NULL, 'Reduced by 5.7% (668.0&nbsp;B)', NULL, 11106, 11774),
(26, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952291056-647x1024.jpg', NULL, 'Reduced by 4.1% (2.9&nbsp;kB)', NULL, 68466, 71404),
(27, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952291056-180x180.jpg', NULL, 'Reduced by 7.5% (574.0&nbsp;B)', NULL, 7122, 7696),
(28, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952291056-300x300.jpg', NULL, 'Reduced by 4.9% (789.0&nbsp;B)', NULL, 15158, 15947),
(29, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952291056-600x600.jpg', NULL, 'Reduced by 4.4% (1.9&nbsp;kB)', NULL, 42320, 44249),
(30, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952291056-520x260.jpg', NULL, 'Reduced by 4.5% (783.0&nbsp;B)', NULL, 16427, 17210),
(31, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952291056-520x520.jpg', NULL, 'Reduced by 4.3% (1.5&nbsp;kB)', NULL, 33961, 35492),
(32, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952291056-290x260.jpg', NULL, 'Reduced by 5.0% (676.0&nbsp;B)', NULL, 12733, 13409),
(33, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952291056-70x70.jpg', NULL, 'Reduced by 17.3% (426.0&nbsp;B)', NULL, 2036, 2462),
(34, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952295961.jpg', NULL, 'No savings', NULL, 31050, 31050),
(35, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952295961-150x150.jpg', NULL, 'Reduced by 10.5% (486.0&nbsp;B)', NULL, 4144, 4630),
(36, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952295961-202x300.jpg', NULL, 'Reduced by 8.3% (776.0&nbsp;B)', NULL, 8616, 9392),
(37, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952295961-691x1024.jpg', NULL, 'Reduced by 5.1% (3.5&nbsp;kB)', NULL, 66863, 70469),
(38, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952295961-180x180.jpg', NULL, 'Reduced by 9.4% (620.0&nbsp;B)', NULL, 5988, 6608),
(39, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952295961-300x300.jpg', NULL, 'Reduced by 7.2% (1.1&nbsp;kB)', NULL, 14630, 15766),
(40, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952295961-600x600.jpg', NULL, 'Reduced by 3.8% (1.8&nbsp;kB)', NULL, 46639, 48498),
(41, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952295961-520x260.jpg', NULL, 'Reduced by 3.6% (884.0&nbsp;B)', NULL, 23505, 24389),
(42, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952295961-520x520.jpg', NULL, 'Reduced by 3.9% (1.5&nbsp;kB)', NULL, 37059, 38571),
(43, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952295961-290x260.jpg', NULL, 'Reduced by 7.7% (1.0&nbsp;kB)', NULL, 12860, 13931),
(44, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952295961-70x70.jpg', NULL, 'Reduced by 20.9% (406.0&nbsp;B)', NULL, 1532, 1938),
(45, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/Unknown-52.jpg', NULL, 'Reduced by 24.9% (2.8&nbsp;kB)', NULL, 8540, 11365),
(46, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/Unknown-52-150x150.jpg', NULL, 'Reduced by 9.4% (439.0&nbsp;B)', NULL, 4247, 4686),
(47, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/Unknown-52-300x137.jpg', NULL, 'Reduced by 7.5% (505.0&nbsp;B)', NULL, 6190, 6695),
(48, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/Unknown-52-180x180.jpg', NULL, 'Reduced by 8.3% (496.0&nbsp;B)', NULL, 5456, 5952),
(49, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/Unknown-52-300x238.jpg', NULL, 'Reduced by 8.5% (803.0&nbsp;B)', NULL, 8685, 9488),
(50, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/Unknown-52-520x238.jpg', NULL, 'Reduced by 25.0% (2.8&nbsp;kB)', NULL, 8554, 11401),
(51, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/Unknown-52-290x238.jpg', NULL, 'Reduced by 8.7% (806.0&nbsp;B)', NULL, 8453, 9259),
(52, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/Unknown-52-70x70.jpg', NULL, 'Reduced by 20.0% (380.0&nbsp;B)', NULL, 1516, 1896),
(53, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/bags.jpg', NULL, 'Reduced by 6.9% (842.0&nbsp;B)', NULL, 11365, 12207),
(54, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/bags-150x150.jpg', NULL, 'Reduced by 8.1% (502.0&nbsp;B)', NULL, 5693, 6195),
(55, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/bags-300x138.jpg', NULL, 'Reduced by 7.3% (638.0&nbsp;B)', NULL, 8053, 8691),
(56, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/bags-180x174.jpg', NULL, 'Reduced by 6.9% (555.0&nbsp;B)', NULL, 7541, 8096),
(57, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/bags-300x174.jpg', NULL, 'Reduced by 6.8% (758.0&nbsp;B)', NULL, 10446, 11204),
(58, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/bags-290x174.jpg', NULL, 'Reduced by 6.8% (743.0&nbsp;B)', NULL, 10139, 10882),
(59, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/bags-70x70.jpg', NULL, 'Reduced by 16.6% (420.0&nbsp;B)', NULL, 2114, 2534),
(60, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/guess-banner.jpg', NULL, 'Reduced by 0.7% (1.7&nbsp;kB)', NULL, 237789, 239490),
(61, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/guess-banner-150x150.jpg', NULL, 'Reduced by 6.3% (447.0&nbsp;B)', NULL, 6679, 7126),
(62, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/guess-banner-300x127.jpg', NULL, 'Reduced by 7.3% (1.0&nbsp;kB)', NULL, 12946, 13970),
(63, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/guess-banner-768x326.jpg', NULL, 'Reduced by 5.8% (3.7&nbsp;kB)', NULL, 60842, 64597),
(64, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/guess-banner-1024x434.jpg', NULL, 'Reduced by 5.3% (5.4&nbsp;kB)', NULL, 97798, 103307),
(65, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/guess-banner-180x180.jpg', NULL, 'Reduced by 5.3% (496.0&nbsp;B)', NULL, 8891, 9387),
(66, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/guess-banner-300x300.jpg', NULL, 'Reduced by 5.1% (1.0&nbsp;kB)', NULL, 19895, 20957),
(67, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/guess-banner-600x600.jpg', NULL, 'Reduced by 4.1% (2.5&nbsp;kB)', NULL, 60196, 62770),
(68, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/guess-banner-520x260.jpg', NULL, 'Reduced by 5.9% (2.2&nbsp;kB)', NULL, 36231, 38518),
(69, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/guess-banner-520x520.jpg', NULL, 'Reduced by 4.6% (2.2&nbsp;kB)', NULL, 48102, 50399),
(70, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/guess-banner-290x260.jpg', NULL, 'Reduced by 4.9% (925.0&nbsp;B)', NULL, 18122, 19047),
(71, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/guess-banner-70x70.jpg', NULL, 'Reduced by 14.6% (379.0&nbsp;B)', NULL, 2211, 2590),
(72, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/women-img.jpg', NULL, 'Reduced by 16.1% (3.5&nbsp;kB)', NULL, 18629, 22207),
(73, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/women-img-150x150.jpg', NULL, 'Reduced by 7.2% (545.0&nbsp;B)', NULL, 7031, 7576),
(74, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/women-img-300x293.jpg', NULL, 'Reduced by 5.9% (1.2&nbsp;kB)', NULL, 19501, 20719),
(75, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/women-img-180x180.jpg', NULL, 'Reduced by 6.9% (684.0&nbsp;B)', NULL, 9294, 9978),
(76, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/women-img-300x300.jpg', NULL, 'Reduced by 5.9% (1.2&nbsp;kB)', NULL, 19944, 21195),
(77, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/women-img-520x260.jpg', NULL, 'Reduced by 5.9% (1.6&nbsp;kB)', NULL, 26015, 27641),
(78, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/women-img-520x520.jpg', NULL, 'Reduced by 5.2% (2.4&nbsp;kB)', NULL, 45014, 47478),
(79, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/women-img-290x260.jpg', NULL, 'Reduced by 6.1% (1.1&nbsp;kB)', NULL, 17502, 18648),
(80, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/women-img-70x70.jpg', NULL, 'Reduced by 14.8% (410.0&nbsp;B)', NULL, 2368, 2778),
(81, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/video-bkg.jpg', NULL, 'Reduced by 11.1% (843.0&nbsp;B)', NULL, 6758, 7601),
(82, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/video-bkg-150x150.jpg', NULL, 'Reduced by 9.0% (390.0&nbsp;B)', NULL, 3928, 4318),
(83, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/video-bkg-300x37.jpg', NULL, 'Reduced by 12.9% (362.0&nbsp;B)', NULL, 2451, 2813),
(84, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/video-bkg-768x95.jpg', NULL, 'Reduced by 5.2% (444.0&nbsp;B)', NULL, 8163, 8607),
(85, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/video-bkg-1024x127.jpg', NULL, 'Reduced by 4.3% (551.0&nbsp;B)', NULL, 12136, 12687),
(86, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/video-bkg-180x174.jpg', NULL, 'Reduced by 9.6% (486.0&nbsp;B)', NULL, 4568, 5054),
(87, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/video-bkg-300x174.jpg', NULL, 'Reduced by 7.8% (594.0&nbsp;B)', NULL, 7041, 7635),
(88, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/video-bkg-600x174.jpg', NULL, 'Reduced by 24.3% (2.1&nbsp;kB)', NULL, 6736, 8901),
(89, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/video-bkg-520x174.jpg', NULL, 'Reduced by 21.0% (1.8&nbsp;kB)', NULL, 6799, 8608),
(90, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/video-bkg-290x174.jpg', NULL, 'Reduced by 7.2% (547.0&nbsp;B)', NULL, 7039, 7586),
(91, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/video-bkg-70x70.jpg', NULL, 'Reduced by 19.3% (369.0&nbsp;B)', NULL, 1539, 1908),
(92, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/Unknown-62.jpg', NULL, 'Reduced by 9.2% (1.3&nbsp;kB)', NULL, 13244, 14579),
(93, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/Unknown-62-150x150.jpg', NULL, 'Reduced by 7.2% (475.0&nbsp;B)', NULL, 6132, 6607),
(94, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/Unknown-62-300x138.jpg', NULL, 'Reduced by 8.3% (762.0&nbsp;B)', NULL, 8419, 9181),
(95, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/Unknown-62-180x174.jpg', NULL, 'Reduced by 7.5% (684.0&nbsp;B)', NULL, 8463, 9147),
(96, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/Unknown-62-300x174.jpg', NULL, 'Reduced by 8.0% (1,020.0&nbsp;B)', NULL, 11743, 12763),
(97, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/Unknown-62-290x174.jpg', NULL, 'Reduced by 8.2% (1.0&nbsp;kB)', NULL, 11557, 12590),
(98, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/Unknown-62-70x70.jpg', NULL, 'Reduced by 16.6% (381.0&nbsp;B)', NULL, 1915, 2296),
(99, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/Unknown-7.jpg', NULL, 'Reduced by 23.0% (7.7&nbsp;kB)', NULL, 26354, 34210),
(100, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/Unknown-7-150x150.jpg', NULL, 'Reduced by 6.8% (403.0&nbsp;B)', NULL, 5536, 5939),
(101, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/Unknown-7-300x300.jpg', NULL, 'Reduced by 4.2% (731.0&nbsp;B)', NULL, 16717, 17448),
(102, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/Unknown-7-180x180.jpg', NULL, 'Reduced by 5.3% (417.0&nbsp;B)', NULL, 7388, 7805),
(103, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/Unknown-7-520x260.jpg', NULL, 'Reduced by 4.4% (1.1&nbsp;kB)', NULL, 24570, 25691),
(104, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/Unknown-7-290x260.jpg', NULL, 'Reduced by 4.4% (674.0&nbsp;B)', NULL, 14702, 15376),
(105, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/Unknown-7-70x70.jpg', NULL, 'Reduced by 17.6% (386.0&nbsp;B)', NULL, 1803, 2189),
(106, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/Unknown-6.jpg', NULL, 'Reduced by 6.8% (1.6&nbsp;kB)', NULL, 22872, 24553),
(107, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/Unknown-6-150x150.jpg', NULL, 'Reduced by 8.0% (391.0&nbsp;B)', NULL, 4486, 4877),
(108, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/Unknown-6-300x300.jpg', NULL, 'Reduced by 4.4% (538.0&nbsp;B)', NULL, 11704, 12242),
(109, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/Unknown-6-180x180.jpg', NULL, 'Reduced by 6.5% (410.0&nbsp;B)', NULL, 5913, 6323),
(110, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/Unknown-6-520x260.jpg', NULL, 'Reduced by 6.7% (811.0&nbsp;B)', NULL, 11355, 12166),
(111, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/Unknown-6-290x260.jpg', NULL, 'Reduced by 4.9% (513.0&nbsp;B)', NULL, 10060, 10573),
(112, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/Unknown-6-70x70.jpg', NULL, 'Reduced by 18.2% (385.0&nbsp;B)', NULL, 1727, 2112),
(113, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/man-img.jpg', NULL, 'Reduced by 24.5% (1.9&nbsp;kB)', NULL, 6137, 8132),
(114, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/man-img-150x150.jpg', NULL, 'Reduced by 9.7% (442.0&nbsp;B)', NULL, 4092, 4534),
(115, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/man-img-300x294.jpg', NULL, 'Reduced by 8.1% (942.0&nbsp;B)', NULL, 10708, 11650),
(116, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/man-img-180x180.jpg', NULL, 'Reduced by 7.5% (452.0&nbsp;B)', NULL, 5539, 5991),
(117, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/man-img-300x300.jpg', NULL, 'Reduced by 7.5% (883.0&nbsp;B)', NULL, 10939, 11822),
(118, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/man-img-390x260.jpg', NULL, 'Reduced by 9.6% (1.1&nbsp;kB)', NULL, 10771, 11913),
(119, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/man-img-290x260.jpg', NULL, 'Reduced by 7.5% (767.0&nbsp;B)', NULL, 9510, 10277),
(120, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/man-img-70x70.jpg', NULL, 'Reduced by 19.5% (382.0&nbsp;B)', NULL, 1578, 1960),
(121, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/guess2-banner-2.jpg', NULL, 'Reduced by 1.7% (4.0&nbsp;kB)', NULL, 235966, 240105),
(122, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/guess2-banner-2-150x150.jpg', NULL, 'Reduced by 7.5% (707.0&nbsp;B)', NULL, 8665, 9372),
(123, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/guess2-banner-2-300x127.jpg', NULL, 'Reduced by 6.4% (776.0&nbsp;B)', NULL, 11411, 12187),
(124, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/guess2-banner-2-768x326.jpg', NULL, 'Reduced by 5.6% (3.3&nbsp;kB)', NULL, 56705, 60039),
(125, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/guess2-banner-2-1024x434.jpg', NULL, 'Reduced by 5.1% (4.9&nbsp;kB)', NULL, 93323, 98324),
(126, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/guess2-banner-2-180x180.jpg', NULL, 'Reduced by 7.1% (910.0&nbsp;B)', NULL, 11974, 12884),
(127, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/guess2-banner-2-300x300.jpg', NULL, 'Reduced by 6.9% (2.0&nbsp;kB)', NULL, 28233, 30314),
(128, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/guess2-banner-2-600x600.jpg', NULL, 'Reduced by 5.2% (4.8&nbsp;kB)', NULL, 90187, 95142),
(129, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/guess2-banner-2-520x260.jpg', NULL, 'Reduced by 5.9% (2.1&nbsp;kB)', NULL, 34649, 36820),
(130, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/guess2-banner-2-520x520.jpg', NULL, 'Reduced by 5.7% (4.2&nbsp;kB)', NULL, 71589, 75897),
(131, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/guess2-banner-2-290x260.jpg', NULL, 'Reduced by 6.5% (1.6&nbsp;kB)', NULL, 23770, 25427),
(132, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/guess2-banner-2-70x70.jpg', NULL, 'Reduced by 13.6% (426.0&nbsp;B)', NULL, 2704, 3130),
(133, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/ph.png', NULL, 'Reduced by 20.6% (11.8&nbsp;kB)', NULL, 46584, 58644),
(134, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/ph-150x150.png', NULL, 'Reduced by 42.0% (1.2&nbsp;kB)', NULL, 1746, 3011),
(135, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/ph-300x150.png', NULL, 'Reduced by 32.8% (3.1&nbsp;kB)', NULL, 6598, 9819),
(136, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/ph-768x384.png', NULL, 'Reduced by 31.9% (22.4&nbsp;kB)', NULL, 48967, 71891),
(137, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/ph-1024x512.png', NULL, 'Reduced by 25.7% (9.2&nbsp;kB)', NULL, 27290, 36721),
(138, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/ph-180x180.png', NULL, 'Reduced by 42.0% (2.2&nbsp;kB)', NULL, 3061, 5274),
(139, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/ph-300x300.png', NULL, 'Reduced by 42.4% (3.2&nbsp;kB)', NULL, 4434, 7692),
(140, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/ph-600x600.png', NULL, 'Reduced by 43.9% (8.5&nbsp;kB)', NULL, 11150, 19866),
(141, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/ph-520x260.png', NULL, 'Reduced by 40.4% (11.5&nbsp;kB)', NULL, 17481, 29306),
(142, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/ph-520x520.png', NULL, 'Reduced by 58.0% (19.1&nbsp;kB)', NULL, 14189, 33796),
(143, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/ph-290x260.png', NULL, 'Reduced by 60.4% (15.5&nbsp;kB)', NULL, 10392, 26223),
(144, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/ph-70x70.png', NULL, 'Reduced by 34.7% (535.0&nbsp;B)', NULL, 1005, 1540),
(145, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/ofslogo.png', NULL, 'Reduced by 5.1% (4.5&nbsp;kB)', NULL, 85504, 90078),
(146, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/ofslogo-150x150.png', NULL, 'Reduced by 2.3% (755.0&nbsp;B)', NULL, 32165, 32920),
(147, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/ofslogo-180x180.png', NULL, 'Reduced by 3.2% (1.5&nbsp;kB)', NULL, 46038, 47557),
(148, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/ofslogo-70x70.png', NULL, 'Reduced by 1.0% (93.0&nbsp;B)', NULL, 8923, 9016),
(149, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952527684.jpg', NULL, 'No savings', NULL, 26170, 26170),
(150, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952527684-150x150.jpg', NULL, 'Reduced by 9.6% (470.0&nbsp;B)', NULL, 4430, 4900),
(151, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952527684-189x300.jpg', NULL, 'Reduced by 6.0% (577.0&nbsp;B)', NULL, 9064, 9641),
(152, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952527684-644x1024.jpg', NULL, 'Reduced by 5.6% (2.9&nbsp;kB)', NULL, 50233, 53201),
(153, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952527684-180x180.jpg', NULL, 'Reduced by 8.1% (511.0&nbsp;B)', NULL, 5798, 6309),
(154, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952527684-300x300.jpg', NULL, 'Reduced by 5.2% (668.0&nbsp;B)', NULL, 12093, 12761),
(155, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952527684-600x600.jpg', NULL, 'Reduced by 4.8% (1.6&nbsp;kB)', NULL, 31919, 33514),
(156, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952527684-520x260.jpg', NULL, 'Reduced by 5.4% (759.0&nbsp;B)', NULL, 13336, 14095),
(157, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952527684-520x520.jpg', NULL, 'Reduced by 4.5% (1.2&nbsp;kB)', NULL, 25648, 26853),
(158, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952527684-290x260.jpg', NULL, 'Reduced by 5.6% (619.0&nbsp;B)', NULL, 10517, 11136),
(159, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952527684-70x70.jpg', NULL, 'Reduced by 18.7% (406.0&nbsp;B)', NULL, 1769, 2175),
(160, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952530331.jpg', NULL, 'No savings', NULL, 27717, 27717),
(161, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952530331-150x150.jpg', NULL, 'Reduced by 8.4% (414.0&nbsp;B)', NULL, 4518, 4932),
(162, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952530331-192x300.jpg', NULL, 'Reduced by 6.1% (503.0&nbsp;B)', NULL, 7754, 8257),
(163, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952530331-654x1024.jpg', NULL, 'Reduced by 5.6% (3.2&nbsp;kB)', NULL, 55015, 58263),
(164, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952530331-180x180.jpg', NULL, 'Reduced by 6.9% (450.0&nbsp;B)', NULL, 6064, 6514),
(165, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952530331-300x300.jpg', NULL, 'Reduced by 4.4% (632.0&nbsp;B)', NULL, 13684, 14316),
(166, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952530331-600x600.jpg', NULL, 'Reduced by 4.4% (1.9&nbsp;kB)', NULL, 41783, 43718),
(167, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952530331-520x260.jpg', NULL, 'Reduced by 4.3% (986.0&nbsp;B)', NULL, 22176, 23162),
(168, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952530331-520x520.jpg', NULL, 'Reduced by 4.5% (1.5&nbsp;kB)', NULL, 32859, 34401),
(169, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952530331-290x260.jpg', NULL, 'Reduced by 4.5% (560.0&nbsp;B)', NULL, 11920, 12480),
(170, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952530331-70x70.jpg', NULL, 'Reduced by 18.4% (385.0&nbsp;B)', NULL, 1702, 2087),
(171, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952534292.jpg', NULL, 'No savings', NULL, 20714, 20714),
(172, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952534292-150x150.jpg', NULL, 'Reduced by 10.0% (435.0&nbsp;B)', NULL, 3935, 4370),
(173, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952534292-202x300.jpg', NULL, 'Reduced by 6.8% (575.0&nbsp;B)', NULL, 7907, 8482),
(174, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952534292-688x1024.jpg', NULL, 'Reduced by 5.9% (3.0&nbsp;kB)', NULL, 49066, 52165),
(175, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952534292-180x180.jpg', NULL, 'Reduced by 7.7% (439.0&nbsp;B)', NULL, 5230, 5669),
(176, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952534292-300x300.jpg', NULL, 'Reduced by 5.3% (600.0&nbsp;B)', NULL, 10638, 11238),
(177, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952534292-600x600.jpg', NULL, 'Reduced by 5.3% (1.6&nbsp;kB)', NULL, 29301, 30943),
(178, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952534292-520x260.jpg', NULL, 'Reduced by 5.2% (834.0&nbsp;B)', NULL, 15281, 16115),
(179, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952534292-520x520.jpg', NULL, 'Reduced by 5.3% (1.3&nbsp;kB)', NULL, 23820, 25162),
(180, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952534292-290x260.jpg', NULL, 'Reduced by 6.0% (601.0&nbsp;B)', NULL, 9414, 10015),
(181, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952534292-70x70.jpg', NULL, 'Reduced by 20.8% (381.0&nbsp;B)', NULL, 1455, 1836),
(182, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952537124.jpg', NULL, 'No savings', NULL, 60532, 60532),
(183, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952537124-150x150.jpg', NULL, 'Reduced by 9.8% (1.1&nbsp;kB)', NULL, 10100, 11192),
(184, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952537124-191x300.jpg', NULL, 'Reduced by 9.3% (1.8&nbsp;kB)', NULL, 17747, 19561),
(185, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952537124-651x1024.jpg', NULL, 'Reduced by 8.3% (9.4&nbsp;kB)', NULL, 105946, 115586),
(186, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952537124-180x180.jpg', NULL, 'Reduced by 9.8% (1.4&nbsp;kB)', NULL, 13605, 15078),
(187, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952537124-300x300.jpg', NULL, 'Reduced by 10.3% (3.1&nbsp;kB)', NULL, 28060, 31284),
(188, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952537124-600x600.jpg', NULL, 'Reduced by 9.0% (7.2&nbsp;kB)', NULL, 74662, 82067),
(189, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952537124-520x260.jpg', NULL, 'Reduced by 10.0% (3.5&nbsp;kB)', NULL, 32530, 36136),
(190, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952537124-520x520.jpg', NULL, 'Reduced by 9.6% (6.3&nbsp;kB)', NULL, 60792, 67215),
(191, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952537124-290x260.jpg', NULL, 'Reduced by 10.1% (2.7&nbsp;kB)', NULL, 24783, 27577),
(192, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952537124-70x70.jpg', NULL, 'Reduced by 12.0% (433.0&nbsp;B)', NULL, 3166, 3599),
(193, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952640133.jpg', NULL, 'No savings', NULL, 19292, 19292),
(194, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952640133-150x150.jpg', NULL, 'Reduced by 11.7% (428.0&nbsp;B)', NULL, 3236, 3664),
(195, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952640133-199x300.jpg', NULL, 'Reduced by 8.8% (629.0&nbsp;B)', NULL, 6501, 7130),
(196, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952640133-678x1024.jpg', NULL, 'Reduced by 7.8% (3.6&nbsp;kB)', NULL, 43974, 47680),
(197, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952640133-180x180.jpg', NULL, 'Reduced by 9.6% (462.0&nbsp;B)', NULL, 4350, 4812),
(198, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952640133-300x300.jpg', NULL, 'Reduced by 6.9% (726.0&nbsp;B)', NULL, 9840, 10566),
(199, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952640133-600x600.jpg', NULL, 'Reduced by 6.4% (1.9&nbsp;kB)', NULL, 28345, 30293),
(200, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952640133-520x260.jpg', NULL, 'Reduced by 4.8% (802.0&nbsp;B)', NULL, 15804, 16606),
(201, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952640133-520x520.jpg', NULL, 'Reduced by 6.3% (1.5&nbsp;kB)', NULL, 22852, 24398),
(202, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952640133-290x260.jpg', NULL, 'Reduced by 6.8% (634.0&nbsp;B)', NULL, 8642, 9276),
(203, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952640133-70x70.jpg', NULL, 'Reduced by 23.5% (368.0&nbsp;B)', NULL, 1201, 1569),
(204, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952643184.jpg', NULL, 'No savings', NULL, 49688, 49688),
(205, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952643184-150x150.jpg', NULL, 'Reduced by 6.0% (465.0&nbsp;B)', NULL, 7293, 7758),
(206, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952643184-188x300.jpg', NULL, 'Reduced by 5.7% (792.0&nbsp;B)', NULL, 13161, 13953),
(207, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952643184-641x1024.jpg', NULL, 'Reduced by 5.3% (4.7&nbsp;kB)', NULL, 86084, 90861),
(208, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952643184-180x180.jpg', NULL, 'Reduced by 5.6% (579.0&nbsp;B)', NULL, 9781, 10360),
(209, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952643184-300x300.jpg', NULL, 'Reduced by 5.3% (1.2&nbsp;kB)', NULL, 21824, 23035),
(210, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952643184-600x600.jpg', NULL, 'Reduced by 4.8% (3.0&nbsp;kB)', NULL, 61547, 64641),
(211, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952643184-520x260.jpg', NULL, 'Reduced by 4.8% (1.4&nbsp;kB)', NULL, 28272, 29691),
(212, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952643184-520x520.jpg', NULL, 'Reduced by 4.8% (2.4&nbsp;kB)', NULL, 49746, 52240),
(213, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952643184-290x260.jpg', NULL, 'Reduced by 5.5% (1.1&nbsp;kB)', NULL, 19464, 20589),
(214, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952643184-70x70.jpg', NULL, 'Reduced by 14.4% (386.0&nbsp;B)', NULL, 2303, 2689),
(215, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952647432.jpg', NULL, 'No savings', NULL, 31346, 31346),
(216, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952647432-150x150.jpg', NULL, 'Reduced by 10.1% (582.0&nbsp;B)', NULL, 5169, 5751),
(217, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952647432-189x300.jpg', NULL, 'Reduced by 6.5% (714.0&nbsp;B)', NULL, 10325, 11039),
(218, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952647432-644x1024.jpg', NULL, 'Reduced by 5.1% (3.1&nbsp;kB)', NULL, 59170, 62373),
(219, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952647432-180x180.jpg', NULL, 'Reduced by 8.4% (620.0&nbsp;B)', NULL, 6744, 7364),
(220, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952647432-300x300.jpg', NULL, 'Reduced by 5.4% (814.0&nbsp;B)', NULL, 14276, 15090),
(221, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952647432-600x600.jpg', NULL, 'Reduced by 4.9% (1.9&nbsp;kB)', NULL, 37563, 39512),
(222, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952647432-520x260.jpg', NULL, 'Reduced by 5.1% (895.0&nbsp;B)', NULL, 16570, 17465),
(223, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952647432-520x520.jpg', NULL, 'Reduced by 4.8% (1.5&nbsp;kB)', NULL, 30449, 31969),
(224, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952647432-290x260.jpg', NULL, 'Reduced by 5.9% (751.0&nbsp;B)', NULL, 12072, 12823),
(225, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952647432-70x70.jpg', NULL, 'Reduced by 19.1% (447.0&nbsp;B)', NULL, 1890, 2337),
(226, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952650180.jpg', NULL, 'No savings', NULL, 29029, 29029),
(227, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952650180-150x150.jpg', NULL, 'Reduced by 11.2% (442.0&nbsp;B)', NULL, 3493, 3935),
(228, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952650180-210x300.jpg', NULL, 'Reduced by 8.1% (638.0&nbsp;B)', NULL, 7272, 7910),
(229, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952650180-717x1024.jpg', NULL, 'Reduced by 6.9% (4.5&nbsp;kB)', NULL, 61371, 65953),
(230, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952650180-180x180.jpg', NULL, 'Reduced by 9.0% (468.0&nbsp;B)', NULL, 4744, 5212),
(231, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952650180-300x300.jpg', NULL, 'Reduced by 6.0% (767.0&nbsp;B)', NULL, 11945, 12712),
(232, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952650180-600x600.jpg', NULL, 'Reduced by 5.5% (2.4&nbsp;kB)', NULL, 42135, 44578),
(233, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952650180-520x260.jpg', NULL, 'Reduced by 5.4% (1.5&nbsp;kB)', NULL, 26384, 27892),
(234, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952650180-520x520.jpg', NULL, 'Reduced by 5.9% (2.0&nbsp;kB)', NULL, 32715, 34754),
(235, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952650180-290x260.jpg', NULL, 'Reduced by 5.5% (613.0&nbsp;B)', NULL, 10450, 11063),
(236, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952650180-70x70.jpg', NULL, 'Reduced by 23.3% (382.0&nbsp;B)', NULL, 1258, 1640),
(237, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952722594.jpg', NULL, 'No savings', NULL, 23368, 23368),
(238, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952722594-150x150.jpg', NULL, 'Reduced by 9.7% (448.0&nbsp;B)', NULL, 4179, 4627),
(239, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952722594-246x300.jpg', NULL, 'Reduced by 7.1% (744.0&nbsp;B)', NULL, 9741, 10485),
(240, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952722594-180x180.jpg', NULL, 'Reduced by 7.7% (474.0&nbsp;B)', NULL, 5671, 6145),
(241, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952722594-300x300.jpg', NULL, 'Reduced by 5.7% (777.0&nbsp;B)', NULL, 12905, 13682),
(242, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952722594-600x600.jpg', NULL, 'Reduced by 4.9% (1.9&nbsp;kB)', NULL, 38478, 40458),
(243, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952722594-520x260.jpg', NULL, 'Reduced by 4.3% (810.0&nbsp;B)', NULL, 18038, 18848),
(244, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952722594-520x520.jpg', NULL, 'Reduced by 5.2% (1.7&nbsp;kB)', NULL, 30625, 32319),
(245, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952722594-290x260.jpg', NULL, 'Reduced by 6.2% (776.0&nbsp;B)', NULL, 11789, 12565),
(246, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952722594-70x70.jpg', NULL, 'Reduced by 19.2% (370.0&nbsp;B)', NULL, 1558, 1928),
(247, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952726572.jpg', NULL, 'No savings', NULL, 92590, 92590),
(248, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952726572-150x150.jpg', NULL, 'Reduced by 6.9% (700.0&nbsp;B)', NULL, 9439, 10139),
(249, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952726572-175x300.jpg', NULL, 'Reduced by 5.6% (1.1&nbsp;kB)', NULL, 18180, 19258),
(250, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952726572-597x1024.jpg', NULL, 'Reduced by 5.7% (7.9&nbsp;kB)', NULL, 133885, 141959),
(251, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952726572-180x180.jpg', NULL, 'Reduced by 6.2% (874.0&nbsp;B)', NULL, 13131, 14005),
(252, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952726572-300x300.jpg', NULL, 'Reduced by 6.0% (1.9&nbsp;kB)', NULL, 29957, 31853),
(253, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952726572-600x600.jpg', NULL, 'Reduced by 5.7% (5.1&nbsp;kB)', NULL, 86412, 91661),
(254, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952726572-520x260.jpg', NULL, 'Reduced by 5.5% (2.0&nbsp;kB)', NULL, 35378, 37433),
(255, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952726572-520x520.jpg', NULL, 'Reduced by 5.6% (4.0&nbsp;kB)', NULL, 69784, 73931),
(256, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952726572-290x260.jpg', NULL, 'Reduced by 5.9% (1.6&nbsp;kB)', NULL, 25950, 27571),
(257, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952726572-70x70.jpg', NULL, 'Reduced by 12.2% (396.0&nbsp;B)', NULL, 2862, 3258),
(258, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952731175.jpg', NULL, 'No savings', NULL, 30022, 30022),
(259, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952731175-150x150.jpg', NULL, 'Reduced by 7.4% (410.0&nbsp;B)', NULL, 5142, 5552),
(260, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952731175-222x300.jpg', NULL, 'Reduced by 5.3% (568.0&nbsp;B)', NULL, 10216, 10784),
(261, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952731175-180x180.jpg', NULL, 'Reduced by 5.6% (416.0&nbsp;B)', NULL, 7024, 7440),
(262, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952731175-300x300.jpg', NULL, 'Reduced by 5.1% (840.0&nbsp;B)', NULL, 15628, 16468),
(263, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952731175-600x600.jpg', NULL, 'Reduced by 4.0% (2.0&nbsp;kB)', NULL, 48480, 50495),
(264, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952731175-520x260.jpg', NULL, 'Reduced by 4.6% (1.1&nbsp;kB)', NULL, 23392, 24521),
(265, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952731175-520x520.jpg', NULL, 'Reduced by 4.5% (1.8&nbsp;kB)', NULL, 38277, 40069),
(266, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952731175-290x260.jpg', NULL, 'Reduced by 5.1% (745.0&nbsp;B)', NULL, 13911, 14656),
(267, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952731175-70x70.jpg', NULL, 'Reduced by 16.9% (374.0&nbsp;B)', NULL, 1834, 2208),
(268, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952734984.jpg', NULL, 'No savings', NULL, 27976, 27976),
(269, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952734984-150x150.jpg', NULL, 'Reduced by 9.3% (501.0&nbsp;B)', NULL, 4913, 5414),
(270, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952734984-187x300.jpg', NULL, 'Reduced by 6.3% (655.0&nbsp;B)', NULL, 9815, 10470),
(271, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952734984-639x1024.jpg', NULL, 'Reduced by 5.8% (3.2&nbsp;kB)', NULL, 53341, 56634),
(272, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952734984-180x180.jpg', NULL, 'Reduced by 8.0% (546.0&nbsp;B)', NULL, 6253, 6799),
(273, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952734984-300x300.jpg', NULL, 'Reduced by 5.5% (764.0&nbsp;B)', NULL, 13227, 13991),
(274, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952734984-600x600.jpg', NULL, 'Reduced by 5.3% (1.9&nbsp;kB)', NULL, 33716, 35616),
(275, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952734984-520x260.jpg', NULL, 'Reduced by 5.3% (827.0&nbsp;B)', NULL, 14890, 15717),
(276, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952734984-520x520.jpg', NULL, 'Reduced by 5.0% (1.4&nbsp;kB)', NULL, 27494, 28935),
(277, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952734984-290x260.jpg', NULL, 'Reduced by 5.9% (726.0&nbsp;B)', NULL, 11503, 12229),
(278, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952734984-70x70.jpg', NULL, 'Reduced by 17.6% (403.0&nbsp;B)', NULL, 1887, 2290),
(279, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952825283.jpg', NULL, 'Reduced by 0.0% (18.0&nbsp;B)', NULL, 36123, 36141),
(280, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952825283-150x150.jpg', NULL, 'Reduced by 8.1% (518.0&nbsp;B)', NULL, 5854, 6372),
(281, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952825283-193x300.jpg', NULL, 'Reduced by 5.3% (674.0&nbsp;B)', NULL, 12043, 12717);
INSERT INTO `ofs2616_2_ewwwio_images` (`id`, `path`, `image_md5`, `results`, `gallery`, `image_size`, `orig_size`) VALUES
(282, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952825283-659x1024.jpg', NULL, 'Reduced by 4.2% (2.9&nbsp;kB)', NULL, 68418, 71431),
(283, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952825283-180x180.jpg', NULL, 'Reduced by 6.8% (560.0&nbsp;B)', NULL, 7719, 8279),
(284, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952825283-300x300.jpg', NULL, 'Reduced by 4.7% (786.0&nbsp;B)', NULL, 15959, 16745),
(285, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952825283-600x600.jpg', NULL, 'Reduced by 3.9% (1.7&nbsp;kB)', NULL, 42385, 44122),
(286, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952825283-520x260.jpg', NULL, 'Reduced by 4.2% (808.0&nbsp;B)', NULL, 18331, 19139),
(287, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952825283-520x520.jpg', NULL, 'Reduced by 3.9% (1.3&nbsp;kB)', NULL, 34459, 35841),
(288, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952825283-290x260.jpg', NULL, 'Reduced by 4.9% (724.0&nbsp;B)', NULL, 14087, 14811),
(289, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952825283-70x70.jpg', NULL, 'Reduced by 15.6% (418.0&nbsp;B)', NULL, 2267, 2685),
(290, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952832733.jpg', NULL, 'No savings', NULL, 52547, 52547),
(291, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952832733-150x150.jpg', NULL, 'Reduced by 7.6% (438.0&nbsp;B)', NULL, 5321, 5759),
(292, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952832733-214x300.jpg', NULL, 'Reduced by 7.8% (968.0&nbsp;B)', NULL, 11403, 12371),
(293, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952832733-180x180.jpg', NULL, 'Reduced by 6.8% (562.0&nbsp;B)', NULL, 7663, 8225),
(294, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952832733-300x300.jpg', NULL, 'Reduced by 6.7% (1.5&nbsp;kB)', NULL, 20720, 22208),
(295, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952832733-600x600.jpg', NULL, 'Reduced by 2.9% (2.1&nbsp;kB)', NULL, 71421, 73546),
(296, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952832733-520x260.jpg', NULL, 'Reduced by 2.9% (1,007.0&nbsp;B)', NULL, 33849, 34856),
(297, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952832733-520x520.jpg', NULL, 'Reduced by 2.7% (1.5&nbsp;kB)', NULL, 56240, 57805),
(298, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952832733-290x260.jpg', NULL, 'Reduced by 6.8% (1.3&nbsp;kB)', NULL, 18199, 19530),
(299, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952832733-70x70.jpg', NULL, 'Reduced by 17.2% (388.0&nbsp;B)', NULL, 1873, 2261),
(300, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952834876.jpg', NULL, 'No savings', NULL, 25187, 25187),
(301, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952834876-150x150.jpg', NULL, 'Reduced by 8.8% (427.0&nbsp;B)', NULL, 4400, 4827),
(302, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952834876-216x300.jpg', NULL, 'Reduced by 6.7% (639.0&nbsp;B)', NULL, 8932, 9571),
(303, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952834876-180x180.jpg', NULL, 'Reduced by 7.5% (477.0&nbsp;B)', NULL, 5911, 6388),
(304, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952834876-300x300.jpg', NULL, 'Reduced by 5.5% (752.0&nbsp;B)', NULL, 12874, 13626),
(305, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952834876-600x600.jpg', NULL, 'Reduced by 4.1% (1.6&nbsp;kB)', NULL, 37399, 38989),
(306, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952834876-520x260.jpg', NULL, 'Reduced by 3.1% (654.0&nbsp;B)', NULL, 20773, 21427),
(307, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952834876-520x520.jpg', NULL, 'Reduced by 4.2% (1.3&nbsp;kB)', NULL, 29771, 31062),
(308, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952834876-290x260.jpg', NULL, 'Reduced by 5.1% (609.0&nbsp;B)', NULL, 11332, 11941),
(309, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952834876-70x70.jpg', NULL, 'Reduced by 18.1% (379.0&nbsp;B)', NULL, 1714, 2093),
(310, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952837474.jpg', NULL, 'No savings', NULL, 115926, 115926),
(311, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952837474-150x150.jpg', NULL, 'Reduced by 8.3% (1.1&nbsp;kB)', NULL, 12396, 13514),
(312, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952837474-174x300.jpg', NULL, 'Reduced by 8.0% (2.0&nbsp;kB)', NULL, 23273, 25292),
(313, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952837474-595x1024.jpg', NULL, 'Reduced by 7.3% (12.7&nbsp;kB)', NULL, 165001, 178017),
(314, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952837474-180x180.jpg', NULL, 'Reduced by 8.5% (1.6&nbsp;kB)', NULL, 17350, 18952),
(315, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952837474-300x300.jpg', NULL, 'Reduced by 9.2% (3.9&nbsp;kB)', NULL, 39596, 43601),
(316, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952837474-600x600.jpg', NULL, 'Reduced by 8.3% (9.8&nbsp;kB)', NULL, 110312, 120352),
(317, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952837474-520x260.jpg', NULL, 'Reduced by 9.5% (4.9&nbsp;kB)', NULL, 47252, 52238),
(318, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952837474-520x520.jpg', NULL, 'Reduced by 8.8% (8.5&nbsp;kB)', NULL, 90477, 99217),
(319, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952837474-290x260.jpg', NULL, 'Reduced by 9.4% (3.5&nbsp;kB)', NULL, 34292, 37863),
(320, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952837474-70x70.jpg', NULL, 'Reduced by 11.1% (438.0&nbsp;B)', NULL, 3517, 3955),
(321, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952908368.jpg', NULL, 'No savings', NULL, 27635, 27635),
(322, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952908368-150x150.jpg', NULL, 'Reduced by 7.9% (484.0&nbsp;B)', NULL, 5630, 6114),
(323, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952908368-211x300.jpg', NULL, 'Reduced by 5.7% (655.0&nbsp;B)', NULL, 10762, 11417),
(324, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952908368-180x180.jpg', NULL, 'Reduced by 6.8% (550.0&nbsp;B)', NULL, 7528, 8078),
(325, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952908368-300x300.jpg', NULL, 'Reduced by 5.0% (810.0&nbsp;B)', NULL, 15411, 16221),
(326, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952908368-600x600.jpg', NULL, 'Reduced by 5.0% (2.0&nbsp;kB)', NULL, 39837, 41936),
(327, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952908368-520x260.jpg', NULL, 'Reduced by 4.7% (1.0&nbsp;kB)', NULL, 21186, 22241),
(328, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952908368-520x520.jpg', NULL, 'Reduced by 4.6% (1.5&nbsp;kB)', NULL, 32285, 33848),
(329, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952908368-290x260.jpg', NULL, 'Reduced by 4.8% (686.0&nbsp;B)', NULL, 13584, 14270),
(330, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952908368-70x70.jpg', NULL, 'Reduced by 15.4% (392.0&nbsp;B)', NULL, 2146, 2538),
(331, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952910661.jpg', NULL, 'Reduced by 0.9% (466.0&nbsp;B)', NULL, 51015, 51481),
(332, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952910661-150x150.jpg', NULL, 'Reduced by 5.8% (468.0&nbsp;B)', NULL, 7533, 8001),
(333, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952910661-181x300.jpg', NULL, 'Reduced by 5.7% (946.0&nbsp;B)', NULL, 15544, 16490),
(334, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952910661-618x1024.jpg', NULL, 'Reduced by 4.1% (3.8&nbsp;kB)', NULL, 90593, 94456),
(335, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952910661-180x180.jpg', NULL, 'Reduced by 5.9% (639.0&nbsp;B)', NULL, 10247, 10886),
(336, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952910661-300x300.jpg', NULL, 'Reduced by 4.7% (1.0&nbsp;kB)', NULL, 21147, 22198),
(337, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952910661-600x600.jpg', NULL, 'Reduced by 4.1% (2.3&nbsp;kB)', NULL, 56259, 58655),
(338, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952910661-520x260.jpg', NULL, 'Reduced by 3.4% (734.0&nbsp;B)', NULL, 20559, 21293),
(339, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952910661-520x520.jpg', NULL, 'Reduced by 4.2% (2.0&nbsp;kB)', NULL, 45665, 47666),
(340, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952910661-290x260.jpg', NULL, 'Reduced by 4.6% (862.0&nbsp;B)', NULL, 17884, 18746),
(341, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952910661-70x70.jpg', NULL, 'Reduced by 13.4% (373.0&nbsp;B)', NULL, 2401, 2774),
(342, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952912700.jpg', NULL, 'No savings', NULL, 30997, 30997),
(343, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952912700-150x150.jpg', NULL, 'Reduced by 8.1% (496.0&nbsp;B)', NULL, 5626, 6122),
(344, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952912700-176x300.jpg', NULL, 'Reduced by 5.9% (621.0&nbsp;B)', NULL, 9910, 10531),
(345, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952912700-600x1024.jpg', NULL, 'Reduced by 5.5% (3.2&nbsp;kB)', NULL, 55310, 58537),
(346, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952912700-180x180.jpg', NULL, 'Reduced by 7.1% (543.0&nbsp;B)', NULL, 7149, 7692),
(347, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952912700-300x300.jpg', NULL, 'Reduced by 5.5% (858.0&nbsp;B)', NULL, 14620, 15478),
(348, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952912700-600x600.jpg', NULL, 'Reduced by 5.1% (2.0&nbsp;kB)', NULL, 37327, 39346),
(349, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952912700-520x260.jpg', NULL, 'Reduced by 5.5% (904.0&nbsp;B)', NULL, 15582, 16486),
(350, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952912700-520x520.jpg', NULL, 'Reduced by 4.9% (1.6&nbsp;kB)', NULL, 30788, 32388),
(351, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952912700-290x260.jpg', NULL, 'Reduced by 5.8% (771.0&nbsp;B)', NULL, 12479, 13250),
(352, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952912700-70x70.jpg', NULL, 'Reduced by 16.2% (405.0&nbsp;B)', NULL, 2095, 2500),
(353, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952914825.jpg', NULL, 'No savings', NULL, 36028, 36028),
(354, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952914825-150x150.jpg', NULL, 'Reduced by 7.6% (433.0&nbsp;B)', NULL, 5262, 5695),
(355, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952914825-197x300.jpg', NULL, 'Reduced by 5.2% (587.0&nbsp;B)', NULL, 10663, 11250),
(356, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952914825-671x1024.jpg', NULL, 'Reduced by 4.6% (3.2&nbsp;kB)', NULL, 68141, 71421),
(357, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952914825-180x180.jpg', NULL, 'Reduced by 6.2% (462.0&nbsp;B)', NULL, 7041, 7503),
(358, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952914825-300x300.jpg', NULL, 'Reduced by 4.2% (686.0&nbsp;B)', NULL, 15470, 16156),
(359, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952914825-600x600.jpg', NULL, 'Reduced by 3.8% (1.7&nbsp;kB)', NULL, 45150, 46933),
(360, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952914825-520x260.jpg', NULL, 'Reduced by 3.3% (749.0&nbsp;B)', NULL, 21971, 22720),
(361, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952914825-520x520.jpg', NULL, 'Reduced by 3.7% (1.4&nbsp;kB)', NULL, 36039, 37426),
(362, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952914825-290x260.jpg', NULL, 'Reduced by 4.1% (569.0&nbsp;B)', NULL, 13310, 13879),
(363, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952914825-70x70.jpg', NULL, 'Reduced by 16.5% (398.0&nbsp;B)', NULL, 2020, 2418),
(364, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457953020110.jpg', NULL, 'Reduced by 3.5% (703.0&nbsp;B)', NULL, 19467, 20170),
(365, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457953020110-150x150.jpg', NULL, 'Reduced by 5.8% (482.0&nbsp;B)', NULL, 7789, 8271),
(366, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457953020110-300x251.jpg', NULL, 'Reduced by 4.8% (1.1&nbsp;kB)', NULL, 21959, 23073),
(367, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457953020110-180x180.jpg', NULL, 'Reduced by 4.8% (546.0&nbsp;B)', NULL, 10729, 11275),
(368, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457953020110-300x300.jpg', NULL, 'Reduced by 4.6% (1.2&nbsp;kB)', NULL, 25298, 26511),
(369, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457953020110-400x260.jpg', NULL, 'Reduced by 3.8% (1.3&nbsp;kB)', NULL, 34863, 36230),
(370, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457953020110-290x260.jpg', NULL, 'Reduced by 4.9% (1.1&nbsp;kB)', NULL, 22479, 23632),
(371, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457953020110-70x70.jpg', NULL, 'Reduced by 15.6% (418.0&nbsp;B)', NULL, 2269, 2687),
(372, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457953022687.jpg', NULL, 'Reduced by 4.3% (538.0&nbsp;B)', NULL, 11831, 12369),
(373, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457953022687-150x150.jpg', NULL, 'Reduced by 7.6% (646.0&nbsp;B)', NULL, 7801, 8447),
(374, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457953022687-180x180.jpg', NULL, 'Reduced by 7.7% (848.0&nbsp;B)', NULL, 10103, 10951),
(375, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457953022687-300x260.jpg', NULL, 'Reduced by 6.7% (1.6&nbsp;kB)', NULL, 22267, 23878),
(376, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457953022687-290x260.jpg', NULL, 'Reduced by 7.2% (1.5&nbsp;kB)', NULL, 19698, 21217),
(377, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457953022687-70x70.jpg', NULL, 'Reduced by 13.6% (406.0&nbsp;B)', NULL, 2587, 2993),
(378, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457953078313.jpg', NULL, 'Reduced by 0.0% (2.0&nbsp;B)', NULL, 80936, 80938),
(379, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457953078313-150x150.jpg', NULL, 'Reduced by 7.5% (724.0&nbsp;B)', NULL, 8912, 9636),
(380, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457953078313-241x300.jpg', NULL, 'Reduced by 7.0% (1.7&nbsp;kB)', NULL, 23343, 25088),
(381, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457953078313-180x180.jpg', NULL, 'Reduced by 6.9% (917.0&nbsp;B)', NULL, 12342, 13259),
(382, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457953078313-300x300.jpg', NULL, 'Reduced by 6.7% (2.0&nbsp;kB)', NULL, 28653, 30714),
(383, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457953078313-600x600.jpg', NULL, 'Reduced by 5.4% (5.3&nbsp;kB)', NULL, 94545, 99991),
(384, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457953078313-520x260.jpg', NULL, 'Reduced by 6.1% (2.5&nbsp;kB)', NULL, 39941, 42523),
(385, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457953078313-520x520.jpg', NULL, 'Reduced by 6.0% (4.6&nbsp;kB)', NULL, 74055, 78770),
(386, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457953078313-290x260.jpg', NULL, 'Reduced by 6.8% (1.8&nbsp;kB)', NULL, 24856, 26660),
(387, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457953078313-70x70.jpg', NULL, 'Reduced by 13.2% (393.0&nbsp;B)', NULL, 2586, 2979),
(388, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457953080690.jpg', NULL, 'No savings', NULL, 15307, 15307),
(389, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457953080690-150x150.jpg', NULL, 'Reduced by 12.0% (601.0&nbsp;B)', NULL, 4415, 5016),
(390, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457953080690-300x300.jpg', NULL, 'Reduced by 9.0% (1.1&nbsp;kB)', NULL, 11197, 12307),
(391, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457953080690-180x180.jpg', NULL, 'Reduced by 10.5% (660.0&nbsp;B)', NULL, 5647, 6307),
(392, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457953080690-600x600.jpg', NULL, 'Reduced by 10.6% (3.0&nbsp;kB)', NULL, 25835, 28908),
(393, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457953080690-520x260.jpg', NULL, 'Reduced by 8.1% (1.1&nbsp;kB)', NULL, 12426, 13518),
(394, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457953080690-520x520.jpg', NULL, 'Reduced by 9.8% (2.2&nbsp;kB)', NULL, 21024, 23299),
(395, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457953080690-290x260.jpg', NULL, 'Reduced by 8.6% (894.0&nbsp;B)', NULL, 9542, 10436),
(396, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457953080690-70x70.jpg', NULL, 'Reduced by 20.5% (462.0&nbsp;B)', NULL, 1789, 2251),
(397, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457953083085.jpg', NULL, 'No savings', NULL, 30161, 30161),
(398, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457953083085-150x150.jpg', NULL, 'Reduced by 8.2% (467.0&nbsp;B)', NULL, 5263, 5730),
(399, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457953083085-265x300.jpg', NULL, 'Reduced by 4.4% (605.0&nbsp;B)', NULL, 13033, 13638),
(400, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457953083085-180x180.jpg', NULL, 'Reduced by 6.0% (451.0&nbsp;B)', NULL, 7088, 7539),
(401, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457953083085-300x300.jpg', NULL, 'Reduced by 4.8% (797.0&nbsp;B)', NULL, 15745, 16542),
(402, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457953083085-600x600.jpg', NULL, 'Reduced by 4.5% (2.1&nbsp;kB)', NULL, 46226, 48403),
(403, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457953083085-520x260.jpg', NULL, 'Reduced by 3.7% (1.1&nbsp;kB)', NULL, 29520, 30647),
(404, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457953083085-520x520.jpg', NULL, 'Reduced by 4.4% (1.7&nbsp;kB)', NULL, 36944, 38658),
(405, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457953083085-290x260.jpg', NULL, 'Reduced by 4.4% (680.0&nbsp;B)', NULL, 14601, 15281),
(406, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457953083085-70x70.jpg', NULL, 'Reduced by 17.2% (387.0&nbsp;B)', NULL, 1859, 2246),
(407, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457953085831.jpg', NULL, 'No savings', NULL, 31997, 31997),
(408, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457953085831-150x150.jpg', NULL, 'Reduced by 8.0% (425.0&nbsp;B)', NULL, 4889, 5314),
(409, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457953085831-287x300.jpg', NULL, 'Reduced by 6.4% (968.0&nbsp;B)', NULL, 14139, 15107),
(410, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457953085831-180x180.jpg', NULL, 'Reduced by 7.0% (504.0&nbsp;B)', NULL, 6656, 7160),
(411, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457953085831-300x300.jpg', NULL, 'Reduced by 6.0% (991.0&nbsp;B)', NULL, 15647, 16638),
(412, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457953085831-600x600.jpg', NULL, 'Reduced by 7.1% (3.5&nbsp;kB)', NULL, 46189, 49741),
(413, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457953085831-520x260.jpg', NULL, 'Reduced by 5.5% (1.9&nbsp;kB)', NULL, 32694, 34609),
(414, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457953085831-520x520.jpg', NULL, 'Reduced by 6.9% (2.6&nbsp;kB)', NULL, 36501, 39195),
(415, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457953085831-290x260.jpg', NULL, 'Reduced by 6.1% (936.0&nbsp;B)', NULL, 14332, 15268),
(416, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457953085831-70x70.jpg', NULL, 'Reduced by 19.4% (387.0&nbsp;B)', NULL, 1611, 1998),
(417, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457953088243.jpg', NULL, 'No savings', NULL, 28850, 28850),
(418, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457953088243-150x150.jpg', NULL, 'Reduced by 7.3% (419.0&nbsp;B)', NULL, 5342, 5761),
(419, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457953088243-257x300.jpg', NULL, 'Reduced by 3.5% (461.0&nbsp;B)', NULL, 12587, 13048),
(420, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457953088243-180x180.jpg', NULL, 'Reduced by 5.7% (431.0&nbsp;B)', NULL, 7163, 7594),
(421, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457953088243-300x300.jpg', NULL, 'Reduced by 3.4% (554.0&nbsp;B)', NULL, 15739, 16293),
(422, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457953088243-600x600.jpg', NULL, 'Reduced by 3.8% (1.8&nbsp;kB)', NULL, 46917, 48766),
(423, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457953088243-520x260.jpg', NULL, 'Reduced by 3.5% (875.0&nbsp;B)', NULL, 24193, 25068),
(424, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457953088243-520x520.jpg', NULL, 'Reduced by 3.7% (1.4&nbsp;kB)', NULL, 37308, 38741),
(425, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457953088243-290x260.jpg', NULL, 'Reduced by 3.3% (501.0&nbsp;B)', NULL, 14716, 15217),
(426, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/FB_IMG_1457953088243-70x70.jpg', NULL, 'Reduced by 17.1% (373.0&nbsp;B)', NULL, 1808, 2181),
(427, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/guess-banner-1.jpg', NULL, 'Reduced by 15.4% (22.9&nbsp;kB)', NULL, 128605, 152070),
(428, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/guess-banner-1-150x150.jpg', NULL, 'Reduced by 7.4% (408.0&nbsp;B)', NULL, 5094, 5502),
(429, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/guess-banner-1-300x80.jpg', NULL, 'Reduced by 7.0% (557.0&nbsp;B)', NULL, 7452, 8009),
(430, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/guess-banner-1-768x206.jpg', NULL, 'Reduced by 5.9% (2.2&nbsp;kB)', NULL, 35909, 38177),
(431, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/guess-banner-1-1024x274.jpg', NULL, 'Reduced by 5.5% (3.4&nbsp;kB)', NULL, 59548, 62989),
(432, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/guess-banner-1-180x180.jpg', NULL, 'Reduced by 6.0% (440.0&nbsp;B)', NULL, 6912, 7352),
(433, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/guess-banner-1-300x300.jpg', NULL, 'Reduced by 5.2% (869.0&nbsp;B)', NULL, 15741, 16610),
(434, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/guess-banner-1-600x514.jpg', NULL, 'Reduced by 3.1% (1.4&nbsp;kB)', NULL, 43794, 45180),
(435, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/guess-banner-1-520x260.jpg', NULL, 'Reduced by 5.4% (1.4&nbsp;kB)', NULL, 25843, 27310),
(436, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/guess-banner-1-520x514.jpg', NULL, 'Reduced by 3.1% (1.2&nbsp;kB)', NULL, 37567, 38777),
(437, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/guess-banner-1-290x260.jpg', NULL, 'Reduced by 5.4% (812.0&nbsp;B)', NULL, 14136, 14948),
(438, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/guess-banner-1-70x70.jpg', NULL, 'Reduced by 17.6% (365.0&nbsp;B)', NULL, 1703, 2068),
(439, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/guess2-banner-2-1.jpg', NULL, 'Reduced by 17.5% (23.7&nbsp;kB)', NULL, 114500, 138746),
(440, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/guess2-banner-2-1-150x150.jpg', NULL, 'Reduced by 7.3% (697.0&nbsp;B)', NULL, 8793, 9490),
(441, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/guess2-banner-2-1-300x80.jpg', NULL, 'Reduced by 6.0% (401.0&nbsp;B)', NULL, 6239, 6640),
(442, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/guess2-banner-2-1-768x206.jpg', NULL, 'Reduced by 5.5% (1.8&nbsp;kB)', NULL, 31167, 32981),
(443, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/guess2-banner-2-1-1024x274.jpg', NULL, 'Reduced by 5.1% (2.8&nbsp;kB)', NULL, 52610, 55429),
(444, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/guess2-banner-2-1-180x180.jpg', NULL, 'Reduced by 6.9% (884.0&nbsp;B)', NULL, 12016, 12900),
(445, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/guess2-banner-2-1-300x300.jpg', NULL, 'Reduced by 6.8% (2.1&nbsp;kB)', NULL, 28880, 30980),
(446, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/guess2-banner-2-1-600x514.jpg', NULL, 'Reduced by 5.0% (4.3&nbsp;kB)', NULL, 83579, 87987),
(447, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/guess2-banner-2-1-520x260.jpg', NULL, 'Reduced by 5.7% (1.9&nbsp;kB)', NULL, 32485, 34448),
(448, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/guess2-banner-2-1-520x514.jpg', NULL, 'Reduced by 5.3% (4.1&nbsp;kB)', NULL, 74741, 78898),
(449, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/guess2-banner-2-1-290x260.jpg', NULL, 'Reduced by 6.8% (1.8&nbsp;kB)', NULL, 24796, 26601),
(450, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/guess2-banner-2-1-70x70.jpg', NULL, 'Reduced by 13.5% (409.0&nbsp;B)', NULL, 2622, 3031),
(451, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/guess2-banner-2-1-1.jpg', NULL, 'Reduced by 16.5% (24.2&nbsp;kB)', NULL, 125864, 150662),
(452, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/guess2-banner-2-1-1-150x150.jpg', NULL, 'Reduced by 7.2% (681.0&nbsp;B)', NULL, 8806, 9487),
(453, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/guess2-banner-2-1-1-300x88.jpg', NULL, 'Reduced by 6.0% (444.0&nbsp;B)', NULL, 6989, 7433),
(454, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/guess2-banner-2-1-1-768x226.jpg', NULL, 'Reduced by 5.6% (2.0&nbsp;kB)', NULL, 34952, 37017),
(455, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/guess2-banner-2-1-1-1024x301.jpg', NULL, 'Reduced by 5.1% (3.0&nbsp;kB)', NULL, 57611, 60687),
(456, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/guess2-banner-2-1-1-180x180.jpg', NULL, 'Reduced by 7.3% (951.0&nbsp;B)', NULL, 12042, 12993),
(457, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/guess2-banner-2-1-1-300x300.jpg', NULL, 'Reduced by 6.8% (2.1&nbsp;kB)', NULL, 28996, 31105),
(458, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/guess2-banner-2-1-1-600x564.jpg', NULL, 'Reduced by 5.0% (4.6&nbsp;kB)', NULL, 90855, 95599),
(459, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/guess2-banner-2-1-1-520x260.jpg', NULL, 'Reduced by 5.9% (1.9&nbsp;kB)', NULL, 31697, 33676),
(460, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/guess2-banner-2-1-1-520x520.jpg', NULL, 'Reduced by 5.0% (3.6&nbsp;kB)', NULL, 70310, 74032),
(461, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/guess2-banner-2-1-1-290x260.jpg', NULL, 'Reduced by 6.6% (1.7&nbsp;kB)', NULL, 24613, 26356),
(462, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/guess2-banner-2-1-1-70x70.jpg', NULL, 'Reduced by 13.4% (410.0&nbsp;B)', NULL, 2644, 3054),
(463, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/guess-banner-2.jpg', NULL, 'Reduced by 14.2% (23.2&nbsp;kB)', NULL, 143608, 167322),
(464, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/guess-banner-2-150x150.jpg', NULL, 'Reduced by 6.8% (393.0&nbsp;B)', NULL, 5380, 5773),
(465, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/guess-banner-2-300x88.jpg', NULL, 'Reduced by 6.7% (605.0&nbsp;B)', NULL, 8398, 9003),
(466, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/guess-banner-2-768x226.jpg', NULL, 'Reduced by 5.8% (2.5&nbsp;kB)', NULL, 40768, 43278),
(467, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/guess-banner-2-1024x301.jpg', NULL, 'Reduced by 5.6% (3.8&nbsp;kB)', NULL, 65881, 69803),
(468, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/guess-banner-2-180x180.jpg', NULL, 'Reduced by 5.8% (452.0&nbsp;B)', NULL, 7376, 7828),
(469, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/guess-banner-2-300x300.jpg', NULL, 'Reduced by 5.5% (972.0&nbsp;B)', NULL, 16785, 17757),
(470, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/guess-banner-2-600x564.jpg', NULL, 'Reduced by 3.1% (1.5&nbsp;kB)', NULL, 49385, 50948),
(471, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/guess-banner-2-520x260.jpg', NULL, 'Reduced by 5.5% (1.5&nbsp;kB)', NULL, 27354, 28940),
(472, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/guess-banner-2-520x520.jpg', NULL, 'Reduced by 3.9% (1.6&nbsp;kB)', NULL, 39214, 40818),
(473, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/guess-banner-2-290x260.jpg', NULL, 'Reduced by 5.6% (890.0&nbsp;B)', NULL, 14999, 15889),
(474, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/sites/2/2016/03/guess-banner-2-70x70.jpg', NULL, 'Reduced by 16.8% (370.0&nbsp;B)', NULL, 1829, 2199);

-- --------------------------------------------------------

--
-- Table structure for table `ofs2616_2_links`
--

CREATE TABLE IF NOT EXISTS `ofs2616_2_links` (
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
-- Table structure for table `ofs2616_2_options`
--

CREATE TABLE IF NOT EXISTS `ofs2616_2_options` (
`option_id` bigint(20) unsigned NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB AUTO_INCREMENT=556 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ofs2616_2_options`
--

INSERT INTO `ofs2616_2_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/onefabshop/ae', 'yes'),
(2, 'home', 'http://localhost/onefabshop/ae', 'yes'),
(3, 'blogname', 'Onefabshop Ae', 'yes'),
(4, 'blogdescription', 'Your No. 1 fabulous shop of authentic and branded fashion products at a very good price.', 'yes'),
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
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'hack_file', '0', 'yes'),
(30, 'blog_charset', 'UTF-8', 'yes'),
(31, 'moderation_keys', '', 'no'),
(32, 'active_plugins', 'a:1:{i:0;s:45:"woocommerce-attributes-menu-manager/index.php";}', 'yes'),
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
(78, 'widget_text', 'a:4:{i:1;a:0:{}i:2;a:3:{s:5:"title";s:15:"Payment Options";s:4:"text";s:258:"<div class="menu-custom-footer-menu-container">\r\n	<ul class="menu">\r\n		<li class="menu-item">Cash On Delivery</li>\r\n                <li class="menu-item">Bank</li>\r\n		<li class="menu-item">Credit Card</li>\r\n		<li class="menu-item">Paypal</li>\r\n	</ul>\r\n</div>";s:6:"filter";b:0;}i:3;a:3:{s:5:"title";s:19:"Like us on Facebook";s:4:"text";s:246:"<div class="fb-page" data-href="https://www.facebook.com/onefabshop.ae/" data-tabs="timeline" data-width="100%" data-height="214" data-small-header="false" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true"></div>";s:6:"filter";b:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'uninstall_plugins', 'a:2:{s:59:"intuitive-custom-post-order/intuitive-custom-post-order.php";s:15:"hicpo_uninstall";s:57:"multisite-clone-duplicator/multisite-clone-duplicator.php";a:2:{i:0;s:4:"MUCD";i:1;s:9:"uninstall";}}', 'no'),
(81, 'timezone_string', '', 'yes'),
(82, 'page_for_posts', '0', 'yes'),
(83, 'page_on_front', '11', 'yes'),
(84, 'default_post_format', '0', 'yes'),
(85, 'link_manager_enabled', '0', 'yes'),
(86, 'finished_splitting_shared_terms', '1', 'yes'),
(87, 'site_icon', '8', 'yes'),
(88, 'medium_large_size_w', '768', 'yes'),
(89, 'medium_large_size_h', '0', 'yes'),
(90, 'ofs2616_2_user_roles', 'a:7:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:131:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;s:17:"edit_shop_webhook";b:1;s:17:"read_shop_webhook";b:1;s:19:"delete_shop_webhook";b:1;s:18:"edit_shop_webhooks";b:1;s:25:"edit_others_shop_webhooks";b:1;s:21:"publish_shop_webhooks";b:1;s:26:"read_private_shop_webhooks";b:1;s:20:"delete_shop_webhooks";b:1;s:28:"delete_private_shop_webhooks";b:1;s:30:"delete_published_shop_webhooks";b:1;s:27:"delete_others_shop_webhooks";b:1;s:26:"edit_private_shop_webhooks";b:1;s:28:"edit_published_shop_webhooks";b:1;s:25:"manage_shop_webhook_terms";b:1;s:23:"edit_shop_webhook_terms";b:1;s:25:"delete_shop_webhook_terms";b:1;s:25:"assign_shop_webhook_terms";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}s:8:"customer";a:2:{s:4:"name";s:8:"Customer";s:12:"capabilities";a:1:{s:4:"read";b:1;}}s:12:"shop_manager";a:2:{s:4:"name";s:12:"Shop Manager";s:12:"capabilities";a:110:{s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:4:"read";b:1;s:18:"read_private_pages";b:1;s:18:"read_private_posts";b:1;s:10:"edit_users";b:1;s:10:"edit_posts";b:1;s:10:"edit_pages";b:1;s:20:"edit_published_posts";b:1;s:20:"edit_published_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"edit_private_posts";b:1;s:17:"edit_others_posts";b:1;s:17:"edit_others_pages";b:1;s:13:"publish_posts";b:1;s:13:"publish_pages";b:1;s:12:"delete_posts";b:1;s:12:"delete_pages";b:1;s:20:"delete_private_pages";b:1;s:20:"delete_private_posts";b:1;s:22:"delete_published_pages";b:1;s:22:"delete_published_posts";b:1;s:19:"delete_others_posts";b:1;s:19:"delete_others_pages";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:17:"moderate_comments";b:1;s:15:"unfiltered_html";b:1;s:12:"upload_files";b:1;s:6:"export";b:1;s:6:"import";b:1;s:10:"list_users";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;s:17:"edit_shop_webhook";b:1;s:17:"read_shop_webhook";b:1;s:19:"delete_shop_webhook";b:1;s:18:"edit_shop_webhooks";b:1;s:25:"edit_others_shop_webhooks";b:1;s:21:"publish_shop_webhooks";b:1;s:26:"read_private_shop_webhooks";b:1;s:20:"delete_shop_webhooks";b:1;s:28:"delete_private_shop_webhooks";b:1;s:30:"delete_published_shop_webhooks";b:1;s:27:"delete_others_shop_webhooks";b:1;s:26:"edit_private_shop_webhooks";b:1;s:28:"edit_published_shop_webhooks";b:1;s:25:"manage_shop_webhook_terms";b:1;s:23:"edit_shop_webhook_terms";b:1;s:25:"delete_shop_webhook_terms";b:1;s:25:"assign_shop_webhook_terms";b:1;}}}', 'yes'),
(91, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(92, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(93, 'widget_recent-comments', 'a:3:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}i:3;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'sidebars_widgets', 'a:17:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:4:"shop";a:6:{i:0;s:32:"woocommerce_product_categories-2";i:1;s:26:"woocommerce_layered_nav-10";i:2;s:25:"woocommerce_layered_nav-8";i:3;s:25:"woocommerce_layered_nav-9";i:4;s:26:"woocommerce_price_filter-2";i:5;s:33:"woocommerce_layered_nav_filters-2";}s:31:"eightstore-lite-language-option";a:0:{}s:16:"widget-product-1";a:1:{i:0;s:25:"eightstore_lite_product-2";}s:14:"widget-promo-1";a:1:{i:0;s:27:"eightstore_lite_cta_video-2";}s:17:"widget-category-1";a:1:{i:0;s:29:"eightstore_lite_cat_product-2";}s:14:"widget-promo-2";a:1:{i:0;s:23:"eightstore_lite_promo-2";}s:17:"widget-category-2";a:1:{i:0;s:29:"eightstore_lite_cat_product-3";}s:14:"widget-promo-3";a:1:{i:0;s:23:"eightstore_lite_promo-3";}s:16:"widget-product-2";a:0:{}s:14:"widget-promo-4";a:0:{}s:12:"sidebar-left";a:0:{}s:13:"sidebar-right";a:2:{i:0;s:38:"woocommerce_recently_viewed_products-2";i:1;s:17:"recent-comments-3";}s:8:"footer-1";a:0:{}s:8:"footer-2";a:3:{i:0;s:10:"nav_menu-2";i:1;s:6:"text-2";i:2;s:6:"text-3";}s:13:"array_version";i:3;}', 'yes'),
(98, 'WPLANG', '', 'yes'),
(99, 'hicpo_activation', '1', 'yes'),
(101, '_transient_woocommerce_webhook_ids', 'a:0:{}', 'yes'),
(102, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_nav_menu', 'a:2:{i:2;a:2:{s:5:"title";s:11:"Quick Links";s:8:"nav_menu";i:12;}s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_woocommerce_widget_cart', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_woocommerce_layered_nav_filters', 'a:2:{i:2;a:1:{s:5:"title";s:14:"Active Filters";}s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'widget_woocommerce_layered_nav', 'a:6:{i:5;a:4:{s:5:"title";s:18:"Filter by : Colors";s:9:"attribute";s:6:"colors";s:12:"display_type";s:4:"list";s:10:"query_type";s:3:"and";}i:7;a:4:{s:5:"title";s:9:"Filter by";s:9:"attribute";s:6:"brands";s:12:"display_type";s:8:"dropdown";s:10:"query_type";s:3:"and";}i:8;a:4:{s:5:"title";s:18:"Filter by : Colors";s:9:"attribute";s:6:"colors";s:12:"display_type";s:4:"list";s:10:"query_type";s:3:"and";}i:9;a:4:{s:5:"title";s:18:"Filter by : Brands";s:9:"attribute";s:6:"brands";s:12:"display_type";s:8:"dropdown";s:10:"query_type";s:3:"and";}i:10;a:4:{s:5:"title";s:24:"Filter by : Sub-category";s:9:"attribute";s:11:"subcategory";s:12:"display_type";s:8:"dropdown";s:10:"query_type";s:3:"and";}s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'widget_woocommerce_price_filter', 'a:2:{i:2;a:1:{s:5:"title";s:15:"Filter by price";}s:12:"_multiwidget";i:1;}', 'yes'),
(110, 'widget_woocommerce_product_categories', 'a:2:{i:2;a:7:{s:5:"title";s:18:"Product Categories";s:7:"orderby";s:4:"name";s:8:"dropdown";i:0;s:5:"count";i:0;s:12:"hierarchical";i:1;s:18:"show_children_only";i:0;s:10:"hide_empty";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(111, 'widget_woocommerce_product_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(112, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(113, 'widget_woocommerce_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(114, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(115, 'widget_woocommerce_recently_viewed_products', 'a:2:{i:2;a:2:{s:5:"title";s:24:"Recently Viewed Products";s:6:"number";i:10;}s:12:"_multiwidget";i:1;}', 'yes'),
(116, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(117, 'woocommerce_default_country', 'AE', 'yes'),
(118, 'woocommerce_allowed_countries', 'specific', 'yes'),
(119, 'woocommerce_specific_allowed_countries', 'a:1:{i:0;s:2:"AE";}', 'yes'),
(120, 'woocommerce_default_customer_address', 'geolocation', 'yes'),
(121, 'woocommerce_demo_store', 'no', 'yes'),
(122, 'woocommerce_demo_store_notice', 'This is a demo store for testing purposes &mdash; no orders shall be fulfilled.', 'no'),
(123, 'woocommerce_currency', 'AED', 'yes'),
(124, 'woocommerce_currency_pos', 'right', 'yes'),
(125, 'woocommerce_price_thousand_sep', ',', 'yes'),
(126, 'woocommerce_price_decimal_sep', '.', 'yes'),
(127, 'woocommerce_price_num_decimals', '2', 'yes'),
(128, 'woocommerce_weight_unit', 'kg', 'yes'),
(129, 'woocommerce_dimension_unit', 'cm', 'yes'),
(130, 'woocommerce_enable_review_rating', 'yes', 'no'),
(131, 'woocommerce_review_rating_required', 'yes', 'no'),
(132, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(133, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(134, 'woocommerce_shop_page_id', '3', 'yes'),
(135, 'woocommerce_shop_page_display', '', 'yes'),
(136, 'woocommerce_category_archive_display', '', 'yes'),
(137, 'woocommerce_default_catalog_orderby', 'menu_order', 'yes'),
(138, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(139, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(140, 'shop_catalog_image_size', 'a:3:{s:5:"width";s:3:"300";s:6:"height";s:3:"300";s:4:"crop";i:1;}', 'yes'),
(141, 'shop_single_image_size', 'a:3:{s:5:"width";s:3:"600";s:6:"height";s:3:"600";s:4:"crop";i:1;}', 'yes'),
(142, 'shop_thumbnail_image_size', 'a:3:{s:5:"width";s:3:"180";s:6:"height";s:3:"180";s:4:"crop";i:1;}', 'yes'),
(143, 'woocommerce_enable_lightbox', 'yes', 'yes'),
(144, 'woocommerce_manage_stock', 'yes', 'yes'),
(145, 'woocommerce_hold_stock_minutes', '60', 'no'),
(146, 'woocommerce_notify_low_stock', 'yes', 'no'),
(147, 'woocommerce_notify_no_stock', 'yes', 'no'),
(148, 'woocommerce_stock_email_recipient', 'diannekatherinedelosreyes@gmail.com', 'no'),
(149, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(150, 'woocommerce_notify_no_stock_amount', '0', 'no'),
(151, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(152, 'woocommerce_stock_format', '', 'yes'),
(153, 'woocommerce_file_download_method', 'force', 'no'),
(154, 'woocommerce_downloads_require_login', 'no', 'no'),
(155, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(156, 'woocommerce_calc_taxes', 'no', 'yes'),
(157, 'woocommerce_prices_include_tax', 'no', 'yes'),
(158, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(159, 'woocommerce_shipping_tax_class', 'title', 'yes'),
(160, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(161, 'woocommerce_tax_classes', 'Reduced Rate\nZero Rate', 'yes'),
(162, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(163, 'woocommerce_tax_display_cart', 'excl', 'no'),
(164, 'woocommerce_price_display_suffix', '', 'yes'),
(165, 'woocommerce_tax_total_display', 'itemized', 'no'),
(166, 'woocommerce_enable_coupons', 'yes', 'no'),
(167, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(168, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(169, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(170, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(171, 'woocommerce_cart_page_id', '4', 'yes'),
(172, 'woocommerce_checkout_page_id', '5', 'yes'),
(173, 'woocommerce_terms_page_id', '', 'no'),
(174, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(175, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(176, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(177, 'woocommerce_calc_shipping', 'no', 'yes'),
(178, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(179, 'woocommerce_shipping_cost_requires_address', 'no', 'no'),
(180, 'woocommerce_ship_to_destination', 'billing', 'no'),
(181, 'woocommerce_ship_to_countries', '', 'yes'),
(182, 'woocommerce_specific_ship_to_countries', '', 'yes'),
(183, 'woocommerce_myaccount_page_id', '6', 'yes'),
(184, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(185, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(186, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(187, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(188, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(189, 'woocommerce_enable_signup_and_login_from_checkout', 'yes', 'no'),
(190, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(191, 'woocommerce_enable_checkout_login_reminder', 'yes', 'no'),
(192, 'woocommerce_registration_generate_username', 'yes', 'no'),
(193, 'woocommerce_registration_generate_password', 'no', 'no'),
(194, 'woocommerce_email_from_name', 'Onefabshop AE', 'no'),
(195, 'woocommerce_email_from_address', 'diannekatherinedelosreyes@gmail.com', 'no'),
(196, 'woocommerce_email_header_image', '', 'no'),
(197, 'woocommerce_email_footer_text', 'Onefabshop AE - Powered by WooCommerce', 'no'),
(198, 'woocommerce_email_base_color', '#557da1', 'no'),
(199, 'woocommerce_email_background_color', '#f5f5f5', 'no'),
(200, 'woocommerce_email_body_background_color', '#fdfdfd', 'no'),
(201, 'woocommerce_email_text_color', '#505050', 'no'),
(202, 'woocommerce_api_enabled', 'yes', 'yes'),
(204, 'cron', 'a:9:{i:1458150907;a:1:{s:32:"woocommerce_cancel_unpaid_orders";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}}i:1458166855;a:1:{s:28:"woocommerce_cleanup_sessions";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1458172800;a:1:{s:27:"woocommerce_scheduled_sales";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1458179924;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1458183765;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1458201094;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1458210055;a:1:{s:30:"woocommerce_tracker_send_event";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1459814400;a:1:{s:25:"woocommerce_geoip_updater";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:7:"monthly";s:4:"args";a:0:{}s:8:"interval";i:2635200;}}}s:7:"version";i:2;}', 'yes'),
(213, 'acf_version', '4.4.5', 'yes'),
(214, 'global-admin-bar-roles', 'a:7:{i:0;s:13:"administrator";i:1;s:6:"editor";i:2;s:6:"author";i:3;s:11:"contributor";i:4;s:10:"subscriber";i:5;s:8:"customer";i:6;s:12:"shop_manager";}', 'yes'),
(215, 'global-admin-bar-profiles', 'a:7:{i:0;s:13:"administrator";i:1;s:6:"editor";i:2;s:6:"author";i:3;s:11:"contributor";i:4;s:10:"subscriber";i:5;s:8:"customer";i:6;s:12:"shop_manager";}', 'yes'),
(218, 'post_count', '8', 'yes'),
(220, 'yith_wcas_general_videobox', 'a:7:{s:11:"plugin_name";s:31:"YITH WooCommerce Order Tracking";s:18:"title_first_column";s:26:"Discover Advanced Features";s:24:"description_first_column";s:95:"Upgrade to the PREMIUM VERSION of YITH WOOCOMMERCE ORDER TRACKING to benefit from all features!";s:5:"video";a:3:{s:8:"video_id";s:9:"118598446";s:15:"video_image_url";s:137:"http://localhost/onefabshop/ae/wp-content/plugins/yith-woocommerce-order-tracking/assets/images/yith-woocommerce-order-tracking-video.jpg";s:17:"video_description";s:79:"See YITH WooCommerce Order tracking plugin with full premium features in action";}s:19:"title_second_column";s:28:"Get Support and Pro Features";s:25:"description_second_column";s:205:"By purchasing the premium version of the plugin, you will take advantage of the advanced features of the product and you will get one year of free updates and support through our platform available 24h/24.";s:6:"button";a:2:{s:4:"href";s:84:"http://yithemes.com/themes/plugins/yith-woocommerce-order-tracking/?refer_id=1030585";s:5:"title";s:28:"Get Support and Pro Features";}}', 'yes'),
(221, 'ywot_order_tracking_text', 'Your order has been picked up by [carrier_name] on [pickup_date]. Your track code is [track_code].', 'yes'),
(222, 'ywot_order_tracking_text_position', '1', 'yes'),
(240, '_transient_timeout_geoip_::1', '1458357008', 'no'),
(241, '_transient_geoip_::1', '', 'no'),
(242, 'theme_mods_twentysixteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1457752463;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(243, 'current_theme', 'EightStore Lite Child', 'yes'),
(244, 'theme_mods_eightstore-lite-child', 'a:21:{s:12:"header_image";s:77:"http://localhost/onefabshop/ae/wp-content/uploads/sites/2/2016/03/ofslogo.png";s:17:"header_image_data";O:8:"stdClass":5:{s:13:"attachment_id";i:8;s:3:"url";s:77:"http://localhost/onefabshop/ae/wp-content/uploads/sites/2/2016/03/ofslogo.png";s:13:"thumbnail_url";s:77:"http://localhost/onefabshop/ae/wp-content/uploads/sites/2/2016/03/ofslogo.png";s:6:"height";i:250;s:5:"width";i:250;}s:21:"footer_copyright_text";s:167:"© 2016 Onefabshop. All Rights Reserved.\n<br />\n Web design and development by <a href="https://www.linkedin.com/in/diannekatherinedelosreyes" target="_blank">D.K</a>.";s:26:"eightstore_ticker_checkbox";i:1;s:23:"eightstore_ticker_title";s:19:"Go to Onefabshop PH";s:23:"ticker_setting_category";i:10;s:11:"callto_text";s:641:"<a class="top-contact top-phone-uae" href="tel:971567336377">\n	<span>\n		<i class="fa fa-mobile"></i>\n		+9715-6733-6377\n	</span>\n	<span class="caption">\n		(whatsapp/call/imessage) Look for Grace\n	</span>\n</a>\n<a class="top-contact top-phone-uae" href="tel:971502318945">\n	<span>\n		<i class="fa fa-mobile"></i>\n		+9715-0231-8945\n	</span>\n	<span class="caption">\n		(whatsapp/call/imessage) Look for Grace\n	</span>\n</a>\n<a class="top-contact top-mail" href="mailto:ae.support@onefabshop.net">\n	<span>\n		<i class="fa fa-envelope"></i>\n		ae.support@onefabshop.net\n	</span>\n	<span class="caption">\n		Email us your questions/inquiries\n	</span>\n</a>\n";s:23:"slider_setting_category";i:8;s:15:"transition_type";s:4:"true";s:16:"transition_speed";s:3:"300";s:34:"es_category_promo_setting_category";i:7;s:23:"eightstore_blog_section";i:1;s:32:"eightstore_blog_setting_category";i:6;s:30:"eightstore_testimonial_section";i:1;s:39:"eightstore_testimonial_setting_category";i:9;s:14:"display_slider";i:1;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:11;}s:15:"body_typography";s:27:"Roboto Condensed,sans-serif";s:22:"social_icons_in_header";i:1;s:15:"social_facebook";s:38:"https://www.facebook.com/onefabshop.ae";s:16:"social_instagram";s:39:"https://www.instagram.com/onefabshop12/";}', 'yes'),
(245, 'theme_switched', '', 'yes'),
(246, 'widget_eightstore_lite_cta_simple', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(247, 'widget_eightstore_lite_promo', 'a:3:{i:2;a:5:{s:11:"promo_title";s:31:"Get the look over 1000 Products";s:11:"promo_image";s:73:"http://localhost/onefabshop/wp-content/uploads/2016/02/8degree-callto.jpg";s:10:"promo_desc";s:14:"up to\r\n50% Off";s:10:"promo_link";s:35:"http://localhost/onefabshop/ae/shop";s:14:"promo_btn_text";s:8:"Shop Now";}i:3;a:5:{s:11:"promo_title";s:16:"Quality Apparels";s:11:"promo_image";s:69:"http://localhost/onefabshop/wp-content/uploads/2016/02/denin-jens.jpg";s:10:"promo_desc";s:7:"50% Off";s:10:"promo_link";s:43:"http://localhost/onefabshop/ae/tag/apparels";s:14:"promo_btn_text";s:8:"Shop Now";}s:12:"_multiwidget";i:1;}', 'yes'),
(248, 'widget_eightstore_lite_product', 'a:2:{i:2;a:5:{s:13:"product_title";s:12:"New Arrivals";s:17:"product_list_desc";s:22:"Newly arrived products";s:12:"product_type";s:14:"latest_product";s:16:"product_category";s:0:"";s:14:"number_of_prod";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(249, 'widget_eightstore_lite_cat_product', 'a:3:{i:2;a:2:{s:17:"product_alignment";s:11:"right_align";s:16:"product_category";s:2:"18";}i:3;a:2:{s:17:"product_alignment";s:11:"right_align";s:16:"product_category";s:2:"13";}s:12:"_multiwidget";i:1;}', 'yes'),
(250, 'widget_eightstore_lite_cta_video', 'a:2:{i:2;a:4:{s:15:"cta_video_title";s:19:"Sample Promo Banner";s:14:"cta_video_desc";s:21:"Read about this promo";s:13:"cta_video_bkg";s:68:"http://localhost/onefabshop/wp-content/uploads/2016/02/video-bkg.jpg";s:16:"cta_video_iframe";s:21:"http://www.google.com";}s:12:"_multiwidget";i:1;}', 'yes'),
(256, 'general_options', '', 'yes'),
(257, 'pricing_options', '', 'yes'),
(260, 'woocommerce_bacs_settings', 'a:5:{s:7:"enabled";s:3:"yes";s:5:"title";s:20:"Direct Bank Transfer";s:11:"description";s:173:"Make your payment directly into our bank account. Please use your Order ID as the payment reference. Your order won''t be shipped until the funds have cleared in our account.";s:12:"instructions";s:173:"Make your payment directly into our bank account. Please use your Order ID as the payment reference. Your order won''t be shipped until the funds have cleared in our account.";s:15:"account_details";s:0:"";}', 'yes'),
(261, 'woocommerce_bacs_accounts', 'a:1:{i:0;a:6:{s:12:"account_name";s:0:"";s:14:"account_number";s:0:"";s:9:"bank_name";s:0:"";s:9:"sort_code";s:0:"";s:4:"iban";s:0:"";s:3:"bic";s:0:"";}}', 'yes'),
(264, 'woocommerce_cod_settings', 'a:6:{s:7:"enabled";s:3:"yes";s:5:"title";s:16:"Cash on Delivery";s:11:"description";s:28:"Pay with cash upon delivery.";s:12:"instructions";s:28:"Pay with cash upon delivery.";s:18:"enable_for_methods";s:0:"";s:18:"enable_for_virtual";s:3:"yes";}', 'yes'),
(277, 'custom_permalink_table', 'a:1:{s:6:"blogs/";a:3:{s:2:"id";i:6;s:4:"kind";s:8:"category";s:4:"slug";s:4:"blog";}}', 'yes'),
(282, 'category_children', 'a:0:{}', 'yes'),
(284, '_transient_timeout_plugin_slugs', '1458142404', 'no'),
(285, '_transient_plugin_slugs', 'a:12:{i:0;s:30:"advanced-custom-fields/acf.php";i:1;s:36:"contact-form-7/wp-contact-form-7.php";i:2;s:39:"custom-permalinks/custom-permalinks.php";i:3;s:45:"ewww-image-optimizer/ewww-image-optimizer.php";i:4;s:55:"global-admin-bar-hide-or-remove/hide-admin-tool-bar.php";i:5;s:59:"intuitive-custom-post-order/intuitive-custom-post-order.php";i:6;s:25:"redirector/redirector.php";i:7;s:27:"woocommerce/woocommerce.php";i:8;s:45:"woocommerce-attributes-menu-manager/index.php";i:9;s:47:"paydollar-payment-gateway-woocommerce/index.php";i:10;s:41:"wordpress-importer/wordpress-importer.php";i:11;s:40:"yith-woocommerce-order-tracking/init.php";}', 'no'),
(286, 'recently_activated', 'a:0:{}', 'yes'),
(287, 'yit_recently_activated', 'a:0:{}', 'yes'),
(290, 'global-admin-bar-plugin-setting', '1', 'yes'),
(291, 'global-admin-bar-plugin-user-setting', '', 'yes'),
(295, 'woocommerce_permalinks', 'a:4:{s:13:"category_base";s:4:"shop";s:8:"tag_base";s:3:"tag";s:14:"attribute_base";s:0:"";s:12:"product_base";s:0:"";}', 'yes'),
(306, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(326, 'product_cat_children', 'a:2:{i:13;a:4:{i:0;i:14;i:1;i:15;i:2;i:16;i:3;i:17;}i:18;a:4:{i:0;i:19;i:1;i:20;i:2;i:21;i:3;i:22;}}', 'yes'),
(328, '_transient_product_query-transient-version', '1457969532', 'yes'),
(342, '_transient_timeout_external_ip_address_::1', '1458380194', 'no'),
(343, '_transient_external_ip_address_::1', '112.198.103.40', 'no'),
(345, '_transient_timeout_geoip_112.198.103.40', '1458381398', 'no'),
(346, '_transient_geoip_112.198.103.40', '', 'no'),
(359, '_transient_product-transient-version', '1457969532', 'yes'),
(366, 'woocommerce_db_version', '2.5.5', 'yes'),
(367, 'woocommerce_version', '2.5.5', 'yes'),
(368, 'woocommerce_admin_notices', 'a:0:{}', 'yes'),
(372, 'product_shipping_class_children', 'a:0:{}', 'yes'),
(383, '_transient_wc_attribute_taxonomies', 'a:3:{i:0;O:8:"stdClass":6:{s:12:"attribute_id";s:1:"1";s:14:"attribute_name";s:6:"brands";s:15:"attribute_label";s:6:"Brands";s:14:"attribute_type";s:6:"select";s:17:"attribute_orderby";s:4:"name";s:16:"attribute_public";s:1:"1";}i:1;O:8:"stdClass":6:{s:12:"attribute_id";s:1:"2";s:14:"attribute_name";s:6:"colors";s:15:"attribute_label";s:6:"Colors";s:14:"attribute_type";s:6:"select";s:17:"attribute_orderby";s:4:"name";s:16:"attribute_public";s:1:"1";}i:2;O:8:"stdClass":6:{s:12:"attribute_id";s:1:"3";s:14:"attribute_name";s:11:"subcategory";s:15:"attribute_label";s:11:"Subcategory";s:14:"attribute_type";s:6:"select";s:17:"attribute_orderby";s:4:"name";s:16:"attribute_public";s:1:"1";}}', 'yes'),
(409, 'pa_subcategory_children', 'a:0:{}', 'yes'),
(422, '_transient_timeout_wc_related_83', '1457956124', 'no'),
(423, '_transient_wc_related_83', 'a:0:{}', 'no'),
(434, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes');
INSERT INTO `ofs2616_2_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(445, 'rewrite_rules', 'a:191:{s:22:"^wc-api/v([1-3]{1})/?$";s:51:"index.php?wc-api-version=$matches[1]&wc-api-route=/";s:24:"^wc-api/v([1-3]{1})(.*)?";s:61:"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]";s:24:"^wc-auth/v([1]{1})/(.*)?";s:63:"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]";s:7:"shop/?$";s:27:"index.php?post_type=product";s:37:"shop/feed/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:32:"shop/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:24:"shop/page/([0-9]{1,})/?$";s:45:"index.php?post_type=product&paged=$matches[1]";s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:32:"category/(.+?)/wc-api(/(.*))?/?$";s:54:"index.php?category_name=$matches[1]&wc-api=$matches[3]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?product_tag=$matches[1]&paged=$matches[2]";s:29:"tag/([^/]+)/wc-api(/(.*))?/?$";s:44:"index.php?tag=$matches[1]&wc-api=$matches[3]";s:14:"tag/([^/]+)/?$";s:33:"index.php?product_tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:43:"shop/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:38:"shop/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:31:"shop/(.+?)/page/?([0-9]{1,})/?$";s:51:"index.php?product_cat=$matches[1]&paged=$matches[2]";s:13:"shop/(.+?)/?$";s:33:"index.php?product_cat=$matches[1]";s:48:"pa_brands/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:48:"index.php?pa_brands=$matches[1]&feed=$matches[2]";s:43:"pa_brands/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:48:"index.php?pa_brands=$matches[1]&feed=$matches[2]";s:36:"pa_brands/(.+?)/page/?([0-9]{1,})/?$";s:49:"index.php?pa_brands=$matches[1]&paged=$matches[2]";s:18:"pa_brands/(.+?)/?$";s:31:"index.php?pa_brands=$matches[1]";s:48:"pa_colors/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:48:"index.php?pa_colors=$matches[1]&feed=$matches[2]";s:43:"pa_colors/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:48:"index.php?pa_colors=$matches[1]&feed=$matches[2]";s:36:"pa_colors/(.+?)/page/?([0-9]{1,})/?$";s:49:"index.php?pa_colors=$matches[1]&paged=$matches[2]";s:18:"pa_colors/(.+?)/?$";s:31:"index.php?pa_colors=$matches[1]";s:53:"pa_subcategory/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:53:"index.php?pa_subcategory=$matches[1]&feed=$matches[2]";s:48:"pa_subcategory/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:53:"index.php?pa_subcategory=$matches[1]&feed=$matches[2]";s:41:"pa_subcategory/(.+?)/page/?([0-9]{1,})/?$";s:54:"index.php?pa_subcategory=$matches[1]&paged=$matches[2]";s:23:"pa_subcategory/(.+?)/?$";s:36:"index.php?pa_subcategory=$matches[1]";s:35:"product/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:45:"product/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:65:"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:41:"product/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:24:"product/([^/]+)/embed/?$";s:40:"index.php?product=$matches[1]&embed=true";s:28:"product/([^/]+)/trackback/?$";s:34:"index.php?product=$matches[1]&tb=1";s:48:"product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:43:"product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:36:"product/([^/]+)/page/?([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&paged=$matches[2]";s:43:"product/([^/]+)/comment-page-([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&cpage=$matches[2]";s:33:"product/([^/]+)/wc-api(/(.*))?/?$";s:48:"index.php?product=$matches[1]&wc-api=$matches[3]";s:39:"product/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:50:"product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:32:"product/([^/]+)(?:/([0-9]+))?/?$";s:46:"index.php?product=$matches[1]&page=$matches[2]";s:24:"product/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:34:"product/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:54:"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:30:"product/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:45:"product_variation/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:55:"product_variation/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:75:"product_variation/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"product_variation/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"product_variation/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:51:"product_variation/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:34:"product_variation/([^/]+)/embed/?$";s:50:"index.php?product_variation=$matches[1]&embed=true";s:38:"product_variation/([^/]+)/trackback/?$";s:44:"index.php?product_variation=$matches[1]&tb=1";s:46:"product_variation/([^/]+)/page/?([0-9]{1,})/?$";s:57:"index.php?product_variation=$matches[1]&paged=$matches[2]";s:53:"product_variation/([^/]+)/comment-page-([0-9]{1,})/?$";s:57:"index.php?product_variation=$matches[1]&cpage=$matches[2]";s:43:"product_variation/([^/]+)/wc-api(/(.*))?/?$";s:58:"index.php?product_variation=$matches[1]&wc-api=$matches[3]";s:49:"product_variation/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:60:"product_variation/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:"product_variation/([^/]+)(?:/([0-9]+))?/?$";s:56:"index.php?product_variation=$matches[1]&page=$matches[2]";s:34:"product_variation/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"product_variation/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:64:"product_variation/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"product_variation/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"product_variation/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:40:"product_variation/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:45:"shop_order_refund/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:55:"shop_order_refund/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:75:"shop_order_refund/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"shop_order_refund/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"shop_order_refund/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:51:"shop_order_refund/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:34:"shop_order_refund/([^/]+)/embed/?$";s:50:"index.php?shop_order_refund=$matches[1]&embed=true";s:38:"shop_order_refund/([^/]+)/trackback/?$";s:44:"index.php?shop_order_refund=$matches[1]&tb=1";s:46:"shop_order_refund/([^/]+)/page/?([0-9]{1,})/?$";s:57:"index.php?shop_order_refund=$matches[1]&paged=$matches[2]";s:53:"shop_order_refund/([^/]+)/comment-page-([0-9]{1,})/?$";s:57:"index.php?shop_order_refund=$matches[1]&cpage=$matches[2]";s:43:"shop_order_refund/([^/]+)/wc-api(/(.*))?/?$";s:58:"index.php?shop_order_refund=$matches[1]&wc-api=$matches[3]";s:49:"shop_order_refund/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:60:"shop_order_refund/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:"shop_order_refund/([^/]+)(?:/([0-9]+))?/?$";s:56:"index.php?shop_order_refund=$matches[1]&page=$matches[2]";s:34:"shop_order_refund/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"shop_order_refund/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:64:"shop_order_refund/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"shop_order_refund/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"shop_order_refund/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:40:"shop_order_refund/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:39:"index.php?&page_id=11&cpage=$matches[1]";s:17:"wc-api(/(.*))?/?$";s:29:"index.php?&wc-api=$matches[2]";s:20:"order-pay(/(.*))?/?$";s:32:"index.php?&order-pay=$matches[2]";s:25:"order-received(/(.*))?/?$";s:37:"index.php?&order-received=$matches[2]";s:21:"view-order(/(.*))?/?$";s:33:"index.php?&view-order=$matches[2]";s:23:"edit-account(/(.*))?/?$";s:35:"index.php?&edit-account=$matches[2]";s:23:"edit-address(/(.*))?/?$";s:35:"index.php?&edit-address=$matches[2]";s:24:"lost-password(/(.*))?/?$";s:36:"index.php?&lost-password=$matches[2]";s:26:"customer-logout(/(.*))?/?$";s:38:"index.php?&customer-logout=$matches[2]";s:29:"add-payment-method(/(.*))?/?$";s:41:"index.php?&add-payment-method=$matches[2]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:26:"comments/wc-api(/(.*))?/?$";s:29:"index.php?&wc-api=$matches[2]";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:29:"search/(.+)/wc-api(/(.*))?/?$";s:42:"index.php?s=$matches[1]&wc-api=$matches[3]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:32:"author/([^/]+)/wc-api(/(.*))?/?$";s:52:"index.php?author_name=$matches[1]&wc-api=$matches[3]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:54:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$";s:82:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:41:"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$";s:66:"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:28:"([0-9]{4})/wc-api(/(.*))?/?$";s:45:"index.php?year=$matches[1]&wc-api=$matches[3]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:25:"(.?.+?)/wc-api(/(.*))?/?$";s:49:"index.php?pagename=$matches[1]&wc-api=$matches[3]";s:28:"(.?.+?)/order-pay(/(.*))?/?$";s:52:"index.php?pagename=$matches[1]&order-pay=$matches[3]";s:33:"(.?.+?)/order-received(/(.*))?/?$";s:57:"index.php?pagename=$matches[1]&order-received=$matches[3]";s:29:"(.?.+?)/view-order(/(.*))?/?$";s:53:"index.php?pagename=$matches[1]&view-order=$matches[3]";s:31:"(.?.+?)/edit-account(/(.*))?/?$";s:55:"index.php?pagename=$matches[1]&edit-account=$matches[3]";s:31:"(.?.+?)/edit-address(/(.*))?/?$";s:55:"index.php?pagename=$matches[1]&edit-address=$matches[3]";s:32:"(.?.+?)/lost-password(/(.*))?/?$";s:56:"index.php?pagename=$matches[1]&lost-password=$matches[3]";s:34:"(.?.+?)/customer-logout(/(.*))?/?$";s:58:"index.php?pagename=$matches[1]&customer-logout=$matches[3]";s:37:"(.?.+?)/add-payment-method(/(.*))?/?$";s:61:"index.php?pagename=$matches[1]&add-payment-method=$matches[3]";s:31:".?.+?/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"([^/]+)/embed/?$";s:37:"index.php?name=$matches[1]&embed=true";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:25:"([^/]+)/wc-api(/(.*))?/?$";s:45:"index.php?name=$matches[1]&wc-api=$matches[3]";s:31:"[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:"[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:24:"([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:22:"[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";}', 'yes'),
(446, '_transient_woocommerce_cache_excluded_uris', 'a:6:{i:0;s:3:"p=4";i:1;s:6:"/cart/";i:2;s:3:"p=5";i:3;s:10:"/checkout/";i:4;s:3:"p=6";i:5;s:12:"/my-account/";}', 'yes'),
(468, 'ewww_image_optimizer_version', '259.0', 'yes'),
(469, 'ewww_image_optimizer_bulk_attachments', '', 'no'),
(470, 'ewww_image_optimizer_flag_attachments', '', 'no'),
(471, 'ewww_image_optimizer_ngg_attachments', '', 'no'),
(472, 'ewww_image_optimizer_aux_attachments', '', 'no'),
(473, 'ewww_image_optimizer_defer_attachments', '', 'no'),
(490, 'ewww_image_optimizer_bulk_resume', '', 'yes'),
(494, '_transient_timeout_wc_related_102', '1458052465', 'no'),
(495, '_transient_wc_related_102', 'a:2:{i:0;s:2:"83";i:1;s:3:"101";}', 'no'),
(501, 'seo-friendly-images', 'a:1:{s:5:"rules";a:1:{i:0;a:2:{s:7:"domains";a:1:{i:0;s:3:"all";}s:7:"options";a:9:{s:3:"alt";s:6:"%title";s:5:"title";s:12:"%title photo";s:12:"override_alt";s:2:"on";s:14:"override_title";s:2:"on";s:21:"strip_extension_title";s:2:"on";s:22:"attach_internal_images";s:3:"def";s:22:"attach_external_images";s:3:"def";s:14:"external_links";s:2:"on";s:6:"enable";s:2:"on";}}}}', 'yes'),
(509, '_transient_timeout_wc_related_108', '1458054225', 'no'),
(510, '_transient_wc_related_108', 'a:3:{i:0;s:2:"83";i:1;s:3:"101";i:2;s:3:"102";}', 'no'),
(513, 'pa_colors_children', 'a:0:{}', 'yes'),
(525, 'pa_brands_children', 'a:0:{}', 'yes'),
(527, '_transient_timeout_wc_uf_pid_5161441d1b0080a7154727c2619245aa', '1460561561', 'no'),
(528, '_transient_wc_uf_pid_5161441d1b0080a7154727c2619245aa', 'a:8:{i:0;i:136;i:1;i:133;i:2;i:128;i:3;i:123;i:4;i:118;i:5;i:113;i:6;i:108;i:7;i:102;}', 'no'),
(530, '_transient_timeout_wc_term_counts', '1460561561', 'no'),
(531, '_transient_wc_term_counts', 'a:11:{i:60;s:1:"6";i:17;s:0:"";i:19;s:0:"";i:15;s:0:"";i:21;s:0:"";i:16;s:0:"";i:20;s:1:"8";i:13;s:0:"";i:14;s:0:"";i:22;s:1:"0";i:18;s:1:"8";}', 'no'),
(535, '_transient_timeout_wc_low_stock_count', '1460643493', 'no'),
(536, '_transient_wc_low_stock_count', '0', 'no'),
(537, '_transient_timeout_wc_outofstock_count', '1460643493', 'no'),
(538, '_transient_wc_outofstock_count', '0', 'no'),
(539, '_transient_timeout_wc_admin_report', '1458137893', 'no'),
(540, '_transient_wc_admin_report', 'a:1:{s:32:"3e9365d9cdb7bd363527faf147928e7a";a:0:{}}', 'no'),
(548, 'wpcf7', 'a:1:{s:7:"version";s:3:"4.4";}', 'yes'),
(550, '_transient_is_multi_author', '0', 'yes'),
(551, '_transient_eightstore_lite_categories', '2', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `ofs2616_2_postmeta`
--

CREATE TABLE IF NOT EXISTS `ofs2616_2_postmeta` (
`meta_id` bigint(20) unsigned NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=992 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ofs2616_2_postmeta`
--

INSERT INTO `ofs2616_2_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 8, '_wp_attached_file', '2016/03/ofslogo.png'),
(3, 8, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:250;s:6:"height";i:250;s:4:"file";s:19:"2016/03/ofslogo.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:5:{s:4:"file";s:19:"ofslogo-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";s:20:"ewww_image_optimizer";s:30:"Reduced by 2.3% (755.0&nbsp;B)";}s:14:"shop_thumbnail";a:5:{s:4:"file";s:19:"ofslogo-180x180.png";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:9:"image/png";s:20:"ewww_image_optimizer";s:29:"Reduced by 3.2% (1.5&nbsp;kB)";}s:28:"eightstore-testimonial-image";a:5:{s:4:"file";s:17:"ofslogo-70x70.png";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:9:"image/png";s:20:"ewww_image_optimizer";s:29:"Reduced by 1.0% (93.0&nbsp;B)";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:20:"ewww_image_optimizer";s:29:"Reduced by 5.1% (4.5&nbsp;kB)";}'),
(4, 8, '_wp_attachment_image_alt', 'Onefabshop Logo'),
(5, 8, '_wp_attachment_custom_header_last_used_eightstore-lite-child', '1457780003'),
(6, 8, '_wp_attachment_is_custom_header', 'eightstore-lite-child'),
(7, 11, '_edit_lock', '1457773916:1'),
(8, 11, '_edit_last', '1'),
(9, 11, '_wp_page_template', 'template-home.php'),
(10, 11, 'eightstore_lite_sidebar_layout', 'sidebar-right'),
(11, 1, '_wp_trash_meta_status', 'publish'),
(12, 1, '_wp_trash_meta_time', '1457769282'),
(13, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:"1";}'),
(14, 14, '_edit_lock', '1457770404:1'),
(15, 14, '_edit_last', '1'),
(16, 15, '_wp_attached_file', '2016/03/ph.png'),
(17, 15, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:2000;s:6:"height";i:1000;s:4:"file";s:14:"2016/03/ph.png";s:5:"sizes";a:11:{s:9:"thumbnail";a:5:{s:4:"file";s:14:"ph-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";s:20:"ewww_image_optimizer";s:30:"Reduced by 42.0% (1.2&nbsp;kB)";}s:6:"medium";a:5:{s:4:"file";s:14:"ph-300x150.png";s:5:"width";i:300;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";s:20:"ewww_image_optimizer";s:30:"Reduced by 32.8% (3.1&nbsp;kB)";}s:12:"medium_large";a:5:{s:4:"file";s:14:"ph-768x384.png";s:5:"width";i:768;s:6:"height";i:384;s:9:"mime-type";s:9:"image/png";s:20:"ewww_image_optimizer";s:31:"Reduced by 31.9% (22.4&nbsp;kB)";}s:5:"large";a:5:{s:4:"file";s:15:"ph-1024x512.png";s:5:"width";i:1024;s:6:"height";i:512;s:9:"mime-type";s:9:"image/png";s:20:"ewww_image_optimizer";s:30:"Reduced by 25.7% (9.2&nbsp;kB)";}s:14:"shop_thumbnail";a:5:{s:4:"file";s:14:"ph-180x180.png";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:9:"image/png";s:20:"ewww_image_optimizer";s:30:"Reduced by 42.0% (2.2&nbsp;kB)";}s:12:"shop_catalog";a:5:{s:4:"file";s:14:"ph-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";s:20:"ewww_image_optimizer";s:30:"Reduced by 42.4% (3.2&nbsp;kB)";}s:11:"shop_single";a:5:{s:4:"file";s:14:"ph-600x600.png";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:9:"image/png";s:20:"ewww_image_optimizer";s:30:"Reduced by 43.9% (8.5&nbsp;kB)";}s:22:"eightstore-promo-small";a:5:{s:4:"file";s:14:"ph-520x260.png";s:5:"width";i:520;s:6:"height";i:260;s:9:"mime-type";s:9:"image/png";s:20:"ewww_image_optimizer";s:31:"Reduced by 40.4% (11.5&nbsp;kB)";}s:22:"eightstore-promo-large";a:5:{s:4:"file";s:14:"ph-520x520.png";s:5:"width";i:520;s:6:"height";i:520;s:9:"mime-type";s:9:"image/png";s:20:"ewww_image_optimizer";s:31:"Reduced by 58.0% (19.1&nbsp;kB)";}s:21:"eightstore-blog-image";a:5:{s:4:"file";s:14:"ph-290x260.png";s:5:"width";i:290;s:6:"height";i:260;s:9:"mime-type";s:9:"image/png";s:20:"ewww_image_optimizer";s:31:"Reduced by 60.4% (15.5&nbsp;kB)";}s:28:"eightstore-testimonial-image";a:5:{s:4:"file";s:12:"ph-70x70.png";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:9:"image/png";s:20:"ewww_image_optimizer";s:31:"Reduced by 34.7% (535.0&nbsp;B)";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:20:"ewww_image_optimizer";s:31:"Reduced by 20.6% (11.8&nbsp;kB)";}'),
(18, 14, '_thumbnail_id', '15'),
(21, 14, 'eightstore_lite_sidebar_layout', 'sidebar-right'),
(22, 17, '_edit_lock', '1457770354:1'),
(23, 17, '_edit_last', '1'),
(24, 17, 'field_56e3cec919945', 'a:14:{s:3:"key";s:19:"field_56e3cec919945";s:5:"label";s:12:"Redirect Url";s:4:"name";s:12:"redirect_url";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(27, 17, 'position', 'normal'),
(28, 17, 'layout', 'no_box'),
(29, 17, 'hide_on_screen', ''),
(30, 17, 'rule', 'a:5:{s:5:"param";s:13:"post_category";s:8:"operator";s:2:"==";s:5:"value";s:2:"10";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(31, 17, 'rule', 'a:5:{s:5:"param";s:13:"post_category";s:8:"operator";s:2:"==";s:5:"value";s:1:"7";s:8:"order_no";i:0;s:8:"group_no";i:1;}'),
(34, 18, 'redirect_url', 'http://localhost/onefabshop/'),
(35, 18, '_redirect_url', 'field_56e3cec919945'),
(36, 14, 'redirect_url', 'http://localhost/onefabshop/'),
(37, 14, '_redirect_url', 'field_56e3cec919945'),
(38, 19, '_edit_lock', '1458052460:1'),
(39, 19, '_edit_last', '1'),
(40, 20, '_wp_attached_file', '2016/03/guess2-banner-2.jpg'),
(41, 20, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1919;s:6:"height";i:814;s:4:"file";s:27:"2016/03/guess2-banner-2.jpg";s:5:"sizes";a:11:{s:9:"thumbnail";a:5:{s:4:"file";s:27:"guess2-banner-2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 7.5% (707.0&nbsp;B)";}s:6:"medium";a:5:{s:4:"file";s:27:"guess2-banner-2-300x127.jpg";s:5:"width";i:300;s:6:"height";i:127;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 6.4% (776.0&nbsp;B)";}s:12:"medium_large";a:5:{s:4:"file";s:27:"guess2-banner-2-768x326.jpg";s:5:"width";i:768;s:6:"height";i:326;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 5.6% (3.3&nbsp;kB)";}s:5:"large";a:5:{s:4:"file";s:28:"guess2-banner-2-1024x434.jpg";s:5:"width";i:1024;s:6:"height";i:434;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 5.1% (4.9&nbsp;kB)";}s:14:"shop_thumbnail";a:5:{s:4:"file";s:27:"guess2-banner-2-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 7.1% (910.0&nbsp;B)";}s:12:"shop_catalog";a:5:{s:4:"file";s:27:"guess2-banner-2-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 6.9% (2.0&nbsp;kB)";}s:11:"shop_single";a:5:{s:4:"file";s:27:"guess2-banner-2-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 5.2% (4.8&nbsp;kB)";}s:22:"eightstore-promo-small";a:5:{s:4:"file";s:27:"guess2-banner-2-520x260.jpg";s:5:"width";i:520;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 5.9% (2.1&nbsp;kB)";}s:22:"eightstore-promo-large";a:5:{s:4:"file";s:27:"guess2-banner-2-520x520.jpg";s:5:"width";i:520;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 5.7% (4.2&nbsp;kB)";}s:21:"eightstore-blog-image";a:5:{s:4:"file";s:27:"guess2-banner-2-290x260.jpg";s:5:"width";i:290;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 6.5% (1.6&nbsp;kB)";}s:28:"eightstore-testimonial-image";a:5:{s:4:"file";s:25:"guess2-banner-2-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:31:"Reduced by 13.6% (426.0&nbsp;B)";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:20:"ewww_image_optimizer";s:29:"Reduced by 1.7% (4.0&nbsp;kB)";}'),
(44, 22, '_wp_attached_file', '2016/03/man-img.jpg'),
(45, 22, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:390;s:6:"height";i:382;s:4:"file";s:19:"2016/03/man-img.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:5:{s:4:"file";s:19:"man-img-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 9.7% (442.0&nbsp;B)";}s:6:"medium";a:5:{s:4:"file";s:19:"man-img-300x294.jpg";s:5:"width";i:300;s:6:"height";i:294;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 8.1% (942.0&nbsp;B)";}s:14:"shop_thumbnail";a:5:{s:4:"file";s:19:"man-img-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 7.5% (452.0&nbsp;B)";}s:12:"shop_catalog";a:5:{s:4:"file";s:19:"man-img-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 7.5% (883.0&nbsp;B)";}s:22:"eightstore-promo-small";a:5:{s:4:"file";s:19:"man-img-390x260.jpg";s:5:"width";i:390;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 9.6% (1.1&nbsp;kB)";}s:21:"eightstore-blog-image";a:5:{s:4:"file";s:19:"man-img-290x260.jpg";s:5:"width";i:290;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 7.5% (767.0&nbsp;B)";}s:28:"eightstore-testimonial-image";a:5:{s:4:"file";s:17:"man-img-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:31:"Reduced by 19.5% (382.0&nbsp;B)";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:20:"ewww_image_optimizer";s:30:"Reduced by 24.5% (1.9&nbsp;kB)";}'),
(48, 24, '_wp_attached_file', '2016/03/Unknown-6.jpg'),
(49, 24, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:520;s:6:"height";i:520;s:4:"file";s:21:"2016/03/Unknown-6.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:5:{s:4:"file";s:21:"Unknown-6-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 8.0% (391.0&nbsp;B)";}s:6:"medium";a:5:{s:4:"file";s:21:"Unknown-6-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 4.4% (538.0&nbsp;B)";}s:14:"shop_thumbnail";a:5:{s:4:"file";s:21:"Unknown-6-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 6.5% (410.0&nbsp;B)";}s:12:"shop_catalog";a:5:{s:4:"file";s:21:"Unknown-6-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:10:"No savings";}s:22:"eightstore-promo-small";a:5:{s:4:"file";s:21:"Unknown-6-520x260.jpg";s:5:"width";i:520;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 6.7% (811.0&nbsp;B)";}s:21:"eightstore-blog-image";a:5:{s:4:"file";s:21:"Unknown-6-290x260.jpg";s:5:"width";i:290;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 4.9% (513.0&nbsp;B)";}s:28:"eightstore-testimonial-image";a:5:{s:4:"file";s:19:"Unknown-6-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:31:"Reduced by 18.2% (385.0&nbsp;B)";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:20:"ewww_image_optimizer";s:29:"Reduced by 6.8% (1.6&nbsp;kB)";}'),
(50, 25, '_wp_attached_file', '2016/03/Unknown-7.jpg'),
(51, 25, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:520;s:6:"height";i:520;s:4:"file";s:21:"2016/03/Unknown-7.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:5:{s:4:"file";s:21:"Unknown-7-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 6.8% (403.0&nbsp;B)";}s:6:"medium";a:5:{s:4:"file";s:21:"Unknown-7-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 4.2% (731.0&nbsp;B)";}s:14:"shop_thumbnail";a:5:{s:4:"file";s:21:"Unknown-7-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 5.3% (417.0&nbsp;B)";}s:12:"shop_catalog";a:5:{s:4:"file";s:21:"Unknown-7-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:10:"No savings";}s:22:"eightstore-promo-small";a:5:{s:4:"file";s:21:"Unknown-7-520x260.jpg";s:5:"width";i:520;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 4.4% (1.1&nbsp;kB)";}s:21:"eightstore-blog-image";a:5:{s:4:"file";s:21:"Unknown-7-290x260.jpg";s:5:"width";i:290;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 4.4% (674.0&nbsp;B)";}s:28:"eightstore-testimonial-image";a:5:{s:4:"file";s:19:"Unknown-7-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:31:"Reduced by 17.6% (386.0&nbsp;B)";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:20:"ewww_image_optimizer";s:30:"Reduced by 23.0% (7.7&nbsp;kB)";}'),
(52, 26, '_wp_attached_file', '2016/03/Unknown-62.jpg'),
(53, 26, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:378;s:6:"height";i:174;s:4:"file";s:22:"2016/03/Unknown-62.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:5:{s:4:"file";s:22:"Unknown-62-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 7.2% (475.0&nbsp;B)";}s:6:"medium";a:5:{s:4:"file";s:22:"Unknown-62-300x138.jpg";s:5:"width";i:300;s:6:"height";i:138;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 8.3% (762.0&nbsp;B)";}s:14:"shop_thumbnail";a:5:{s:4:"file";s:22:"Unknown-62-180x174.jpg";s:5:"width";i:180;s:6:"height";i:174;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 7.5% (684.0&nbsp;B)";}s:12:"shop_catalog";a:5:{s:4:"file";s:22:"Unknown-62-300x174.jpg";s:5:"width";i:300;s:6:"height";i:174;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:32:"Reduced by 8.0% (1,020.0&nbsp;B)";}s:21:"eightstore-blog-image";a:5:{s:4:"file";s:22:"Unknown-62-290x174.jpg";s:5:"width";i:290;s:6:"height";i:174;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 8.2% (1.0&nbsp;kB)";}s:28:"eightstore-testimonial-image";a:5:{s:4:"file";s:20:"Unknown-62-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:31:"Reduced by 16.6% (381.0&nbsp;B)";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:20:"ewww_image_optimizer";s:29:"Reduced by 9.2% (1.3&nbsp;kB)";}'),
(54, 27, '_wp_attached_file', '2016/03/video-bkg.jpg'),
(55, 27, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1400;s:6:"height";i:174;s:4:"file";s:21:"2016/03/video-bkg.jpg";s:5:"sizes";a:11:{s:9:"thumbnail";a:5:{s:4:"file";s:21:"video-bkg-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 9.0% (390.0&nbsp;B)";}s:6:"medium";a:5:{s:4:"file";s:20:"video-bkg-300x37.jpg";s:5:"width";i:300;s:6:"height";i:37;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:31:"Reduced by 12.9% (362.0&nbsp;B)";}s:12:"medium_large";a:5:{s:4:"file";s:20:"video-bkg-768x95.jpg";s:5:"width";i:768;s:6:"height";i:95;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 5.2% (444.0&nbsp;B)";}s:5:"large";a:5:{s:4:"file";s:22:"video-bkg-1024x127.jpg";s:5:"width";i:1024;s:6:"height";i:127;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 4.3% (551.0&nbsp;B)";}s:14:"shop_thumbnail";a:5:{s:4:"file";s:21:"video-bkg-180x174.jpg";s:5:"width";i:180;s:6:"height";i:174;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 9.6% (486.0&nbsp;B)";}s:12:"shop_catalog";a:5:{s:4:"file";s:21:"video-bkg-300x174.jpg";s:5:"width";i:300;s:6:"height";i:174;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 7.8% (594.0&nbsp;B)";}s:11:"shop_single";a:5:{s:4:"file";s:21:"video-bkg-600x174.jpg";s:5:"width";i:600;s:6:"height";i:174;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 24.3% (2.1&nbsp;kB)";}s:22:"eightstore-promo-small";a:5:{s:4:"file";s:21:"video-bkg-520x174.jpg";s:5:"width";i:520;s:6:"height";i:174;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 21.0% (1.8&nbsp;kB)";}s:22:"eightstore-promo-large";a:5:{s:4:"file";s:21:"video-bkg-520x174.jpg";s:5:"width";i:520;s:6:"height";i:174;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:10:"No savings";}s:21:"eightstore-blog-image";a:5:{s:4:"file";s:21:"video-bkg-290x174.jpg";s:5:"width";i:290;s:6:"height";i:174;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 7.2% (547.0&nbsp;B)";}s:28:"eightstore-testimonial-image";a:5:{s:4:"file";s:19:"video-bkg-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:31:"Reduced by 19.3% (369.0&nbsp;B)";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:20:"ewww_image_optimizer";s:31:"Reduced by 11.1% (843.0&nbsp;B)";}'),
(56, 28, '_wp_attached_file', '2016/03/women-img.jpg'),
(57, 28, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:578;s:6:"height";i:565;s:4:"file";s:21:"2016/03/women-img.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:5:{s:4:"file";s:21:"women-img-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 7.2% (545.0&nbsp;B)";}s:6:"medium";a:5:{s:4:"file";s:21:"women-img-300x293.jpg";s:5:"width";i:300;s:6:"height";i:293;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 5.9% (1.2&nbsp;kB)";}s:14:"shop_thumbnail";a:5:{s:4:"file";s:21:"women-img-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 6.9% (684.0&nbsp;B)";}s:12:"shop_catalog";a:5:{s:4:"file";s:21:"women-img-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 5.9% (1.2&nbsp;kB)";}s:22:"eightstore-promo-small";a:5:{s:4:"file";s:21:"women-img-520x260.jpg";s:5:"width";i:520;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 5.9% (1.6&nbsp;kB)";}s:22:"eightstore-promo-large";a:5:{s:4:"file";s:21:"women-img-520x520.jpg";s:5:"width";i:520;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 5.2% (2.4&nbsp;kB)";}s:21:"eightstore-blog-image";a:5:{s:4:"file";s:21:"women-img-290x260.jpg";s:5:"width";i:290;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 6.1% (1.1&nbsp;kB)";}s:28:"eightstore-testimonial-image";a:5:{s:4:"file";s:19:"women-img-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:31:"Reduced by 14.8% (410.0&nbsp;B)";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:20:"ewww_image_optimizer";s:30:"Reduced by 16.1% (3.5&nbsp;kB)";}'),
(58, 29, '_wp_attached_file', '2016/03/guess-banner.jpg'),
(59, 29, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1919;s:6:"height";i:814;s:4:"file";s:24:"2016/03/guess-banner.jpg";s:5:"sizes";a:11:{s:9:"thumbnail";a:5:{s:4:"file";s:24:"guess-banner-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 6.3% (447.0&nbsp;B)";}s:6:"medium";a:5:{s:4:"file";s:24:"guess-banner-300x127.jpg";s:5:"width";i:300;s:6:"height";i:127;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 7.3% (1.0&nbsp;kB)";}s:12:"medium_large";a:5:{s:4:"file";s:24:"guess-banner-768x326.jpg";s:5:"width";i:768;s:6:"height";i:326;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 5.8% (3.7&nbsp;kB)";}s:5:"large";a:5:{s:4:"file";s:25:"guess-banner-1024x434.jpg";s:5:"width";i:1024;s:6:"height";i:434;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 5.3% (5.4&nbsp;kB)";}s:14:"shop_thumbnail";a:5:{s:4:"file";s:24:"guess-banner-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 5.3% (496.0&nbsp;B)";}s:12:"shop_catalog";a:5:{s:4:"file";s:24:"guess-banner-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 5.1% (1.0&nbsp;kB)";}s:11:"shop_single";a:5:{s:4:"file";s:24:"guess-banner-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 4.1% (2.5&nbsp;kB)";}s:22:"eightstore-promo-small";a:5:{s:4:"file";s:24:"guess-banner-520x260.jpg";s:5:"width";i:520;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 5.9% (2.2&nbsp;kB)";}s:22:"eightstore-promo-large";a:5:{s:4:"file";s:24:"guess-banner-520x520.jpg";s:5:"width";i:520;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 4.6% (2.2&nbsp;kB)";}s:21:"eightstore-blog-image";a:5:{s:4:"file";s:24:"guess-banner-290x260.jpg";s:5:"width";i:290;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 4.9% (925.0&nbsp;B)";}s:28:"eightstore-testimonial-image";a:5:{s:4:"file";s:22:"guess-banner-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:31:"Reduced by 14.6% (379.0&nbsp;B)";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:20:"ewww_image_optimizer";s:29:"Reduced by 0.7% (1.7&nbsp;kB)";}'),
(63, 19, 'eightstore_lite_sidebar_layout', 'sidebar-right'),
(64, 31, '_edit_lock', '1457770617:1'),
(65, 31, '_thumbnail_id', '24'),
(66, 31, '_edit_last', '1'),
(69, 32, 'redirect_url', 'http://localhost/onefabshop/ae/shop/men'),
(70, 32, '_redirect_url', 'field_56e3cec919945'),
(71, 31, 'eightstore_lite_sidebar_layout', 'sidebar-right'),
(72, 31, 'redirect_url', 'http://localhost/onefabshop/ae/shop/men'),
(73, 31, '_redirect_url', 'field_56e3cec919945'),
(74, 33, '_edit_lock', '1457770715:1'),
(75, 33, '_edit_last', '1'),
(76, 34, '_wp_attached_file', '2016/03/bags.jpg'),
(77, 34, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:378;s:6:"height";i:174;s:4:"file";s:16:"2016/03/bags.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:5:{s:4:"file";s:16:"bags-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 8.1% (502.0&nbsp;B)";}s:6:"medium";a:5:{s:4:"file";s:16:"bags-300x138.jpg";s:5:"width";i:300;s:6:"height";i:138;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 7.3% (638.0&nbsp;B)";}s:14:"shop_thumbnail";a:5:{s:4:"file";s:16:"bags-180x174.jpg";s:5:"width";i:180;s:6:"height";i:174;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 6.9% (555.0&nbsp;B)";}s:12:"shop_catalog";a:5:{s:4:"file";s:16:"bags-300x174.jpg";s:5:"width";i:300;s:6:"height";i:174;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 6.8% (758.0&nbsp;B)";}s:21:"eightstore-blog-image";a:5:{s:4:"file";s:16:"bags-290x174.jpg";s:5:"width";i:290;s:6:"height";i:174;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 6.8% (743.0&nbsp;B)";}s:28:"eightstore-testimonial-image";a:5:{s:4:"file";s:14:"bags-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:31:"Reduced by 16.6% (420.0&nbsp;B)";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:20:"ewww_image_optimizer";s:30:"Reduced by 6.9% (842.0&nbsp;B)";}'),
(78, 35, '_wp_attached_file', '2016/03/Unknown-52.jpg'),
(79, 35, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:520;s:6:"height";i:238;s:4:"file";s:22:"2016/03/Unknown-52.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:5:{s:4:"file";s:22:"Unknown-52-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 9.4% (439.0&nbsp;B)";}s:6:"medium";a:5:{s:4:"file";s:22:"Unknown-52-300x137.jpg";s:5:"width";i:300;s:6:"height";i:137;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 7.5% (505.0&nbsp;B)";}s:14:"shop_thumbnail";a:5:{s:4:"file";s:22:"Unknown-52-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 8.3% (496.0&nbsp;B)";}s:12:"shop_catalog";a:5:{s:4:"file";s:22:"Unknown-52-300x238.jpg";s:5:"width";i:300;s:6:"height";i:238;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 8.5% (803.0&nbsp;B)";}s:22:"eightstore-promo-small";a:5:{s:4:"file";s:22:"Unknown-52-520x238.jpg";s:5:"width";i:520;s:6:"height";i:238;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 25.0% (2.8&nbsp;kB)";}s:22:"eightstore-promo-large";a:5:{s:4:"file";s:22:"Unknown-52-520x238.jpg";s:5:"width";i:520;s:6:"height";i:238;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:10:"No savings";}s:21:"eightstore-blog-image";a:5:{s:4:"file";s:22:"Unknown-52-290x238.jpg";s:5:"width";i:290;s:6:"height";i:238;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 8.7% (806.0&nbsp;B)";}s:28:"eightstore-testimonial-image";a:5:{s:4:"file";s:20:"Unknown-52-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:31:"Reduced by 20.0% (380.0&nbsp;B)";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:20:"ewww_image_optimizer";s:30:"Reduced by 24.9% (2.8&nbsp;kB)";}'),
(80, 33, '_thumbnail_id', '35'),
(83, 36, 'redirect_url', 'http://localhost/onefabshop/ae/tag/shoes/'),
(84, 36, '_redirect_url', 'field_56e3cec919945'),
(85, 33, 'eightstore_lite_sidebar_layout', 'sidebar-right'),
(86, 33, 'redirect_url', 'http://localhost/onefabshop/ae/tag/shoes/'),
(87, 33, '_redirect_url', 'field_56e3cec919945'),
(88, 37, '_edit_lock', '1457770767:1'),
(89, 37, '_edit_last', '1'),
(90, 37, '_thumbnail_id', '34'),
(93, 38, 'redirect_url', 'http://localhost/onefabshop/ae/tag/bags/'),
(94, 38, '_redirect_url', 'field_56e3cec919945'),
(95, 37, 'eightstore_lite_sidebar_layout', 'sidebar-right'),
(96, 37, 'redirect_url', 'http://localhost/onefabshop/ae/tag/bags/'),
(97, 37, '_redirect_url', 'field_56e3cec919945'),
(98, 39, '_edit_lock', '1457770797:1'),
(99, 39, '_thumbnail_id', '25'),
(100, 39, '_edit_last', '1'),
(103, 40, 'redirect_url', 'http://localhost/onefabshop/ae/shop/women'),
(104, 40, '_redirect_url', 'field_56e3cec919945'),
(105, 39, 'eightstore_lite_sidebar_layout', 'sidebar-right'),
(106, 39, 'redirect_url', 'http://localhost/onefabshop/ae/shop/women'),
(107, 39, '_redirect_url', 'field_56e3cec919945'),
(108, 41, '_edit_lock', '1458051867:1'),
(109, 41, '_edit_last', '1'),
(113, 41, 'eightstore_lite_sidebar_layout', 'sidebar-right'),
(114, 43, '_edit_lock', '1457770861:1'),
(115, 43, '_edit_last', '1'),
(116, 43, '_wp_page_template', 'default'),
(117, 43, 'eightstore_lite_sidebar_layout', 'sidebar-right'),
(118, 45, '_edit_last', '1'),
(119, 45, '_wp_page_template', 'default'),
(120, 45, 'eightstore_lite_sidebar_layout', 'sidebar-right'),
(121, 45, '_edit_lock', '1457770881:1'),
(122, 47, '_edit_lock', '1457771450:1'),
(123, 47, '_edit_last', '1'),
(124, 47, '_thumbnail_id', '25'),
(127, 47, 'eightstore_lite_sidebar_layout', 'sidebar-right'),
(128, 49, '_menu_item_type', 'post_type'),
(129, 49, '_menu_item_menu_item_parent', '0'),
(130, 49, '_menu_item_object_id', '11'),
(131, 49, '_menu_item_object', 'page'),
(132, 49, '_menu_item_target', ''),
(133, 49, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(134, 49, '_menu_item_xfn', ''),
(135, 49, '_menu_item_url', ''),
(164, 53, '_menu_item_type', 'post_type'),
(165, 53, '_menu_item_menu_item_parent', '0'),
(166, 53, '_menu_item_object_id', '6'),
(167, 53, '_menu_item_object', 'page'),
(168, 53, '_menu_item_target', ''),
(169, 53, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(170, 53, '_menu_item_xfn', ''),
(171, 53, '_menu_item_url', ''),
(191, 56, '_menu_item_type', 'post_type'),
(192, 56, '_menu_item_menu_item_parent', '0'),
(193, 56, '_menu_item_object_id', '3'),
(194, 56, '_menu_item_object', 'page'),
(195, 56, '_menu_item_target', ''),
(196, 56, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(197, 56, '_menu_item_xfn', ''),
(198, 56, '_menu_item_url', ''),
(209, 58, '_menu_item_type', 'taxonomy'),
(210, 58, '_menu_item_menu_item_parent', '0'),
(211, 58, '_menu_item_object_id', '6'),
(212, 58, '_menu_item_object', 'category'),
(213, 58, '_menu_item_target', ''),
(214, 58, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(215, 58, '_menu_item_xfn', ''),
(216, 58, '_menu_item_url', ''),
(218, 2, '_edit_lock', '1457771664:1'),
(219, 2, '_edit_last', '1'),
(221, 2, 'eightstore_lite_sidebar_layout', 'sidebar-right'),
(222, 2, 'custom_permalink', 'about'),
(223, 61, '_menu_item_type', 'post_type'),
(224, 61, '_menu_item_menu_item_parent', '0'),
(225, 61, '_menu_item_object_id', '2'),
(226, 61, '_menu_item_object', 'page'),
(227, 61, '_menu_item_target', ''),
(228, 61, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(229, 61, '_menu_item_xfn', ''),
(230, 61, '_menu_item_url', ''),
(232, 62, '_menu_item_type', 'post_type'),
(233, 62, '_menu_item_menu_item_parent', '0'),
(234, 62, '_menu_item_object_id', '45'),
(235, 62, '_menu_item_object', 'page'),
(236, 62, '_menu_item_target', ''),
(237, 62, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(238, 62, '_menu_item_xfn', ''),
(239, 62, '_menu_item_url', ''),
(241, 63, '_menu_item_type', 'post_type'),
(242, 63, '_menu_item_menu_item_parent', '0'),
(243, 63, '_menu_item_object_id', '43'),
(244, 63, '_menu_item_object', 'page'),
(245, 63, '_menu_item_target', ''),
(246, 63, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(247, 63, '_menu_item_xfn', ''),
(248, 63, '_menu_item_url', ''),
(250, 64, '_menu_item_type', 'post_type'),
(251, 64, '_menu_item_menu_item_parent', '0'),
(252, 64, '_menu_item_object_id', '11'),
(253, 64, '_menu_item_object', 'page'),
(254, 64, '_menu_item_target', ''),
(255, 64, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(256, 64, '_menu_item_xfn', ''),
(257, 64, '_menu_item_url', ''),
(259, 65, '_menu_item_type', 'post_type'),
(260, 65, '_menu_item_menu_item_parent', '0'),
(261, 65, '_menu_item_object_id', '3'),
(262, 65, '_menu_item_object', 'page'),
(263, 65, '_menu_item_target', ''),
(264, 65, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(265, 65, '_menu_item_xfn', ''),
(266, 65, '_menu_item_url', ''),
(268, 66, '_menu_item_type', 'post_type'),
(269, 66, '_menu_item_menu_item_parent', '0'),
(270, 66, '_menu_item_object_id', '2'),
(271, 66, '_menu_item_object', 'page'),
(272, 66, '_menu_item_target', ''),
(273, 66, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(274, 66, '_menu_item_xfn', ''),
(275, 66, '_menu_item_url', ''),
(277, 67, '_menu_item_type', 'taxonomy'),
(278, 67, '_menu_item_menu_item_parent', '0'),
(279, 67, '_menu_item_object_id', '6'),
(280, 67, '_menu_item_object', 'category'),
(281, 67, '_menu_item_target', ''),
(282, 67, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(283, 67, '_menu_item_xfn', ''),
(284, 67, '_menu_item_url', ''),
(286, 68, '_menu_item_type', 'custom'),
(287, 68, '_menu_item_menu_item_parent', '0'),
(288, 68, '_menu_item_object_id', '68'),
(289, 68, '_menu_item_object', 'custom'),
(290, 68, '_menu_item_target', ''),
(291, 68, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(292, 68, '_menu_item_xfn', ''),
(293, 68, '_menu_item_url', 'http://localhost/onefabshop/ae/shop/women/'),
(295, 69, '_menu_item_type', 'custom'),
(296, 69, '_menu_item_menu_item_parent', '0'),
(297, 69, '_menu_item_object_id', '69'),
(298, 69, '_menu_item_object', 'custom'),
(299, 69, '_menu_item_target', ''),
(300, 69, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(301, 69, '_menu_item_xfn', ''),
(302, 69, '_menu_item_url', 'http://localhost/onefabshop/ae/shop/men/'),
(304, 70, '_menu_item_type', 'custom'),
(305, 70, '_menu_item_menu_item_parent', '68'),
(306, 70, '_menu_item_object_id', '70'),
(307, 70, '_menu_item_object', 'custom'),
(308, 70, '_menu_item_target', ''),
(309, 70, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(310, 70, '_menu_item_xfn', ''),
(311, 70, '_menu_item_url', 'http://localhost/onefabshop/ae/shop/women/shoes-women/'),
(313, 71, '_menu_item_type', 'custom'),
(314, 71, '_menu_item_menu_item_parent', '68'),
(315, 71, '_menu_item_object_id', '71'),
(316, 71, '_menu_item_object', 'custom'),
(317, 71, '_menu_item_target', ''),
(318, 71, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(319, 71, '_menu_item_xfn', ''),
(320, 71, '_menu_item_url', 'http://localhost/onefabshop/ae/shop/women/apparels-women/'),
(322, 72, '_menu_item_type', 'custom'),
(323, 72, '_menu_item_menu_item_parent', '68'),
(324, 72, '_menu_item_object_id', '72'),
(325, 72, '_menu_item_object', 'custom'),
(326, 72, '_menu_item_target', ''),
(327, 72, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(328, 72, '_menu_item_xfn', ''),
(329, 72, '_menu_item_url', 'http://localhost/onefabshop/ae/shop/women/bags-women/'),
(331, 73, '_menu_item_type', 'custom'),
(332, 73, '_menu_item_menu_item_parent', '68'),
(333, 73, '_menu_item_object_id', '73'),
(334, 73, '_menu_item_object', 'custom'),
(335, 73, '_menu_item_target', ''),
(336, 73, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(337, 73, '_menu_item_xfn', ''),
(338, 73, '_menu_item_url', 'http://localhost/onefabshop/ae/shop/women/accessories-women/'),
(340, 74, '_menu_item_type', 'custom'),
(341, 74, '_menu_item_menu_item_parent', '0'),
(342, 74, '_menu_item_object_id', '74'),
(343, 74, '_menu_item_object', 'custom'),
(344, 74, '_menu_item_target', ''),
(345, 74, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(346, 74, '_menu_item_xfn', ''),
(347, 74, '_menu_item_url', 'http://localhost/onefabshop/ae/shop/men/'),
(348, 74, '_menu_item_orphaned', '1457774430'),
(349, 75, '_menu_item_type', 'custom'),
(350, 75, '_menu_item_menu_item_parent', '69'),
(351, 75, '_menu_item_object_id', '75'),
(352, 75, '_menu_item_object', 'custom'),
(353, 75, '_menu_item_target', ''),
(354, 75, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(355, 75, '_menu_item_xfn', ''),
(356, 75, '_menu_item_url', 'http://localhost/onefabshop/ae/shop/men/shoes-men/'),
(358, 76, '_menu_item_type', 'custom'),
(359, 76, '_menu_item_menu_item_parent', '69'),
(360, 76, '_menu_item_object_id', '76'),
(361, 76, '_menu_item_object', 'custom'),
(362, 76, '_menu_item_target', ''),
(363, 76, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(364, 76, '_menu_item_xfn', ''),
(365, 76, '_menu_item_url', 'http://localhost/onefabshop/ae/shop/men/apparels-men/'),
(367, 77, '_menu_item_type', 'custom'),
(368, 77, '_menu_item_menu_item_parent', '69'),
(369, 77, '_menu_item_object_id', '77'),
(370, 77, '_menu_item_object', 'custom'),
(371, 77, '_menu_item_target', ''),
(372, 77, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(373, 77, '_menu_item_xfn', ''),
(374, 77, '_menu_item_url', 'http://localhost/onefabshop/ae/shop/men/bags-men/'),
(376, 78, '_menu_item_type', 'custom'),
(377, 78, '_menu_item_menu_item_parent', '69'),
(378, 78, '_menu_item_object_id', '78'),
(379, 78, '_menu_item_object', 'custom'),
(380, 78, '_menu_item_target', ''),
(381, 78, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(382, 78, '_menu_item_xfn', ''),
(383, 78, '_menu_item_url', 'http://localhost/onefabshop/ae/shop/men/accessories-men/'),
(385, 79, '_menu_item_type', 'custom'),
(386, 79, '_menu_item_menu_item_parent', '0'),
(387, 79, '_menu_item_object_id', '79'),
(388, 79, '_menu_item_object', 'custom'),
(389, 79, '_menu_item_target', ''),
(390, 79, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(391, 79, '_menu_item_xfn', ''),
(392, 79, '_menu_item_url', 'http://localhost/onefabshop/ae/tag/shoes'),
(394, 80, '_menu_item_type', 'custom'),
(395, 80, '_menu_item_menu_item_parent', '0'),
(396, 80, '_menu_item_object_id', '80'),
(397, 80, '_menu_item_object', 'custom'),
(398, 80, '_menu_item_target', ''),
(399, 80, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(400, 80, '_menu_item_xfn', ''),
(401, 80, '_menu_item_url', 'http://localhost/onefabshop/ae/tag/apparels'),
(403, 81, '_menu_item_type', 'custom'),
(404, 81, '_menu_item_menu_item_parent', '0'),
(405, 81, '_menu_item_object_id', '81'),
(406, 81, '_menu_item_object', 'custom'),
(407, 81, '_menu_item_target', ''),
(408, 81, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(409, 81, '_menu_item_xfn', ''),
(410, 81, '_menu_item_url', 'http://localhost/onefabshop/ae/tag/bags'),
(412, 82, '_menu_item_type', 'custom'),
(413, 82, '_menu_item_menu_item_parent', '0'),
(414, 82, '_menu_item_object_id', '82'),
(415, 82, '_menu_item_object', 'custom'),
(416, 82, '_menu_item_target', ''),
(417, 82, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(418, 82, '_menu_item_xfn', ''),
(419, 82, '_menu_item_url', 'http://localhost/onefabshop/ae/tag/accessories'),
(420, 83, '_edit_lock', '1457869596:1'),
(421, 83, '_edit_last', '1'),
(422, 83, '_thumbnail_id', '34'),
(423, 83, '_visibility', 'visible'),
(424, 83, '_stock_status', 'instock'),
(425, 83, 'total_sales', '0'),
(426, 83, '_downloadable', 'no'),
(427, 83, '_virtual', 'no'),
(428, 83, '_purchase_note', ''),
(429, 83, '_featured', 'no'),
(430, 83, '_weight', ''),
(431, 83, '_length', ''),
(432, 83, '_width', ''),
(433, 83, '_height', ''),
(434, 83, '_sku', '123'),
(435, 83, '_product_attributes', 'a:3:{s:9:"pa_brands";a:6:{s:4:"name";s:9:"pa_brands";s:5:"value";s:0:"";s:8:"position";s:1:"0";s:10:"is_visible";i:1;s:12:"is_variation";i:0;s:11:"is_taxonomy";i:1;}s:9:"pa_colors";a:6:{s:4:"name";s:9:"pa_colors";s:5:"value";s:0:"";s:8:"position";s:1:"1";s:10:"is_visible";i:1;s:12:"is_variation";i:0;s:11:"is_taxonomy";i:1;}s:14:"pa_subcategory";a:6:{s:4:"name";s:14:"pa_subcategory";s:5:"value";s:0:"";s:8:"position";s:1:"2";s:10:"is_visible";i:1;s:12:"is_variation";i:0;s:11:"is_taxonomy";i:1;}}'),
(436, 83, '_regular_price', '123'),
(437, 83, '_sale_price', '12'),
(438, 83, '_sale_price_dates_from', ''),
(439, 83, '_sale_price_dates_to', ''),
(440, 83, '_price', '12'),
(441, 83, '_sold_individually', ''),
(442, 83, '_manage_stock', 'no'),
(443, 83, '_backorders', 'no'),
(444, 83, '_stock', ''),
(445, 83, '_upsell_ids', 'a:0:{}'),
(446, 83, '_crosssell_ids', 'a:0:{}'),
(447, 83, '_product_version', '2.5.5'),
(448, 83, '_product_image_gallery', ''),
(449, 83, '_wc_rating_count', 'a:0:{}'),
(450, 83, '_wc_average_rating', '0'),
(451, 83, '_wc_review_count', '0'),
(452, 84, '_menu_item_type', 'taxonomy'),
(453, 84, '_menu_item_menu_item_parent', '0'),
(454, 84, '_menu_item_object_id', '23'),
(455, 84, '_menu_item_object', 'product_tag'),
(456, 84, '_menu_item_target', ''),
(457, 84, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(458, 84, '_menu_item_xfn', ''),
(459, 84, '_menu_item_url', ''),
(460, 84, '_menu_item_orphaned', '1457869472'),
(461, 85, '_menu_item_type', 'taxonomy'),
(462, 85, '_menu_item_menu_item_parent', '100'),
(463, 85, '_menu_item_object_id', '53'),
(464, 85, '_menu_item_object', 'product_tag'),
(465, 85, '_menu_item_target', ''),
(466, 85, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(467, 85, '_menu_item_xfn', ''),
(468, 85, '_menu_item_url', ''),
(470, 86, '_menu_item_type', 'taxonomy'),
(471, 86, '_menu_item_menu_item_parent', '100'),
(472, 86, '_menu_item_object_id', '54'),
(473, 86, '_menu_item_object', 'product_tag'),
(474, 86, '_menu_item_target', ''),
(475, 86, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(476, 86, '_menu_item_xfn', ''),
(477, 86, '_menu_item_url', ''),
(479, 87, '_menu_item_type', 'taxonomy'),
(480, 87, '_menu_item_menu_item_parent', '100'),
(481, 87, '_menu_item_object_id', '55'),
(482, 87, '_menu_item_object', 'product_tag'),
(483, 87, '_menu_item_target', ''),
(484, 87, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(485, 87, '_menu_item_xfn', ''),
(486, 87, '_menu_item_url', ''),
(488, 88, '_menu_item_type', 'taxonomy'),
(489, 88, '_menu_item_menu_item_parent', '0'),
(490, 88, '_menu_item_object_id', '24'),
(491, 88, '_menu_item_object', 'product_tag'),
(492, 88, '_menu_item_target', ''),
(493, 88, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(494, 88, '_menu_item_xfn', ''),
(495, 88, '_menu_item_url', ''),
(496, 88, '_menu_item_orphaned', '1457869473'),
(497, 89, '_menu_item_type', 'taxonomy'),
(498, 89, '_menu_item_menu_item_parent', '0'),
(499, 89, '_menu_item_object_id', '25'),
(500, 89, '_menu_item_object', 'product_tag'),
(501, 89, '_menu_item_target', ''),
(502, 89, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(503, 89, '_menu_item_xfn', ''),
(504, 89, '_menu_item_url', ''),
(505, 89, '_menu_item_orphaned', '1457869473'),
(506, 90, '_menu_item_type', 'taxonomy'),
(507, 90, '_menu_item_menu_item_parent', '100'),
(508, 90, '_menu_item_object_id', '56'),
(509, 90, '_menu_item_object', 'product_tag'),
(510, 90, '_menu_item_target', ''),
(511, 90, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(512, 90, '_menu_item_xfn', ''),
(513, 90, '_menu_item_url', ''),
(515, 91, '_menu_item_type', 'taxonomy'),
(516, 91, '_menu_item_menu_item_parent', '100'),
(517, 91, '_menu_item_object_id', '57'),
(518, 91, '_menu_item_object', 'product_tag'),
(519, 91, '_menu_item_target', ''),
(520, 91, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(521, 91, '_menu_item_xfn', ''),
(522, 91, '_menu_item_url', ''),
(524, 92, '_menu_item_type', 'taxonomy'),
(525, 92, '_menu_item_menu_item_parent', '100'),
(526, 92, '_menu_item_object_id', '58'),
(527, 92, '_menu_item_object', 'product_tag'),
(528, 92, '_menu_item_target', ''),
(529, 92, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(530, 92, '_menu_item_xfn', ''),
(531, 92, '_menu_item_url', ''),
(533, 93, '_menu_item_type', 'taxonomy'),
(534, 93, '_menu_item_menu_item_parent', '100'),
(535, 93, '_menu_item_object_id', '59'),
(536, 93, '_menu_item_object', 'product_tag'),
(537, 93, '_menu_item_target', ''),
(538, 93, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(539, 93, '_menu_item_xfn', ''),
(540, 93, '_menu_item_url', ''),
(542, 94, '_menu_item_type', 'taxonomy'),
(543, 94, '_menu_item_menu_item_parent', '100'),
(544, 94, '_menu_item_object_id', '60'),
(545, 94, '_menu_item_object', 'product_tag'),
(546, 94, '_menu_item_target', ''),
(547, 94, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(548, 94, '_menu_item_xfn', ''),
(549, 94, '_menu_item_url', ''),
(551, 95, '_menu_item_type', 'taxonomy'),
(552, 95, '_menu_item_menu_item_parent', '100'),
(553, 95, '_menu_item_object_id', '61'),
(554, 95, '_menu_item_object', 'product_tag'),
(555, 95, '_menu_item_target', ''),
(556, 95, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(557, 95, '_menu_item_xfn', ''),
(558, 95, '_menu_item_url', ''),
(560, 96, '_menu_item_type', 'taxonomy'),
(561, 96, '_menu_item_menu_item_parent', '100'),
(562, 96, '_menu_item_object_id', '62'),
(563, 96, '_menu_item_object', 'product_tag'),
(564, 96, '_menu_item_target', ''),
(565, 96, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(566, 96, '_menu_item_xfn', ''),
(567, 96, '_menu_item_url', ''),
(569, 97, '_menu_item_type', 'taxonomy'),
(570, 97, '_menu_item_menu_item_parent', '100'),
(571, 97, '_menu_item_object_id', '63'),
(572, 97, '_menu_item_object', 'product_tag'),
(573, 97, '_menu_item_target', ''),
(574, 97, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(575, 97, '_menu_item_xfn', ''),
(576, 97, '_menu_item_url', ''),
(578, 98, '_menu_item_type', 'taxonomy'),
(579, 98, '_menu_item_menu_item_parent', '0'),
(580, 98, '_menu_item_object_id', '26'),
(581, 98, '_menu_item_object', 'product_tag'),
(582, 98, '_menu_item_target', ''),
(583, 98, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(584, 98, '_menu_item_xfn', ''),
(585, 98, '_menu_item_url', ''),
(586, 98, '_menu_item_orphaned', '1457869473'),
(587, 99, '_menu_item_type', 'taxonomy'),
(588, 99, '_menu_item_menu_item_parent', '100'),
(589, 99, '_menu_item_object_id', '64'),
(590, 99, '_menu_item_object', 'product_tag'),
(591, 99, '_menu_item_target', ''),
(592, 99, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(593, 99, '_menu_item_xfn', ''),
(594, 99, '_menu_item_url', ''),
(596, 100, '_menu_item_type', 'custom'),
(597, 100, '_menu_item_menu_item_parent', '0'),
(598, 100, '_menu_item_object_id', '100'),
(599, 100, '_menu_item_object', 'custom'),
(600, 100, '_menu_item_target', ''),
(601, 100, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(602, 100, '_menu_item_xfn', ''),
(603, 100, '_menu_item_url', 'http://localhost/onefabshop/ae/tag/adidas/'),
(605, 101, '_edit_lock', '1457963370:1'),
(606, 101, '_edit_last', '1'),
(607, 101, '_product_attributes', 'a:3:{s:9:"pa_brands";a:6:{s:4:"name";s:9:"pa_brands";s:5:"value";s:0:"";s:8:"position";s:1:"0";s:10:"is_visible";i:1;s:12:"is_variation";i:0;s:11:"is_taxonomy";i:1;}s:9:"pa_colors";a:6:{s:4:"name";s:9:"pa_colors";s:5:"value";s:0:"";s:8:"position";s:1:"1";s:10:"is_visible";i:1;s:12:"is_variation";i:0;s:11:"is_taxonomy";i:1;}s:14:"pa_subcategory";a:6:{s:4:"name";s:14:"pa_subcategory";s:5:"value";s:0:"";s:8:"position";s:1:"2";s:10:"is_visible";i:1;s:12:"is_variation";i:0;s:11:"is_taxonomy";i:1;}}'),
(608, 101, '_visibility', 'visible'),
(609, 101, '_stock_status', 'instock'),
(610, 101, 'total_sales', '0'),
(611, 101, '_downloadable', 'no'),
(612, 101, '_virtual', 'no'),
(613, 101, '_purchase_note', ''),
(614, 101, '_featured', 'no'),
(615, 101, '_weight', ''),
(616, 101, '_length', ''),
(617, 101, '_width', ''),
(618, 101, '_height', ''),
(619, 101, '_regular_price', '123123'),
(620, 101, '_sale_price', '12312'),
(621, 101, '_sale_price_dates_from', ''),
(622, 101, '_sale_price_dates_to', ''),
(623, 101, '_price', '12312'),
(624, 101, '_sold_individually', ''),
(625, 101, '_manage_stock', 'no'),
(626, 101, '_backorders', 'no'),
(627, 101, '_stock', ''),
(628, 101, '_upsell_ids', 'a:0:{}'),
(629, 101, '_crosssell_ids', 'a:0:{}'),
(630, 101, '_product_version', '2.5.5'),
(631, 101, '_product_image_gallery', ''),
(632, 101, '_wc_rating_count', 'a:0:{}'),
(633, 101, '_wc_average_rating', '0'),
(635, 101, '_sku', ''),
(636, 102, '_edit_lock', '1457964285:1'),
(637, 102, '_edit_last', '1'),
(638, 103, '_wp_attached_file', '2016/03/FB_IMG_1457952275670.jpg');
INSERT INTO `ofs2616_2_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(639, 103, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:720;s:6:"height";i:1055;s:4:"file";s:32:"2016/03/FB_IMG_1457952275670.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:5:{s:4:"file";s:32:"FB_IMG_1457952275670-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:54:"Reduced by 12.4% (473.0&nbsp;B) - Previously Optimized";}s:6:"medium";a:5:{s:4:"file";s:32:"FB_IMG_1457952275670-205x300.jpg";s:5:"width";i:205;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:53:"Reduced by 9.6% (745.0&nbsp;B) - Previously Optimized";}s:5:"large";a:5:{s:4:"file";s:33:"FB_IMG_1457952275670-699x1024.jpg";s:5:"width";i:699;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:52:"Reduced by 6.0% (3.5&nbsp;kB) - Previously Optimized";}s:14:"shop_thumbnail";a:5:{s:4:"file";s:32:"FB_IMG_1457952275670-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:54:"Reduced by 10.7% (551.0&nbsp;B) - Previously Optimized";}s:12:"shop_catalog";a:5:{s:4:"file";s:32:"FB_IMG_1457952275670-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:53:"Reduced by 6.6% (812.0&nbsp;B) - Previously Optimized";}s:11:"shop_single";a:5:{s:4:"file";s:32:"FB_IMG_1457952275670-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:52:"Reduced by 4.4% (1.6&nbsp;kB) - Previously Optimized";}s:22:"eightstore-promo-small";a:5:{s:4:"file";s:32:"FB_IMG_1457952275670-520x260.jpg";s:5:"width";i:520;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:53:"Reduced by 3.5% (698.0&nbsp;B) - Previously Optimized";}s:22:"eightstore-promo-large";a:5:{s:4:"file";s:32:"FB_IMG_1457952275670-520x520.jpg";s:5:"width";i:520;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:52:"Reduced by 4.6% (1.4&nbsp;kB) - Previously Optimized";}s:21:"eightstore-blog-image";a:5:{s:4:"file";s:32:"FB_IMG_1457952275670-290x260.jpg";s:5:"width";i:290;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:53:"Reduced by 6.8% (747.0&nbsp;B) - Previously Optimized";}s:28:"eightstore-testimonial-image";a:5:{s:4:"file";s:30:"FB_IMG_1457952275670-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:54:"Reduced by 23.7% (394.0&nbsp;B) - Previously Optimized";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:20:"ewww_image_optimizer";s:33:"No savings - Previously Optimized";}'),
(640, 102, '_thumbnail_id', '103'),
(641, 102, '_product_attributes', 'a:3:{s:9:"pa_brands";a:6:{s:4:"name";s:9:"pa_brands";s:5:"value";s:0:"";s:8:"position";s:1:"0";s:10:"is_visible";i:1;s:12:"is_variation";i:0;s:11:"is_taxonomy";i:1;}s:9:"pa_colors";a:6:{s:4:"name";s:9:"pa_colors";s:5:"value";s:0:"";s:8:"position";s:1:"1";s:10:"is_visible";i:1;s:12:"is_variation";i:0;s:11:"is_taxonomy";i:1;}s:14:"pa_subcategory";a:6:{s:4:"name";s:14:"pa_subcategory";s:5:"value";s:0:"";s:8:"position";s:1:"2";s:10:"is_visible";i:1;s:12:"is_variation";i:0;s:11:"is_taxonomy";i:1;}}'),
(642, 102, '_visibility', 'visible'),
(643, 102, '_stock_status', 'instock'),
(644, 102, 'total_sales', '0'),
(645, 102, '_downloadable', 'no'),
(646, 102, '_virtual', 'no'),
(647, 102, '_purchase_note', ''),
(648, 102, '_featured', 'no'),
(649, 102, '_weight', ''),
(650, 102, '_length', '9.5'),
(651, 102, '_width', '2'),
(652, 102, '_height', '7'),
(653, 102, '_sku', 'KS-HLSC'),
(654, 102, '_regular_price', '580'),
(655, 102, '_sale_price', ''),
(656, 102, '_sale_price_dates_from', ''),
(657, 102, '_sale_price_dates_to', ''),
(658, 102, '_price', '580'),
(659, 102, '_sold_individually', ''),
(660, 102, '_manage_stock', 'no'),
(661, 102, '_backorders', 'no'),
(662, 102, '_stock', ''),
(663, 102, '_upsell_ids', 'a:0:{}'),
(664, 102, '_crosssell_ids', 'a:0:{}'),
(665, 102, '_product_version', '2.5.5'),
(666, 102, '_product_image_gallery', '104,105,106'),
(667, 102, '_wc_rating_count', 'a:0:{}'),
(668, 102, '_wc_average_rating', '0'),
(669, 102, '_wc_review_count', '0'),
(670, 104, '_wp_attached_file', '2016/03/FB_IMG_1457952284617.jpg'),
(671, 104, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:720;s:6:"height";i:1226;s:4:"file";s:32:"2016/03/FB_IMG_1457952284617.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:5:{s:4:"file";s:32:"FB_IMG_1457952284617-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:52:"Reduced by 9.7% (1.1&nbsp;kB) - Previously Optimized";}s:6:"medium";a:5:{s:4:"file";s:32:"FB_IMG_1457952284617-176x300.jpg";s:5:"width";i:176;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:52:"Reduced by 8.6% (1.8&nbsp;kB) - Previously Optimized";}s:5:"large";a:5:{s:4:"file";s:33:"FB_IMG_1457952284617-601x1024.jpg";s:5:"width";i:601;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:52:"Reduced by 6.4% (7.7&nbsp;kB) - Previously Optimized";}s:14:"shop_thumbnail";a:5:{s:4:"file";s:32:"FB_IMG_1457952284617-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:52:"Reduced by 9.1% (1.3&nbsp;kB) - Previously Optimized";}s:12:"shop_catalog";a:5:{s:4:"file";s:32:"FB_IMG_1457952284617-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:52:"Reduced by 8.3% (2.4&nbsp;kB) - Previously Optimized";}s:11:"shop_single";a:5:{s:4:"file";s:32:"FB_IMG_1457952284617-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:52:"Reduced by 6.7% (5.1&nbsp;kB) - Previously Optimized";}s:22:"eightstore-promo-small";a:5:{s:4:"file";s:32:"FB_IMG_1457952284617-520x260.jpg";s:5:"width";i:520;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:52:"Reduced by 6.7% (2.0&nbsp;kB) - Previously Optimized";}s:22:"eightstore-promo-large";a:5:{s:4:"file";s:32:"FB_IMG_1457952284617-520x520.jpg";s:5:"width";i:520;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:52:"Reduced by 7.0% (4.4&nbsp;kB) - Previously Optimized";}s:21:"eightstore-blog-image";a:5:{s:4:"file";s:32:"FB_IMG_1457952284617-290x260.jpg";s:5:"width";i:290;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:52:"Reduced by 8.5% (2.2&nbsp;kB) - Previously Optimized";}s:28:"eightstore-testimonial-image";a:5:{s:4:"file";s:30:"FB_IMG_1457952284617-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:54:"Reduced by 11.7% (434.0&nbsp;B) - Previously Optimized";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:20:"ewww_image_optimizer";s:33:"No savings - Previously Optimized";}'),
(672, 105, '_wp_attached_file', '2016/03/FB_IMG_1457952291056.jpg'),
(673, 105, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:720;s:6:"height";i:1140;s:4:"file";s:32:"2016/03/FB_IMG_1457952291056.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:5:{s:4:"file";s:32:"FB_IMG_1457952291056-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:53:"Reduced by 9.0% (535.0&nbsp;B) - Previously Optimized";}s:6:"medium";a:5:{s:4:"file";s:32:"FB_IMG_1457952291056-189x300.jpg";s:5:"width";i:189;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:53:"Reduced by 5.7% (668.0&nbsp;B) - Previously Optimized";}s:5:"large";a:5:{s:4:"file";s:33:"FB_IMG_1457952291056-647x1024.jpg";s:5:"width";i:647;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:52:"Reduced by 4.1% (2.9&nbsp;kB) - Previously Optimized";}s:14:"shop_thumbnail";a:5:{s:4:"file";s:32:"FB_IMG_1457952291056-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:53:"Reduced by 7.5% (574.0&nbsp;B) - Previously Optimized";}s:12:"shop_catalog";a:5:{s:4:"file";s:32:"FB_IMG_1457952291056-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:53:"Reduced by 4.9% (789.0&nbsp;B) - Previously Optimized";}s:11:"shop_single";a:5:{s:4:"file";s:32:"FB_IMG_1457952291056-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:52:"Reduced by 4.4% (1.9&nbsp;kB) - Previously Optimized";}s:22:"eightstore-promo-small";a:5:{s:4:"file";s:32:"FB_IMG_1457952291056-520x260.jpg";s:5:"width";i:520;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:53:"Reduced by 4.5% (783.0&nbsp;B) - Previously Optimized";}s:22:"eightstore-promo-large";a:5:{s:4:"file";s:32:"FB_IMG_1457952291056-520x520.jpg";s:5:"width";i:520;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:52:"Reduced by 4.3% (1.5&nbsp;kB) - Previously Optimized";}s:21:"eightstore-blog-image";a:5:{s:4:"file";s:32:"FB_IMG_1457952291056-290x260.jpg";s:5:"width";i:290;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:53:"Reduced by 5.0% (676.0&nbsp;B) - Previously Optimized";}s:28:"eightstore-testimonial-image";a:5:{s:4:"file";s:30:"FB_IMG_1457952291056-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:54:"Reduced by 17.3% (426.0&nbsp;B) - Previously Optimized";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:20:"ewww_image_optimizer";s:33:"No savings - Previously Optimized";}'),
(674, 106, '_wp_attached_file', '2016/03/FB_IMG_1457952295961.jpg'),
(675, 106, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:720;s:6:"height";i:1067;s:4:"file";s:32:"2016/03/FB_IMG_1457952295961.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:5:{s:4:"file";s:32:"FB_IMG_1457952295961-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:54:"Reduced by 10.5% (486.0&nbsp;B) - Previously Optimized";}s:6:"medium";a:5:{s:4:"file";s:32:"FB_IMG_1457952295961-202x300.jpg";s:5:"width";i:202;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:53:"Reduced by 8.3% (776.0&nbsp;B) - Previously Optimized";}s:5:"large";a:5:{s:4:"file";s:33:"FB_IMG_1457952295961-691x1024.jpg";s:5:"width";i:691;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:52:"Reduced by 5.1% (3.5&nbsp;kB) - Previously Optimized";}s:14:"shop_thumbnail";a:5:{s:4:"file";s:32:"FB_IMG_1457952295961-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:53:"Reduced by 9.4% (620.0&nbsp;B) - Previously Optimized";}s:12:"shop_catalog";a:5:{s:4:"file";s:32:"FB_IMG_1457952295961-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:52:"Reduced by 7.2% (1.1&nbsp;kB) - Previously Optimized";}s:11:"shop_single";a:5:{s:4:"file";s:32:"FB_IMG_1457952295961-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:52:"Reduced by 3.8% (1.8&nbsp;kB) - Previously Optimized";}s:22:"eightstore-promo-small";a:5:{s:4:"file";s:32:"FB_IMG_1457952295961-520x260.jpg";s:5:"width";i:520;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:53:"Reduced by 3.6% (884.0&nbsp;B) - Previously Optimized";}s:22:"eightstore-promo-large";a:5:{s:4:"file";s:32:"FB_IMG_1457952295961-520x520.jpg";s:5:"width";i:520;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:52:"Reduced by 3.9% (1.5&nbsp;kB) - Previously Optimized";}s:21:"eightstore-blog-image";a:5:{s:4:"file";s:32:"FB_IMG_1457952295961-290x260.jpg";s:5:"width";i:290;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:52:"Reduced by 7.7% (1.0&nbsp;kB) - Previously Optimized";}s:28:"eightstore-testimonial-image";a:5:{s:4:"file";s:30:"FB_IMG_1457952295961-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:54:"Reduced by 20.9% (406.0&nbsp;B) - Previously Optimized";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:20:"ewww_image_optimizer";s:33:"No savings - Previously Optimized";}'),
(676, 101, '_wp_trash_meta_status', 'publish'),
(677, 101, '_wp_trash_meta_time', '1457967190'),
(678, 83, '_wp_trash_meta_status', 'publish'),
(679, 83, '_wp_trash_meta_time', '1457967190'),
(680, 107, '_edit_lock', '1457967481:1'),
(681, 107, '_edit_last', '1'),
(682, 107, '_wp_trash_meta_status', 'draft'),
(683, 107, '_wp_trash_meta_time', '1457967488'),
(684, 108, '_edit_lock', '1457967713:1'),
(685, 108, '_edit_last', '1'),
(686, 109, '_wp_attached_file', '2016/03/FB_IMG_1457952527684.jpg'),
(687, 109, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:720;s:6:"height";i:1145;s:4:"file";s:32:"2016/03/FB_IMG_1457952527684.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:5:{s:4:"file";s:32:"FB_IMG_1457952527684-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 9.6% (470.0&nbsp;B)";}s:6:"medium";a:5:{s:4:"file";s:32:"FB_IMG_1457952527684-189x300.jpg";s:5:"width";i:189;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 6.0% (577.0&nbsp;B)";}s:5:"large";a:5:{s:4:"file";s:33:"FB_IMG_1457952527684-644x1024.jpg";s:5:"width";i:644;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 5.6% (2.9&nbsp;kB)";}s:14:"shop_thumbnail";a:5:{s:4:"file";s:32:"FB_IMG_1457952527684-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 8.1% (511.0&nbsp;B)";}s:12:"shop_catalog";a:5:{s:4:"file";s:32:"FB_IMG_1457952527684-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 5.2% (668.0&nbsp;B)";}s:11:"shop_single";a:5:{s:4:"file";s:32:"FB_IMG_1457952527684-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 4.8% (1.6&nbsp;kB)";}s:22:"eightstore-promo-small";a:5:{s:4:"file";s:32:"FB_IMG_1457952527684-520x260.jpg";s:5:"width";i:520;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 5.4% (759.0&nbsp;B)";}s:22:"eightstore-promo-large";a:5:{s:4:"file";s:32:"FB_IMG_1457952527684-520x520.jpg";s:5:"width";i:520;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 4.5% (1.2&nbsp;kB)";}s:21:"eightstore-blog-image";a:5:{s:4:"file";s:32:"FB_IMG_1457952527684-290x260.jpg";s:5:"width";i:290;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 5.6% (619.0&nbsp;B)";}s:28:"eightstore-testimonial-image";a:5:{s:4:"file";s:30:"FB_IMG_1457952527684-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:31:"Reduced by 18.7% (406.0&nbsp;B)";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:20:"ewww_image_optimizer";s:10:"No savings";}'),
(688, 110, '_wp_attached_file', '2016/03/FB_IMG_1457952530331.jpg'),
(689, 110, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:720;s:6:"height";i:1127;s:4:"file";s:32:"2016/03/FB_IMG_1457952530331.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:5:{s:4:"file";s:32:"FB_IMG_1457952530331-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 8.4% (414.0&nbsp;B)";}s:6:"medium";a:5:{s:4:"file";s:32:"FB_IMG_1457952530331-192x300.jpg";s:5:"width";i:192;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 6.1% (503.0&nbsp;B)";}s:5:"large";a:5:{s:4:"file";s:33:"FB_IMG_1457952530331-654x1024.jpg";s:5:"width";i:654;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 5.6% (3.2&nbsp;kB)";}s:14:"shop_thumbnail";a:5:{s:4:"file";s:32:"FB_IMG_1457952530331-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 6.9% (450.0&nbsp;B)";}s:12:"shop_catalog";a:5:{s:4:"file";s:32:"FB_IMG_1457952530331-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 4.4% (632.0&nbsp;B)";}s:11:"shop_single";a:5:{s:4:"file";s:32:"FB_IMG_1457952530331-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 4.4% (1.9&nbsp;kB)";}s:22:"eightstore-promo-small";a:5:{s:4:"file";s:32:"FB_IMG_1457952530331-520x260.jpg";s:5:"width";i:520;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 4.3% (986.0&nbsp;B)";}s:22:"eightstore-promo-large";a:5:{s:4:"file";s:32:"FB_IMG_1457952530331-520x520.jpg";s:5:"width";i:520;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 4.5% (1.5&nbsp;kB)";}s:21:"eightstore-blog-image";a:5:{s:4:"file";s:32:"FB_IMG_1457952530331-290x260.jpg";s:5:"width";i:290;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 4.5% (560.0&nbsp;B)";}s:28:"eightstore-testimonial-image";a:5:{s:4:"file";s:30:"FB_IMG_1457952530331-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:31:"Reduced by 18.4% (385.0&nbsp;B)";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:20:"ewww_image_optimizer";s:10:"No savings";}'),
(690, 111, '_wp_attached_file', '2016/03/FB_IMG_1457952534292.jpg'),
(691, 111, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:720;s:6:"height";i:1071;s:4:"file";s:32:"2016/03/FB_IMG_1457952534292.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:5:{s:4:"file";s:32:"FB_IMG_1457952534292-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:31:"Reduced by 10.0% (435.0&nbsp;B)";}s:6:"medium";a:5:{s:4:"file";s:32:"FB_IMG_1457952534292-202x300.jpg";s:5:"width";i:202;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 6.8% (575.0&nbsp;B)";}s:5:"large";a:5:{s:4:"file";s:33:"FB_IMG_1457952534292-688x1024.jpg";s:5:"width";i:688;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 5.9% (3.0&nbsp;kB)";}s:14:"shop_thumbnail";a:5:{s:4:"file";s:32:"FB_IMG_1457952534292-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 7.7% (439.0&nbsp;B)";}s:12:"shop_catalog";a:5:{s:4:"file";s:32:"FB_IMG_1457952534292-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 5.3% (600.0&nbsp;B)";}s:11:"shop_single";a:5:{s:4:"file";s:32:"FB_IMG_1457952534292-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 5.3% (1.6&nbsp;kB)";}s:22:"eightstore-promo-small";a:5:{s:4:"file";s:32:"FB_IMG_1457952534292-520x260.jpg";s:5:"width";i:520;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 5.2% (834.0&nbsp;B)";}s:22:"eightstore-promo-large";a:5:{s:4:"file";s:32:"FB_IMG_1457952534292-520x520.jpg";s:5:"width";i:520;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 5.3% (1.3&nbsp;kB)";}s:21:"eightstore-blog-image";a:5:{s:4:"file";s:32:"FB_IMG_1457952534292-290x260.jpg";s:5:"width";i:290;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 6.0% (601.0&nbsp;B)";}s:28:"eightstore-testimonial-image";a:5:{s:4:"file";s:30:"FB_IMG_1457952534292-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:31:"Reduced by 20.8% (381.0&nbsp;B)";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:20:"ewww_image_optimizer";s:10:"No savings";}'),
(692, 112, '_wp_attached_file', '2016/03/FB_IMG_1457952537124.jpg'),
(693, 112, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:720;s:6:"height";i:1133;s:4:"file";s:32:"2016/03/FB_IMG_1457952537124.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:5:{s:4:"file";s:32:"FB_IMG_1457952537124-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 9.8% (1.1&nbsp;kB)";}s:6:"medium";a:5:{s:4:"file";s:32:"FB_IMG_1457952537124-191x300.jpg";s:5:"width";i:191;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 9.3% (1.8&nbsp;kB)";}s:5:"large";a:5:{s:4:"file";s:33:"FB_IMG_1457952537124-651x1024.jpg";s:5:"width";i:651;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 8.3% (9.4&nbsp;kB)";}s:14:"shop_thumbnail";a:5:{s:4:"file";s:32:"FB_IMG_1457952537124-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 9.8% (1.4&nbsp;kB)";}s:12:"shop_catalog";a:5:{s:4:"file";s:32:"FB_IMG_1457952537124-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 10.3% (3.1&nbsp;kB)";}s:11:"shop_single";a:5:{s:4:"file";s:32:"FB_IMG_1457952537124-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 9.0% (7.2&nbsp;kB)";}s:22:"eightstore-promo-small";a:5:{s:4:"file";s:32:"FB_IMG_1457952537124-520x260.jpg";s:5:"width";i:520;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 10.0% (3.5&nbsp;kB)";}s:22:"eightstore-promo-large";a:5:{s:4:"file";s:32:"FB_IMG_1457952537124-520x520.jpg";s:5:"width";i:520;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 9.6% (6.3&nbsp;kB)";}s:21:"eightstore-blog-image";a:5:{s:4:"file";s:32:"FB_IMG_1457952537124-290x260.jpg";s:5:"width";i:290;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 10.1% (2.7&nbsp;kB)";}s:28:"eightstore-testimonial-image";a:5:{s:4:"file";s:30:"FB_IMG_1457952537124-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:31:"Reduced by 12.0% (433.0&nbsp;B)";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:20:"ewww_image_optimizer";s:10:"No savings";}'),
(694, 108, '_thumbnail_id', '111'),
(695, 108, '_visibility', 'visible'),
(696, 108, '_stock_status', 'instock'),
(697, 108, 'total_sales', '0'),
(698, 108, '_downloadable', 'no'),
(699, 108, '_virtual', 'no'),
(700, 108, '_purchase_note', ''),
(701, 108, '_featured', 'no'),
(702, 108, '_weight', ''),
(703, 108, '_length', ''),
(704, 108, '_width', ''),
(705, 108, '_height', ''),
(706, 108, '_sku', 'KS-IPGC'),
(707, 108, '_product_attributes', 'a:3:{s:9:"pa_brands";a:6:{s:4:"name";s:9:"pa_brands";s:5:"value";s:0:"";s:8:"position";s:1:"0";s:10:"is_visible";i:1;s:12:"is_variation";i:0;s:11:"is_taxonomy";i:1;}s:9:"pa_colors";a:6:{s:4:"name";s:9:"pa_colors";s:5:"value";s:0:"";s:8:"position";s:1:"1";s:10:"is_visible";i:1;s:12:"is_variation";i:0;s:11:"is_taxonomy";i:1;}s:14:"pa_subcategory";a:6:{s:4:"name";s:14:"pa_subcategory";s:5:"value";s:0:"";s:8:"position";s:1:"2";s:10:"is_visible";i:1;s:12:"is_variation";i:0;s:11:"is_taxonomy";i:1;}}'),
(708, 108, '_regular_price', '580'),
(709, 108, '_sale_price', ''),
(710, 108, '_sale_price_dates_from', ''),
(711, 108, '_sale_price_dates_to', ''),
(712, 108, '_price', '580'),
(713, 108, '_sold_individually', ''),
(714, 108, '_manage_stock', 'no'),
(715, 108, '_backorders', 'no'),
(716, 108, '_stock', ''),
(717, 108, '_upsell_ids', 'a:0:{}'),
(718, 108, '_crosssell_ids', 'a:0:{}'),
(719, 108, '_product_version', '2.5.5'),
(720, 108, '_product_image_gallery', '111,110,112'),
(721, 108, '_wc_rating_count', 'a:0:{}'),
(722, 108, '_wc_review_count', '0'),
(723, 108, '_wc_average_rating', '0'),
(724, 113, '_edit_lock', '1457967944:1'),
(725, 113, '_edit_last', '1'),
(726, 113, '_product_attributes', 'a:3:{s:9:"pa_brands";a:6:{s:4:"name";s:9:"pa_brands";s:5:"value";s:0:"";s:8:"position";s:1:"0";s:10:"is_visible";i:1;s:12:"is_variation";i:0;s:11:"is_taxonomy";i:1;}s:9:"pa_colors";a:6:{s:4:"name";s:9:"pa_colors";s:5:"value";s:0:"";s:8:"position";s:1:"1";s:10:"is_visible";i:1;s:12:"is_variation";i:0;s:11:"is_taxonomy";i:1;}s:14:"pa_subcategory";a:6:{s:4:"name";s:14:"pa_subcategory";s:5:"value";s:0:"";s:8:"position";s:1:"2";s:10:"is_visible";i:1;s:12:"is_variation";i:0;s:11:"is_taxonomy";i:1;}}'),
(727, 114, '_wp_attached_file', '2016/03/FB_IMG_1457952640133.jpg'),
(728, 114, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:720;s:6:"height";i:1088;s:4:"file";s:32:"2016/03/FB_IMG_1457952640133.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:5:{s:4:"file";s:32:"FB_IMG_1457952640133-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:31:"Reduced by 11.7% (428.0&nbsp;B)";}s:6:"medium";a:5:{s:4:"file";s:32:"FB_IMG_1457952640133-199x300.jpg";s:5:"width";i:199;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 8.8% (629.0&nbsp;B)";}s:5:"large";a:5:{s:4:"file";s:33:"FB_IMG_1457952640133-678x1024.jpg";s:5:"width";i:678;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 7.8% (3.6&nbsp;kB)";}s:14:"shop_thumbnail";a:5:{s:4:"file";s:32:"FB_IMG_1457952640133-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 9.6% (462.0&nbsp;B)";}s:12:"shop_catalog";a:5:{s:4:"file";s:32:"FB_IMG_1457952640133-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 6.9% (726.0&nbsp;B)";}s:11:"shop_single";a:5:{s:4:"file";s:32:"FB_IMG_1457952640133-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 6.4% (1.9&nbsp;kB)";}s:22:"eightstore-promo-small";a:5:{s:4:"file";s:32:"FB_IMG_1457952640133-520x260.jpg";s:5:"width";i:520;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 4.8% (802.0&nbsp;B)";}s:22:"eightstore-promo-large";a:5:{s:4:"file";s:32:"FB_IMG_1457952640133-520x520.jpg";s:5:"width";i:520;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 6.3% (1.5&nbsp;kB)";}s:21:"eightstore-blog-image";a:5:{s:4:"file";s:32:"FB_IMG_1457952640133-290x260.jpg";s:5:"width";i:290;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 6.8% (634.0&nbsp;B)";}s:28:"eightstore-testimonial-image";a:5:{s:4:"file";s:30:"FB_IMG_1457952640133-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:31:"Reduced by 23.5% (368.0&nbsp;B)";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:20:"ewww_image_optimizer";s:10:"No savings";}'),
(729, 115, '_wp_attached_file', '2016/03/FB_IMG_1457952643184.jpg'),
(730, 115, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:720;s:6:"height";i:1150;s:4:"file";s:32:"2016/03/FB_IMG_1457952643184.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:5:{s:4:"file";s:32:"FB_IMG_1457952643184-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 6.0% (465.0&nbsp;B)";}s:6:"medium";a:5:{s:4:"file";s:32:"FB_IMG_1457952643184-188x300.jpg";s:5:"width";i:188;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 5.7% (792.0&nbsp;B)";}s:5:"large";a:5:{s:4:"file";s:33:"FB_IMG_1457952643184-641x1024.jpg";s:5:"width";i:641;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 5.3% (4.7&nbsp;kB)";}s:14:"shop_thumbnail";a:5:{s:4:"file";s:32:"FB_IMG_1457952643184-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 5.6% (579.0&nbsp;B)";}s:12:"shop_catalog";a:5:{s:4:"file";s:32:"FB_IMG_1457952643184-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 5.3% (1.2&nbsp;kB)";}s:11:"shop_single";a:5:{s:4:"file";s:32:"FB_IMG_1457952643184-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 4.8% (3.0&nbsp;kB)";}s:22:"eightstore-promo-small";a:5:{s:4:"file";s:32:"FB_IMG_1457952643184-520x260.jpg";s:5:"width";i:520;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 4.8% (1.4&nbsp;kB)";}s:22:"eightstore-promo-large";a:5:{s:4:"file";s:32:"FB_IMG_1457952643184-520x520.jpg";s:5:"width";i:520;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 4.8% (2.4&nbsp;kB)";}s:21:"eightstore-blog-image";a:5:{s:4:"file";s:32:"FB_IMG_1457952643184-290x260.jpg";s:5:"width";i:290;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 5.5% (1.1&nbsp;kB)";}s:28:"eightstore-testimonial-image";a:5:{s:4:"file";s:30:"FB_IMG_1457952643184-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:31:"Reduced by 14.4% (386.0&nbsp;B)";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:20:"ewww_image_optimizer";s:10:"No savings";}'),
(731, 116, '_wp_attached_file', '2016/03/FB_IMG_1457952647432.jpg'),
(732, 116, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:720;s:6:"height";i:1144;s:4:"file";s:32:"2016/03/FB_IMG_1457952647432.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:5:{s:4:"file";s:32:"FB_IMG_1457952647432-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:31:"Reduced by 10.1% (582.0&nbsp;B)";}s:6:"medium";a:5:{s:4:"file";s:32:"FB_IMG_1457952647432-189x300.jpg";s:5:"width";i:189;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 6.5% (714.0&nbsp;B)";}s:5:"large";a:5:{s:4:"file";s:33:"FB_IMG_1457952647432-644x1024.jpg";s:5:"width";i:644;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 5.1% (3.1&nbsp;kB)";}s:14:"shop_thumbnail";a:5:{s:4:"file";s:32:"FB_IMG_1457952647432-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 8.4% (620.0&nbsp;B)";}s:12:"shop_catalog";a:5:{s:4:"file";s:32:"FB_IMG_1457952647432-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 5.4% (814.0&nbsp;B)";}s:11:"shop_single";a:5:{s:4:"file";s:32:"FB_IMG_1457952647432-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 4.9% (1.9&nbsp;kB)";}s:22:"eightstore-promo-small";a:5:{s:4:"file";s:32:"FB_IMG_1457952647432-520x260.jpg";s:5:"width";i:520;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 5.1% (895.0&nbsp;B)";}s:22:"eightstore-promo-large";a:5:{s:4:"file";s:32:"FB_IMG_1457952647432-520x520.jpg";s:5:"width";i:520;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 4.8% (1.5&nbsp;kB)";}s:21:"eightstore-blog-image";a:5:{s:4:"file";s:32:"FB_IMG_1457952647432-290x260.jpg";s:5:"width";i:290;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 5.9% (751.0&nbsp;B)";}s:28:"eightstore-testimonial-image";a:5:{s:4:"file";s:30:"FB_IMG_1457952647432-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:31:"Reduced by 19.1% (447.0&nbsp;B)";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:20:"ewww_image_optimizer";s:10:"No savings";}'),
(733, 117, '_wp_attached_file', '2016/03/FB_IMG_1457952650180.jpg'),
(734, 117, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:720;s:6:"height";i:1028;s:4:"file";s:32:"2016/03/FB_IMG_1457952650180.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:5:{s:4:"file";s:32:"FB_IMG_1457952650180-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:31:"Reduced by 11.2% (442.0&nbsp;B)";}s:6:"medium";a:5:{s:4:"file";s:32:"FB_IMG_1457952650180-210x300.jpg";s:5:"width";i:210;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 8.1% (638.0&nbsp;B)";}s:5:"large";a:5:{s:4:"file";s:33:"FB_IMG_1457952650180-717x1024.jpg";s:5:"width";i:717;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 6.9% (4.5&nbsp;kB)";}s:14:"shop_thumbnail";a:5:{s:4:"file";s:32:"FB_IMG_1457952650180-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 9.0% (468.0&nbsp;B)";}s:12:"shop_catalog";a:5:{s:4:"file";s:32:"FB_IMG_1457952650180-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 6.0% (767.0&nbsp;B)";}s:11:"shop_single";a:5:{s:4:"file";s:32:"FB_IMG_1457952650180-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 5.5% (2.4&nbsp;kB)";}s:22:"eightstore-promo-small";a:5:{s:4:"file";s:32:"FB_IMG_1457952650180-520x260.jpg";s:5:"width";i:520;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 5.4% (1.5&nbsp;kB)";}s:22:"eightstore-promo-large";a:5:{s:4:"file";s:32:"FB_IMG_1457952650180-520x520.jpg";s:5:"width";i:520;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 5.9% (2.0&nbsp;kB)";}s:21:"eightstore-blog-image";a:5:{s:4:"file";s:32:"FB_IMG_1457952650180-290x260.jpg";s:5:"width";i:290;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 5.5% (613.0&nbsp;B)";}s:28:"eightstore-testimonial-image";a:5:{s:4:"file";s:30:"FB_IMG_1457952650180-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:31:"Reduced by 23.3% (382.0&nbsp;B)";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:20:"ewww_image_optimizer";s:10:"No savings";}'),
(735, 113, '_thumbnail_id', '114'),
(736, 113, '_visibility', 'visible'),
(737, 113, '_stock_status', 'instock'),
(738, 113, 'total_sales', '0'),
(739, 113, '_downloadable', 'no'),
(740, 113, '_virtual', 'no'),
(741, 113, '_purchase_note', ''),
(742, 113, '_featured', 'no'),
(743, 113, '_weight', ''),
(744, 113, '_length', ''),
(745, 113, '_width', ''),
(746, 113, '_height', ''),
(747, 113, '_sku', 'KS-PHIAC'),
(748, 113, '_regular_price', '700'),
(749, 113, '_sale_price', '599'),
(750, 113, '_sale_price_dates_from', ''),
(751, 113, '_sale_price_dates_to', ''),
(752, 113, '_price', '599'),
(753, 113, '_sold_individually', ''),
(754, 113, '_manage_stock', 'no'),
(755, 113, '_backorders', 'no'),
(756, 113, '_stock', ''),
(757, 113, '_upsell_ids', 'a:0:{}'),
(758, 113, '_crosssell_ids', 'a:0:{}'),
(759, 113, '_product_version', '2.5.5'),
(760, 113, '_product_image_gallery', '117,116,115'),
(761, 113, '_wc_rating_count', 'a:0:{}'),
(762, 113, '_wc_average_rating', '0'),
(763, 118, '_edit_lock', '1457968282:1'),
(764, 118, '_edit_last', '1'),
(765, 118, '_product_attributes', 'a:3:{s:9:"pa_brands";a:6:{s:4:"name";s:9:"pa_brands";s:5:"value";s:0:"";s:8:"position";s:1:"0";s:10:"is_visible";i:1;s:12:"is_variation";i:0;s:11:"is_taxonomy";i:1;}s:9:"pa_colors";a:6:{s:4:"name";s:9:"pa_colors";s:5:"value";s:0:"";s:8:"position";s:1:"1";s:10:"is_visible";i:1;s:12:"is_variation";i:0;s:11:"is_taxonomy";i:1;}s:14:"pa_subcategory";a:6:{s:4:"name";s:14:"pa_subcategory";s:5:"value";s:0:"";s:8:"position";s:1:"2";s:10:"is_visible";i:1;s:12:"is_variation";i:0;s:11:"is_taxonomy";i:1;}}'),
(766, 119, '_wp_attached_file', '2016/03/FB_IMG_1457952722594.jpg'),
(767, 119, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:720;s:6:"height";i:878;s:4:"file";s:32:"2016/03/FB_IMG_1457952722594.jpg";s:5:"sizes";a:9:{s:9:"thumbnail";a:5:{s:4:"file";s:32:"FB_IMG_1457952722594-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 9.7% (448.0&nbsp;B)";}s:6:"medium";a:5:{s:4:"file";s:32:"FB_IMG_1457952722594-246x300.jpg";s:5:"width";i:246;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 7.1% (744.0&nbsp;B)";}s:14:"shop_thumbnail";a:5:{s:4:"file";s:32:"FB_IMG_1457952722594-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 7.7% (474.0&nbsp;B)";}s:12:"shop_catalog";a:5:{s:4:"file";s:32:"FB_IMG_1457952722594-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 5.7% (777.0&nbsp;B)";}s:11:"shop_single";a:5:{s:4:"file";s:32:"FB_IMG_1457952722594-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 4.9% (1.9&nbsp;kB)";}s:22:"eightstore-promo-small";a:5:{s:4:"file";s:32:"FB_IMG_1457952722594-520x260.jpg";s:5:"width";i:520;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 4.3% (810.0&nbsp;B)";}s:22:"eightstore-promo-large";a:5:{s:4:"file";s:32:"FB_IMG_1457952722594-520x520.jpg";s:5:"width";i:520;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 5.2% (1.7&nbsp;kB)";}s:21:"eightstore-blog-image";a:5:{s:4:"file";s:32:"FB_IMG_1457952722594-290x260.jpg";s:5:"width";i:290;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 6.2% (776.0&nbsp;B)";}s:28:"eightstore-testimonial-image";a:5:{s:4:"file";s:30:"FB_IMG_1457952722594-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:31:"Reduced by 19.2% (370.0&nbsp;B)";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:20:"ewww_image_optimizer";s:10:"No savings";}'),
(768, 120, '_wp_attached_file', '2016/03/FB_IMG_1457952726572.jpg'),
(769, 120, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:720;s:6:"height";i:1234;s:4:"file";s:32:"2016/03/FB_IMG_1457952726572.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:5:{s:4:"file";s:32:"FB_IMG_1457952726572-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 6.9% (700.0&nbsp;B)";}s:6:"medium";a:5:{s:4:"file";s:32:"FB_IMG_1457952726572-175x300.jpg";s:5:"width";i:175;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 5.6% (1.1&nbsp;kB)";}s:5:"large";a:5:{s:4:"file";s:33:"FB_IMG_1457952726572-597x1024.jpg";s:5:"width";i:597;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 5.7% (7.9&nbsp;kB)";}s:14:"shop_thumbnail";a:5:{s:4:"file";s:32:"FB_IMG_1457952726572-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 6.2% (874.0&nbsp;B)";}s:12:"shop_catalog";a:5:{s:4:"file";s:32:"FB_IMG_1457952726572-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 6.0% (1.9&nbsp;kB)";}s:11:"shop_single";a:5:{s:4:"file";s:32:"FB_IMG_1457952726572-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 5.7% (5.1&nbsp;kB)";}s:22:"eightstore-promo-small";a:5:{s:4:"file";s:32:"FB_IMG_1457952726572-520x260.jpg";s:5:"width";i:520;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 5.5% (2.0&nbsp;kB)";}s:22:"eightstore-promo-large";a:5:{s:4:"file";s:32:"FB_IMG_1457952726572-520x520.jpg";s:5:"width";i:520;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 5.6% (4.0&nbsp;kB)";}s:21:"eightstore-blog-image";a:5:{s:4:"file";s:32:"FB_IMG_1457952726572-290x260.jpg";s:5:"width";i:290;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 5.9% (1.6&nbsp;kB)";}s:28:"eightstore-testimonial-image";a:5:{s:4:"file";s:30:"FB_IMG_1457952726572-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:31:"Reduced by 12.2% (396.0&nbsp;B)";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:20:"ewww_image_optimizer";s:10:"No savings";}'),
(770, 121, '_wp_attached_file', '2016/03/FB_IMG_1457952731175.jpg'),
(771, 121, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:720;s:6:"height";i:974;s:4:"file";s:32:"2016/03/FB_IMG_1457952731175.jpg";s:5:"sizes";a:9:{s:9:"thumbnail";a:5:{s:4:"file";s:32:"FB_IMG_1457952731175-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 7.4% (410.0&nbsp;B)";}s:6:"medium";a:5:{s:4:"file";s:32:"FB_IMG_1457952731175-222x300.jpg";s:5:"width";i:222;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 5.3% (568.0&nbsp;B)";}s:14:"shop_thumbnail";a:5:{s:4:"file";s:32:"FB_IMG_1457952731175-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 5.6% (416.0&nbsp;B)";}s:12:"shop_catalog";a:5:{s:4:"file";s:32:"FB_IMG_1457952731175-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 5.1% (840.0&nbsp;B)";}s:11:"shop_single";a:5:{s:4:"file";s:32:"FB_IMG_1457952731175-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 4.0% (2.0&nbsp;kB)";}s:22:"eightstore-promo-small";a:5:{s:4:"file";s:32:"FB_IMG_1457952731175-520x260.jpg";s:5:"width";i:520;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 4.6% (1.1&nbsp;kB)";}s:22:"eightstore-promo-large";a:5:{s:4:"file";s:32:"FB_IMG_1457952731175-520x520.jpg";s:5:"width";i:520;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 4.5% (1.8&nbsp;kB)";}s:21:"eightstore-blog-image";a:5:{s:4:"file";s:32:"FB_IMG_1457952731175-290x260.jpg";s:5:"width";i:290;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 5.1% (745.0&nbsp;B)";}s:28:"eightstore-testimonial-image";a:5:{s:4:"file";s:30:"FB_IMG_1457952731175-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:31:"Reduced by 16.9% (374.0&nbsp;B)";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:20:"ewww_image_optimizer";s:10:"No savings";}'),
(772, 122, '_wp_attached_file', '2016/03/FB_IMG_1457952734984.jpg'),
(773, 122, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:720;s:6:"height";i:1154;s:4:"file";s:32:"2016/03/FB_IMG_1457952734984.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:5:{s:4:"file";s:32:"FB_IMG_1457952734984-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 9.3% (501.0&nbsp;B)";}s:6:"medium";a:5:{s:4:"file";s:32:"FB_IMG_1457952734984-187x300.jpg";s:5:"width";i:187;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 6.3% (655.0&nbsp;B)";}s:5:"large";a:5:{s:4:"file";s:33:"FB_IMG_1457952734984-639x1024.jpg";s:5:"width";i:639;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 5.8% (3.2&nbsp;kB)";}s:14:"shop_thumbnail";a:5:{s:4:"file";s:32:"FB_IMG_1457952734984-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 8.0% (546.0&nbsp;B)";}s:12:"shop_catalog";a:5:{s:4:"file";s:32:"FB_IMG_1457952734984-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 5.5% (764.0&nbsp;B)";}s:11:"shop_single";a:5:{s:4:"file";s:32:"FB_IMG_1457952734984-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 5.3% (1.9&nbsp;kB)";}s:22:"eightstore-promo-small";a:5:{s:4:"file";s:32:"FB_IMG_1457952734984-520x260.jpg";s:5:"width";i:520;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 5.3% (827.0&nbsp;B)";}s:22:"eightstore-promo-large";a:5:{s:4:"file";s:32:"FB_IMG_1457952734984-520x520.jpg";s:5:"width";i:520;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 5.0% (1.4&nbsp;kB)";}s:21:"eightstore-blog-image";a:5:{s:4:"file";s:32:"FB_IMG_1457952734984-290x260.jpg";s:5:"width";i:290;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 5.9% (726.0&nbsp;B)";}s:28:"eightstore-testimonial-image";a:5:{s:4:"file";s:30:"FB_IMG_1457952734984-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:31:"Reduced by 17.6% (403.0&nbsp;B)";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:20:"ewww_image_optimizer";s:10:"No savings";}'),
(774, 118, '_thumbnail_id', '119');
INSERT INTO `ofs2616_2_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(775, 118, '_visibility', 'visible'),
(776, 118, '_stock_status', 'instock'),
(777, 118, 'total_sales', '0'),
(778, 118, '_downloadable', 'no'),
(779, 118, '_virtual', 'no'),
(780, 118, '_purchase_note', ''),
(781, 118, '_featured', 'no'),
(782, 118, '_weight', ''),
(783, 118, '_length', ''),
(784, 118, '_width', ''),
(785, 118, '_height', ''),
(786, 118, '_sku', 'KS-CSCCB'),
(787, 118, '_regular_price', '600'),
(788, 118, '_sale_price', '499'),
(789, 118, '_sale_price_dates_from', ''),
(790, 118, '_sale_price_dates_to', ''),
(791, 118, '_price', '499'),
(792, 118, '_sold_individually', ''),
(793, 118, '_manage_stock', 'no'),
(794, 118, '_backorders', 'no'),
(795, 118, '_stock', ''),
(796, 118, '_upsell_ids', 'a:0:{}'),
(797, 118, '_crosssell_ids', 'a:0:{}'),
(798, 118, '_product_version', '2.5.5'),
(799, 118, '_product_image_gallery', '122,121,120'),
(800, 123, '_edit_lock', '1457968453:1'),
(801, 123, '_edit_last', '1'),
(802, 123, '_product_attributes', 'a:3:{s:9:"pa_brands";a:6:{s:4:"name";s:9:"pa_brands";s:5:"value";s:0:"";s:8:"position";s:1:"0";s:10:"is_visible";i:1;s:12:"is_variation";i:0;s:11:"is_taxonomy";i:1;}s:9:"pa_colors";a:6:{s:4:"name";s:9:"pa_colors";s:5:"value";s:0:"";s:8:"position";s:1:"1";s:10:"is_visible";i:1;s:12:"is_variation";i:0;s:11:"is_taxonomy";i:1;}s:14:"pa_subcategory";a:6:{s:4:"name";s:14:"pa_subcategory";s:5:"value";s:0:"";s:8:"position";s:1:"2";s:10:"is_visible";i:1;s:12:"is_variation";i:0;s:11:"is_taxonomy";i:1;}}'),
(803, 124, '_wp_attached_file', '2016/03/FB_IMG_1457952825283.jpg'),
(804, 124, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:720;s:6:"height";i:1119;s:4:"file";s:32:"2016/03/FB_IMG_1457952825283.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:5:{s:4:"file";s:32:"FB_IMG_1457952825283-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 8.1% (518.0&nbsp;B)";}s:6:"medium";a:5:{s:4:"file";s:32:"FB_IMG_1457952825283-193x300.jpg";s:5:"width";i:193;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 5.3% (674.0&nbsp;B)";}s:5:"large";a:5:{s:4:"file";s:33:"FB_IMG_1457952825283-659x1024.jpg";s:5:"width";i:659;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 4.2% (2.9&nbsp;kB)";}s:14:"shop_thumbnail";a:5:{s:4:"file";s:32:"FB_IMG_1457952825283-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 6.8% (560.0&nbsp;B)";}s:12:"shop_catalog";a:5:{s:4:"file";s:32:"FB_IMG_1457952825283-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 4.7% (786.0&nbsp;B)";}s:11:"shop_single";a:5:{s:4:"file";s:32:"FB_IMG_1457952825283-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 3.9% (1.7&nbsp;kB)";}s:22:"eightstore-promo-small";a:5:{s:4:"file";s:32:"FB_IMG_1457952825283-520x260.jpg";s:5:"width";i:520;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 4.2% (808.0&nbsp;B)";}s:22:"eightstore-promo-large";a:5:{s:4:"file";s:32:"FB_IMG_1457952825283-520x520.jpg";s:5:"width";i:520;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 3.9% (1.3&nbsp;kB)";}s:21:"eightstore-blog-image";a:5:{s:4:"file";s:32:"FB_IMG_1457952825283-290x260.jpg";s:5:"width";i:290;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 4.9% (724.0&nbsp;B)";}s:28:"eightstore-testimonial-image";a:5:{s:4:"file";s:30:"FB_IMG_1457952825283-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:31:"Reduced by 15.6% (418.0&nbsp;B)";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:20:"ewww_image_optimizer";s:29:"Reduced by 0.0% (18.0&nbsp;B)";}'),
(805, 125, '_wp_attached_file', '2016/03/FB_IMG_1457952832733.jpg'),
(806, 125, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:720;s:6:"height";i:1011;s:4:"file";s:32:"2016/03/FB_IMG_1457952832733.jpg";s:5:"sizes";a:9:{s:9:"thumbnail";a:5:{s:4:"file";s:32:"FB_IMG_1457952832733-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 7.6% (438.0&nbsp;B)";}s:6:"medium";a:5:{s:4:"file";s:32:"FB_IMG_1457952832733-214x300.jpg";s:5:"width";i:214;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 7.8% (968.0&nbsp;B)";}s:14:"shop_thumbnail";a:5:{s:4:"file";s:32:"FB_IMG_1457952832733-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 6.8% (562.0&nbsp;B)";}s:12:"shop_catalog";a:5:{s:4:"file";s:32:"FB_IMG_1457952832733-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 6.7% (1.5&nbsp;kB)";}s:11:"shop_single";a:5:{s:4:"file";s:32:"FB_IMG_1457952832733-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 2.9% (2.1&nbsp;kB)";}s:22:"eightstore-promo-small";a:5:{s:4:"file";s:32:"FB_IMG_1457952832733-520x260.jpg";s:5:"width";i:520;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:32:"Reduced by 2.9% (1,007.0&nbsp;B)";}s:22:"eightstore-promo-large";a:5:{s:4:"file";s:32:"FB_IMG_1457952832733-520x520.jpg";s:5:"width";i:520;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 2.7% (1.5&nbsp;kB)";}s:21:"eightstore-blog-image";a:5:{s:4:"file";s:32:"FB_IMG_1457952832733-290x260.jpg";s:5:"width";i:290;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 6.8% (1.3&nbsp;kB)";}s:28:"eightstore-testimonial-image";a:5:{s:4:"file";s:30:"FB_IMG_1457952832733-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:31:"Reduced by 17.2% (388.0&nbsp;B)";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:20:"ewww_image_optimizer";s:10:"No savings";}'),
(807, 126, '_wp_attached_file', '2016/03/FB_IMG_1457952834876.jpg'),
(808, 126, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:720;s:6:"height";i:1000;s:4:"file";s:32:"2016/03/FB_IMG_1457952834876.jpg";s:5:"sizes";a:9:{s:9:"thumbnail";a:5:{s:4:"file";s:32:"FB_IMG_1457952834876-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 8.8% (427.0&nbsp;B)";}s:6:"medium";a:5:{s:4:"file";s:32:"FB_IMG_1457952834876-216x300.jpg";s:5:"width";i:216;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 6.7% (639.0&nbsp;B)";}s:14:"shop_thumbnail";a:5:{s:4:"file";s:32:"FB_IMG_1457952834876-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 7.5% (477.0&nbsp;B)";}s:12:"shop_catalog";a:5:{s:4:"file";s:32:"FB_IMG_1457952834876-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 5.5% (752.0&nbsp;B)";}s:11:"shop_single";a:5:{s:4:"file";s:32:"FB_IMG_1457952834876-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 4.1% (1.6&nbsp;kB)";}s:22:"eightstore-promo-small";a:5:{s:4:"file";s:32:"FB_IMG_1457952834876-520x260.jpg";s:5:"width";i:520;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 3.1% (654.0&nbsp;B)";}s:22:"eightstore-promo-large";a:5:{s:4:"file";s:32:"FB_IMG_1457952834876-520x520.jpg";s:5:"width";i:520;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 4.2% (1.3&nbsp;kB)";}s:21:"eightstore-blog-image";a:5:{s:4:"file";s:32:"FB_IMG_1457952834876-290x260.jpg";s:5:"width";i:290;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 5.1% (609.0&nbsp;B)";}s:28:"eightstore-testimonial-image";a:5:{s:4:"file";s:30:"FB_IMG_1457952834876-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:31:"Reduced by 18.1% (379.0&nbsp;B)";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:20:"ewww_image_optimizer";s:10:"No savings";}'),
(809, 127, '_wp_attached_file', '2016/03/FB_IMG_1457952837474.jpg'),
(810, 127, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:720;s:6:"height";i:1239;s:4:"file";s:32:"2016/03/FB_IMG_1457952837474.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:5:{s:4:"file";s:32:"FB_IMG_1457952837474-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 8.3% (1.1&nbsp;kB)";}s:6:"medium";a:5:{s:4:"file";s:32:"FB_IMG_1457952837474-174x300.jpg";s:5:"width";i:174;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 8.0% (2.0&nbsp;kB)";}s:5:"large";a:5:{s:4:"file";s:33:"FB_IMG_1457952837474-595x1024.jpg";s:5:"width";i:595;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 7.3% (12.7&nbsp;kB)";}s:14:"shop_thumbnail";a:5:{s:4:"file";s:32:"FB_IMG_1457952837474-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 8.5% (1.6&nbsp;kB)";}s:12:"shop_catalog";a:5:{s:4:"file";s:32:"FB_IMG_1457952837474-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 9.2% (3.9&nbsp;kB)";}s:11:"shop_single";a:5:{s:4:"file";s:32:"FB_IMG_1457952837474-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 8.3% (9.8&nbsp;kB)";}s:22:"eightstore-promo-small";a:5:{s:4:"file";s:32:"FB_IMG_1457952837474-520x260.jpg";s:5:"width";i:520;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 9.5% (4.9&nbsp;kB)";}s:22:"eightstore-promo-large";a:5:{s:4:"file";s:32:"FB_IMG_1457952837474-520x520.jpg";s:5:"width";i:520;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 8.8% (8.5&nbsp;kB)";}s:21:"eightstore-blog-image";a:5:{s:4:"file";s:32:"FB_IMG_1457952837474-290x260.jpg";s:5:"width";i:290;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 9.4% (3.5&nbsp;kB)";}s:28:"eightstore-testimonial-image";a:5:{s:4:"file";s:30:"FB_IMG_1457952837474-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:31:"Reduced by 11.1% (438.0&nbsp;B)";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:20:"ewww_image_optimizer";s:10:"No savings";}'),
(811, 123, '_thumbnail_id', '126'),
(812, 123, '_visibility', 'visible'),
(813, 123, '_stock_status', 'instock'),
(814, 123, 'total_sales', '0'),
(815, 123, '_downloadable', 'no'),
(816, 123, '_virtual', 'no'),
(817, 123, '_purchase_note', ''),
(818, 123, '_featured', 'no'),
(819, 123, '_weight', ''),
(820, 123, '_length', ''),
(821, 123, '_width', ''),
(822, 123, '_height', ''),
(823, 123, '_sku', 'KS-JSHC'),
(824, 123, '_regular_price', '600'),
(825, 123, '_sale_price', '599'),
(826, 123, '_sale_price_dates_from', ''),
(827, 123, '_sale_price_dates_to', ''),
(828, 123, '_price', '599'),
(829, 123, '_sold_individually', ''),
(830, 123, '_manage_stock', 'no'),
(831, 123, '_backorders', 'no'),
(832, 123, '_stock', ''),
(833, 123, '_upsell_ids', 'a:0:{}'),
(834, 123, '_crosssell_ids', 'a:0:{}'),
(835, 123, '_product_version', '2.5.5'),
(836, 123, '_product_image_gallery', '127,125,124'),
(837, 128, '_edit_lock', '1457968704:1'),
(838, 128, '_edit_last', '1'),
(839, 128, '_product_attributes', 'a:3:{s:9:"pa_brands";a:6:{s:4:"name";s:9:"pa_brands";s:5:"value";s:0:"";s:8:"position";s:1:"0";s:10:"is_visible";i:1;s:12:"is_variation";i:0;s:11:"is_taxonomy";i:1;}s:9:"pa_colors";a:6:{s:4:"name";s:9:"pa_colors";s:5:"value";s:0:"";s:8:"position";s:1:"1";s:10:"is_visible";i:1;s:12:"is_variation";i:0;s:11:"is_taxonomy";i:1;}s:14:"pa_subcategory";a:6:{s:4:"name";s:14:"pa_subcategory";s:5:"value";s:0:"";s:8:"position";s:1:"2";s:10:"is_visible";i:1;s:12:"is_variation";i:0;s:11:"is_taxonomy";i:1;}}'),
(840, 129, '_wp_attached_file', '2016/03/FB_IMG_1457952908368.jpg'),
(841, 129, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:720;s:6:"height";i:1022;s:4:"file";s:32:"2016/03/FB_IMG_1457952908368.jpg";s:5:"sizes";a:9:{s:9:"thumbnail";a:5:{s:4:"file";s:32:"FB_IMG_1457952908368-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 7.9% (484.0&nbsp;B)";}s:6:"medium";a:5:{s:4:"file";s:32:"FB_IMG_1457952908368-211x300.jpg";s:5:"width";i:211;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 5.7% (655.0&nbsp;B)";}s:14:"shop_thumbnail";a:5:{s:4:"file";s:32:"FB_IMG_1457952908368-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 6.8% (550.0&nbsp;B)";}s:12:"shop_catalog";a:5:{s:4:"file";s:32:"FB_IMG_1457952908368-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 5.0% (810.0&nbsp;B)";}s:11:"shop_single";a:5:{s:4:"file";s:32:"FB_IMG_1457952908368-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 5.0% (2.0&nbsp;kB)";}s:22:"eightstore-promo-small";a:5:{s:4:"file";s:32:"FB_IMG_1457952908368-520x260.jpg";s:5:"width";i:520;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 4.7% (1.0&nbsp;kB)";}s:22:"eightstore-promo-large";a:5:{s:4:"file";s:32:"FB_IMG_1457952908368-520x520.jpg";s:5:"width";i:520;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 4.6% (1.5&nbsp;kB)";}s:21:"eightstore-blog-image";a:5:{s:4:"file";s:32:"FB_IMG_1457952908368-290x260.jpg";s:5:"width";i:290;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 4.8% (686.0&nbsp;B)";}s:28:"eightstore-testimonial-image";a:5:{s:4:"file";s:30:"FB_IMG_1457952908368-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:31:"Reduced by 15.4% (392.0&nbsp;B)";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:20:"ewww_image_optimizer";s:10:"No savings";}'),
(842, 130, '_wp_attached_file', '2016/03/FB_IMG_1457952910661.jpg'),
(843, 130, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:720;s:6:"height";i:1193;s:4:"file";s:32:"2016/03/FB_IMG_1457952910661.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:5:{s:4:"file";s:32:"FB_IMG_1457952910661-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 5.8% (468.0&nbsp;B)";}s:6:"medium";a:5:{s:4:"file";s:32:"FB_IMG_1457952910661-181x300.jpg";s:5:"width";i:181;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 5.7% (946.0&nbsp;B)";}s:5:"large";a:5:{s:4:"file";s:33:"FB_IMG_1457952910661-618x1024.jpg";s:5:"width";i:618;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 4.1% (3.8&nbsp;kB)";}s:14:"shop_thumbnail";a:5:{s:4:"file";s:32:"FB_IMG_1457952910661-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 5.9% (639.0&nbsp;B)";}s:12:"shop_catalog";a:5:{s:4:"file";s:32:"FB_IMG_1457952910661-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 4.7% (1.0&nbsp;kB)";}s:11:"shop_single";a:5:{s:4:"file";s:32:"FB_IMG_1457952910661-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 4.1% (2.3&nbsp;kB)";}s:22:"eightstore-promo-small";a:5:{s:4:"file";s:32:"FB_IMG_1457952910661-520x260.jpg";s:5:"width";i:520;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 3.4% (734.0&nbsp;B)";}s:22:"eightstore-promo-large";a:5:{s:4:"file";s:32:"FB_IMG_1457952910661-520x520.jpg";s:5:"width";i:520;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 4.2% (2.0&nbsp;kB)";}s:21:"eightstore-blog-image";a:5:{s:4:"file";s:32:"FB_IMG_1457952910661-290x260.jpg";s:5:"width";i:290;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 4.6% (862.0&nbsp;B)";}s:28:"eightstore-testimonial-image";a:5:{s:4:"file";s:30:"FB_IMG_1457952910661-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:31:"Reduced by 13.4% (373.0&nbsp;B)";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:20:"ewww_image_optimizer";s:30:"Reduced by 0.9% (466.0&nbsp;B)";}'),
(844, 131, '_wp_attached_file', '2016/03/FB_IMG_1457952912700.jpg'),
(845, 131, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:720;s:6:"height";i:1228;s:4:"file";s:32:"2016/03/FB_IMG_1457952912700.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:5:{s:4:"file";s:32:"FB_IMG_1457952912700-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 8.1% (496.0&nbsp;B)";}s:6:"medium";a:5:{s:4:"file";s:32:"FB_IMG_1457952912700-176x300.jpg";s:5:"width";i:176;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 5.9% (621.0&nbsp;B)";}s:5:"large";a:5:{s:4:"file";s:33:"FB_IMG_1457952912700-600x1024.jpg";s:5:"width";i:600;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 5.5% (3.2&nbsp;kB)";}s:14:"shop_thumbnail";a:5:{s:4:"file";s:32:"FB_IMG_1457952912700-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 7.1% (543.0&nbsp;B)";}s:12:"shop_catalog";a:5:{s:4:"file";s:32:"FB_IMG_1457952912700-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 5.5% (858.0&nbsp;B)";}s:11:"shop_single";a:5:{s:4:"file";s:32:"FB_IMG_1457952912700-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 5.1% (2.0&nbsp;kB)";}s:22:"eightstore-promo-small";a:5:{s:4:"file";s:32:"FB_IMG_1457952912700-520x260.jpg";s:5:"width";i:520;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 5.5% (904.0&nbsp;B)";}s:22:"eightstore-promo-large";a:5:{s:4:"file";s:32:"FB_IMG_1457952912700-520x520.jpg";s:5:"width";i:520;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 4.9% (1.6&nbsp;kB)";}s:21:"eightstore-blog-image";a:5:{s:4:"file";s:32:"FB_IMG_1457952912700-290x260.jpg";s:5:"width";i:290;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 5.8% (771.0&nbsp;B)";}s:28:"eightstore-testimonial-image";a:5:{s:4:"file";s:30:"FB_IMG_1457952912700-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:31:"Reduced by 16.2% (405.0&nbsp;B)";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:20:"ewww_image_optimizer";s:10:"No savings";}'),
(846, 132, '_wp_attached_file', '2016/03/FB_IMG_1457952914825.jpg'),
(847, 132, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:720;s:6:"height";i:1099;s:4:"file";s:32:"2016/03/FB_IMG_1457952914825.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:5:{s:4:"file";s:32:"FB_IMG_1457952914825-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 7.6% (433.0&nbsp;B)";}s:6:"medium";a:5:{s:4:"file";s:32:"FB_IMG_1457952914825-197x300.jpg";s:5:"width";i:197;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 5.2% (587.0&nbsp;B)";}s:5:"large";a:5:{s:4:"file";s:33:"FB_IMG_1457952914825-671x1024.jpg";s:5:"width";i:671;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 4.6% (3.2&nbsp;kB)";}s:14:"shop_thumbnail";a:5:{s:4:"file";s:32:"FB_IMG_1457952914825-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 6.2% (462.0&nbsp;B)";}s:12:"shop_catalog";a:5:{s:4:"file";s:32:"FB_IMG_1457952914825-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 4.2% (686.0&nbsp;B)";}s:11:"shop_single";a:5:{s:4:"file";s:32:"FB_IMG_1457952914825-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 3.8% (1.7&nbsp;kB)";}s:22:"eightstore-promo-small";a:5:{s:4:"file";s:32:"FB_IMG_1457952914825-520x260.jpg";s:5:"width";i:520;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 3.3% (749.0&nbsp;B)";}s:22:"eightstore-promo-large";a:5:{s:4:"file";s:32:"FB_IMG_1457952914825-520x520.jpg";s:5:"width";i:520;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 3.7% (1.4&nbsp;kB)";}s:21:"eightstore-blog-image";a:5:{s:4:"file";s:32:"FB_IMG_1457952914825-290x260.jpg";s:5:"width";i:290;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 4.1% (569.0&nbsp;B)";}s:28:"eightstore-testimonial-image";a:5:{s:4:"file";s:30:"FB_IMG_1457952914825-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:31:"Reduced by 16.5% (398.0&nbsp;B)";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:20:"ewww_image_optimizer";s:10:"No savings";}'),
(848, 128, '_thumbnail_id', '129'),
(849, 128, '_visibility', 'visible'),
(850, 128, '_stock_status', 'instock'),
(851, 128, 'total_sales', '0'),
(852, 128, '_downloadable', 'no'),
(853, 128, '_virtual', 'no'),
(854, 128, '_purchase_note', ''),
(855, 128, '_featured', 'no'),
(856, 128, '_weight', ''),
(857, 128, '_length', ''),
(858, 128, '_width', ''),
(859, 128, '_height', ''),
(860, 128, '_sku', 'KS-LS'),
(861, 128, '_regular_price', '700'),
(862, 128, '_sale_price', '600'),
(863, 128, '_sale_price_dates_from', ''),
(864, 128, '_sale_price_dates_to', ''),
(865, 128, '_price', '600'),
(866, 128, '_sold_individually', ''),
(867, 128, '_manage_stock', 'no'),
(868, 128, '_backorders', 'no'),
(869, 128, '_stock', ''),
(870, 128, '_upsell_ids', 'a:0:{}'),
(871, 128, '_crosssell_ids', 'a:0:{}'),
(872, 128, '_product_version', '2.5.5'),
(873, 128, '_product_image_gallery', '132,131,130'),
(874, 133, '_edit_lock', '1457968969:1'),
(875, 133, '_edit_last', '1'),
(876, 133, '_visibility', 'visible'),
(877, 133, '_stock_status', 'instock'),
(878, 133, 'total_sales', '0'),
(879, 133, '_downloadable', 'no'),
(880, 133, '_virtual', 'no'),
(881, 133, '_purchase_note', ''),
(882, 133, '_featured', 'no'),
(883, 133, '_weight', ''),
(884, 133, '_length', ''),
(885, 133, '_width', ''),
(886, 133, '_height', ''),
(887, 133, '_sku', 'KA-SB'),
(888, 133, '_product_attributes', 'a:3:{s:9:"pa_brands";a:6:{s:4:"name";s:9:"pa_brands";s:5:"value";s:0:"";s:8:"position";s:1:"0";s:10:"is_visible";i:1;s:12:"is_variation";i:0;s:11:"is_taxonomy";i:1;}s:9:"pa_colors";a:6:{s:4:"name";s:9:"pa_colors";s:5:"value";s:0:"";s:8:"position";s:1:"1";s:10:"is_visible";i:1;s:12:"is_variation";i:0;s:11:"is_taxonomy";i:1;}s:14:"pa_subcategory";a:6:{s:4:"name";s:14:"pa_subcategory";s:5:"value";s:0:"";s:8:"position";s:1:"2";s:10:"is_visible";i:1;s:12:"is_variation";i:0;s:11:"is_taxonomy";i:1;}}'),
(889, 133, '_regular_price', '429'),
(890, 133, '_sale_price', '219'),
(891, 133, '_sale_price_dates_from', ''),
(892, 133, '_sale_price_dates_to', ''),
(893, 133, '_price', '219'),
(894, 133, '_sold_individually', ''),
(895, 133, '_manage_stock', 'no'),
(896, 133, '_backorders', 'no'),
(897, 133, '_stock', ''),
(898, 133, '_upsell_ids', 'a:0:{}'),
(899, 133, '_crosssell_ids', 'a:0:{}'),
(900, 133, '_product_version', '2.5.5'),
(901, 133, '_product_image_gallery', '135,134'),
(902, 134, '_wp_attached_file', '2016/03/FB_IMG_1457953020110.jpg'),
(903, 134, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:400;s:6:"height";i:334;s:4:"file";s:32:"2016/03/FB_IMG_1457953020110.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:5:{s:4:"file";s:32:"FB_IMG_1457953020110-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 5.8% (482.0&nbsp;B)";}s:6:"medium";a:5:{s:4:"file";s:32:"FB_IMG_1457953020110-300x251.jpg";s:5:"width";i:300;s:6:"height";i:251;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 4.8% (1.1&nbsp;kB)";}s:14:"shop_thumbnail";a:5:{s:4:"file";s:32:"FB_IMG_1457953020110-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 4.8% (546.0&nbsp;B)";}s:12:"shop_catalog";a:5:{s:4:"file";s:32:"FB_IMG_1457953020110-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 4.6% (1.2&nbsp;kB)";}s:22:"eightstore-promo-small";a:5:{s:4:"file";s:32:"FB_IMG_1457953020110-400x260.jpg";s:5:"width";i:400;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 3.8% (1.3&nbsp;kB)";}s:21:"eightstore-blog-image";a:5:{s:4:"file";s:32:"FB_IMG_1457953020110-290x260.jpg";s:5:"width";i:290;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 4.9% (1.1&nbsp;kB)";}s:28:"eightstore-testimonial-image";a:5:{s:4:"file";s:30:"FB_IMG_1457953020110-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:31:"Reduced by 15.6% (418.0&nbsp;B)";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:20:"ewww_image_optimizer";s:30:"Reduced by 3.5% (703.0&nbsp;B)";}'),
(904, 135, '_wp_attached_file', '2016/03/FB_IMG_1457953022687.jpg'),
(905, 135, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:300;s:6:"height";i:300;s:4:"file";s:32:"2016/03/FB_IMG_1457953022687.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:5:{s:4:"file";s:32:"FB_IMG_1457953022687-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 7.6% (646.0&nbsp;B)";}s:14:"shop_thumbnail";a:5:{s:4:"file";s:32:"FB_IMG_1457953022687-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 7.7% (848.0&nbsp;B)";}s:22:"eightstore-promo-small";a:5:{s:4:"file";s:32:"FB_IMG_1457953022687-300x260.jpg";s:5:"width";i:300;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 6.7% (1.6&nbsp;kB)";}s:21:"eightstore-blog-image";a:5:{s:4:"file";s:32:"FB_IMG_1457953022687-290x260.jpg";s:5:"width";i:290;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 7.2% (1.5&nbsp;kB)";}s:28:"eightstore-testimonial-image";a:5:{s:4:"file";s:30:"FB_IMG_1457953022687-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:31:"Reduced by 13.6% (406.0&nbsp;B)";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:20:"ewww_image_optimizer";s:30:"Reduced by 4.3% (538.0&nbsp;B)";}'),
(906, 133, '_thumbnail_id', '134'),
(907, 136, '_edit_lock', '1458050012:1'),
(908, 136, '_edit_last', '1'),
(909, 136, '_product_attributes', 'a:3:{s:9:"pa_brands";a:6:{s:4:"name";s:9:"pa_brands";s:5:"value";s:0:"";s:8:"position";s:1:"0";s:10:"is_visible";i:1;s:12:"is_variation";i:0;s:11:"is_taxonomy";i:1;}s:9:"pa_colors";a:6:{s:4:"name";s:9:"pa_colors";s:5:"value";s:0:"";s:8:"position";s:1:"1";s:10:"is_visible";i:1;s:12:"is_variation";i:0;s:11:"is_taxonomy";i:1;}s:14:"pa_subcategory";a:6:{s:4:"name";s:14:"pa_subcategory";s:5:"value";s:0:"";s:8:"position";s:1:"2";s:10:"is_visible";i:1;s:12:"is_variation";i:0;s:11:"is_taxonomy";i:1;}}'),
(910, 137, '_wp_attached_file', '2016/03/FB_IMG_1457953078313.jpg'),
(911, 137, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:720;s:6:"height";i:895;s:4:"file";s:32:"2016/03/FB_IMG_1457953078313.jpg";s:5:"sizes";a:9:{s:9:"thumbnail";a:5:{s:4:"file";s:32:"FB_IMG_1457953078313-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 7.5% (724.0&nbsp;B)";}s:6:"medium";a:5:{s:4:"file";s:32:"FB_IMG_1457953078313-241x300.jpg";s:5:"width";i:241;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 7.0% (1.7&nbsp;kB)";}s:14:"shop_thumbnail";a:5:{s:4:"file";s:32:"FB_IMG_1457953078313-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 6.9% (917.0&nbsp;B)";}s:12:"shop_catalog";a:5:{s:4:"file";s:32:"FB_IMG_1457953078313-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 6.7% (2.0&nbsp;kB)";}s:11:"shop_single";a:5:{s:4:"file";s:32:"FB_IMG_1457953078313-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 5.4% (5.3&nbsp;kB)";}s:22:"eightstore-promo-small";a:5:{s:4:"file";s:32:"FB_IMG_1457953078313-520x260.jpg";s:5:"width";i:520;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 6.1% (2.5&nbsp;kB)";}s:22:"eightstore-promo-large";a:5:{s:4:"file";s:32:"FB_IMG_1457953078313-520x520.jpg";s:5:"width";i:520;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 6.0% (4.6&nbsp;kB)";}s:21:"eightstore-blog-image";a:5:{s:4:"file";s:32:"FB_IMG_1457953078313-290x260.jpg";s:5:"width";i:290;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 6.8% (1.8&nbsp;kB)";}s:28:"eightstore-testimonial-image";a:5:{s:4:"file";s:30:"FB_IMG_1457953078313-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:31:"Reduced by 13.2% (393.0&nbsp;B)";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:20:"ewww_image_optimizer";s:28:"Reduced by 0.0% (2.0&nbsp;B)";}'),
(912, 138, '_wp_attached_file', '2016/03/FB_IMG_1457953080690.jpg'),
(913, 138, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:720;s:6:"height";i:720;s:4:"file";s:32:"2016/03/FB_IMG_1457953080690.jpg";s:5:"sizes";a:9:{s:9:"thumbnail";a:5:{s:4:"file";s:32:"FB_IMG_1457953080690-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:31:"Reduced by 12.0% (601.0&nbsp;B)";}s:6:"medium";a:5:{s:4:"file";s:32:"FB_IMG_1457953080690-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 9.0% (1.1&nbsp;kB)";}s:14:"shop_thumbnail";a:5:{s:4:"file";s:32:"FB_IMG_1457953080690-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:31:"Reduced by 10.5% (660.0&nbsp;B)";}s:12:"shop_catalog";a:5:{s:4:"file";s:32:"FB_IMG_1457953080690-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:10:"No savings";}s:11:"shop_single";a:5:{s:4:"file";s:32:"FB_IMG_1457953080690-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 10.6% (3.0&nbsp;kB)";}s:22:"eightstore-promo-small";a:5:{s:4:"file";s:32:"FB_IMG_1457953080690-520x260.jpg";s:5:"width";i:520;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 8.1% (1.1&nbsp;kB)";}s:22:"eightstore-promo-large";a:5:{s:4:"file";s:32:"FB_IMG_1457953080690-520x520.jpg";s:5:"width";i:520;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 9.8% (2.2&nbsp;kB)";}s:21:"eightstore-blog-image";a:5:{s:4:"file";s:32:"FB_IMG_1457953080690-290x260.jpg";s:5:"width";i:290;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 8.6% (894.0&nbsp;B)";}s:28:"eightstore-testimonial-image";a:5:{s:4:"file";s:30:"FB_IMG_1457953080690-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:31:"Reduced by 20.5% (462.0&nbsp;B)";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:20:"ewww_image_optimizer";s:10:"No savings";}'),
(914, 139, '_wp_attached_file', '2016/03/FB_IMG_1457953083085.jpg'),
(915, 139, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:720;s:6:"height";i:815;s:4:"file";s:32:"2016/03/FB_IMG_1457953083085.jpg";s:5:"sizes";a:9:{s:9:"thumbnail";a:5:{s:4:"file";s:32:"FB_IMG_1457953083085-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 8.2% (467.0&nbsp;B)";}s:6:"medium";a:5:{s:4:"file";s:32:"FB_IMG_1457953083085-265x300.jpg";s:5:"width";i:265;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 4.4% (605.0&nbsp;B)";}s:14:"shop_thumbnail";a:5:{s:4:"file";s:32:"FB_IMG_1457953083085-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 6.0% (451.0&nbsp;B)";}s:12:"shop_catalog";a:5:{s:4:"file";s:32:"FB_IMG_1457953083085-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 4.8% (797.0&nbsp;B)";}s:11:"shop_single";a:5:{s:4:"file";s:32:"FB_IMG_1457953083085-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 4.5% (2.1&nbsp;kB)";}s:22:"eightstore-promo-small";a:5:{s:4:"file";s:32:"FB_IMG_1457953083085-520x260.jpg";s:5:"width";i:520;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 3.7% (1.1&nbsp;kB)";}s:22:"eightstore-promo-large";a:5:{s:4:"file";s:32:"FB_IMG_1457953083085-520x520.jpg";s:5:"width";i:520;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 4.4% (1.7&nbsp;kB)";}s:21:"eightstore-blog-image";a:5:{s:4:"file";s:32:"FB_IMG_1457953083085-290x260.jpg";s:5:"width";i:290;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 4.4% (680.0&nbsp;B)";}s:28:"eightstore-testimonial-image";a:5:{s:4:"file";s:30:"FB_IMG_1457953083085-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:31:"Reduced by 17.2% (387.0&nbsp;B)";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:20:"ewww_image_optimizer";s:10:"No savings";}'),
(916, 140, '_wp_attached_file', '2016/03/FB_IMG_1457953085831.jpg'),
(917, 140, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:720;s:6:"height";i:753;s:4:"file";s:32:"2016/03/FB_IMG_1457953085831.jpg";s:5:"sizes";a:9:{s:9:"thumbnail";a:5:{s:4:"file";s:32:"FB_IMG_1457953085831-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 8.0% (425.0&nbsp;B)";}s:6:"medium";a:5:{s:4:"file";s:32:"FB_IMG_1457953085831-287x300.jpg";s:5:"width";i:287;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 6.4% (968.0&nbsp;B)";}s:14:"shop_thumbnail";a:5:{s:4:"file";s:32:"FB_IMG_1457953085831-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 7.0% (504.0&nbsp;B)";}s:12:"shop_catalog";a:5:{s:4:"file";s:32:"FB_IMG_1457953085831-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 6.0% (991.0&nbsp;B)";}s:11:"shop_single";a:5:{s:4:"file";s:32:"FB_IMG_1457953085831-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 7.1% (3.5&nbsp;kB)";}s:22:"eightstore-promo-small";a:5:{s:4:"file";s:32:"FB_IMG_1457953085831-520x260.jpg";s:5:"width";i:520;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 5.5% (1.9&nbsp;kB)";}s:22:"eightstore-promo-large";a:5:{s:4:"file";s:32:"FB_IMG_1457953085831-520x520.jpg";s:5:"width";i:520;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 6.9% (2.6&nbsp;kB)";}s:21:"eightstore-blog-image";a:5:{s:4:"file";s:32:"FB_IMG_1457953085831-290x260.jpg";s:5:"width";i:290;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 6.1% (936.0&nbsp;B)";}s:28:"eightstore-testimonial-image";a:5:{s:4:"file";s:30:"FB_IMG_1457953085831-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:31:"Reduced by 19.4% (387.0&nbsp;B)";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:20:"ewww_image_optimizer";s:10:"No savings";}'),
(918, 141, '_wp_attached_file', '2016/03/FB_IMG_1457953088243.jpg'),
(919, 141, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:720;s:6:"height";i:842;s:4:"file";s:32:"2016/03/FB_IMG_1457953088243.jpg";s:5:"sizes";a:9:{s:9:"thumbnail";a:5:{s:4:"file";s:32:"FB_IMG_1457953088243-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 7.3% (419.0&nbsp;B)";}s:6:"medium";a:5:{s:4:"file";s:32:"FB_IMG_1457953088243-257x300.jpg";s:5:"width";i:257;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 3.5% (461.0&nbsp;B)";}s:14:"shop_thumbnail";a:5:{s:4:"file";s:32:"FB_IMG_1457953088243-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 5.7% (431.0&nbsp;B)";}s:12:"shop_catalog";a:5:{s:4:"file";s:32:"FB_IMG_1457953088243-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 3.4% (554.0&nbsp;B)";}s:11:"shop_single";a:5:{s:4:"file";s:32:"FB_IMG_1457953088243-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 3.8% (1.8&nbsp;kB)";}s:22:"eightstore-promo-small";a:5:{s:4:"file";s:32:"FB_IMG_1457953088243-520x260.jpg";s:5:"width";i:520;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 3.5% (875.0&nbsp;B)";}s:22:"eightstore-promo-large";a:5:{s:4:"file";s:32:"FB_IMG_1457953088243-520x520.jpg";s:5:"width";i:520;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 3.7% (1.4&nbsp;kB)";}s:21:"eightstore-blog-image";a:5:{s:4:"file";s:32:"FB_IMG_1457953088243-290x260.jpg";s:5:"width";i:290;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 3.3% (501.0&nbsp;B)";}s:28:"eightstore-testimonial-image";a:5:{s:4:"file";s:30:"FB_IMG_1457953088243-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:31:"Reduced by 17.1% (373.0&nbsp;B)";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:20:"ewww_image_optimizer";s:10:"No savings";}'),
(920, 136, '_thumbnail_id', '139'),
(921, 136, '_visibility', 'visible'),
(922, 136, '_stock_status', 'instock'),
(923, 136, 'total_sales', '0'),
(924, 136, '_downloadable', 'no'),
(925, 136, '_virtual', 'no'),
(926, 136, '_purchase_note', ''),
(927, 136, '_featured', 'no'),
(928, 136, '_weight', ''),
(929, 136, '_length', ''),
(930, 136, '_width', ''),
(931, 136, '_height', ''),
(932, 136, '_sku', 'KS-CB'),
(933, 136, '_regular_price', '369'),
(934, 136, '_sale_price', '199'),
(935, 136, '_sale_price_dates_from', ''),
(936, 136, '_sale_price_dates_to', ''),
(937, 136, '_price', '199'),
(938, 136, '_sold_individually', ''),
(939, 136, '_manage_stock', 'no'),
(940, 136, '_backorders', 'no'),
(941, 136, '_stock', ''),
(942, 136, '_upsell_ids', 'a:0:{}'),
(943, 136, '_crosssell_ids', 'a:0:{}'),
(944, 136, '_product_version', '2.5.5'),
(945, 136, '_product_image_gallery', '141,140,138'),
(946, 136, '_wc_rating_count', 'a:0:{}'),
(947, 136, '_wc_average_rating', '0'),
(948, 142, '_wp_attached_file', '2016/03/guess-banner-1.jpg'),
(949, 142, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1919;s:6:"height";i:514;s:4:"file";s:26:"2016/03/guess-banner-1.jpg";s:5:"sizes";a:11:{s:9:"thumbnail";a:5:{s:4:"file";s:26:"guess-banner-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 7.4% (408.0&nbsp;B)";}s:6:"medium";a:5:{s:4:"file";s:25:"guess-banner-1-300x80.jpg";s:5:"width";i:300;s:6:"height";i:80;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 7.0% (557.0&nbsp;B)";}s:12:"medium_large";a:5:{s:4:"file";s:26:"guess-banner-1-768x206.jpg";s:5:"width";i:768;s:6:"height";i:206;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 5.9% (2.2&nbsp;kB)";}s:5:"large";a:5:{s:4:"file";s:27:"guess-banner-1-1024x274.jpg";s:5:"width";i:1024;s:6:"height";i:274;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 5.5% (3.4&nbsp;kB)";}s:14:"shop_thumbnail";a:5:{s:4:"file";s:26:"guess-banner-1-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 6.0% (440.0&nbsp;B)";}s:12:"shop_catalog";a:5:{s:4:"file";s:26:"guess-banner-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 5.2% (869.0&nbsp;B)";}s:11:"shop_single";a:5:{s:4:"file";s:26:"guess-banner-1-600x514.jpg";s:5:"width";i:600;s:6:"height";i:514;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 3.1% (1.4&nbsp;kB)";}s:22:"eightstore-promo-small";a:5:{s:4:"file";s:26:"guess-banner-1-520x260.jpg";s:5:"width";i:520;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 5.4% (1.4&nbsp;kB)";}s:22:"eightstore-promo-large";a:5:{s:4:"file";s:26:"guess-banner-1-520x514.jpg";s:5:"width";i:520;s:6:"height";i:514;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 3.1% (1.2&nbsp;kB)";}s:21:"eightstore-blog-image";a:5:{s:4:"file";s:26:"guess-banner-1-290x260.jpg";s:5:"width";i:290;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 5.4% (812.0&nbsp;B)";}s:28:"eightstore-testimonial-image";a:5:{s:4:"file";s:24:"guess-banner-1-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:31:"Reduced by 17.6% (365.0&nbsp;B)";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}s:20:"ewww_image_optimizer";s:31:"Reduced by 15.4% (22.9&nbsp;kB)";}'),
(950, 143, '_wp_attached_file', '2016/03/guess2-banner-2-1.jpg');
INSERT INTO `ofs2616_2_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(951, 143, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1919;s:6:"height";i:514;s:4:"file";s:29:"2016/03/guess2-banner-2-1.jpg";s:5:"sizes";a:11:{s:9:"thumbnail";a:5:{s:4:"file";s:29:"guess2-banner-2-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 7.3% (697.0&nbsp;B)";}s:6:"medium";a:5:{s:4:"file";s:28:"guess2-banner-2-1-300x80.jpg";s:5:"width";i:300;s:6:"height";i:80;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 6.0% (401.0&nbsp;B)";}s:12:"medium_large";a:5:{s:4:"file";s:29:"guess2-banner-2-1-768x206.jpg";s:5:"width";i:768;s:6:"height";i:206;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 5.5% (1.8&nbsp;kB)";}s:5:"large";a:5:{s:4:"file";s:30:"guess2-banner-2-1-1024x274.jpg";s:5:"width";i:1024;s:6:"height";i:274;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 5.1% (2.8&nbsp;kB)";}s:14:"shop_thumbnail";a:5:{s:4:"file";s:29:"guess2-banner-2-1-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 6.9% (884.0&nbsp;B)";}s:12:"shop_catalog";a:5:{s:4:"file";s:29:"guess2-banner-2-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 6.8% (2.1&nbsp;kB)";}s:11:"shop_single";a:5:{s:4:"file";s:29:"guess2-banner-2-1-600x514.jpg";s:5:"width";i:600;s:6:"height";i:514;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 5.0% (4.3&nbsp;kB)";}s:22:"eightstore-promo-small";a:5:{s:4:"file";s:29:"guess2-banner-2-1-520x260.jpg";s:5:"width";i:520;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 5.7% (1.9&nbsp;kB)";}s:22:"eightstore-promo-large";a:5:{s:4:"file";s:29:"guess2-banner-2-1-520x514.jpg";s:5:"width";i:520;s:6:"height";i:514;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 5.3% (4.1&nbsp;kB)";}s:21:"eightstore-blog-image";a:5:{s:4:"file";s:29:"guess2-banner-2-1-290x260.jpg";s:5:"width";i:290;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 6.8% (1.8&nbsp;kB)";}s:28:"eightstore-testimonial-image";a:5:{s:4:"file";s:27:"guess2-banner-2-1-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:31:"Reduced by 13.5% (409.0&nbsp;B)";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}s:20:"ewww_image_optimizer";s:31:"Reduced by 17.5% (23.7&nbsp;kB)";}'),
(955, 144, '_wp_attached_file', '2016/03/guess2-banner-2-1-1.jpg'),
(956, 144, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1919;s:6:"height";i:564;s:4:"file";s:31:"2016/03/guess2-banner-2-1-1.jpg";s:5:"sizes";a:11:{s:9:"thumbnail";a:5:{s:4:"file";s:31:"guess2-banner-2-1-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 7.2% (681.0&nbsp;B)";}s:6:"medium";a:5:{s:4:"file";s:30:"guess2-banner-2-1-1-300x88.jpg";s:5:"width";i:300;s:6:"height";i:88;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 6.0% (444.0&nbsp;B)";}s:12:"medium_large";a:5:{s:4:"file";s:31:"guess2-banner-2-1-1-768x226.jpg";s:5:"width";i:768;s:6:"height";i:226;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 5.6% (2.0&nbsp;kB)";}s:5:"large";a:5:{s:4:"file";s:32:"guess2-banner-2-1-1-1024x301.jpg";s:5:"width";i:1024;s:6:"height";i:301;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 5.1% (3.0&nbsp;kB)";}s:14:"shop_thumbnail";a:5:{s:4:"file";s:31:"guess2-banner-2-1-1-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 7.3% (951.0&nbsp;B)";}s:12:"shop_catalog";a:5:{s:4:"file";s:31:"guess2-banner-2-1-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 6.8% (2.1&nbsp;kB)";}s:11:"shop_single";a:5:{s:4:"file";s:31:"guess2-banner-2-1-1-600x564.jpg";s:5:"width";i:600;s:6:"height";i:564;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 5.0% (4.6&nbsp;kB)";}s:22:"eightstore-promo-small";a:5:{s:4:"file";s:31:"guess2-banner-2-1-1-520x260.jpg";s:5:"width";i:520;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 5.9% (1.9&nbsp;kB)";}s:22:"eightstore-promo-large";a:5:{s:4:"file";s:31:"guess2-banner-2-1-1-520x520.jpg";s:5:"width";i:520;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 5.0% (3.6&nbsp;kB)";}s:21:"eightstore-blog-image";a:5:{s:4:"file";s:31:"guess2-banner-2-1-1-290x260.jpg";s:5:"width";i:290;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 6.6% (1.7&nbsp;kB)";}s:28:"eightstore-testimonial-image";a:5:{s:4:"file";s:29:"guess2-banner-2-1-1-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:31:"Reduced by 13.4% (410.0&nbsp;B)";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}s:20:"ewww_image_optimizer";s:31:"Reduced by 16.5% (24.2&nbsp;kB)";}'),
(957, 41, '_thumbnail_id', '144'),
(960, 145, '_wp_attached_file', '2016/03/guess-banner-2.jpg'),
(961, 145, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1919;s:6:"height";i:564;s:4:"file";s:26:"2016/03/guess-banner-2.jpg";s:5:"sizes";a:11:{s:9:"thumbnail";a:5:{s:4:"file";s:26:"guess-banner-2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 6.8% (393.0&nbsp;B)";}s:6:"medium";a:5:{s:4:"file";s:25:"guess-banner-2-300x88.jpg";s:5:"width";i:300;s:6:"height";i:88;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 6.7% (605.0&nbsp;B)";}s:12:"medium_large";a:5:{s:4:"file";s:26:"guess-banner-2-768x226.jpg";s:5:"width";i:768;s:6:"height";i:226;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 5.8% (2.5&nbsp;kB)";}s:5:"large";a:5:{s:4:"file";s:27:"guess-banner-2-1024x301.jpg";s:5:"width";i:1024;s:6:"height";i:301;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 5.6% (3.8&nbsp;kB)";}s:14:"shop_thumbnail";a:5:{s:4:"file";s:26:"guess-banner-2-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 5.8% (452.0&nbsp;B)";}s:12:"shop_catalog";a:5:{s:4:"file";s:26:"guess-banner-2-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 5.5% (972.0&nbsp;B)";}s:11:"shop_single";a:5:{s:4:"file";s:26:"guess-banner-2-600x564.jpg";s:5:"width";i:600;s:6:"height";i:564;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 3.1% (1.5&nbsp;kB)";}s:22:"eightstore-promo-small";a:5:{s:4:"file";s:26:"guess-banner-2-520x260.jpg";s:5:"width";i:520;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 5.5% (1.5&nbsp;kB)";}s:22:"eightstore-promo-large";a:5:{s:4:"file";s:26:"guess-banner-2-520x520.jpg";s:5:"width";i:520;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 3.9% (1.6&nbsp;kB)";}s:21:"eightstore-blog-image";a:5:{s:4:"file";s:26:"guess-banner-2-290x260.jpg";s:5:"width";i:290;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 5.6% (890.0&nbsp;B)";}s:28:"eightstore-testimonial-image";a:5:{s:4:"file";s:24:"guess-banner-2-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:31:"Reduced by 16.8% (370.0&nbsp;B)";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}s:20:"ewww_image_optimizer";s:31:"Reduced by 14.2% (23.2&nbsp;kB)";}'),
(962, 19, '_thumbnail_id', '145'),
(965, 146, '_form', '<p>Your Name (required)<br />\n    [text* your-name] </p>\n\n<p>Your Email (required)<br />\n    [email* your-email] </p>\n\n<p>Subject<br />\n    [text your-subject] </p>\n\n<p>Your Message<br />\n    [textarea your-message] </p>\n\n<p>[submit class:contact-form-button "Send"]</p>'),
(966, 146, '_mail', 'a:8:{s:7:"subject";s:30:"Onefabshop Ae "[your-subject]"";s:6:"sender";s:49:"[your-name] <diannekatherinedelosreyes@gmail.com>";s:4:"body";s:181:"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on Onefabshop Ae (http://localhost/onefabshop/ae)";s:9:"recipient";s:35:"diannekatherinedelosreyes@gmail.com";s:18:"additional_headers";s:22:"Reply-To: [your-email]";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(967, 146, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:30:"Onefabshop Ae "[your-subject]"";s:6:"sender";s:51:"Onefabshop Ae <diannekatherinedelosreyes@gmail.com>";s:4:"body";s:123:"Message Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on Onefabshop Ae (http://localhost/onefabshop/ae)";s:9:"recipient";s:12:"[your-email]";s:18:"additional_headers";s:45:"Reply-To: diannekatherinedelosreyes@gmail.com";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(968, 146, '_messages', 'a:23:{s:12:"mail_sent_ok";s:45:"Thank you for your message. It has been sent.";s:12:"mail_sent_ng";s:71:"There was an error trying to send your message. Please try again later.";s:16:"validation_error";s:61:"One or more fields have an error. Please check and try again.";s:4:"spam";s:71:"There was an error trying to send your message. Please try again later.";s:12:"accept_terms";s:69:"You must accept the terms and conditions before sending your message.";s:16:"invalid_required";s:22:"The field is required.";s:16:"invalid_too_long";s:22:"The field is too long.";s:17:"invalid_too_short";s:23:"The field is too short.";s:12:"invalid_date";s:29:"The date format is incorrect.";s:14:"date_too_early";s:44:"The date is before the earliest one allowed.";s:13:"date_too_late";s:41:"The date is after the latest one allowed.";s:13:"upload_failed";s:46:"There was an unknown error uploading the file.";s:24:"upload_file_type_invalid";s:49:"You are not allowed to upload files of this type.";s:21:"upload_file_too_large";s:20:"The file is too big.";s:23:"upload_failed_php_error";s:38:"There was an error uploading the file.";s:14:"invalid_number";s:29:"The number format is invalid.";s:16:"number_too_small";s:47:"The number is smaller than the minimum allowed.";s:16:"number_too_large";s:46:"The number is larger than the maximum allowed.";s:23:"quiz_answer_not_correct";s:36:"The answer to the quiz is incorrect.";s:17:"captcha_not_match";s:31:"Your entered code is incorrect.";s:13:"invalid_email";s:38:"The e-mail address entered is invalid.";s:11:"invalid_url";s:19:"The URL is invalid.";s:11:"invalid_tel";s:32:"The telephone number is invalid.";}'),
(969, 146, '_additional_settings', ''),
(970, 146, '_locale', 'en_US'),
(971, 147, '_edit_lock', '1458057499:1'),
(972, 147, '_edit_last', '1'),
(973, 147, '_wp_page_template', 'default'),
(974, 147, 'eightstore_lite_sidebar_layout', 'sidebar-right'),
(975, 149, '_menu_item_type', 'post_type'),
(976, 149, '_menu_item_menu_item_parent', '0'),
(977, 149, '_menu_item_object_id', '147'),
(978, 149, '_menu_item_object', 'page'),
(979, 149, '_menu_item_target', ''),
(980, 149, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(981, 149, '_menu_item_xfn', ''),
(982, 149, '_menu_item_url', ''),
(984, 150, '_menu_item_type', 'post_type'),
(985, 150, '_menu_item_menu_item_parent', '0'),
(986, 150, '_menu_item_object_id', '147'),
(987, 150, '_menu_item_object', 'page'),
(988, 150, '_menu_item_target', ''),
(989, 150, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(990, 150, '_menu_item_xfn', ''),
(991, 150, '_menu_item_url', '');

-- --------------------------------------------------------

--
-- Table structure for table `ofs2616_2_posts`
--

CREATE TABLE IF NOT EXISTS `ofs2616_2_posts` (
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
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ofs2616_2_posts`
--

INSERT INTO `ofs2616_2_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2016-03-12 03:01:56', '2016-03-12 03:01:56', 'Welcome to <a href="http://localhost/onefabshop/">One Fab Shop Sites</a>. This is your first post. Edit or delete it, then start blogging!', 'Hello world!', '', 'trash', 'open', 'open', '', 'hello-world', '', '', '2016-03-12 07:54:42', '2016-03-12 07:54:42', '', 0, 'http://localhost/onefabshop/ae/?p=1', 0, 'post', '', 1),
(2, 1, '2016-03-12 03:01:56', '2016-03-12 03:01:56', '', 'About', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2016-03-12 08:36:43', '2016-03-12 08:36:43', '', 0, 'http://localhost/onefabshop/ae/?page_id=2', 0, 'page', '', 0),
(3, 1, '2016-03-12 03:03:05', '2016-03-12 03:03:05', '', 'Shop', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2016-03-12 03:03:05', '2016-03-12 03:03:05', '', 0, 'http://localhost/onefabshop/ae/shop/', 0, 'page', '', 0),
(4, 1, '2016-03-12 03:03:05', '2016-03-12 03:03:05', '[woocommerce_cart]', 'Cart', '', 'publish', 'closed', 'closed', '', 'cart', '', '', '2016-03-12 03:03:05', '2016-03-12 03:03:05', '', 0, 'http://localhost/onefabshop/ae/cart/', 0, 'page', '', 0),
(5, 1, '2016-03-12 03:03:05', '2016-03-12 03:03:05', '[woocommerce_checkout]', 'Checkout', '', 'publish', 'closed', 'closed', '', 'checkout', '', '', '2016-03-12 03:03:05', '2016-03-12 03:03:05', '', 0, 'http://localhost/onefabshop/ae/checkout/', 0, 'page', '', 0),
(6, 1, '2016-03-12 03:03:05', '2016-03-12 03:03:05', '[woocommerce_my_account]', 'My Account', '', 'publish', 'closed', 'closed', '', 'my-account', '', '', '2016-03-12 03:03:05', '2016-03-12 03:03:05', '', 0, 'http://localhost/onefabshop/ae/my-account/', 0, 'page', '', 0),
(7, 1, '2016-03-12 03:09:53', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-03-12 03:09:53', '0000-00-00 00:00:00', '', 0, 'http://localhost/onefabshop/ae/?p=7', 0, 'post', '', 0),
(8, 1, '2016-03-12 07:49:28', '2016-03-12 07:49:28', '', 'Onefabshop Logo', '', 'inherit', 'open', 'closed', '', 'ofslogo', '', '', '2016-03-12 07:49:45', '2016-03-12 07:49:45', '', 0, 'http://localhost/onefabshop/ae/wp-content/uploads/sites/2/2016/03/ofslogo.png', 0, 'attachment', 'image/png', 0),
(9, 1, '2016-03-12 07:51:34', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-03-12 07:51:34', '0000-00-00 00:00:00', '', 0, 'http://localhost/onefabshop/ae/?page_id=9', 0, 'page', '', 0),
(10, 1, '2016-03-12 07:51:49', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-03-12 07:51:49', '0000-00-00 00:00:00', '', 0, 'http://localhost/onefabshop/ae/?page_id=10', 0, 'page', '', 0),
(11, 1, '2016-03-12 07:52:09', '2016-03-12 07:52:09', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2016-03-12 09:07:31', '2016-03-12 09:07:31', '', 0, 'http://localhost/onefabshop/ae/?page_id=11', 0, 'page', '', 0),
(12, 1, '2016-03-12 07:52:09', '2016-03-12 07:52:09', '', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2016-03-12 07:52:09', '2016-03-12 07:52:09', '', 11, 'http://localhost/onefabshop/ae/2016/03/12/11-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2016-03-12 07:54:42', '2016-03-12 07:54:42', 'Welcome to <a href="http://localhost/onefabshop/">One Fab Shop Sites</a>. This is your first post. Edit or delete it, then start blogging!', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2016-03-12 07:54:42', '2016-03-12 07:54:42', '', 1, 'http://localhost/onefabshop/ae/2016/03/12/1-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2016-03-12 07:58:23', '2016-03-12 07:58:23', '', 'for customers in Philippines.', '', 'publish', 'open', 'open', '', 'store-ph', '', '', '2016-03-12 08:15:32', '2016-03-12 08:15:32', '', 0, 'http://localhost/onefabshop/ae/?p=14', 0, 'post', '', 0),
(15, 1, '2016-03-12 07:57:55', '2016-03-12 07:57:55', '', 'ph', '', 'inherit', 'open', 'closed', '', 'ph', '', '', '2016-03-12 07:57:55', '2016-03-12 07:57:55', '', 14, 'http://localhost/onefabshop/ae/wp-content/uploads/sites/2/2016/03/ph.png', 0, 'attachment', 'image/png', 0),
(16, 1, '2016-03-12 07:58:23', '2016-03-12 07:58:23', '', 'for customers in Philippines.', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2016-03-12 07:58:23', '2016-03-12 07:58:23', '', 14, 'http://localhost/onefabshop/ae/2016/03/12/14-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2016-03-12 08:10:45', '2016-03-12 08:10:45', '', 'Post Redirects', '', 'publish', 'closed', 'closed', '', 'acf_post-redirects', '', '', '2016-03-12 08:14:21', '2016-03-12 08:14:21', '', 0, 'http://localhost/onefabshop/ae/?post_type=acf&#038;p=17', 0, 'acf', '', 0),
(18, 1, '2016-03-12 08:15:32', '2016-03-12 08:15:32', '', 'for customers in Philippines.', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2016-03-12 08:15:32', '2016-03-12 08:15:32', '', 14, 'http://localhost/onefabshop/ae/14-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2016-03-12 08:18:31', '2016-03-12 08:18:31', '', 'Our Special Offer 50% Off', '', 'publish', 'open', 'open', '', 'our-special-offer-50-off', '', '', '2016-03-15 14:28:03', '2016-03-15 14:28:03', '', 0, 'http://localhost/onefabshop/ae/?p=19', 0, 'post', '', 0),
(20, 1, '2016-03-12 08:17:14', '2016-03-12 08:17:14', '', 'guess2-banner-2', '', 'inherit', 'open', 'closed', '', 'guess2-banner-2', '', '', '2016-03-12 08:17:14', '2016-03-12 08:17:14', '', 19, 'http://localhost/onefabshop/ae/wp-content/uploads/sites/2/2016/03/guess2-banner-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(22, 1, '2016-03-12 08:17:16', '2016-03-12 08:17:16', '', 'man-img', '', 'inherit', 'open', 'closed', '', 'man-img', '', '', '2016-03-12 08:17:16', '2016-03-12 08:17:16', '', 19, 'http://localhost/onefabshop/ae/wp-content/uploads/sites/2/2016/03/man-img.jpg', 0, 'attachment', 'image/jpeg', 0),
(24, 1, '2016-03-12 08:17:17', '2016-03-12 08:17:17', '', 'Unknown-6', '', 'inherit', 'open', 'closed', '', 'unknown-6', '', '', '2016-03-12 08:17:17', '2016-03-12 08:17:17', '', 19, 'http://localhost/onefabshop/ae/wp-content/uploads/sites/2/2016/03/Unknown-6.jpg', 0, 'attachment', 'image/jpeg', 0),
(25, 1, '2016-03-12 08:17:18', '2016-03-12 08:17:18', '', 'Unknown-7', '', 'inherit', 'open', 'closed', '', 'unknown-7', '', '', '2016-03-12 08:17:18', '2016-03-12 08:17:18', '', 19, 'http://localhost/onefabshop/ae/wp-content/uploads/sites/2/2016/03/Unknown-7.jpg', 0, 'attachment', 'image/jpeg', 0),
(26, 1, '2016-03-12 08:17:18', '2016-03-12 08:17:18', '', 'Unknown-62', '', 'inherit', 'open', 'closed', '', 'unknown-62', '', '', '2016-03-12 08:17:18', '2016-03-12 08:17:18', '', 19, 'http://localhost/onefabshop/ae/wp-content/uploads/sites/2/2016/03/Unknown-62.jpg', 0, 'attachment', 'image/jpeg', 0),
(27, 1, '2016-03-12 08:17:19', '2016-03-12 08:17:19', '', 'video-bkg', '', 'inherit', 'open', 'closed', '', 'video-bkg', '', '', '2016-03-12 08:17:19', '2016-03-12 08:17:19', '', 19, 'http://localhost/onefabshop/ae/wp-content/uploads/sites/2/2016/03/video-bkg.jpg', 0, 'attachment', 'image/jpeg', 0),
(28, 1, '2016-03-12 08:17:19', '2016-03-12 08:17:19', '', 'women-img', '', 'inherit', 'open', 'closed', '', 'women-img', '', '', '2016-03-12 08:17:19', '2016-03-12 08:17:19', '', 19, 'http://localhost/onefabshop/ae/wp-content/uploads/sites/2/2016/03/women-img.jpg', 0, 'attachment', 'image/jpeg', 0),
(29, 1, '2016-03-12 08:18:18', '2016-03-12 08:18:18', '', 'guess-banner', '', 'inherit', 'open', 'closed', '', 'guess-banner', '', '', '2016-03-12 08:18:18', '2016-03-12 08:18:18', '', 19, 'http://localhost/onefabshop/ae/wp-content/uploads/sites/2/2016/03/guess-banner.jpg', 0, 'attachment', 'image/jpeg', 0),
(30, 1, '2016-03-12 08:18:31', '2016-03-12 08:18:31', '', 'Our Special Offer 50% Off', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2016-03-12 08:18:31', '2016-03-12 08:18:31', '', 19, 'http://localhost/onefabshop/ae/19-revision-v1/', 0, 'revision', '', 0),
(31, 1, '2016-03-12 08:19:16', '2016-03-12 08:19:16', '', 'Men', '', 'publish', 'open', 'open', '', 'men', '', '', '2016-03-12 08:19:16', '2016-03-12 08:19:16', '', 0, 'http://localhost/onefabshop/ae/?p=31', 0, 'post', '', 0),
(32, 1, '2016-03-12 08:19:16', '2016-03-12 08:19:16', '', 'Men', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2016-03-12 08:19:16', '2016-03-12 08:19:16', '', 31, 'http://localhost/onefabshop/ae/31-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2016-03-12 08:20:49', '2016-03-12 08:20:49', '', 'Shoes', '', 'publish', 'open', 'open', '', 'shoes', '', '', '2016-03-12 08:20:49', '2016-03-12 08:20:49', '', 0, 'http://localhost/onefabshop/ae/?p=33', 0, 'post', '', 0),
(34, 1, '2016-03-12 08:20:43', '2016-03-12 08:20:43', '', 'bags', '', 'inherit', 'open', 'closed', '', 'bags', '', '', '2016-03-12 08:20:43', '2016-03-12 08:20:43', '', 33, 'http://localhost/onefabshop/ae/wp-content/uploads/sites/2/2016/03/bags.jpg', 0, 'attachment', 'image/jpeg', 0),
(35, 1, '2016-03-12 08:20:44', '2016-03-12 08:20:44', '', 'Unknown-52', '', 'inherit', 'open', 'closed', '', 'unknown-52', '', '', '2016-03-12 08:20:44', '2016-03-12 08:20:44', '', 33, 'http://localhost/onefabshop/ae/wp-content/uploads/sites/2/2016/03/Unknown-52.jpg', 0, 'attachment', 'image/jpeg', 0),
(36, 1, '2016-03-12 08:20:49', '2016-03-12 08:20:49', '', 'Shoes', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2016-03-12 08:20:49', '2016-03-12 08:20:49', '', 33, 'http://localhost/onefabshop/ae/33-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2016-03-12 08:21:36', '2016-03-12 08:21:36', '', 'Authentic Bags', '', 'publish', 'open', 'open', '', 'authentic-bags', '', '', '2016-03-12 08:21:36', '2016-03-12 08:21:36', '', 0, 'http://localhost/onefabshop/ae/?p=37', 0, 'post', '', 0),
(38, 1, '2016-03-12 08:21:36', '2016-03-12 08:21:36', '', 'Authentic Bags', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2016-03-12 08:21:36', '2016-03-12 08:21:36', '', 37, 'http://localhost/onefabshop/ae/37-revision-v1/', 0, 'revision', '', 0),
(39, 1, '2016-03-12 08:22:13', '2016-03-12 08:22:13', '', 'Women', '', 'publish', 'open', 'open', '', 'women', '', '', '2016-03-12 08:22:13', '2016-03-12 08:22:13', '', 0, 'http://localhost/onefabshop/ae/?p=39', 0, 'post', '', 0),
(40, 1, '2016-03-12 08:22:13', '2016-03-12 08:22:13', '', 'Women', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2016-03-12 08:22:13', '2016-03-12 08:22:13', '', 39, 'http://localhost/onefabshop/ae/39-revision-v1/', 0, 'revision', '', 0),
(41, 1, '2016-03-12 08:22:43', '2016-03-12 08:22:43', '', 'AUTHENTIC GUESS BAGS AVAILABLE NOW!', '', 'publish', 'open', 'open', '', 'authentic-guess-bags-available-now', '', '', '2016-03-15 14:26:25', '2016-03-15 14:26:25', '', 0, 'http://localhost/onefabshop/ae/?p=41', 0, 'post', '', 0),
(42, 1, '2016-03-12 08:22:43', '2016-03-12 08:22:43', '', 'AUTHENTIC GUESS BAGS AVAILABLE NOW!', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2016-03-12 08:22:43', '2016-03-12 08:22:43', '', 41, 'http://localhost/onefabshop/ae/41-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2016-03-12 08:23:15', '2016-03-12 08:23:15', '', 'Terms and Conditions', '', 'publish', 'closed', 'closed', '', 'terms-and-conditions', '', '', '2016-03-12 08:23:15', '2016-03-12 08:23:15', '', 0, 'http://localhost/onefabshop/ae/?page_id=43', 0, 'page', '', 0),
(44, 1, '2016-03-12 08:23:15', '2016-03-12 08:23:15', '', 'Terms and Conditions', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2016-03-12 08:23:15', '2016-03-12 08:23:15', '', 43, 'http://localhost/onefabshop/ae/43-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2016-03-12 08:23:34', '2016-03-12 08:23:34', '', 'Privacy', '', 'publish', 'closed', 'closed', '', 'privacy', '', '', '2016-03-12 08:23:34', '2016-03-12 08:23:34', '', 0, 'http://localhost/onefabshop/ae/?page_id=45', 0, 'page', '', 0),
(46, 1, '2016-03-12 08:23:34', '2016-03-12 08:23:34', '', 'Privacy', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2016-03-12 08:23:34', '2016-03-12 08:23:34', '', 45, 'http://localhost/onefabshop/ae/45-revision-v1/', 0, 'revision', '', 0),
(47, 1, '2016-03-12 08:28:15', '2016-03-12 08:28:15', 'sample content here.', 'Sample', '', 'publish', 'open', 'open', '', 'sample', '', '', '2016-03-12 08:28:15', '2016-03-12 08:28:15', '', 0, 'http://localhost/onefabshop/ae/?p=47', 0, 'post', '', 0),
(48, 1, '2016-03-12 08:28:15', '2016-03-12 08:28:15', 'sample content here.', 'Sample', '', 'inherit', 'closed', 'closed', '', '47-revision-v1', '', '', '2016-03-12 08:28:15', '2016-03-12 08:28:15', '', 47, 'http://localhost/onefabshop/ae/47-revision-v1/', 0, 'revision', '', 0),
(49, 1, '2016-03-12 08:34:21', '2016-03-12 08:34:21', ' ', '', '', 'publish', 'closed', 'closed', '', '49', '', '', '2016-03-15 16:01:17', '2016-03-15 16:01:17', '', 0, 'http://localhost/onefabshop/ae/?p=49', 1, 'nav_menu_item', '', 0),
(53, 1, '2016-03-12 08:34:21', '2016-03-12 08:34:21', ' ', '', '', 'publish', 'closed', 'closed', '', '53', '', '', '2016-03-15 16:01:17', '2016-03-15 16:01:17', '', 0, 'http://localhost/onefabshop/ae/?p=53', 33, 'nav_menu_item', '', 0),
(56, 1, '2016-03-12 08:34:21', '2016-03-12 08:34:21', ' ', '', '', 'publish', 'closed', 'closed', '', '56', '', '', '2016-03-15 16:01:17', '2016-03-15 16:01:17', '', 0, 'http://localhost/onefabshop/ae/?p=56', 2, 'nav_menu_item', '', 0),
(58, 1, '2016-03-12 08:35:52', '2016-03-12 08:35:52', '', 'Blogs', '', 'publish', 'closed', 'closed', '', '58', '', '', '2016-03-15 16:01:17', '2016-03-15 16:01:17', '', 0, 'http://localhost/onefabshop/ae/?p=58', 30, 'nav_menu_item', '', 0),
(59, 1, '2016-03-12 08:36:11', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-03-12 08:36:11', '0000-00-00 00:00:00', '', 0, 'http://localhost/onefabshop/ae/?page_id=59', 0, 'page', '', 0),
(60, 1, '2016-03-12 08:36:43', '2016-03-12 08:36:43', '', 'About', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2016-03-12 08:36:43', '2016-03-12 08:36:43', '', 2, 'http://localhost/onefabshop/ae/2-revision-v1/', 0, 'revision', '', 0),
(61, 1, '2016-03-12 08:37:28', '2016-03-12 08:37:28', ' ', '', '', 'publish', 'closed', 'closed', '', '61', '', '', '2016-03-15 16:01:17', '2016-03-15 16:01:17', '', 0, 'http://localhost/onefabshop/ae/?p=61', 31, 'nav_menu_item', '', 0),
(62, 1, '2016-03-12 08:39:28', '2016-03-12 08:39:28', ' ', '', '', 'publish', 'closed', 'closed', '', '62', '', '', '2016-03-15 16:01:00', '2016-03-15 16:01:00', '', 0, 'http://localhost/onefabshop/ae/?p=62', 5, 'nav_menu_item', '', 0),
(63, 1, '2016-03-12 08:39:28', '2016-03-12 08:39:28', ' ', '', '', 'publish', 'closed', 'closed', '', '63', '', '', '2016-03-15 16:01:00', '2016-03-15 16:01:00', '', 0, 'http://localhost/onefabshop/ae/?p=63', 6, 'nav_menu_item', '', 0),
(64, 1, '2016-03-12 08:39:27', '2016-03-12 08:39:27', ' ', '', '', 'publish', 'closed', 'closed', '', '64', '', '', '2016-03-15 16:01:00', '2016-03-15 16:01:00', '', 0, 'http://localhost/onefabshop/ae/?p=64', 1, 'nav_menu_item', '', 0),
(65, 1, '2016-03-12 08:39:27', '2016-03-12 08:39:27', ' ', '', '', 'publish', 'closed', 'closed', '', '65', '', '', '2016-03-15 16:01:00', '2016-03-15 16:01:00', '', 0, 'http://localhost/onefabshop/ae/?p=65', 2, 'nav_menu_item', '', 0),
(66, 1, '2016-03-12 08:39:28', '2016-03-12 08:39:28', ' ', '', '', 'publish', 'closed', 'closed', '', '66', '', '', '2016-03-15 16:01:00', '2016-03-15 16:01:00', '', 0, 'http://localhost/onefabshop/ae/?p=66', 4, 'nav_menu_item', '', 0),
(67, 1, '2016-03-12 08:39:28', '2016-03-12 08:39:28', '', 'Blogs', '', 'publish', 'closed', 'closed', '', '67', '', '', '2016-03-15 16:01:00', '2016-03-15 16:01:00', '', 0, 'http://localhost/onefabshop/ae/?p=67', 3, 'nav_menu_item', '', 0),
(68, 1, '2016-03-12 09:22:27', '2016-03-12 09:22:27', '', 'Women', '', 'publish', 'closed', 'closed', '', 'women', '', '', '2016-03-15 16:01:17', '2016-03-15 16:01:17', '', 0, 'http://localhost/onefabshop/ae/?p=68', 16, 'nav_menu_item', '', 0),
(69, 1, '2016-03-12 09:22:27', '2016-03-12 09:22:27', '', 'Men', '', 'publish', 'closed', 'closed', '', 'men', '', '', '2016-03-15 16:01:17', '2016-03-15 16:01:17', '', 0, 'http://localhost/onefabshop/ae/?p=69', 21, 'nav_menu_item', '', 0),
(70, 1, '2016-03-12 09:22:27', '2016-03-12 09:22:27', '', 'Shoes', '', 'publish', 'closed', 'closed', '', 'shoes', '', '', '2016-03-15 16:01:17', '2016-03-15 16:01:17', '', 0, 'http://localhost/onefabshop/ae/?p=70', 17, 'nav_menu_item', '', 0),
(71, 1, '2016-03-12 09:22:27', '2016-03-12 09:22:27', '', 'Apparels', '', 'publish', 'closed', 'closed', '', 'apparels', '', '', '2016-03-15 16:01:17', '2016-03-15 16:01:17', '', 0, 'http://localhost/onefabshop/ae/?p=71', 18, 'nav_menu_item', '', 0),
(72, 1, '2016-03-12 09:22:27', '2016-03-12 09:22:27', '', 'Bags', '', 'publish', 'closed', 'closed', '', 'bags', '', '', '2016-03-15 16:01:17', '2016-03-15 16:01:17', '', 0, 'http://localhost/onefabshop/ae/?p=72', 19, 'nav_menu_item', '', 0),
(73, 1, '2016-03-12 09:22:27', '2016-03-12 09:22:27', '', 'Accessories', '', 'publish', 'closed', 'closed', '', 'accessories', '', '', '2016-03-15 16:01:17', '2016-03-15 16:01:17', '', 0, 'http://localhost/onefabshop/ae/?p=73', 20, 'nav_menu_item', '', 0),
(74, 1, '2016-03-12 09:20:30', '0000-00-00 00:00:00', '', 'Men', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-03-12 09:20:30', '0000-00-00 00:00:00', '', 0, 'http://localhost/onefabshop/ae/?p=74', 1, 'nav_menu_item', '', 0),
(75, 1, '2016-03-12 09:22:27', '2016-03-12 09:22:27', '', 'Shoes', '', 'publish', 'closed', 'closed', '', 'shoes-2', '', '', '2016-03-15 16:01:17', '2016-03-15 16:01:17', '', 0, 'http://localhost/onefabshop/ae/?p=75', 22, 'nav_menu_item', '', 0),
(76, 1, '2016-03-12 09:22:27', '2016-03-12 09:22:27', '', 'Apparels', '', 'publish', 'closed', 'closed', '', 'apparels-2', '', '', '2016-03-15 16:01:17', '2016-03-15 16:01:17', '', 0, 'http://localhost/onefabshop/ae/?p=76', 23, 'nav_menu_item', '', 0),
(77, 1, '2016-03-12 09:22:27', '2016-03-12 09:22:27', '', 'Bags', '', 'publish', 'closed', 'closed', '', 'bags-2', '', '', '2016-03-15 16:01:17', '2016-03-15 16:01:17', '', 0, 'http://localhost/onefabshop/ae/?p=77', 24, 'nav_menu_item', '', 0),
(78, 1, '2016-03-12 09:22:27', '2016-03-12 09:22:27', '', 'Accessories', '', 'publish', 'closed', 'closed', '', 'accessories-2', '', '', '2016-03-15 16:01:17', '2016-03-15 16:01:17', '', 0, 'http://localhost/onefabshop/ae/?p=78', 25, 'nav_menu_item', '', 0),
(79, 1, '2016-03-12 09:24:19', '2016-03-12 09:24:19', '', 'Shoes', '', 'publish', 'closed', 'closed', '', 'shoes-3', '', '', '2016-03-15 16:01:17', '2016-03-15 16:01:17', '', 0, 'http://localhost/onefabshop/ae/?p=79', 26, 'nav_menu_item', '', 0),
(80, 1, '2016-03-12 09:24:19', '2016-03-12 09:24:19', '', 'Apparels', '', 'publish', 'closed', 'closed', '', 'apparels-3', '', '', '2016-03-15 16:01:17', '2016-03-15 16:01:17', '', 0, 'http://localhost/onefabshop/ae/?p=80', 27, 'nav_menu_item', '', 0),
(81, 1, '2016-03-12 09:24:19', '2016-03-12 09:24:19', '', 'Bags', '', 'publish', 'closed', 'closed', '', 'bags-3', '', '', '2016-03-15 16:01:17', '2016-03-15 16:01:17', '', 0, 'http://localhost/onefabshop/ae/?p=81', 28, 'nav_menu_item', '', 0),
(82, 1, '2016-03-12 09:24:19', '2016-03-12 09:24:19', '', 'Accessories', '', 'publish', 'closed', 'closed', '', 'accessories-3', '', '', '2016-03-15 16:01:17', '2016-03-15 16:01:17', '', 0, 'http://localhost/onefabshop/ae/?p=82', 29, 'nav_menu_item', '', 0),
(83, 1, '2016-03-13 09:48:55', '2016-03-13 09:48:55', '', 'MK Shoes', '', 'trash', 'open', 'closed', '', 'mk-shoes', '', '', '2016-03-14 14:53:10', '2016-03-14 14:53:10', '', 0, 'http://localhost/onefabshop/ae/?post_type=product&#038;p=83', 0, 'product', '', 0),
(84, 1, '2016-03-13 11:44:32', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-03-13 11:44:32', '0000-00-00 00:00:00', '', 0, 'http://localhost/onefabshop/ae/?p=84', 1, 'nav_menu_item', '', 0),
(85, 1, '2016-03-13 11:47:14', '2016-03-13 11:47:14', ' ', '', '', 'publish', 'closed', 'closed', '', '85', '', '', '2016-03-15 16:01:17', '2016-03-15 16:01:17', '', 0, 'http://localhost/onefabshop/ae/?p=85', 4, 'nav_menu_item', '', 0),
(86, 1, '2016-03-13 11:47:14', '2016-03-13 11:47:14', ' ', '', '', 'publish', 'closed', 'closed', '', '86', '', '', '2016-03-15 16:01:17', '2016-03-15 16:01:17', '', 0, 'http://localhost/onefabshop/ae/?p=86', 5, 'nav_menu_item', '', 0),
(87, 1, '2016-03-13 11:47:14', '2016-03-13 11:47:14', ' ', '', '', 'publish', 'closed', 'closed', '', '87', '', '', '2016-03-15 16:01:17', '2016-03-15 16:01:17', '', 0, 'http://localhost/onefabshop/ae/?p=87', 6, 'nav_menu_item', '', 0),
(88, 1, '2016-03-13 11:44:33', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-03-13 11:44:33', '0000-00-00 00:00:00', '', 0, 'http://localhost/onefabshop/ae/?p=88', 1, 'nav_menu_item', '', 0),
(89, 1, '2016-03-13 11:44:33', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-03-13 11:44:33', '0000-00-00 00:00:00', '', 0, 'http://localhost/onefabshop/ae/?p=89', 1, 'nav_menu_item', '', 0),
(90, 1, '2016-03-13 11:47:14', '2016-03-13 11:47:14', ' ', '', '', 'publish', 'closed', 'closed', '', '90', '', '', '2016-03-15 16:01:17', '2016-03-15 16:01:17', '', 0, 'http://localhost/onefabshop/ae/?p=90', 7, 'nav_menu_item', '', 0),
(91, 1, '2016-03-13 11:47:14', '2016-03-13 11:47:14', ' ', '', '', 'publish', 'closed', 'closed', '', '91', '', '', '2016-03-15 16:01:17', '2016-03-15 16:01:17', '', 0, 'http://localhost/onefabshop/ae/?p=91', 8, 'nav_menu_item', '', 0),
(92, 1, '2016-03-13 11:47:14', '2016-03-13 11:47:14', ' ', '', '', 'publish', 'closed', 'closed', '', '92', '', '', '2016-03-15 16:01:17', '2016-03-15 16:01:17', '', 0, 'http://localhost/onefabshop/ae/?p=92', 9, 'nav_menu_item', '', 0),
(93, 1, '2016-03-13 11:47:14', '2016-03-13 11:47:14', ' ', '', '', 'publish', 'closed', 'closed', '', '93', '', '', '2016-03-15 16:01:17', '2016-03-15 16:01:17', '', 0, 'http://localhost/onefabshop/ae/?p=93', 10, 'nav_menu_item', '', 0),
(94, 1, '2016-03-13 11:47:14', '2016-03-13 11:47:14', ' ', '', '', 'publish', 'closed', 'closed', '', '94', '', '', '2016-03-15 16:01:17', '2016-03-15 16:01:17', '', 0, 'http://localhost/onefabshop/ae/?p=94', 11, 'nav_menu_item', '', 0),
(95, 1, '2016-03-13 11:47:14', '2016-03-13 11:47:14', ' ', '', '', 'publish', 'closed', 'closed', '', '95', '', '', '2016-03-15 16:01:17', '2016-03-15 16:01:17', '', 0, 'http://localhost/onefabshop/ae/?p=95', 12, 'nav_menu_item', '', 0),
(96, 1, '2016-03-13 11:47:14', '2016-03-13 11:47:14', ' ', '', '', 'publish', 'closed', 'closed', '', '96', '', '', '2016-03-15 16:01:17', '2016-03-15 16:01:17', '', 0, 'http://localhost/onefabshop/ae/?p=96', 13, 'nav_menu_item', '', 0),
(97, 1, '2016-03-13 11:47:14', '2016-03-13 11:47:14', ' ', '', '', 'publish', 'closed', 'closed', '', '97', '', '', '2016-03-15 16:01:17', '2016-03-15 16:01:17', '', 0, 'http://localhost/onefabshop/ae/?p=97', 14, 'nav_menu_item', '', 0),
(98, 1, '2016-03-13 11:44:33', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-03-13 11:44:33', '0000-00-00 00:00:00', '', 0, 'http://localhost/onefabshop/ae/?p=98', 1, 'nav_menu_item', '', 0),
(99, 1, '2016-03-13 11:47:15', '2016-03-13 11:47:15', ' ', '', '', 'publish', 'closed', 'closed', '', '99', '', '', '2016-03-15 16:01:17', '2016-03-15 16:01:17', '', 0, 'http://localhost/onefabshop/ae/?p=99', 15, 'nav_menu_item', '', 0),
(100, 1, '2016-03-13 11:47:14', '2016-03-13 11:47:14', '', 'Brands', '', 'publish', 'closed', 'closed', '', 'brands', '', '', '2016-03-15 16:01:17', '2016-03-15 16:01:17', '', 0, 'http://localhost/onefabshop/ae/?p=100', 3, 'nav_menu_item', '', 0),
(101, 1, '2016-03-13 12:13:08', '2016-03-13 12:13:08', '', 'ALDO bag', '', 'trash', 'open', 'closed', '', 'aldo-bag', '', '', '2016-03-14 14:53:10', '2016-03-14 14:53:10', '', 0, 'http://localhost/onefabshop/ae/?post_type=product&#038;p=101', 0, 'product', '', 0),
(102, 1, '2016-03-14 13:56:20', '2016-03-14 13:56:20', '*Leather\r\n\r\n* Adjustable shoulder strap\r\n\r\n* Designer logo at front\r\n\r\n* Fabric interior lining with two zipper pockets and two flat pockets\r\n\r\n* Open top\r\n\r\n**Measurements:** Body length 9.5", height 7", width 2", strap drop 21"', 'Kate Spade New York - Holden Street Lilibeth Crossbody', '', 'publish', 'open', 'closed', '', 'kate-spade-new-york-holden-street-lilibeth-crossbody', '', '', '2016-03-14 14:06:35', '2016-03-14 14:06:35', '', 0, 'http://localhost/onefabshop/ae/?post_type=product&#038;p=102', 0, 'product', '', 0),
(103, 1, '2016-03-14 13:53:56', '2016-03-14 13:53:56', '', 'FB_IMG_1457952275670', '', 'inherit', 'open', 'closed', '', 'fb_img_1457952275670', '', '', '2016-03-14 13:53:56', '2016-03-14 13:53:56', '', 102, 'http://localhost/onefabshop/ae/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952275670.jpg', 0, 'attachment', 'image/jpeg', 0),
(104, 1, '2016-03-14 14:05:17', '2016-03-14 14:05:17', '', 'FB_IMG_1457952284617', '', 'inherit', 'open', 'closed', '', 'fb_img_1457952284617', '', '', '2016-03-14 14:05:17', '2016-03-14 14:05:17', '', 102, 'http://localhost/onefabshop/ae/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952284617.jpg', 0, 'attachment', 'image/jpeg', 0),
(105, 1, '2016-03-14 14:05:18', '2016-03-14 14:05:18', '', 'FB_IMG_1457952291056', '', 'inherit', 'open', 'closed', '', 'fb_img_1457952291056', '', '', '2016-03-14 14:05:18', '2016-03-14 14:05:18', '', 102, 'http://localhost/onefabshop/ae/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952291056.jpg', 0, 'attachment', 'image/jpeg', 0),
(106, 1, '2016-03-14 14:05:21', '2016-03-14 14:05:21', '', 'FB_IMG_1457952295961', '', 'inherit', 'open', 'closed', '', 'fb_img_1457952295961', '', '', '2016-03-14 14:05:21', '2016-03-14 14:05:21', '', 102, 'http://localhost/onefabshop/ae/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952295961.jpg', 0, 'attachment', 'image/jpeg', 0),
(107, 1, '2016-03-14 14:58:01', '2016-03-14 14:58:01', '', 'KATE SPADE NEW YORK Ivy Place Gabriella Crossbody', '<p><br data-mce-bogus="1"></p>', 'trash', 'open', 'closed', '', 'kate-spade-new-york-ivy-place-gabriella-crossbody', '', '', '2016-03-14 14:58:08', '2016-03-14 14:58:08', '', 0, 'http://localhost/onefabshop/ae/?post_type=product&#038;p=107', 0, 'product', '', 0),
(108, 1, '2016-03-14 15:03:05', '2016-03-14 15:03:05', '* Leather\r\n\r\n* Adjustable shoulder strap\r\n\r\n* Designer embossed logo at front\r\n\r\n* Fabric interior lining with two dividers\r\n\r\n* Zip top closure\r\n\r\n**Measurements:** Body length 9.5", height 6.5", width 1.5", strap drop 21.5"', 'Kate Spade New York Ivy Place Gabriella Crossbody', '', 'publish', 'open', 'closed', '', 'kate-spade-new-york-ivy-place-gabriella-crossbody-2', '', '', '2016-03-14 15:03:05', '2016-03-14 15:03:05', '', 0, 'http://localhost/onefabshop/ae/?post_type=product&#038;p=108', 0, 'product', '', 0),
(109, 1, '2016-03-14 15:01:02', '2016-03-14 15:01:02', '', 'FB_IMG_1457952527684', '', 'inherit', 'open', 'closed', '', 'fb_img_1457952527684', '', '', '2016-03-14 15:01:02', '2016-03-14 15:01:02', '', 108, 'http://localhost/onefabshop/ae/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952527684.jpg', 0, 'attachment', 'image/jpeg', 0),
(110, 1, '2016-03-14 15:01:04', '2016-03-14 15:01:04', '', 'FB_IMG_1457952530331', '', 'inherit', 'open', 'closed', '', 'fb_img_1457952530331', '', '', '2016-03-14 15:01:04', '2016-03-14 15:01:04', '', 108, 'http://localhost/onefabshop/ae/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952530331.jpg', 0, 'attachment', 'image/jpeg', 0),
(111, 1, '2016-03-14 15:01:05', '2016-03-14 15:01:05', '', 'FB_IMG_1457952534292', '', 'inherit', 'open', 'closed', '', 'fb_img_1457952534292', '', '', '2016-03-14 15:01:05', '2016-03-14 15:01:05', '', 108, 'http://localhost/onefabshop/ae/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952534292.jpg', 0, 'attachment', 'image/jpeg', 0),
(112, 1, '2016-03-14 15:01:07', '2016-03-14 15:01:07', '', 'FB_IMG_1457952537124', '', 'inherit', 'open', 'closed', '', 'fb_img_1457952537124', '', '', '2016-03-14 15:01:07', '2016-03-14 15:01:07', '', 108, 'http://localhost/onefabshop/ae/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952537124.jpg', 0, 'attachment', 'image/jpeg', 0),
(113, 1, '2016-03-14 15:07:44', '2016-03-14 15:07:44', '*Leather\r\n\r\n* Chain-link and leather shoulder strap\r\n\r\n* Bow accent with designer embossed detail at front\r\n\r\n* Fabric interior lining with one zipper pocket and one flat pocket\r\n\r\n* Zip top closure', 'Kate Spade New York Primrose Hill Arica Crossbody', '', 'publish', 'open', 'closed', '', 'kate-spade-new-york-primrose-hill-arica-crossbody', '', '', '2016-03-14 15:07:44', '2016-03-14 15:07:44', '', 0, 'http://localhost/onefabshop/ae/?post_type=product&#038;p=113', 0, 'product', '', 0),
(114, 1, '2016-03-14 15:07:22', '2016-03-14 15:07:22', '', 'FB_IMG_1457952640133', '', 'inherit', 'open', 'closed', '', 'fb_img_1457952640133', '', '', '2016-03-14 15:07:22', '2016-03-14 15:07:22', '', 113, 'http://localhost/onefabshop/ae/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952640133.jpg', 0, 'attachment', 'image/jpeg', 0),
(115, 1, '2016-03-14 15:07:24', '2016-03-14 15:07:24', '', 'FB_IMG_1457952643184', '', 'inherit', 'open', 'closed', '', 'fb_img_1457952643184', '', '', '2016-03-14 15:07:24', '2016-03-14 15:07:24', '', 113, 'http://localhost/onefabshop/ae/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952643184.jpg', 0, 'attachment', 'image/jpeg', 0),
(116, 1, '2016-03-14 15:07:25', '2016-03-14 15:07:25', '', 'FB_IMG_1457952647432', '', 'inherit', 'open', 'closed', '', 'fb_img_1457952647432', '', '', '2016-03-14 15:07:25', '2016-03-14 15:07:25', '', 113, 'http://localhost/onefabshop/ae/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952647432.jpg', 0, 'attachment', 'image/jpeg', 0),
(117, 1, '2016-03-14 15:07:27', '2016-03-14 15:07:27', '', 'FB_IMG_1457952650180', '', 'inherit', 'open', 'closed', '', 'fb_img_1457952650180', '', '', '2016-03-14 15:07:27', '2016-03-14 15:07:27', '', 113, 'http://localhost/onefabshop/ae/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952650180.jpg', 0, 'attachment', 'image/jpeg', 0),
(118, 1, '2016-03-14 15:13:42', '2016-03-14 15:13:42', '*Leather\r\n\r\n* Chain-link and leather shoulder strap\r\n\r\n* Designer logo at front\r\n\r\n* Fabric interior lining with one flat pocket\r\n\r\n* Flap top with snap closure', 'Kate Spade New York Cedar Street Cami Crossbody Bag', '', 'publish', 'open', 'closed', '', 'kate-spade-new-york-cedar-street-cami-crossbody-bag', '', '', '2016-03-14 15:13:42', '2016-03-14 15:13:42', '', 0, 'http://localhost/onefabshop/ae/?post_type=product&#038;p=118', 0, 'product', '', 0),
(119, 1, '2016-03-14 15:13:26', '2016-03-14 15:13:26', '', 'FB_IMG_1457952722594', '', 'inherit', 'open', 'closed', '', 'fb_img_1457952722594', '', '', '2016-03-14 15:13:26', '2016-03-14 15:13:26', '', 118, 'http://localhost/onefabshop/ae/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952722594.jpg', 0, 'attachment', 'image/jpeg', 0),
(120, 1, '2016-03-14 15:13:28', '2016-03-14 15:13:28', '', 'FB_IMG_1457952726572', '', 'inherit', 'open', 'closed', '', 'fb_img_1457952726572', '', '', '2016-03-14 15:13:28', '2016-03-14 15:13:28', '', 118, 'http://localhost/onefabshop/ae/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952726572.jpg', 0, 'attachment', 'image/jpeg', 0),
(121, 1, '2016-03-14 15:13:29', '2016-03-14 15:13:29', '', 'FB_IMG_1457952731175', '', 'inherit', 'open', 'closed', '', 'fb_img_1457952731175', '', '', '2016-03-14 15:13:29', '2016-03-14 15:13:29', '', 118, 'http://localhost/onefabshop/ae/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952731175.jpg', 0, 'attachment', 'image/jpeg', 0),
(122, 1, '2016-03-14 15:13:31', '2016-03-14 15:13:31', '', 'FB_IMG_1457952734984', '', 'inherit', 'open', 'closed', '', 'fb_img_1457952734984', '', '', '2016-03-14 15:13:31', '2016-03-14 15:13:31', '', 118, 'http://localhost/onefabshop/ae/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952734984.jpg', 0, 'attachment', 'image/jpeg', 0),
(123, 1, '2016-03-14 15:16:21', '2016-03-14 15:16:21', '* Leather\r\n\r\n* Adjustable shoulder strap\r\n\r\n* Bow detail with designer logo accent at front\r\n\r\n* Fabric interior lining with one zipper pocket and two flat pockets\r\n\r\n* Zip top closure\r\n\r\n**Measurements:** Body length 8.5", height 7", width 3", strap drop 21"', 'Kate Spade New York Julia Street Hayden Crossbody', '', 'publish', 'open', 'closed', '', 'kate-spade-new-york-julia-street-hayden-crossbody', '', '', '2016-03-14 15:16:21', '2016-03-14 15:16:21', '', 0, 'http://localhost/onefabshop/ae/?post_type=product&#038;p=123', 0, 'product', '', 0),
(124, 1, '2016-03-14 15:16:05', '2016-03-14 15:16:05', '', 'FB_IMG_1457952825283', '', 'inherit', 'open', 'closed', '', 'fb_img_1457952825283', '', '', '2016-03-14 15:16:05', '2016-03-14 15:16:05', '', 123, 'http://localhost/onefabshop/ae/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952825283.jpg', 0, 'attachment', 'image/jpeg', 0),
(125, 1, '2016-03-14 15:16:07', '2016-03-14 15:16:07', '', 'FB_IMG_1457952832733', '', 'inherit', 'open', 'closed', '', 'fb_img_1457952832733', '', '', '2016-03-14 15:16:07', '2016-03-14 15:16:07', '', 123, 'http://localhost/onefabshop/ae/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952832733.jpg', 0, 'attachment', 'image/jpeg', 0),
(126, 1, '2016-03-14 15:16:08', '2016-03-14 15:16:08', '', 'FB_IMG_1457952834876', '', 'inherit', 'open', 'closed', '', 'fb_img_1457952834876', '', '', '2016-03-14 15:16:08', '2016-03-14 15:16:08', '', 123, 'http://localhost/onefabshop/ae/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952834876.jpg', 0, 'attachment', 'image/jpeg', 0),
(127, 1, '2016-03-14 15:16:09', '2016-03-14 15:16:09', '', 'FB_IMG_1457952837474', '', 'inherit', 'open', 'closed', '', 'fb_img_1457952837474', '', '', '2016-03-14 15:16:09', '2016-03-14 15:16:09', '', 123, 'http://localhost/onefabshop/ae/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952837474.jpg', 0, 'attachment', 'image/jpeg', 0),
(128, 1, '2016-03-14 15:19:49', '2016-03-14 15:19:49', '* Leather\r\n\r\n* Single flat top handle and optional, adjustable shoulder strap\r\n\r\n* Designer logo at front\r\n\r\n* Exterior front zipper pocket\r\n\r\n* Fabric interior lining with one zipper pocket and two flat pockets\r\n\r\n* Zip top closure\r\n\r\n**Measurements:** Body length 9.75", height 8.75", width 4.5", drop handle 5", strap drop 20"', 'Kate Spade New York Leather Satchel', '', 'publish', 'open', 'closed', '', 'kate-spade-new-york-leather-satchel', '', '', '2016-03-14 15:19:49', '2016-03-14 15:19:49', '', 0, 'http://localhost/onefabshop/ae/?post_type=product&#038;p=128', 0, 'product', '', 0),
(129, 1, '2016-03-14 15:19:31', '2016-03-14 15:19:31', '', 'FB_IMG_1457952908368', '', 'inherit', 'open', 'closed', '', 'fb_img_1457952908368', '', '', '2016-03-14 15:19:31', '2016-03-14 15:19:31', '', 128, 'http://localhost/onefabshop/ae/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952908368.jpg', 0, 'attachment', 'image/jpeg', 0),
(130, 1, '2016-03-14 15:19:32', '2016-03-14 15:19:32', '', 'FB_IMG_1457952910661', '', 'inherit', 'open', 'closed', '', 'fb_img_1457952910661', '', '', '2016-03-14 15:19:32', '2016-03-14 15:19:32', '', 128, 'http://localhost/onefabshop/ae/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952910661.jpg', 0, 'attachment', 'image/jpeg', 0),
(131, 1, '2016-03-14 15:19:34', '2016-03-14 15:19:34', '', 'FB_IMG_1457952912700', '', 'inherit', 'open', 'closed', '', 'fb_img_1457952912700', '', '', '2016-03-14 15:19:34', '2016-03-14 15:19:34', '', 128, 'http://localhost/onefabshop/ae/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952912700.jpg', 0, 'attachment', 'image/jpeg', 0),
(132, 1, '2016-03-14 15:19:35', '2016-03-14 15:19:35', '', 'FB_IMG_1457952914825', '', 'inherit', 'open', 'closed', '', 'fb_img_1457952914825', '', '', '2016-03-14 15:19:35', '2016-03-14 15:19:35', '', 128, 'http://localhost/onefabshop/ae/wp-content/uploads/sites/2/2016/03/FB_IMG_1457952914825.jpg', 0, 'attachment', 'image/jpeg', 0),
(133, 1, '2016-03-14 15:23:25', '2016-03-14 15:23:25', '', 'Kipling Alvar Crossbody Bag - Sunburnt Orange', '', 'publish', 'open', 'closed', '', 'kipling-alvar-crossbody-bag-sunburnt-orange', '', '', '2016-03-14 15:23:25', '2016-03-14 15:23:25', '', 0, 'http://localhost/onefabshop/ae/?post_type=product&#038;p=133', 0, 'product', '', 0),
(134, 1, '2016-03-14 15:23:10', '2016-03-14 15:23:10', '', 'FB_IMG_1457953020110', '', 'inherit', 'open', 'closed', '', 'fb_img_1457953020110', '', '', '2016-03-14 15:23:10', '2016-03-14 15:23:10', '', 133, 'http://localhost/onefabshop/ae/wp-content/uploads/sites/2/2016/03/FB_IMG_1457953020110.jpg', 0, 'attachment', 'image/jpeg', 0),
(135, 1, '2016-03-14 15:23:11', '2016-03-14 15:23:11', '', 'FB_IMG_1457953022687', '', 'inherit', 'open', 'closed', '', 'fb_img_1457953022687', '', '', '2016-03-14 15:23:11', '2016-03-14 15:23:11', '', 133, 'http://localhost/onefabshop/ae/wp-content/uploads/sites/2/2016/03/FB_IMG_1457953022687.jpg', 0, 'attachment', 'image/jpeg', 0),
(136, 1, '2016-03-14 15:31:55', '2016-03-14 15:31:55', '', 'Kipling Syro crossbody bag - dark nude', '', 'publish', 'open', 'closed', '', 'kipling-syro-crossbody-bag-dark-nude', '', '', '2016-03-14 15:32:12', '2016-03-14 15:32:12', '', 0, 'http://localhost/onefabshop/ae/?post_type=product&#038;p=136', 0, 'product', '', 0),
(137, 1, '2016-03-14 15:27:16', '2016-03-14 15:27:16', '', 'FB_IMG_1457953078313', '', 'inherit', 'open', 'closed', '', 'fb_img_1457953078313', '', '', '2016-03-14 15:27:16', '2016-03-14 15:27:16', '', 136, 'http://localhost/onefabshop/ae/wp-content/uploads/sites/2/2016/03/FB_IMG_1457953078313.jpg', 0, 'attachment', 'image/jpeg', 0),
(138, 1, '2016-03-14 15:27:19', '2016-03-14 15:27:19', '', 'FB_IMG_1457953080690', '', 'inherit', 'open', 'closed', '', 'fb_img_1457953080690', '', '', '2016-03-14 15:27:19', '2016-03-14 15:27:19', '', 136, 'http://localhost/onefabshop/ae/wp-content/uploads/sites/2/2016/03/FB_IMG_1457953080690.jpg', 0, 'attachment', 'image/jpeg', 0),
(139, 1, '2016-03-14 15:27:21', '2016-03-14 15:27:21', '', 'FB_IMG_1457953083085', '', 'inherit', 'open', 'closed', '', 'fb_img_1457953083085', '', '', '2016-03-14 15:27:21', '2016-03-14 15:27:21', '', 136, 'http://localhost/onefabshop/ae/wp-content/uploads/sites/2/2016/03/FB_IMG_1457953083085.jpg', 0, 'attachment', 'image/jpeg', 0),
(140, 1, '2016-03-14 15:27:23', '2016-03-14 15:27:23', '', 'FB_IMG_1457953085831', '', 'inherit', 'open', 'closed', '', 'fb_img_1457953085831', '', '', '2016-03-14 15:27:23', '2016-03-14 15:27:23', '', 136, 'http://localhost/onefabshop/ae/wp-content/uploads/sites/2/2016/03/FB_IMG_1457953085831.jpg', 0, 'attachment', 'image/jpeg', 0),
(141, 1, '2016-03-14 15:27:25', '2016-03-14 15:27:25', '', 'FB_IMG_1457953088243', '', 'inherit', 'open', 'closed', '', 'fb_img_1457953088243', '', '', '2016-03-14 15:27:25', '2016-03-14 15:27:25', '', 136, 'http://localhost/onefabshop/ae/wp-content/uploads/sites/2/2016/03/FB_IMG_1457953088243.jpg', 0, 'attachment', 'image/jpeg', 0),
(142, 1, '2016-03-15 14:22:39', '2016-03-15 14:22:39', '', 'guess-banner', '', 'inherit', 'open', 'closed', '', 'guess-banner-2', '', '', '2016-03-15 14:22:39', '2016-03-15 14:22:39', '', 41, 'http://localhost/onefabshop/ae/wp-content/uploads/sites/2/2016/03/guess-banner-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(143, 1, '2016-03-15 14:22:41', '2016-03-15 14:22:41', '', 'guess2-banner-2-1', '', 'inherit', 'open', 'closed', '', 'guess2-banner-2-1', '', '', '2016-03-15 14:22:41', '2016-03-15 14:22:41', '', 41, 'http://localhost/onefabshop/ae/wp-content/uploads/sites/2/2016/03/guess2-banner-2-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(144, 1, '2016-03-15 14:26:16', '2016-03-15 14:26:16', '', 'guess2-banner-2-1', '', 'inherit', 'open', 'closed', '', 'guess2-banner-2-1-2', '', '', '2016-03-15 14:26:16', '2016-03-15 14:26:16', '', 41, 'http://localhost/onefabshop/ae/wp-content/uploads/sites/2/2016/03/guess2-banner-2-1-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(145, 1, '2016-03-15 14:27:55', '2016-03-15 14:27:55', '', 'guess-banner', '', 'inherit', 'open', 'closed', '', 'guess-banner-3', '', '', '2016-03-15 14:27:55', '2016-03-15 14:27:55', '', 19, 'http://localhost/onefabshop/ae/wp-content/uploads/sites/2/2016/03/guess-banner-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(146, 1, '2016-03-15 15:57:11', '2016-03-15 15:57:11', '<p>Your Name (required)<br />\r\n    [text* your-name] </p>\r\n\r\n<p>Your Email (required)<br />\r\n    [email* your-email] </p>\r\n\r\n<p>Subject<br />\r\n    [text your-subject] </p>\r\n\r\n<p>Your Message<br />\r\n    [textarea your-message] </p>\r\n\r\n<p>[submit class:contact-form-button "Send"]</p>\nOnefabshop Ae "[your-subject]"\n[your-name] <diannekatherinedelosreyes@gmail.com>\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n--\r\nThis e-mail was sent from a contact form on Onefabshop Ae (http://localhost/onefabshop/ae)\ndiannekatherinedelosreyes@gmail.com\nReply-To: [your-email]\n\n\n\n\nOnefabshop Ae "[your-subject]"\nOnefabshop Ae <diannekatherinedelosreyes@gmail.com>\nMessage Body:\r\n[your-message]\r\n\r\n--\r\nThis e-mail was sent from a contact form on Onefabshop Ae (http://localhost/onefabshop/ae)\n[your-email]\nReply-To: diannekatherinedelosreyes@gmail.com\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nYour entered code is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Contact Form', '', 'publish', 'closed', 'closed', '', 'contact-form', '', '', '2016-03-15 15:59:04', '2016-03-15 15:59:04', '', 0, 'http://localhost/onefabshop/ae/?post_type=wpcf7_contact_form&#038;p=146', 0, 'wpcf7_contact_form', '', 0),
(147, 1, '2016-03-15 15:59:21', '2016-03-15 15:59:21', '[contact-form-7 id="146" title="Contact Form"]', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2016-03-15 16:00:29', '2016-03-15 16:00:29', '', 0, 'http://localhost/onefabshop/ae/?page_id=147', 0, 'page', '', 0),
(148, 1, '2016-03-15 15:59:21', '2016-03-15 15:59:21', '[contact-form-7 id="146" title="Contact Form"]', 'Contact', '', 'inherit', 'closed', 'closed', '', '147-revision-v1', '', '', '2016-03-15 15:59:21', '2016-03-15 15:59:21', '', 147, 'http://localhost/onefabshop/ae/147-revision-v1/', 0, 'revision', '', 0),
(149, 1, '2016-03-15 16:01:00', '2016-03-15 16:01:00', ' ', '', '', 'publish', 'closed', 'closed', '', '149', '', '', '2016-03-15 16:01:00', '2016-03-15 16:01:00', '', 0, 'http://localhost/onefabshop/ae/?p=149', 7, 'nav_menu_item', '', 0),
(150, 1, '2016-03-15 16:01:17', '2016-03-15 16:01:17', ' ', '', '', 'publish', 'closed', 'closed', '', '150', '', '', '2016-03-15 16:01:17', '2016-03-15 16:01:17', '', 0, 'http://localhost/onefabshop/ae/?p=150', 32, 'nav_menu_item', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ofs2616_2_termmeta`
--

CREATE TABLE IF NOT EXISTS `ofs2616_2_termmeta` (
`meta_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ofs2616_2_terms`
--

CREATE TABLE IF NOT EXISTS `ofs2616_2_terms` (
`term_id` bigint(20) unsigned NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  `term_order` int(4) DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ofs2616_2_terms`
--

INSERT INTO `ofs2616_2_terms` (`term_id`, `name`, `slug`, `term_group`, `term_order`) VALUES
(1, 'Uncategorized', 'uncategorized', 0, 0),
(2, 'simple', 'simple', 0, 0),
(3, 'grouped', 'grouped', 0, 0),
(4, 'variable', 'variable', 0, 0),
(5, 'external', 'external', 0, 0),
(6, 'Blog', 'blog', 0, 0),
(7, 'Promotional', 'promotional', 0, 0),
(8, 'Slider', 'slider', 0, 0),
(9, 'Testimonial', 'testimonial', 0, 0),
(10, 'Ticker', 'ticker', 0, 0),
(11, 'Main Menu', 'main-menu', 0, 0),
(12, 'Custom Footer Menu', 'custom-footer-menu', 0, 0),
(13, 'Men', 'men', 0, 0),
(14, 'Shoes', 'shoes-men', 0, 0),
(15, 'Apparels', 'apparels-men', 0, 0),
(16, 'Bags', 'bags-men', 0, 0),
(17, 'Accessories', 'accessories-men', 0, 0),
(18, 'Women', 'women', 0, 0),
(19, 'Accessories', 'accessories-women', 0, 0),
(20, 'Bags', 'bags-women', 0, 0),
(21, 'Apparels', 'apparels-women', 0, 0),
(22, 'Shoes', 'shoes-women', 0, 0),
(23, 'Accessories', 'accessories', 0, 0),
(24, 'Apparels', 'apparels', 0, 0),
(25, 'Bags', 'bags', 0, 0),
(26, 'Shoes', 'shoes', 0, 0),
(27, 'Tory Burch', 'tory-burch', 0, 0),
(28, 'Adidas', 'adidas', 0, 0),
(29, 'ALDO', 'aldo', 0, 0),
(30, 'Anne Klein', 'anne-klein', 0, 0),
(31, 'DKNY', 'dkny', 0, 0),
(32, 'Guess', 'guess', 0, 0),
(33, 'Havaianas', 'havaianas', 0, 0),
(34, 'Ipanema', 'ipanema', 0, 0),
(35, 'kate spade', 'kate-spade', 0, 0),
(36, 'Michael Kors', 'michael-kors', 0, 0),
(37, 'Nine West', 'nine-west', 0, 0),
(38, 'Prada', 'prada', 0, 0),
(39, 'Black', 'black', 0, 0),
(40, 'Blue', 'blue', 0, 0),
(41, 'Green', 'green', 0, 0),
(42, 'Brown', 'brown', 0, 0),
(43, 'Orange', 'orange', 0, 0),
(44, 'Pink', 'pink', 0, 0),
(45, 'Purple', 'purple', 0, 0),
(46, 'Red', 'red', 0, 0),
(47, 'White', 'white', 0, 0),
(48, 'Yellow', 'yellow', 0, 0),
(49, 'Accessories', 'accessories', 0, 0),
(50, 'Apparels', 'apparels', 0, 0),
(51, 'Bags', 'bags', 0, 0),
(52, 'Shoes', 'shoes', 0, 0),
(53, 'Adidas', 'adidas', 0, 0),
(54, 'ALDO', 'aldo', 0, 0),
(55, 'Anne Klein', 'anne-klein', 0, 0),
(56, 'DKNY', 'dkny', 0, 0),
(57, 'Guess', 'guess', 0, 0),
(58, 'Havaianas', 'havaianas', 0, 0),
(59, 'Ipanema', 'ipanema', 0, 0),
(60, 'kate spade', 'kate-spade', 0, 0),
(61, 'Michael Kors', 'michael-kors', 0, 0),
(62, 'Nine West', 'nine-west', 0, 0),
(63, 'Prada', 'prada', 0, 0),
(64, 'Tory Burch', 'tory-burch', 0, 0),
(65, 'Nude', 'nude', 0, 0),
(66, 'Kipling', 'kipling', 0, 0),
(67, 'kipling', 'kipling', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ofs2616_2_term_relationships`
--

CREATE TABLE IF NOT EXISTS `ofs2616_2_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ofs2616_2_term_relationships`
--

INSERT INTO `ofs2616_2_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(14, 10, 0),
(19, 8, 0),
(31, 7, 0),
(33, 7, 0),
(37, 7, 0),
(39, 7, 0),
(41, 8, 0),
(47, 6, 0),
(47, 9, 0),
(49, 11, 0),
(53, 11, 0),
(56, 11, 0),
(58, 11, 0),
(61, 11, 0),
(62, 12, 0),
(63, 12, 0),
(64, 12, 0),
(65, 12, 0),
(66, 12, 0),
(67, 12, 0),
(68, 11, 0),
(69, 11, 0),
(70, 11, 0),
(71, 11, 0),
(72, 11, 0),
(73, 11, 0),
(75, 11, 0),
(76, 11, 0),
(77, 11, 0),
(78, 11, 0),
(79, 11, 0),
(80, 11, 0),
(81, 11, 0),
(82, 11, 0),
(83, 2, 0),
(83, 18, 0),
(83, 22, 0),
(83, 25, 0),
(83, 36, 0),
(83, 39, 0),
(83, 46, 0),
(83, 51, 0),
(83, 61, 0),
(85, 11, 0),
(86, 11, 0),
(87, 11, 0),
(90, 11, 0),
(91, 11, 0),
(92, 11, 0),
(93, 11, 0),
(94, 11, 0),
(95, 11, 0),
(96, 11, 0),
(97, 11, 0),
(99, 11, 0),
(100, 11, 0),
(101, 2, 0),
(101, 18, 0),
(101, 20, 0),
(101, 25, 0),
(101, 29, 0),
(101, 44, 0),
(101, 51, 0),
(101, 54, 0),
(102, 2, 0),
(102, 18, 0),
(102, 20, 0),
(102, 25, 0),
(102, 35, 0),
(102, 40, 0),
(102, 51, 0),
(102, 60, 0),
(108, 2, 0),
(108, 18, 0),
(108, 20, 0),
(108, 25, 0),
(108, 35, 0),
(108, 40, 0),
(108, 51, 0),
(108, 60, 0),
(113, 2, 0),
(113, 18, 0),
(113, 20, 0),
(113, 25, 0),
(113, 35, 0),
(113, 51, 0),
(113, 60, 0),
(113, 65, 0),
(118, 2, 0),
(118, 18, 0),
(118, 20, 0),
(118, 25, 0),
(118, 35, 0),
(118, 44, 0),
(118, 51, 0),
(118, 60, 0),
(123, 2, 0),
(123, 18, 0),
(123, 20, 0),
(123, 25, 0),
(123, 35, 0),
(123, 46, 0),
(123, 51, 0),
(123, 60, 0),
(128, 2, 0),
(128, 18, 0),
(128, 20, 0),
(128, 25, 0),
(128, 35, 0),
(128, 46, 0),
(128, 51, 0),
(128, 60, 0),
(133, 2, 0),
(133, 18, 0),
(133, 20, 0),
(133, 25, 0),
(133, 43, 0),
(133, 51, 0),
(133, 66, 0),
(133, 67, 0),
(136, 2, 0),
(136, 18, 0),
(136, 20, 0),
(136, 25, 0),
(136, 51, 0),
(136, 65, 0),
(136, 66, 0),
(136, 67, 0),
(149, 12, 0),
(150, 11, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ofs2616_2_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `ofs2616_2_term_taxonomy` (
`term_taxonomy_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ofs2616_2_term_taxonomy`
--

INSERT INTO `ofs2616_2_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'product_type', '', 0, 8),
(3, 3, 'product_type', '', 0, 0),
(4, 4, 'product_type', '', 0, 0),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'category', '', 0, 1),
(7, 7, 'category', '', 0, 4),
(8, 8, 'category', '', 0, 2),
(9, 9, 'category', '', 0, 1),
(10, 10, 'category', '', 0, 1),
(11, 11, 'nav_menu', '', 0, 33),
(12, 12, 'nav_menu', '', 0, 7),
(13, 13, 'product_cat', '', 0, 0),
(14, 14, 'product_cat', '', 13, 0),
(15, 15, 'product_cat', '', 13, 0),
(16, 16, 'product_cat', '', 13, 0),
(17, 17, 'product_cat', '', 13, 0),
(18, 18, 'product_cat', '', 0, 8),
(19, 19, 'product_cat', '', 18, 0),
(20, 20, 'product_cat', '', 18, 8),
(21, 21, 'product_cat', '', 18, 0),
(22, 22, 'product_cat', '', 18, 0),
(23, 23, 'product_tag', '', 0, 0),
(24, 24, 'product_tag', '', 0, 0),
(25, 25, 'product_tag', '', 0, 8),
(26, 26, 'product_tag', '', 0, 0),
(27, 27, 'pa_brands', '', 0, 0),
(28, 28, 'pa_brands', '', 0, 0),
(29, 29, 'pa_brands', '', 0, 0),
(30, 30, 'pa_brands', '', 0, 0),
(31, 31, 'pa_brands', '', 0, 0),
(32, 32, 'pa_brands', '', 0, 0),
(33, 33, 'pa_brands', '', 0, 0),
(34, 34, 'pa_brands', '', 0, 0),
(35, 35, 'pa_brands', '', 0, 6),
(36, 36, 'pa_brands', '', 0, 0),
(37, 37, 'pa_brands', '', 0, 0),
(38, 38, 'pa_brands', '', 0, 0),
(39, 39, 'pa_colors', '', 0, 0),
(40, 40, 'pa_colors', '', 0, 2),
(41, 41, 'pa_colors', '', 0, 0),
(42, 42, 'pa_colors', '', 0, 0),
(43, 43, 'pa_colors', '', 0, 1),
(44, 44, 'pa_colors', '', 0, 1),
(45, 45, 'pa_colors', '', 0, 0),
(46, 46, 'pa_colors', '', 0, 2),
(47, 47, 'pa_colors', '', 0, 0),
(48, 48, 'pa_colors', '', 0, 0),
(49, 49, 'pa_subcategory', '', 0, 0),
(50, 50, 'pa_subcategory', '', 0, 0),
(51, 51, 'pa_subcategory', '', 0, 8),
(52, 52, 'pa_subcategory', '', 0, 0),
(53, 53, 'product_tag', '', 0, 0),
(54, 54, 'product_tag', '', 0, 0),
(55, 55, 'product_tag', '', 0, 0),
(56, 56, 'product_tag', '', 0, 0),
(57, 57, 'product_tag', '', 0, 0),
(58, 58, 'product_tag', '', 0, 0),
(59, 59, 'product_tag', '', 0, 0),
(60, 60, 'product_tag', '', 0, 6),
(61, 61, 'product_tag', '', 0, 0),
(62, 62, 'product_tag', '', 0, 0),
(63, 63, 'product_tag', '', 0, 0),
(64, 64, 'product_tag', '', 0, 0),
(65, 65, 'pa_colors', '', 0, 2),
(66, 66, 'pa_brands', '', 0, 2),
(67, 67, 'product_tag', '', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `ofs2616_2_ufbl_entries`
--

CREATE TABLE IF NOT EXISTS `ofs2616_2_ufbl_entries` (
`entry_id` mediumint(9) NOT NULL,
  `form_id` mediumint(9) DEFAULT NULL,
  `entry_detail` text COLLATE utf8mb4_unicode_ci,
  `entry_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ofs2616_2_ufbl_forms`
--

CREATE TABLE IF NOT EXISTS `ofs2616_2_ufbl_forms` (
`form_id` mediumint(9) NOT NULL,
  `form_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `form_detail` text COLLATE utf8mb4_unicode_ci,
  `form_status` int(11) DEFAULT NULL,
  `form_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `form_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ofs2616_2_woocommerce_api_keys`
--

CREATE TABLE IF NOT EXISTS `ofs2616_2_woocommerce_api_keys` (
`key_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ofs2616_2_woocommerce_attribute_taxonomies`
--

CREATE TABLE IF NOT EXISTS `ofs2616_2_woocommerce_attribute_taxonomies` (
`attribute_id` bigint(20) NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_label` longtext COLLATE utf8mb4_unicode_ci,
  `attribute_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_orderby` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ofs2616_2_woocommerce_attribute_taxonomies`
--

INSERT INTO `ofs2616_2_woocommerce_attribute_taxonomies` (`attribute_id`, `attribute_name`, `attribute_label`, `attribute_type`, `attribute_orderby`, `attribute_public`) VALUES
(1, 'brands', 'Brands', 'select', 'name', 1),
(2, 'colors', 'Colors', 'select', 'name', 1),
(3, 'subcategory', 'Subcategory', 'select', 'name', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ofs2616_2_woocommerce_downloadable_product_permissions`
--

CREATE TABLE IF NOT EXISTS `ofs2616_2_woocommerce_downloadable_product_permissions` (
`permission_id` bigint(20) NOT NULL,
  `download_id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `order_id` bigint(20) NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ofs2616_2_woocommerce_order_itemmeta`
--

CREATE TABLE IF NOT EXISTS `ofs2616_2_woocommerce_order_itemmeta` (
`meta_id` bigint(20) NOT NULL,
  `order_item_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ofs2616_2_woocommerce_order_items`
--

CREATE TABLE IF NOT EXISTS `ofs2616_2_woocommerce_order_items` (
`order_item_id` bigint(20) NOT NULL,
  `order_item_name` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ofs2616_2_woocommerce_sessions`
--

CREATE TABLE IF NOT EXISTS `ofs2616_2_woocommerce_sessions` (
`session_id` bigint(20) NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_expiry` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ofs2616_2_woocommerce_tax_rates`
--

CREATE TABLE IF NOT EXISTS `ofs2616_2_woocommerce_tax_rates` (
`tax_rate_id` bigint(20) NOT NULL,
  `tax_rate_country` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ofs2616_2_woocommerce_tax_rate_locations`
--

CREATE TABLE IF NOT EXISTS `ofs2616_2_woocommerce_tax_rate_locations` (
`location_id` bigint(20) NOT NULL,
  `location_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate_id` bigint(20) NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ofs2616_2_woocommerce_termmeta`
--

CREATE TABLE IF NOT EXISTS `ofs2616_2_woocommerce_termmeta` (
`meta_id` bigint(20) NOT NULL,
  `woocommerce_term_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ofs2616_2_woocommerce_termmeta`
--

INSERT INTO `ofs2616_2_woocommerce_termmeta` (`meta_id`, `woocommerce_term_id`, `meta_key`, `meta_value`) VALUES
(1, 13, 'order', '6'),
(2, 13, 'display_type', ''),
(3, 13, 'thumbnail_id', '22'),
(4, 14, 'order', '7'),
(5, 14, 'display_type', ''),
(6, 14, 'thumbnail_id', '0'),
(7, 15, 'order', '8'),
(8, 15, 'display_type', ''),
(9, 15, 'thumbnail_id', '0'),
(10, 16, 'order', '9'),
(11, 16, 'display_type', ''),
(12, 16, 'thumbnail_id', '0'),
(13, 17, 'order', '10'),
(14, 17, 'display_type', ''),
(15, 17, 'thumbnail_id', '0'),
(16, 18, 'order', '1'),
(17, 18, 'display_type', ''),
(18, 18, 'thumbnail_id', '28'),
(19, 19, 'order', '5'),
(20, 19, 'display_type', ''),
(21, 19, 'thumbnail_id', '0'),
(22, 20, 'order', '4'),
(23, 20, 'display_type', ''),
(24, 20, 'thumbnail_id', '0'),
(25, 21, 'order', '3'),
(26, 21, 'display_type', ''),
(27, 21, 'thumbnail_id', '0'),
(28, 22, 'order', '2'),
(29, 22, 'display_type', ''),
(30, 22, 'thumbnail_id', '0'),
(31, 18, 'product_count_product_cat', '8'),
(32, 22, 'product_count_product_cat', '0'),
(33, 27, 'order_pa_brands', '0'),
(34, 28, 'order_pa_brands', '0'),
(35, 29, 'order_pa_brands', '0'),
(36, 30, 'order_pa_brands', '0'),
(37, 31, 'order_pa_brands', '0'),
(38, 32, 'order_pa_brands', '0'),
(39, 33, 'order_pa_brands', '0'),
(40, 34, 'order_pa_brands', '0'),
(41, 35, 'order_pa_brands', '0'),
(42, 36, 'order_pa_brands', '0'),
(43, 37, 'order_pa_brands', '0'),
(44, 38, 'order_pa_brands', '0'),
(45, 39, 'order_pa_colors', '0'),
(46, 40, 'order_pa_colors', '0'),
(47, 41, 'order_pa_colors', '0'),
(48, 42, 'order_pa_colors', '0'),
(49, 43, 'order_pa_colors', '0'),
(50, 44, 'order_pa_colors', '0'),
(51, 45, 'order_pa_colors', '0'),
(52, 46, 'order_pa_colors', '0'),
(53, 47, 'order_pa_colors', '0'),
(54, 48, 'order_pa_colors', '0'),
(55, 49, 'order_pa_subcategory', '0'),
(56, 50, 'order_pa_subcategory', '0'),
(57, 51, 'order_pa_subcategory', '0'),
(58, 52, 'order_pa_subcategory', '0'),
(59, 61, 'product_count_product_tag', '0'),
(60, 25, 'product_count_product_tag', '8'),
(62, 39, 'product_ids', 'a:1:{i:0;s:2:"83";}'),
(64, 36, 'product_ids', 'a:1:{i:0;s:2:"83";}'),
(65, 20, 'product_count_product_cat', '8'),
(66, 54, 'product_count_product_tag', '0'),
(69, 29, 'product_ids', 'a:1:{i:0;s:3:"101";}'),
(70, 60, 'product_count_product_tag', '6'),
(75, 40, 'product_ids', 'a:2:{i:0;s:3:"102";i:1;s:3:"108";}'),
(77, 65, 'order_pa_colors', '0'),
(82, 44, 'product_ids', 'a:2:{i:0;s:3:"101";i:1;s:3:"118";}'),
(85, 66, 'order_pa_brands', '0'),
(86, 67, 'product_count_product_tag', '2'),
(87, 51, 'product_ids', 'a:10:{i:0;s:2:"83";i:1;s:3:"101";i:2;s:3:"102";i:3;s:3:"108";i:4;s:3:"113";i:5;s:3:"118";i:6;s:3:"123";i:7;s:3:"128";i:8;s:3:"133";i:9;s:3:"136";}'),
(88, 65, 'product_ids', 'a:2:{i:0;s:3:"113";i:1;s:3:"136";}'),
(89, 43, 'product_ids', 'a:1:{i:0;s:3:"133";}'),
(90, 46, 'product_ids', 'a:3:{i:0;s:2:"83";i:1;s:3:"123";i:2;s:3:"128";}'),
(91, 35, 'product_ids', 'a:6:{i:0;s:3:"102";i:1;s:3:"108";i:2;s:3:"113";i:3;s:3:"118";i:4;s:3:"123";i:5;s:3:"128";}'),
(92, 66, 'product_ids', 'a:2:{i:0;s:3:"133";i:1;s:3:"136";}');

-- --------------------------------------------------------

--
-- Table structure for table `ofs2616_3_commentmeta`
--

CREATE TABLE IF NOT EXISTS `ofs2616_3_commentmeta` (
`meta_id` bigint(20) unsigned NOT NULL,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ofs2616_3_comments`
--

CREATE TABLE IF NOT EXISTS `ofs2616_3_comments` (
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
-- Dumping data for table `ofs2616_3_comments`
--

INSERT INTO `ofs2616_3_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Mr WordPress', '', 'http://localhost/onefabshop/', '', '2016-03-13 09:10:35', '2016-03-13 09:10:35', 'Hi, this is a comment.\nTo delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ofs2616_3_links`
--

CREATE TABLE IF NOT EXISTS `ofs2616_3_links` (
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
-- Table structure for table `ofs2616_3_options`
--

CREATE TABLE IF NOT EXISTS `ofs2616_3_options` (
`option_id` bigint(20) unsigned NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB AUTO_INCREMENT=222 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ofs2616_3_options`
--

INSERT INTO `ofs2616_3_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/onefabshop/uae', 'yes'),
(2, 'home', 'http://localhost/onefabshop/uae', 'yes'),
(3, 'blogname', 'uae', 'yes'),
(4, 'blogdescription', 'Just another One Fab Shop Sites site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'uae@yahoo.com', 'yes'),
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
(39, 'template', 'twentysixteen', 'yes'),
(40, 'stylesheet', 'twentysixteen', 'yes'),
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
(78, 'widget_text', 'a:0:{}', 'yes'),
(79, 'widget_rss', 'a:0:{}', 'yes'),
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
(90, 'ofs2616_3_user_roles', 'a:7:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:131:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;s:17:"edit_shop_webhook";b:1;s:17:"read_shop_webhook";b:1;s:19:"delete_shop_webhook";b:1;s:18:"edit_shop_webhooks";b:1;s:25:"edit_others_shop_webhooks";b:1;s:21:"publish_shop_webhooks";b:1;s:26:"read_private_shop_webhooks";b:1;s:20:"delete_shop_webhooks";b:1;s:28:"delete_private_shop_webhooks";b:1;s:30:"delete_published_shop_webhooks";b:1;s:27:"delete_others_shop_webhooks";b:1;s:26:"edit_private_shop_webhooks";b:1;s:28:"edit_published_shop_webhooks";b:1;s:25:"manage_shop_webhook_terms";b:1;s:23:"edit_shop_webhook_terms";b:1;s:25:"delete_shop_webhook_terms";b:1;s:25:"assign_shop_webhook_terms";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}s:8:"customer";a:2:{s:4:"name";s:8:"Customer";s:12:"capabilities";a:1:{s:4:"read";b:1;}}s:12:"shop_manager";a:2:{s:4:"name";s:12:"Shop Manager";s:12:"capabilities";a:110:{s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:4:"read";b:1;s:18:"read_private_pages";b:1;s:18:"read_private_posts";b:1;s:10:"edit_users";b:1;s:10:"edit_posts";b:1;s:10:"edit_pages";b:1;s:20:"edit_published_posts";b:1;s:20:"edit_published_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"edit_private_posts";b:1;s:17:"edit_others_posts";b:1;s:17:"edit_others_pages";b:1;s:13:"publish_posts";b:1;s:13:"publish_pages";b:1;s:12:"delete_posts";b:1;s:12:"delete_pages";b:1;s:20:"delete_private_pages";b:1;s:20:"delete_private_posts";b:1;s:22:"delete_published_pages";b:1;s:22:"delete_published_posts";b:1;s:19:"delete_others_posts";b:1;s:19:"delete_others_pages";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:17:"moderate_comments";b:1;s:15:"unfiltered_html";b:1;s:12:"upload_files";b:1;s:6:"export";b:1;s:6:"import";b:1;s:10:"list_users";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;s:17:"edit_shop_webhook";b:1;s:17:"read_shop_webhook";b:1;s:19:"delete_shop_webhook";b:1;s:18:"edit_shop_webhooks";b:1;s:25:"edit_others_shop_webhooks";b:1;s:21:"publish_shop_webhooks";b:1;s:26:"read_private_shop_webhooks";b:1;s:20:"delete_shop_webhooks";b:1;s:28:"delete_private_shop_webhooks";b:1;s:30:"delete_published_shop_webhooks";b:1;s:27:"delete_others_shop_webhooks";b:1;s:26:"edit_private_shop_webhooks";b:1;s:28:"edit_published_shop_webhooks";b:1;s:25:"manage_shop_webhook_terms";b:1;s:23:"edit_shop_webhook_terms";b:1;s:25:"delete_shop_webhook_terms";b:1;s:25:"assign_shop_webhook_terms";b:1;}}}', 'yes'),
(91, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(92, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(93, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(98, 'WPLANG', '', 'yes'),
(99, 'hicpo_activation', '1', 'yes'),
(101, '_transient_woocommerce_webhook_ids', 'a:0:{}', 'yes'),
(102, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_woocommerce_widget_cart', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'widget_woocommerce_layered_nav', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'widget_woocommerce_price_filter', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(110, 'widget_woocommerce_product_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(111, 'widget_woocommerce_product_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(112, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(113, 'widget_woocommerce_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(114, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(115, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(116, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(117, 'woocommerce_default_country', 'GB', 'yes'),
(118, 'woocommerce_allowed_countries', 'all', 'yes'),
(119, 'woocommerce_specific_allowed_countries', '', 'yes'),
(120, 'woocommerce_default_customer_address', 'geolocation', 'yes'),
(121, 'woocommerce_demo_store', 'no', 'yes'),
(122, 'woocommerce_demo_store_notice', 'This is a demo store for testing purposes &mdash; no orders shall be fulfilled.', 'no'),
(123, 'woocommerce_currency', 'GBP', 'yes'),
(124, 'woocommerce_currency_pos', 'left', 'yes'),
(125, 'woocommerce_price_thousand_sep', ',', 'yes'),
(126, 'woocommerce_price_decimal_sep', '.', 'yes'),
(127, 'woocommerce_price_num_decimals', '2', 'yes'),
(128, 'woocommerce_weight_unit', 'kg', 'yes'),
(129, 'woocommerce_dimension_unit', 'cm', 'yes'),
(130, 'woocommerce_enable_review_rating', 'yes', 'no'),
(131, 'woocommerce_review_rating_required', 'yes', 'no'),
(132, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(133, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(134, 'woocommerce_shop_page_id', '3', 'yes'),
(135, 'woocommerce_shop_page_display', '', 'yes'),
(136, 'woocommerce_category_archive_display', '', 'yes'),
(137, 'woocommerce_default_catalog_orderby', 'menu_order', 'yes'),
(138, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(139, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(140, 'shop_catalog_image_size', 'a:3:{s:5:"width";s:3:"300";s:6:"height";s:3:"300";s:4:"crop";i:1;}', 'yes'),
(141, 'shop_single_image_size', 'a:3:{s:5:"width";s:3:"600";s:6:"height";s:3:"600";s:4:"crop";i:1;}', 'yes'),
(142, 'shop_thumbnail_image_size', 'a:3:{s:5:"width";s:3:"180";s:6:"height";s:3:"180";s:4:"crop";i:1;}', 'yes'),
(143, 'woocommerce_enable_lightbox', 'yes', 'yes'),
(144, 'woocommerce_manage_stock', 'yes', 'yes'),
(145, 'woocommerce_hold_stock_minutes', '60', 'no'),
(146, 'woocommerce_notify_low_stock', 'yes', 'no'),
(147, 'woocommerce_notify_no_stock', 'yes', 'no'),
(148, 'woocommerce_stock_email_recipient', 'uae@yahoo.com', 'no'),
(149, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(150, 'woocommerce_notify_no_stock_amount', '0', 'no'),
(151, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(152, 'woocommerce_stock_format', '', 'yes'),
(153, 'woocommerce_file_download_method', 'force', 'no'),
(154, 'woocommerce_downloads_require_login', 'no', 'no'),
(155, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(156, 'woocommerce_calc_taxes', 'no', 'yes'),
(157, 'woocommerce_prices_include_tax', 'no', 'yes'),
(158, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(159, 'woocommerce_shipping_tax_class', 'title', 'yes'),
(160, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(161, 'woocommerce_tax_classes', 'Reduced Rate\nZero Rate', 'yes'),
(162, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(163, 'woocommerce_tax_display_cart', 'excl', 'no'),
(164, 'woocommerce_price_display_suffix', '', 'yes'),
(165, 'woocommerce_tax_total_display', 'itemized', 'no'),
(166, 'woocommerce_enable_coupons', 'yes', 'no'),
(167, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(168, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(169, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(170, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(171, 'woocommerce_cart_page_id', '4', 'yes'),
(172, 'woocommerce_checkout_page_id', '5', 'yes'),
(173, 'woocommerce_terms_page_id', '', 'no'),
(174, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(175, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(176, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(177, 'woocommerce_calc_shipping', 'no', 'yes'),
(178, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(179, 'woocommerce_shipping_cost_requires_address', 'no', 'no'),
(180, 'woocommerce_ship_to_destination', 'billing', 'no'),
(181, 'woocommerce_ship_to_countries', '', 'yes'),
(182, 'woocommerce_specific_ship_to_countries', '', 'yes'),
(183, 'woocommerce_myaccount_page_id', '6', 'yes'),
(184, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(185, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(186, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(187, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(188, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(189, 'woocommerce_enable_signup_and_login_from_checkout', 'yes', 'no'),
(190, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(191, 'woocommerce_enable_checkout_login_reminder', 'yes', 'no'),
(192, 'woocommerce_registration_generate_username', 'yes', 'no'),
(193, 'woocommerce_registration_generate_password', 'no', 'no'),
(194, 'woocommerce_email_from_name', 'uae', 'no'),
(195, 'woocommerce_email_from_address', 'uae@yahoo.com', 'no'),
(196, 'woocommerce_email_header_image', '', 'no'),
(197, 'woocommerce_email_footer_text', 'uae - Powered by WooCommerce', 'no'),
(198, 'woocommerce_email_base_color', '#557da1', 'no'),
(199, 'woocommerce_email_background_color', '#f5f5f5', 'no'),
(200, 'woocommerce_email_body_background_color', '#fdfdfd', 'no'),
(201, 'woocommerce_email_text_color', '#505050', 'no'),
(202, 'woocommerce_api_enabled', 'yes', 'yes'),
(204, 'cron', 'a:7:{i:1457863852;a:1:{s:32:"woocommerce_cancel_unpaid_orders";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}}i:1457903452;a:1:{s:28:"woocommerce_cleanup_sessions";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1457913600;a:1:{s:27:"woocommerce_scheduled_sales";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1457946652;a:1:{s:30:"woocommerce_tracker_send_event";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1457946653;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1459814400;a:1:{s:25:"woocommerce_geoip_updater";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:7:"monthly";s:4:"args";a:0:{}s:8:"interval";i:2635200;}}}s:7:"version";i:2;}', 'yes'),
(205, 'woocommerce_admin_notices', 'a:2:{i:0;s:7:"install";i:1;s:14:"template_files";}', 'yes'),
(208, 'woocommerce_db_version', '2.5.2', 'yes'),
(209, 'woocommerce_version', '2.5.2', 'yes'),
(211, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(212, 'rewrite_rules', 'a:185:{s:22:"^wc-api/v([1-3]{1})/?$";s:51:"index.php?wc-api-version=$matches[1]&wc-api-route=/";s:24:"^wc-api/v([1-3]{1})(.*)?";s:61:"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]";s:24:"^wc-auth/v([1]{1})/(.*)?";s:63:"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]";s:7:"shop/?$";s:27:"index.php?post_type=product";s:37:"shop/feed/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:32:"shop/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:24:"shop/page/([0-9]{1,})/?$";s:45:"index.php?post_type=product&paged=$matches[1]";s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:32:"category/(.+?)/wc-api(/(.*))?/?$";s:54:"index.php?category_name=$matches[1]&wc-api=$matches[3]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:29:"tag/([^/]+)/wc-api(/(.*))?/?$";s:44:"index.php?tag=$matches[1]&wc-api=$matches[3]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:35:"product/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:45:"product/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:65:"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:41:"product/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:24:"product/([^/]+)/embed/?$";s:40:"index.php?product=$matches[1]&embed=true";s:28:"product/([^/]+)/trackback/?$";s:34:"index.php?product=$matches[1]&tb=1";s:48:"product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:43:"product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:36:"product/([^/]+)/page/?([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&paged=$matches[2]";s:43:"product/([^/]+)/comment-page-([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&cpage=$matches[2]";s:33:"product/([^/]+)/wc-api(/(.*))?/?$";s:48:"index.php?product=$matches[1]&wc-api=$matches[3]";s:39:"product/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:50:"product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:32:"product/([^/]+)(?:/([0-9]+))?/?$";s:46:"index.php?product=$matches[1]&page=$matches[2]";s:24:"product/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:34:"product/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:54:"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:30:"product/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:45:"product_variation/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:55:"product_variation/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:75:"product_variation/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"product_variation/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"product_variation/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:51:"product_variation/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:34:"product_variation/([^/]+)/embed/?$";s:50:"index.php?product_variation=$matches[1]&embed=true";s:38:"product_variation/([^/]+)/trackback/?$";s:44:"index.php?product_variation=$matches[1]&tb=1";s:46:"product_variation/([^/]+)/page/?([0-9]{1,})/?$";s:57:"index.php?product_variation=$matches[1]&paged=$matches[2]";s:53:"product_variation/([^/]+)/comment-page-([0-9]{1,})/?$";s:57:"index.php?product_variation=$matches[1]&cpage=$matches[2]";s:43:"product_variation/([^/]+)/wc-api(/(.*))?/?$";s:58:"index.php?product_variation=$matches[1]&wc-api=$matches[3]";s:49:"product_variation/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:60:"product_variation/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:"product_variation/([^/]+)(?:/([0-9]+))?/?$";s:56:"index.php?product_variation=$matches[1]&page=$matches[2]";s:34:"product_variation/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"product_variation/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:64:"product_variation/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"product_variation/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"product_variation/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:40:"product_variation/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:45:"shop_order_refund/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:55:"shop_order_refund/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:75:"shop_order_refund/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"shop_order_refund/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"shop_order_refund/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:51:"shop_order_refund/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:34:"shop_order_refund/([^/]+)/embed/?$";s:50:"index.php?shop_order_refund=$matches[1]&embed=true";s:38:"shop_order_refund/([^/]+)/trackback/?$";s:44:"index.php?shop_order_refund=$matches[1]&tb=1";s:46:"shop_order_refund/([^/]+)/page/?([0-9]{1,})/?$";s:57:"index.php?shop_order_refund=$matches[1]&paged=$matches[2]";s:53:"shop_order_refund/([^/]+)/comment-page-([0-9]{1,})/?$";s:57:"index.php?shop_order_refund=$matches[1]&cpage=$matches[2]";s:43:"shop_order_refund/([^/]+)/wc-api(/(.*))?/?$";s:58:"index.php?shop_order_refund=$matches[1]&wc-api=$matches[3]";s:49:"shop_order_refund/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:60:"shop_order_refund/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:"shop_order_refund/([^/]+)(?:/([0-9]+))?/?$";s:56:"index.php?shop_order_refund=$matches[1]&page=$matches[2]";s:34:"shop_order_refund/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"shop_order_refund/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:64:"shop_order_refund/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"shop_order_refund/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"shop_order_refund/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:40:"shop_order_refund/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:55:"product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:50:"product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:43:"product-category/(.+?)/page/?([0-9]{1,})/?$";s:51:"index.php?product_cat=$matches[1]&paged=$matches[2]";s:25:"product-category/(.+?)/?$";s:33:"index.php?product_cat=$matches[1]";s:52:"product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:47:"product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:40:"product-tag/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?product_tag=$matches[1]&paged=$matches[2]";s:22:"product-tag/([^/]+)/?$";s:33:"index.php?product_tag=$matches[1]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:17:"wc-api(/(.*))?/?$";s:29:"index.php?&wc-api=$matches[2]";s:20:"order-pay(/(.*))?/?$";s:32:"index.php?&order-pay=$matches[2]";s:25:"order-received(/(.*))?/?$";s:37:"index.php?&order-received=$matches[2]";s:21:"view-order(/(.*))?/?$";s:33:"index.php?&view-order=$matches[2]";s:23:"edit-account(/(.*))?/?$";s:35:"index.php?&edit-account=$matches[2]";s:23:"edit-address(/(.*))?/?$";s:35:"index.php?&edit-address=$matches[2]";s:24:"lost-password(/(.*))?/?$";s:36:"index.php?&lost-password=$matches[2]";s:26:"customer-logout(/(.*))?/?$";s:38:"index.php?&customer-logout=$matches[2]";s:29:"add-payment-method(/(.*))?/?$";s:41:"index.php?&add-payment-method=$matches[2]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:26:"comments/wc-api(/(.*))?/?$";s:29:"index.php?&wc-api=$matches[2]";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:29:"search/(.+)/wc-api(/(.*))?/?$";s:42:"index.php?s=$matches[1]&wc-api=$matches[3]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:32:"author/([^/]+)/wc-api(/(.*))?/?$";s:52:"index.php?author_name=$matches[1]&wc-api=$matches[3]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:54:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$";s:82:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:41:"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$";s:66:"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:28:"([0-9]{4})/wc-api(/(.*))?/?$";s:45:"index.php?year=$matches[1]&wc-api=$matches[3]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:62:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/wc-api(/(.*))?/?$";s:99:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&wc-api=$matches[6]";s:62:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:73:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:25:"(.?.+?)/wc-api(/(.*))?/?$";s:49:"index.php?pagename=$matches[1]&wc-api=$matches[3]";s:28:"(.?.+?)/order-pay(/(.*))?/?$";s:52:"index.php?pagename=$matches[1]&order-pay=$matches[3]";s:33:"(.?.+?)/order-received(/(.*))?/?$";s:57:"index.php?pagename=$matches[1]&order-received=$matches[3]";s:29:"(.?.+?)/view-order(/(.*))?/?$";s:53:"index.php?pagename=$matches[1]&view-order=$matches[3]";s:31:"(.?.+?)/edit-account(/(.*))?/?$";s:55:"index.php?pagename=$matches[1]&edit-account=$matches[3]";s:31:"(.?.+?)/edit-address(/(.*))?/?$";s:55:"index.php?pagename=$matches[1]&edit-address=$matches[3]";s:32:"(.?.+?)/lost-password(/(.*))?/?$";s:56:"index.php?pagename=$matches[1]&lost-password=$matches[3]";s:34:"(.?.+?)/customer-logout(/(.*))?/?$";s:58:"index.php?pagename=$matches[1]&customer-logout=$matches[3]";s:37:"(.?.+?)/add-payment-method(/(.*))?/?$";s:61:"index.php?pagename=$matches[1]&add-payment-method=$matches[3]";s:31:".?.+?/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(213, 'acf_version', '4.4.5', 'yes'),
(214, 'global-admin-bar-roles', 'a:7:{i:0;s:13:"administrator";i:1;s:6:"editor";i:2;s:6:"author";i:3;s:11:"contributor";i:4;s:10:"subscriber";i:5;s:8:"customer";i:6;s:12:"shop_manager";}', 'yes'),
(215, 'global-admin-bar-profiles', 'a:7:{i:0;s:13:"administrator";i:1;s:6:"editor";i:2;s:6:"author";i:3;s:11:"contributor";i:4;s:10:"subscriber";i:5;s:8:"customer";i:6;s:12:"shop_manager";}', 'yes'),
(216, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(218, 'post_count', '1', 'yes'),
(219, '_transient_woocommerce_cache_excluded_uris', 'a:6:{i:0;s:3:"p=4";i:1;s:6:"/cart/";i:2;s:3:"p=5";i:3;s:10:"/checkout/";i:4;s:3:"p=6";i:5;s:12:"/my-account/";}', 'yes'),
(220, '_transient_timeout_geoip_::1', '1458465066', 'no'),
(221, '_transient_geoip_::1', '', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `ofs2616_3_postmeta`
--

CREATE TABLE IF NOT EXISTS `ofs2616_3_postmeta` (
`meta_id` bigint(20) unsigned NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ofs2616_3_postmeta`
--

INSERT INTO `ofs2616_3_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default');

-- --------------------------------------------------------

--
-- Table structure for table `ofs2616_3_posts`
--

CREATE TABLE IF NOT EXISTS `ofs2616_3_posts` (
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ofs2616_3_posts`
--

INSERT INTO `ofs2616_3_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 3, '2016-03-13 09:10:35', '2016-03-13 09:10:35', 'Welcome to <a href="http://localhost/onefabshop/">One Fab Shop Sites</a>. This is your first post. Edit or delete it, then start blogging!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2016-03-13 09:10:35', '2016-03-13 09:10:35', '', 0, 'http://localhost/onefabshop/uae/?p=1', 0, 'post', '', 1),
(2, 3, '2016-03-13 09:10:35', '2016-03-13 09:10:35', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://localhost/onefabshop/uae/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2016-03-13 09:10:35', '2016-03-13 09:10:35', '', 0, 'http://localhost/onefabshop/uae/?page_id=2', 0, 'page', '', 0),
(3, 1, '2016-03-13 09:11:01', '2016-03-13 09:11:01', '', 'Shop', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2016-03-13 09:11:01', '2016-03-13 09:11:01', '', 0, 'http://localhost/onefabshop/uae/shop/', 0, 'page', '', 0),
(4, 1, '2016-03-13 09:11:01', '2016-03-13 09:11:01', '[woocommerce_cart]', 'Cart', '', 'publish', 'closed', 'closed', '', 'cart', '', '', '2016-03-13 09:11:01', '2016-03-13 09:11:01', '', 0, 'http://localhost/onefabshop/uae/cart/', 0, 'page', '', 0),
(5, 1, '2016-03-13 09:11:01', '2016-03-13 09:11:01', '[woocommerce_checkout]', 'Checkout', '', 'publish', 'closed', 'closed', '', 'checkout', '', '', '2016-03-13 09:11:01', '2016-03-13 09:11:01', '', 0, 'http://localhost/onefabshop/uae/checkout/', 0, 'page', '', 0),
(6, 1, '2016-03-13 09:11:01', '2016-03-13 09:11:01', '[woocommerce_my_account]', 'My Account', '', 'publish', 'closed', 'closed', '', 'my-account', '', '', '2016-03-13 09:11:01', '2016-03-13 09:11:01', '', 0, 'http://localhost/onefabshop/uae/my-account/', 0, 'page', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ofs2616_3_termmeta`
--

CREATE TABLE IF NOT EXISTS `ofs2616_3_termmeta` (
`meta_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ofs2616_3_terms`
--

CREATE TABLE IF NOT EXISTS `ofs2616_3_terms` (
`term_id` bigint(20) unsigned NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  `term_order` int(4) DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ofs2616_3_terms`
--

INSERT INTO `ofs2616_3_terms` (`term_id`, `name`, `slug`, `term_group`, `term_order`) VALUES
(1, 'Uncategorized', 'uncategorized', 0, 0),
(2, 'simple', 'simple', 0, 0),
(3, 'grouped', 'grouped', 0, 0),
(4, 'variable', 'variable', 0, 0),
(5, 'external', 'external', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ofs2616_3_term_relationships`
--

CREATE TABLE IF NOT EXISTS `ofs2616_3_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ofs2616_3_term_relationships`
--

INSERT INTO `ofs2616_3_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ofs2616_3_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `ofs2616_3_term_taxonomy` (
`term_taxonomy_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ofs2616_3_term_taxonomy`
--

INSERT INTO `ofs2616_3_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'product_type', '', 0, 0),
(3, 3, 'product_type', '', 0, 0),
(4, 4, 'product_type', '', 0, 0),
(5, 5, 'product_type', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ofs2616_3_woocommerce_api_keys`
--

CREATE TABLE IF NOT EXISTS `ofs2616_3_woocommerce_api_keys` (
`key_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ofs2616_3_woocommerce_attribute_taxonomies`
--

CREATE TABLE IF NOT EXISTS `ofs2616_3_woocommerce_attribute_taxonomies` (
`attribute_id` bigint(20) NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_label` longtext COLLATE utf8mb4_unicode_ci,
  `attribute_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_orderby` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ofs2616_3_woocommerce_downloadable_product_permissions`
--

CREATE TABLE IF NOT EXISTS `ofs2616_3_woocommerce_downloadable_product_permissions` (
`permission_id` bigint(20) NOT NULL,
  `download_id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `order_id` bigint(20) NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ofs2616_3_woocommerce_order_itemmeta`
--

CREATE TABLE IF NOT EXISTS `ofs2616_3_woocommerce_order_itemmeta` (
`meta_id` bigint(20) NOT NULL,
  `order_item_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ofs2616_3_woocommerce_order_items`
--

CREATE TABLE IF NOT EXISTS `ofs2616_3_woocommerce_order_items` (
`order_item_id` bigint(20) NOT NULL,
  `order_item_name` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ofs2616_3_woocommerce_sessions`
--

CREATE TABLE IF NOT EXISTS `ofs2616_3_woocommerce_sessions` (
`session_id` bigint(20) NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_expiry` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ofs2616_3_woocommerce_tax_rates`
--

CREATE TABLE IF NOT EXISTS `ofs2616_3_woocommerce_tax_rates` (
`tax_rate_id` bigint(20) NOT NULL,
  `tax_rate_country` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ofs2616_3_woocommerce_tax_rate_locations`
--

CREATE TABLE IF NOT EXISTS `ofs2616_3_woocommerce_tax_rate_locations` (
`location_id` bigint(20) NOT NULL,
  `location_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate_id` bigint(20) NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ofs2616_3_woocommerce_termmeta`
--

CREATE TABLE IF NOT EXISTS `ofs2616_3_woocommerce_termmeta` (
`meta_id` bigint(20) NOT NULL,
  `woocommerce_term_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ofs2616_blogs`
--

CREATE TABLE IF NOT EXISTS `ofs2616_blogs` (
`blog_id` bigint(20) NOT NULL,
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
  `lang_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ofs2616_blogs`
--

INSERT INTO `ofs2616_blogs` (`blog_id`, `site_id`, `domain`, `path`, `registered`, `last_updated`, `public`, `archived`, `mature`, `spam`, `deleted`, `lang_id`) VALUES
(1, 1, 'localhost', '/onefabshop/', '2016-02-07 12:09:58', '2016-03-15 15:39:25', 1, 0, 0, 0, 0, 0),
(2, 1, 'localhost', '/onefabshop/ae/', '2016-03-12 03:01:51', '2016-03-15 16:00:29', 1, 0, 0, 0, 0, 0),
(3, 1, 'localhost', '/onefabshop/uae/', '2016-03-13 09:10:30', '2016-03-13 09:11:01', 1, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ofs2616_blog_versions`
--

CREATE TABLE IF NOT EXISTS `ofs2616_blog_versions` (
  `blog_id` bigint(20) NOT NULL DEFAULT '0',
  `db_version` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `last_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ofs2616_commentmeta`
--

CREATE TABLE IF NOT EXISTS `ofs2616_commentmeta` (
`meta_id` bigint(20) unsigned NOT NULL,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=222 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(209, 20, 'verified', '0'),
(210, 5, 'verified', '0'),
(211, 6, 'verified', '0'),
(212, 7, 'verified', '0'),
(213, 2, 'verified', '0'),
(214, 42, 'rating', '4'),
(215, 42, 'verified', '0'),
(216, 47, 'is_customer_note', '1'),
(217, 9, 'verified', '0'),
(218, 10, 'verified', '0'),
(219, 33, 'verified', '0'),
(220, 34, 'verified', '0'),
(221, 50, 'is_customer_note', '1');

-- --------------------------------------------------------

--
-- Table structure for table `ofs2616_comments`
--

CREATE TABLE IF NOT EXISTS `ofs2616_comments` (
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
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ofs2616_comments`
--

INSERT INTO `ofs2616_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
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
(41, 99, 'Maria', 'maria@woothemes.com', '', '24.225.103.32', '2013-06-07 15:52:48', '2013-06-07 15:52:48', 'Can’t wait to start mixin’ with this one! Irba-irr-Up-up-up-up-date your theme!', 0, '1', '', '', 0, 0),
(42, 104, 'onefabshop_admin', 'diannekatherinedelosreyes@gmail.com', '', '127.0.0.1', '2016-02-28 21:03:48', '2016-02-28 21:03:48', 'amazing', 0, '1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36', '', 0, 1),
(43, 133, 'onefabshop_admin', 'diannekatherinedelosreyes@gmail.com', '', '127.0.0.1', '2016-02-28 21:24:47', '2016-02-28 21:24:47', 'awesome!', 0, '1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36', '', 0, 1),
(44, 133, 'onefabshop_admin', 'diannekatherinedelosreyes@gmail.com', '', '127.0.0.1', '2016-02-28 21:25:09', '2016-02-28 21:25:09', 'amazing!', 0, '1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36', '', 43, 1),
(45, 190, 'WooCommerce', '', '', '', '2016-02-28 22:50:00', '2016-02-28 22:50:00', 'Awaiting BACS payment Order status changed from Pending Payment to On Hold.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(46, 232, 'WooCommerce', '', '', '', '2016-02-29 04:22:54', '2016-02-29 04:22:54', 'Awaiting BACS payment Order status changed from Pending Payment to On Hold.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(47, 232, 'onefabshop_admin', 'diannekatherinedelosreyes@gmail.com', '', '', '2016-02-29 04:26:07', '2016-02-29 04:26:07', 'waiting', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(48, 243, 'WooCommerce', '', '', '', '2016-03-09 16:10:51', '2016-03-09 16:10:51', 'Awaiting BACS payment Order status changed from Pending Payment to On Hold.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(49, 252, 'WooCommerce', '', '', '', '2016-03-12 08:50:34', '2016-03-12 08:50:34', 'Unpaid order cancelled - time limit reached. Order status changed from Pending Payment to Cancelled.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(50, 243, 'onefabshop_admin', 'diannekatherinedelosreyes@gmail.com', '', '', '2016-03-12 11:34:20', '2016-03-12 11:34:20', 'test', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(51, 256, 'WooCommerce', '', '', '', '2016-03-12 21:10:03', '2016-03-12 21:10:03', 'Awaiting BACS payment Order status changed from Pending Payment to On Hold.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(52, 257, 'WooCommerce', '', '', '', '2016-03-12 21:36:24', '2016-03-12 21:36:24', 'Awaiting BACS payment Order status changed from Pending Payment to On Hold.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(53, 257, 'onefabshop_admin', 'diannekatherinedelosreyes@gmail.com', '', '', '2016-03-12 21:38:38', '2016-03-12 21:38:38', 'Order status changed from On Hold to Partially paid.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(54, 257, 'WooCommerce', '', '', '', '2016-03-12 21:39:14', '2016-03-12 21:39:14', 'Awaiting BACS payment Order status changed from Partially paid to On Hold.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(55, 257, 'onefabshop_admin', 'diannekatherinedelosreyes@gmail.com', '', '', '2016-03-12 21:41:15', '2016-03-12 21:41:15', 'Order status changed from On Hold to Completed.', 0, '1', 'WooCommerce', 'order_note', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ofs2616_currencies`
--

CREATE TABLE IF NOT EXISTS `ofs2616_currencies` (
  `currency_code` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_rate` float NOT NULL,
  `currency_data` varchar(5000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ofs2616_ewwwio_images`
--

CREATE TABLE IF NOT EXISTS `ofs2616_ewwwio_images` (
`id` mediumint(9) NOT NULL,
  `path` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_md5` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `results` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gallery` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_size` int(10) unsigned DEFAULT NULL,
  `orig_size` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ofs2616_ewwwio_images`
--

INSERT INTO `ofs2616_ewwwio_images` (`id`, `path`, `image_md5`, `results`, `gallery`, `image_size`, `orig_size`) VALUES
(1, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/2016/02/guess-banner-copy.jpg', NULL, 'Reduced by 14.2% (23.2&nbsp;kB)', NULL, 143608, 167322),
(2, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/2016/02/guess-banner-copy-150x150.jpg', NULL, 'Reduced by 6.8% (393.0&nbsp;B)', NULL, 5380, 5773),
(3, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/2016/02/guess-banner-copy-300x88.jpg', NULL, 'Reduced by 6.7% (605.0&nbsp;B)', NULL, 8398, 9003),
(4, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/2016/02/guess-banner-copy-768x226.jpg', NULL, 'Reduced by 5.8% (2.5&nbsp;kB)', NULL, 40768, 43278),
(5, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/2016/02/guess-banner-copy-1024x301.jpg', NULL, 'Reduced by 5.6% (3.8&nbsp;kB)', NULL, 65881, 69803),
(6, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/2016/02/guess-banner-copy-180x180.jpg', NULL, 'Reduced by 5.8% (452.0&nbsp;B)', NULL, 7376, 7828),
(7, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/2016/02/guess-banner-copy-300x300.jpg', NULL, 'Reduced by 5.5% (972.0&nbsp;B)', NULL, 16785, 17757),
(8, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/2016/02/guess-banner-copy-600x564.jpg', NULL, 'Reduced by 3.1% (1.5&nbsp;kB)', NULL, 49385, 50948),
(9, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/2016/02/guess-banner-copy-520x260.jpg', NULL, 'Reduced by 5.5% (1.5&nbsp;kB)', NULL, 27354, 28940),
(10, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/2016/02/guess-banner-copy-520x520.jpg', NULL, 'Reduced by 3.9% (1.6&nbsp;kB)', NULL, 39214, 40818),
(11, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/2016/02/guess-banner-copy-290x260.jpg', NULL, 'Reduced by 5.6% (890.0&nbsp;B)', NULL, 14999, 15889),
(12, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/2016/02/guess-banner-copy-70x70.jpg', NULL, 'Reduced by 16.8% (370.0&nbsp;B)', NULL, 1829, 2199),
(13, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/2016/02/guess2-banner-2-1-copy.jpg', NULL, 'Reduced by 16.5% (24.2&nbsp;kB)', NULL, 125864, 150662),
(14, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/2016/02/guess2-banner-2-1-copy-150x150.jpg', NULL, 'Reduced by 7.2% (681.0&nbsp;B)', NULL, 8806, 9487),
(15, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/2016/02/guess2-banner-2-1-copy-300x88.jpg', NULL, 'Reduced by 6.0% (444.0&nbsp;B)', NULL, 6989, 7433),
(16, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/2016/02/guess2-banner-2-1-copy-768x226.jpg', NULL, 'Reduced by 5.6% (2.0&nbsp;kB)', NULL, 34952, 37017),
(17, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/2016/02/guess2-banner-2-1-copy-1024x301.jpg', NULL, 'Reduced by 5.1% (3.0&nbsp;kB)', NULL, 57611, 60687),
(18, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/2016/02/guess2-banner-2-1-copy-180x180.jpg', NULL, 'Reduced by 7.3% (951.0&nbsp;B)', NULL, 12042, 12993),
(19, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/2016/02/guess2-banner-2-1-copy-300x300.jpg', NULL, 'Reduced by 6.8% (2.1&nbsp;kB)', NULL, 28996, 31105),
(20, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/2016/02/guess2-banner-2-1-copy-600x564.jpg', NULL, 'Reduced by 5.0% (4.6&nbsp;kB)', NULL, 90855, 95599),
(21, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/2016/02/guess2-banner-2-1-copy-520x260.jpg', NULL, 'Reduced by 5.9% (1.9&nbsp;kB)', NULL, 31697, 33676),
(22, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/2016/02/guess2-banner-2-1-copy-520x520.jpg', NULL, 'Reduced by 5.0% (3.6&nbsp;kB)', NULL, 70310, 74032),
(23, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/2016/02/guess2-banner-2-1-copy-290x260.jpg', NULL, 'Reduced by 6.6% (1.7&nbsp;kB)', NULL, 24613, 26356),
(24, '/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/uploads/2016/02/guess2-banner-2-1-copy-70x70.jpg', NULL, 'Reduced by 13.4% (410.0&nbsp;B)', NULL, 2644, 3054);

-- --------------------------------------------------------

--
-- Table structure for table `ofs2616_links`
--

CREATE TABLE IF NOT EXISTS `ofs2616_links` (
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
-- Table structure for table `ofs2616_options`
--

CREATE TABLE IF NOT EXISTS `ofs2616_options` (
`option_id` bigint(20) unsigned NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB AUTO_INCREMENT=1556 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ofs2616_options`
--

INSERT INTO `ofs2616_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/onefabshop', 'yes'),
(2, 'home', 'http://localhost/onefabshop', 'yes'),
(3, 'blogname', 'Onefabshop Ph', 'yes'),
(4, 'blogdescription', 'Your No. 1 fabulous shop of authentic and branded fashion products at a very good price.', 'yes'),
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
(33, 'active_plugins', 'a:7:{i:0;s:30:"advanced-custom-fields/acf.php";i:1;s:39:"custom-permalinks/custom-permalinks.php";i:2;s:59:"intuitive-custom-post-order/intuitive-custom-post-order.php";i:3;s:25:"redirector/redirector.php";i:4;s:45:"woocommerce-attributes-menu-manager/index.php";i:5;s:27:"woocommerce/woocommerce.php";i:6;s:41:"wordpress-importer/wordpress-importer.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(37, 'comment_max_links', '2', 'yes'),
(38, 'gmt_offset', '0', 'yes'),
(39, 'default_email_category', '1', 'yes'),
(40, 'recently_edited', 'a:3:{i:0;s:103:"C:\\xampp\\htdocs\\onefabshop/wp-content/plugins/ultimate-form-builder-lite/ultimate-form-builder-lite.php";i:1;s:92:"/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/themes/eightstore-lite/style.css";i:2;s:0:"";}', 'no'),
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
(80, 'widget_text', 'a:4:{i:1;a:0:{}i:2;a:3:{s:5:"title";s:19:"Like us on Facebook";s:4:"text";s:269:"<div class="fb-page" data-href="https://www.facebook.com/Onefabshopph-215945351924631/?fref=nf" data-tabs="timeline" data-width="100%" data-height="214" data-small-header="false" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true"></div>";s:6:"filter";b:0;}i:6;a:3:{s:5:"title";s:15:"Payment Options";s:4:"text";s:290:"<div class="menu-custom-footer-menu-container">\r\n	<ul class="menu">\r\n		<li class="menu-item">Bank</li>\r\n		<li class="menu-item">Credit Card</li>\r\n		<li class="menu-item">Cebuana</li>\r\n                <li class="menu-item">M Lhuiller</li>\r\n		<li class="menu-item">Paypal</li>\r\n	</ul>\r\n</div>";s:6:"filter";b:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(82, 'uninstall_plugins', 'a:2:{s:59:"intuitive-custom-post-order/intuitive-custom-post-order.php";s:15:"hicpo_uninstall";s:57:"multisite-clone-duplicator/multisite-clone-duplicator.php";a:2:{i:0;s:4:"MUCD";i:1;s:9:"uninstall";}}', 'no'),
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
(93, 'widget_recent-comments', 'a:3:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}i:3;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'sidebars_widgets', 'a:17:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:4:"shop";a:6:{i:0;s:32:"woocommerce_product_categories-3";i:1;s:25:"woocommerce_layered_nav-5";i:2;s:25:"woocommerce_layered_nav-3";i:3;s:25:"woocommerce_layered_nav-4";i:4;s:26:"woocommerce_price_filter-2";i:5;s:33:"woocommerce_layered_nav_filters-2";}s:31:"eightstore-lite-language-option";a:0:{}s:16:"widget-product-1";a:1:{i:0;s:25:"eightstore_lite_product-3";}s:14:"widget-promo-1";a:1:{i:0;s:27:"eightstore_lite_cta_video-2";}s:17:"widget-category-1";a:1:{i:0;s:29:"eightstore_lite_cat_product-2";}s:14:"widget-promo-2";a:1:{i:0;s:23:"eightstore_lite_promo-3";}s:17:"widget-category-2";a:1:{i:0;s:29:"eightstore_lite_cat_product-3";}s:14:"widget-promo-3";a:1:{i:0;s:23:"eightstore_lite_promo-4";}s:16:"widget-product-2";a:0:{}s:14:"widget-promo-4";a:0:{}s:12:"sidebar-left";a:0:{}s:13:"sidebar-right";a:2:{i:0;s:38:"woocommerce_recently_viewed_products-2";i:1;s:17:"recent-comments-3";}s:8:"footer-1";a:0:{}s:8:"footer-2";a:3:{i:0;s:10:"nav_menu-2";i:1;s:6:"text-6";i:2;s:6:"text-2";}s:13:"array_version";i:3;}', 'yes'),
(99, 'cron', 'a:10:{i:1458156828;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1458166991;a:1:{s:28:"woocommerce_cleanup_sessions";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1458172800;a:1:{s:27:"woocommerce_scheduled_sales";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1458173544;a:1:{s:21:"update_network_counts";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1458200120;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1458202552;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1458210191;a:1:{s:30:"woocommerce_tracker_send_event";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1458469391;a:1:{s:32:"woocommerce_cancel_unpaid_orders";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}}i:1459814400;a:1:{s:25:"woocommerce_geoip_updater";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:7:"monthly";s:4:"args";a:0:{}s:8:"interval";i:2635200;}}}s:7:"version";i:2;}', 'yes'),
(111, '_transient_random_seed', '2db415f7470cfb364ff68cc675eb7cc8', 'yes'),
(113, '_transient_timeout_plugin_slugs', '1458141846', 'no'),
(114, '_transient_plugin_slugs', 'a:12:{i:0;s:30:"advanced-custom-fields/acf.php";i:1;s:36:"contact-form-7/wp-contact-form-7.php";i:2;s:39:"custom-permalinks/custom-permalinks.php";i:3;s:45:"ewww-image-optimizer/ewww-image-optimizer.php";i:4;s:55:"global-admin-bar-hide-or-remove/hide-admin-tool-bar.php";i:5;s:59:"intuitive-custom-post-order/intuitive-custom-post-order.php";i:6;s:25:"redirector/redirector.php";i:7;s:27:"woocommerce/woocommerce.php";i:8;s:45:"woocommerce-attributes-menu-manager/index.php";i:9;s:47:"paydollar-payment-gateway-woocommerce/index.php";i:10;s:41:"wordpress-importer/wordpress-importer.php";i:11;s:40:"yith-woocommerce-order-tracking/init.php";}', 'no'),
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
(143, 'woocommerce_specific_allowed_countries', 'a:1:{i:0;s:2:"PH";}', 'yes'),
(144, 'woocommerce_default_customer_address', 'geolocation', 'yes'),
(145, 'woocommerce_demo_store', 'no', 'yes'),
(146, 'woocommerce_demo_store_notice', '', 'no'),
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
(161, 'woocommerce_default_catalog_orderby', 'date', 'yes'),
(162, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(163, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(164, 'shop_catalog_image_size', 'a:3:{s:5:"width";s:3:"300";s:6:"height";s:3:"300";s:4:"crop";i:1;}', 'yes'),
(165, 'shop_single_image_size', 'a:3:{s:5:"width";s:3:"600";s:6:"height";s:3:"600";s:4:"crop";i:1;}', 'yes'),
(166, 'shop_thumbnail_image_size', 'a:3:{s:5:"width";s:3:"180";s:6:"height";s:3:"180";s:4:"crop";i:1;}', 'yes'),
(167, 'woocommerce_enable_lightbox', 'yes', 'yes'),
(168, 'woocommerce_manage_stock', 'yes', 'yes'),
(169, 'woocommerce_hold_stock_minutes', '10080', 'no'),
(170, 'woocommerce_notify_low_stock', 'yes', 'no'),
(171, 'woocommerce_notify_no_stock', 'yes', 'no'),
(172, 'woocommerce_stock_email_recipient', 'diannekatherinedelosreyes@gmail.com', 'no'),
(173, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(174, 'woocommerce_notify_no_stock_amount', '0', 'no'),
(175, 'woocommerce_hide_out_of_stock_items', 'yes', 'yes'),
(176, 'woocommerce_stock_format', '', 'yes'),
(177, 'woocommerce_file_download_method', 'force', 'no'),
(178, 'woocommerce_downloads_require_login', 'no', 'no'),
(179, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(180, 'woocommerce_calc_taxes', 'no', 'yes'),
(181, 'woocommerce_prices_include_tax', 'no', 'yes'),
(182, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(183, 'woocommerce_shipping_tax_class', 'title', 'yes'),
(184, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(185, 'woocommerce_tax_classes', 'Reduced Rate\r\nZero Rate', 'yes'),
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
(197, 'woocommerce_terms_page_id', '220', 'no'),
(198, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(199, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(200, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(201, 'woocommerce_calc_shipping', 'yes', 'yes'),
(202, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(203, 'woocommerce_shipping_cost_requires_address', 'yes', 'no'),
(204, 'woocommerce_ship_to_destination', 'billing', 'no'),
(205, 'woocommerce_ship_to_countries', '', 'yes'),
(206, 'woocommerce_specific_ship_to_countries', 'a:0:{}', 'yes'),
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
(220, 'woocommerce_email_header_image', 'Onefabshop Philippines', 'no'),
(221, 'woocommerce_email_footer_text', 'One Fab Shop - Powered by D.K.', 'no'),
(222, 'woocommerce_email_base_color', '#cb3c83', 'no'),
(223, 'woocommerce_email_background_color', '#f5f5f5', 'no'),
(224, 'woocommerce_email_body_background_color', '#fdfdfd', 'no'),
(225, 'woocommerce_email_text_color', '#505050', 'no'),
(226, 'woocommerce_api_enabled', 'yes', 'yes'),
(235, '_transient_woocommerce_webhook_ids', 'a:0:{}', 'yes'),
(236, 'widget_woocommerce_widget_cart', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(237, 'widget_woocommerce_layered_nav_filters', 'a:2:{i:2;a:1:{s:5:"title";s:14:"Active Filters";}s:12:"_multiwidget";i:1;}', 'yes'),
(238, 'widget_woocommerce_layered_nav', 'a:4:{i:3;a:4:{s:5:"title";s:18:"Filter by : Colors";s:9:"attribute";s:5:"color";s:12:"display_type";s:4:"list";s:10:"query_type";s:3:"and";}i:4;a:4:{s:5:"title";s:18:"Filter by : Brands";s:9:"attribute";s:6:"brands";s:12:"display_type";s:8:"dropdown";s:10:"query_type";s:3:"and";}i:5;a:4:{s:5:"title";s:24:"Filter by : Sub-category";s:9:"attribute";s:11:"subcategory";s:12:"display_type";s:8:"dropdown";s:10:"query_type";s:3:"and";}s:12:"_multiwidget";i:1;}', 'yes'),
(239, 'widget_woocommerce_price_filter', 'a:2:{i:2;a:1:{s:5:"title";s:15:"Filter by price";}s:12:"_multiwidget";i:1;}', 'yes'),
(240, 'widget_woocommerce_product_categories', 'a:2:{i:3;a:7:{s:5:"title";s:18:"Product Categories";s:7:"orderby";s:4:"name";s:8:"dropdown";i:0;s:5:"count";i:0;s:12:"hierarchical";i:1;s:18:"show_children_only";i:0;s:10:"hide_empty";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(241, 'widget_woocommerce_product_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(242, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(243, 'widget_woocommerce_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(244, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(245, 'widget_woocommerce_recently_viewed_products', 'a:2:{i:2;a:2:{s:5:"title";s:24:"Recently Viewed Products";s:6:"number";i:3;}s:12:"_multiwidget";i:1;}', 'yes'),
(246, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(258, 'woocommerce_paypal_settings', 'a:16:{s:7:"enabled";s:3:"yes";s:5:"title";s:6:"PayPal";s:11:"description";s:85:"Pay via PayPal; you can pay with your credit card if you don''t have a PayPal account.";s:5:"email";s:35:"diannekatherinedelosreyes@gmail.com";s:8:"testmode";s:2:"no";s:5:"debug";s:2:"no";s:14:"receiver_email";s:35:"diannekatherinedelosreyes@gmail.com";s:14:"identity_token";s:0:"";s:14:"invoice_prefix";s:3:"WC-";s:13:"send_shipping";s:2:"no";s:16:"address_override";s:2:"no";s:13:"paymentaction";s:4:"sale";s:10:"page_style";s:0:"";s:12:"api_username";s:0:"";s:12:"api_password";s:0:"";s:13:"api_signature";s:0:"";}', 'yes'),
(259, 'woocommerce_cheque_settings', 'a:1:{s:7:"enabled";s:2:"no";}', 'yes'),
(260, 'woocommerce_cod_settings', 'a:1:{s:7:"enabled";s:2:"no";}', 'yes'),
(261, 'woocommerce_bacs_settings', 'a:5:{s:7:"enabled";s:3:"yes";s:5:"title";s:20:"Direct Bank Transfer";s:11:"description";s:173:"Make your payment directly into our bank account. Please use your Order ID as the payment reference. Your order won''t be shipped until the funds have cleared in our account.";s:12:"instructions";s:173:"Make your payment directly into our bank account. Please use your Order ID as the payment reference. Your order won''t be shipped until the funds have cleared in our account.";s:15:"account_details";s:0:"";}', 'yes'),
(262, '_transient_product_query-transient-version', '1457856461', 'yes'),
(263, '_transient_product-transient-version', '1457856461', 'yes'),
(266, '_site_transient_timeout_wporg_theme_feature_list', '1454757656', 'yes'),
(267, '_site_transient_wporg_theme_feature_list', 'a:4:{s:6:"Colors";a:15:{i:0;s:5:"black";i:1;s:4:"blue";i:2;s:5:"brown";i:3;s:4:"gray";i:4;s:5:"green";i:5;s:6:"orange";i:6;s:4:"pink";i:7;s:6:"purple";i:8;s:3:"red";i:9;s:6:"silver";i:10;s:3:"tan";i:11;s:5:"white";i:12;s:6:"yellow";i:13;s:4:"dark";i:14;s:5:"light";}s:6:"Layout";a:9:{i:0;s:12:"fixed-layout";i:1;s:12:"fluid-layout";i:2;s:17:"responsive-layout";i:3;s:10:"one-column";i:4;s:11:"two-columns";i:5;s:13:"three-columns";i:6;s:12:"four-columns";i:7;s:12:"left-sidebar";i:8;s:13:"right-sidebar";}s:8:"Features";a:20:{i:0;s:19:"accessibility-ready";i:1;s:8:"blavatar";i:2;s:10:"buddypress";i:3;s:17:"custom-background";i:4;s:13:"custom-colors";i:5;s:13:"custom-header";i:6;s:11:"custom-menu";i:7;s:12:"editor-style";i:8;s:21:"featured-image-header";i:9;s:15:"featured-images";i:10;s:15:"flexible-header";i:11;s:20:"front-page-post-form";i:12;s:19:"full-width-template";i:13;s:12:"microformats";i:14;s:12:"post-formats";i:15;s:20:"rtl-language-support";i:16;s:11:"sticky-post";i:17;s:13:"theme-options";i:18;s:17:"threaded-comments";i:19;s:17:"translation-ready";}s:7:"Subject";a:3:{i:0;s:7:"holiday";i:1;s:13:"photoblogging";i:2;s:8:"seasonal";}}', 'yes'),
(270, 'theme_mods_twentyfifteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1454747443;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(271, 'current_theme', 'EightStore Lite Child', 'yes'),
(272, 'theme_mods_eightstore-lite', 'a:27:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:16;}s:18:"heading_typography";s:27:"Roboto Condensed,sans-serif";s:15:"body_typography";s:27:"Roboto Condensed,sans-serif";s:12:"header_image";s:66:"http://localhost/onefabshop/wp-content/uploads/2016/02/ofslogo.png";s:21:"footer_copyright_text";s:9:"Copyright";s:23:"slider_setting_category";i:27;s:34:"es_category_promo_setting_category";i:30;s:32:"eightstore_blog_setting_category";i:28;s:25:"eightstore_form_shortcode";s:0:"";s:23:"eightstore_blog_section";i:1;s:30:"eightstore_testimonial_section";i:1;s:39:"eightstore_testimonial_setting_category";i:31;s:14:"webpage_layout";s:9:"fullwidth";s:18:"is_mode_responsive";i:0;s:23:"ticker_setting_category";i:29;s:11:"callto_text";s:135:"<a href="#">\n<i class="fa fa-phone"></i>+012-345-6789\n</a> \n| \n<a href="#">\n<i class="fa fa-envelope"></i> info@8degreethemes.com\n</a>	";s:22:"social_icons_in_header";i:1;s:22:"social_icons_in_footer";i:1;s:15:"social_facebook";s:1:"#";s:14:"social_twitter";s:1:"#";s:16:"social_instagram";s:1:"#";s:26:"eightstore_ticker_checkbox";i:1;s:16:"header_textcolor";s:6:"000000";s:16:"background_color";s:6:"ffffff";s:17:"header_image_data";O:8:"stdClass":5:{s:13:"attachment_id";i:146;s:3:"url";s:66:"http://localhost/onefabshop/wp-content/uploads/2016/02/ofslogo.png";s:13:"thumbnail_url";s:66:"http://localhost/onefabshop/wp-content/uploads/2016/02/ofslogo.png";s:6:"height";i:250;s:5:"width";i:250;}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1454819312;s:4:"data";a:16:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:4:"shop";a:2:{i:0;s:32:"woocommerce_product_categories-2";i:1;s:26:"woocommerce_price_filter-2";}s:31:"eightstore-lite-language-option";a:0:{}s:16:"widget-product-1";a:1:{i:0;s:25:"eightstore_lite_product-3";}s:14:"widget-promo-1";a:1:{i:0;s:27:"eightstore_lite_cta_video-2";}s:17:"widget-category-1";a:1:{i:0;s:29:"eightstore_lite_cat_product-2";}s:14:"widget-promo-2";a:1:{i:0;s:23:"eightstore_lite_promo-3";}s:17:"widget-category-2";a:1:{i:0;s:29:"eightstore_lite_cat_product-3";}s:14:"widget-promo-3";a:1:{i:0;s:23:"eightstore_lite_promo-4";}s:16:"widget-product-2";a:1:{i:0;s:25:"eightstore_lite_product-4";}s:14:"widget-promo-4";a:0:{}s:12:"sidebar-left";a:0:{}s:13:"sidebar-right";a:0:{}s:8:"footer-1";a:3:{i:0;s:6:"text-3";i:1;s:6:"text-4";i:2;s:6:"text-5";}s:8:"footer-2";a:2:{i:0;s:10:"nav_menu-2";i:1;s:6:"text-2";}}}}', 'yes'),
(273, 'theme_switched', '', 'yes'),
(274, 'widget_eightstore_lite_cta_simple', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(275, 'widget_eightstore_lite_promo', 'a:3:{i:3;a:5:{s:11:"promo_title";s:31:"Get the look over 1000 Products";s:11:"promo_image";s:73:"http://localhost/onefabshop/wp-content/uploads/2016/02/8degree-callto.jpg";s:10:"promo_desc";s:14:"up to\r\n50% Off";s:10:"promo_link";s:32:"http://localhost/onefabshop/shop";s:14:"promo_btn_text";s:8:"Shop Now";}i:4;a:5:{s:11:"promo_title";s:16:"Quality Apparels";s:11:"promo_image";s:69:"http://localhost/onefabshop/wp-content/uploads/2016/02/denin-jens.jpg";s:10:"promo_desc";s:7:"50% Off";s:10:"promo_link";s:40:"http://localhost/onefabshop/tag/apparels";s:14:"promo_btn_text";s:8:"Shop Now";}s:12:"_multiwidget";i:1;}', 'yes'),
(276, 'widget_eightstore_lite_product', 'a:3:{i:3;a:5:{s:13:"product_title";s:12:"New Arrivals";s:17:"product_list_desc";s:22:"Newly arrived products";s:12:"product_type";s:14:"latest_product";s:16:"product_category";s:2:"26";s:14:"number_of_prod";i:0;}i:4;a:5:{s:13:"product_title";s:17:"Featured Products";s:17:"product_list_desc";s:0:"";s:12:"product_type";s:14:"latest_product";s:16:"product_category";s:2:"26";s:14:"number_of_prod";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(277, 'widget_eightstore_lite_cat_product', 'a:3:{i:2;a:2:{s:17:"product_alignment";s:11:"right_align";s:16:"product_category";s:1:"7";}i:3;a:2:{s:17:"product_alignment";s:10:"left_align";s:16:"product_category";s:1:"6";}s:12:"_multiwidget";i:1;}', 'yes'),
(278, 'widget_eightstore_lite_cta_video', 'a:2:{i:2;a:4:{s:15:"cta_video_title";s:19:"Sample Promo Banner";s:14:"cta_video_desc";s:21:"Read about this promo";s:13:"cta_video_bkg";s:68:"http://localhost/onefabshop/wp-content/uploads/2016/02/video-bkg.jpg";s:16:"cta_video_iframe";s:21:"http://www.google.com";}s:12:"_multiwidget";i:1;}', 'yes'),
(308, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(325, '_site_transient_timeout_popular_importers_en_US', '1454932752', 'yes'),
(326, '_site_transient_popular_importers_en_US', 'a:2:{s:9:"importers";a:8:{s:7:"blogger";a:4:{s:4:"name";s:7:"Blogger";s:11:"description";s:86:"Install the Blogger importer to import posts, comments, and users from a Blogger blog.";s:11:"plugin-slug";s:16:"blogger-importer";s:11:"importer-id";s:7:"blogger";}s:9:"wpcat2tag";a:4:{s:4:"name";s:29:"Categories and Tags Converter";s:11:"description";s:109:"Install the category/tag converter to convert existing categories to tags or tags to categories, selectively.";s:11:"plugin-slug";s:18:"wpcat2tag-importer";s:11:"importer-id";s:9:"wpcat2tag";}s:11:"livejournal";a:4:{s:4:"name";s:11:"LiveJournal";s:11:"description";s:82:"Install the LiveJournal importer to import posts from LiveJournal using their API.";s:11:"plugin-slug";s:20:"livejournal-importer";s:11:"importer-id";s:11:"livejournal";}s:11:"movabletype";a:4:{s:4:"name";s:24:"Movable Type and TypePad";s:11:"description";s:99:"Install the Movable Type importer to import posts and comments from a Movable Type or TypePad blog.";s:11:"plugin-slug";s:20:"movabletype-importer";s:11:"importer-id";s:2:"mt";}s:4:"opml";a:4:{s:4:"name";s:8:"Blogroll";s:11:"description";s:61:"Install the blogroll importer to import links in OPML format.";s:11:"plugin-slug";s:13:"opml-importer";s:11:"importer-id";s:4:"opml";}s:3:"rss";a:4:{s:4:"name";s:3:"RSS";s:11:"description";s:58:"Install the RSS importer to import posts from an RSS feed.";s:11:"plugin-slug";s:12:"rss-importer";s:11:"importer-id";s:3:"rss";}s:6:"tumblr";a:4:{s:4:"name";s:6:"Tumblr";s:11:"description";s:84:"Install the Tumblr importer to import posts &amp; media from Tumblr using their API.";s:11:"plugin-slug";s:15:"tumblr-importer";s:11:"importer-id";s:6:"tumblr";}s:9:"wordpress";a:4:{s:4:"name";s:9:"WordPress";s:11:"description";s:130:"Install the WordPress importer to import posts, pages, comments, custom fields, categories, and tags from a WordPress export file.";s:11:"plugin-slug";s:18:"wordpress-importer";s:11:"importer-id";s:9:"wordpress";}}s:10:"translated";b:0;}', 'yes'),
(333, 'product_shipping_class_children', 'a:0:{}', 'yes'),
(349, '_transient_orders-transient-version', '1457818875', 'yes'),
(388, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1454773887', 'yes'),
(389, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'a:100:{s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";s:4:"5663";}s:4:"post";a:3:{s:4:"name";s:4:"Post";s:4:"slug";s:4:"post";s:5:"count";s:4:"3554";}s:6:"plugin";a:3:{s:4:"name";s:6:"plugin";s:4:"slug";s:6:"plugin";s:5:"count";s:4:"3503";}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";s:4:"3011";}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";s:4:"2738";}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";s:4:"2224";}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";s:4:"2168";}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";s:4:"2009";}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";s:4:"1956";}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";s:4:"1949";}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";s:4:"1939";}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";s:4:"1886";}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";s:4:"1791";}s:8:"facebook";a:3:{s:4:"name";s:8:"Facebook";s:4:"slug";s:8:"facebook";s:5:"count";s:4:"1589";}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";s:4:"1520";}s:9:"wordpress";a:3:{s:4:"name";s:9:"wordpress";s:4:"slug";s:9:"wordpress";s:5:"count";s:4:"1502";}s:11:"woocommerce";a:3:{s:4:"name";s:11:"woocommerce";s:4:"slug";s:11:"woocommerce";s:5:"count";s:4:"1447";}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";s:4:"1302";}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";s:4:"1262";}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";s:4:"1248";}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";s:4:"1140";}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";s:4:"1066";}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";s:4:"1040";}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";s:3:"984";}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";s:3:"946";}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";s:3:"901";}s:4:"ajax";a:3:{s:4:"name";s:4:"AJAX";s:4:"slug";s:4:"ajax";s:5:"count";s:3:"883";}s:9:"ecommerce";a:3:{s:4:"name";s:9:"ecommerce";s:4:"slug";s:9:"ecommerce";s:5:"count";s:3:"883";}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";s:3:"872";}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";s:3:"867";}s:5:"login";a:3:{s:4:"name";s:5:"login";s:4:"slug";s:5:"login";s:5:"count";s:3:"854";}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";s:3:"807";}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";s:3:"766";}s:10:"responsive";a:3:{s:4:"name";s:10:"responsive";s:4:"slug";s:10:"responsive";s:5:"count";s:3:"747";}s:8:"security";a:3:{s:4:"name";s:8:"security";s:4:"slug";s:8:"security";s:5:"count";s:3:"740";}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";s:3:"735";}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";s:3:"729";}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";s:3:"725";}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";s:3:"721";}s:4:"spam";a:3:{s:4:"name";s:4:"spam";s:4:"slug";s:4:"spam";s:5:"count";s:3:"718";}s:5:"share";a:3:{s:4:"name";s:5:"Share";s:4:"slug";s:5:"share";s:5:"count";s:3:"706";}s:10:"e-commerce";a:3:{s:4:"name";s:10:"e-commerce";s:4:"slug";s:10:"e-commerce";s:5:"count";s:3:"701";}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";s:3:"681";}s:8:"category";a:3:{s:4:"name";s:8:"category";s:4:"slug";s:8:"category";s:5:"count";s:3:"675";}s:5:"embed";a:3:{s:4:"name";s:5:"embed";s:4:"slug";s:5:"embed";s:5:"count";s:3:"657";}s:9:"analytics";a:3:{s:4:"name";s:9:"analytics";s:4:"slug";s:9:"analytics";s:5:"count";s:3:"655";}s:4:"form";a:3:{s:4:"name";s:4:"form";s:4:"slug";s:4:"form";s:5:"count";s:3:"648";}s:3:"css";a:3:{s:4:"name";s:3:"CSS";s:4:"slug";s:3:"css";s:5:"count";s:3:"642";}s:6:"search";a:3:{s:4:"name";s:6:"search";s:4:"slug";s:6:"search";s:5:"count";s:3:"635";}s:9:"slideshow";a:3:{s:4:"name";s:9:"slideshow";s:4:"slug";s:9:"slideshow";s:5:"count";s:3:"629";}s:6:"custom";a:3:{s:4:"name";s:6:"custom";s:4:"slug";s:6:"custom";s:5:"count";s:3:"608";}s:5:"stats";a:3:{s:4:"name";s:5:"stats";s:4:"slug";s:5:"stats";s:5:"count";s:3:"598";}s:6:"slider";a:3:{s:4:"name";s:6:"slider";s:4:"slug";s:6:"slider";s:5:"count";s:3:"595";}s:6:"button";a:3:{s:4:"name";s:6:"button";s:4:"slug";s:6:"button";s:5:"count";s:3:"589";}s:7:"comment";a:3:{s:4:"name";s:7:"comment";s:4:"slug";s:7:"comment";s:5:"count";s:3:"585";}s:5:"theme";a:3:{s:4:"name";s:5:"theme";s:4:"slug";s:5:"theme";s:5:"count";s:3:"578";}s:4:"menu";a:3:{s:4:"name";s:4:"menu";s:4:"slug";s:4:"menu";s:5:"count";s:3:"575";}s:4:"tags";a:3:{s:4:"name";s:4:"tags";s:4:"slug";s:4:"tags";s:5:"count";s:3:"574";}s:9:"dashboard";a:3:{s:4:"name";s:9:"dashboard";s:4:"slug";s:9:"dashboard";s:5:"count";s:3:"569";}s:10:"categories";a:3:{s:4:"name";s:10:"categories";s:4:"slug";s:10:"categories";s:5:"count";s:3:"561";}s:10:"statistics";a:3:{s:4:"name";s:10:"statistics";s:4:"slug";s:10:"statistics";s:5:"count";s:3:"546";}s:3:"ads";a:3:{s:4:"name";s:3:"ads";s:4:"slug";s:3:"ads";s:5:"count";s:3:"538";}s:6:"mobile";a:3:{s:4:"name";s:6:"mobile";s:4:"slug";s:6:"mobile";s:5:"count";s:3:"533";}s:4:"user";a:3:{s:4:"name";s:4:"user";s:4:"slug";s:4:"user";s:5:"count";s:3:"522";}s:6:"editor";a:3:{s:4:"name";s:6:"editor";s:4:"slug";s:6:"editor";s:5:"count";s:3:"521";}s:5:"users";a:3:{s:4:"name";s:5:"users";s:4:"slug";s:5:"users";s:5:"count";s:3:"510";}s:4:"list";a:3:{s:4:"name";s:4:"list";s:4:"slug";s:4:"list";s:5:"count";s:3:"504";}s:7:"picture";a:3:{s:4:"name";s:7:"picture";s:4:"slug";s:7:"picture";s:5:"count";s:3:"504";}s:9:"affiliate";a:3:{s:4:"name";s:9:"affiliate";s:4:"slug";s:9:"affiliate";s:5:"count";s:3:"499";}s:7:"plugins";a:3:{s:4:"name";s:7:"plugins";s:4:"slug";s:7:"plugins";s:5:"count";s:3:"498";}s:6:"simple";a:3:{s:4:"name";s:6:"simple";s:4:"slug";s:6:"simple";s:5:"count";s:3:"476";}s:9:"multisite";a:3:{s:4:"name";s:9:"multisite";s:4:"slug";s:9:"multisite";s:5:"count";s:3:"475";}s:12:"contact-form";a:3:{s:4:"name";s:12:"contact form";s:4:"slug";s:12:"contact-form";s:5:"count";s:3:"472";}s:12:"social-media";a:3:{s:4:"name";s:12:"social media";s:4:"slug";s:12:"social-media";s:5:"count";s:3:"462";}s:7:"contact";a:3:{s:4:"name";s:7:"contact";s:4:"slug";s:7:"contact";s:5:"count";s:3:"461";}s:8:"pictures";a:3:{s:4:"name";s:8:"pictures";s:4:"slug";s:8:"pictures";s:5:"count";s:3:"457";}s:10:"navigation";a:3:{s:4:"name";s:10:"navigation";s:4:"slug";s:10:"navigation";s:5:"count";s:3:"432";}s:3:"url";a:3:{s:4:"name";s:3:"url";s:4:"slug";s:3:"url";s:5:"count";s:3:"429";}s:5:"flash";a:3:{s:4:"name";s:5:"flash";s:4:"slug";s:5:"flash";s:5:"count";s:3:"422";}s:4:"html";a:3:{s:4:"name";s:4:"html";s:4:"slug";s:4:"html";s:5:"count";s:3:"421";}s:4:"shop";a:3:{s:4:"name";s:4:"shop";s:4:"slug";s:4:"shop";s:5:"count";s:3:"418";}s:3:"api";a:3:{s:4:"name";s:3:"api";s:4:"slug";s:3:"api";s:5:"count";s:3:"415";}s:10:"newsletter";a:3:{s:4:"name";s:10:"newsletter";s:4:"slug";s:10:"newsletter";s:5:"count";s:3:"414";}s:9:"marketing";a:3:{s:4:"name";s:9:"marketing";s:4:"slug";s:9:"marketing";s:5:"count";s:3:"408";}s:4:"meta";a:3:{s:4:"name";s:4:"meta";s:4:"slug";s:4:"meta";s:5:"count";s:3:"403";}s:3:"tag";a:3:{s:4:"name";s:3:"tag";s:4:"slug";s:3:"tag";s:5:"count";s:3:"400";}s:6:"events";a:3:{s:4:"name";s:6:"events";s:4:"slug";s:6:"events";s:5:"count";s:3:"400";}s:8:"calendar";a:3:{s:4:"name";s:8:"calendar";s:4:"slug";s:8:"calendar";s:5:"count";s:3:"398";}s:4:"news";a:3:{s:4:"name";s:4:"News";s:4:"slug";s:4:"news";s:5:"count";s:3:"396";}s:8:"tracking";a:3:{s:4:"name";s:8:"tracking";s:4:"slug";s:8:"tracking";s:5:"count";s:3:"389";}s:9:"thumbnail";a:3:{s:4:"name";s:9:"thumbnail";s:4:"slug";s:9:"thumbnail";s:5:"count";s:3:"389";}s:11:"advertising";a:3:{s:4:"name";s:11:"advertising";s:4:"slug";s:11:"advertising";s:5:"count";s:3:"389";}s:4:"code";a:3:{s:4:"name";s:4:"code";s:4:"slug";s:4:"code";s:5:"count";s:3:"382";}s:10:"shortcodes";a:3:{s:4:"name";s:10:"shortcodes";s:4:"slug";s:10:"shortcodes";s:5:"count";s:3:"380";}s:8:"lightbox";a:3:{s:4:"name";s:8:"lightbox";s:4:"slug";s:8:"lightbox";s:5:"count";s:3:"379";}s:4:"text";a:3:{s:4:"name";s:4:"text";s:4:"slug";s:4:"text";s:5:"count";s:3:"379";}s:9:"automatic";a:3:{s:4:"name";s:9:"automatic";s:4:"slug";s:9:"automatic";s:5:"count";s:3:"377";}s:6:"upload";a:3:{s:4:"name";s:6:"upload";s:4:"slug";s:6:"upload";s:5:"count";s:3:"375";}s:6:"paypal";a:3:{s:4:"name";s:6:"paypal";s:4:"slug";s:6:"paypal";s:5:"count";s:3:"375";}s:7:"profile";a:3:{s:4:"name";s:7:"profile";s:4:"slug";s:7:"profile";s:5:"count";s:3:"371";}}', 'yes'),
(392, 'hicpo_activation', '1', 'yes'),
(397, 'hicpo_options', 'a:2:{s:7:"objects";a:3:{i:0;s:4:"post";i:1;s:4:"page";i:2;s:7:"product";}s:4:"tags";s:0:"";}', 'yes'),
(402, 'woocommerce_permalinks', 'a:4:{s:13:"category_base";s:4:"shop";s:8:"tag_base";s:3:"tag";s:14:"attribute_base";s:0:"";s:12:"product_base";s:0:"";}', 'yes'),
(429, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1454831011;s:7:"checked";a:2:{s:21:"eightstore-lite-child";s:5:"1.0.0";s:15:"eightstore-lite";s:6:"1.0.53";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'yes'),
(434, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1454846886;s:8:"response";a:0:{}s:12:"translations";a:0:{}s:9:"no_update";a:5:{s:59:"intuitive-custom-post-order/intuitive-custom-post-order.php";O:8:"stdClass":6:{s:2:"id";s:5:"35583";s:4:"slug";s:27:"intuitive-custom-post-order";s:6:"plugin";s:59:"intuitive-custom-post-order/intuitive-custom-post-order.php";s:11:"new_version";s:5:"3.0.7";s:3:"url";s:58:"https://wordpress.org/plugins/intuitive-custom-post-order/";s:7:"package";s:76:"https://downloads.wordpress.org/plugin/intuitive-custom-post-order.3.0.7.zip";}s:57:"ultimate-form-builder-lite/ultimate-form-builder-lite.php";O:8:"stdClass":6:{s:2:"id";s:5:"64085";s:4:"slug";s:26:"ultimate-form-builder-lite";s:6:"plugin";s:57:"ultimate-form-builder-lite/ultimate-form-builder-lite.php";s:11:"new_version";s:5:"1.1.3";s:3:"url";s:57:"https://wordpress.org/plugins/ultimate-form-builder-lite/";s:7:"package";s:75:"https://downloads.wordpress.org/plugin/ultimate-form-builder-lite.1.1.3.zip";}s:27:"woocommerce/woocommerce.php";O:8:"stdClass":6:{s:2:"id";s:5:"25331";s:4:"slug";s:11:"woocommerce";s:6:"plugin";s:27:"woocommerce/woocommerce.php";s:11:"new_version";s:5:"2.5.2";s:3:"url";s:42:"https://wordpress.org/plugins/woocommerce/";s:7:"package";s:60:"https://downloads.wordpress.org/plugin/woocommerce.2.5.2.zip";}s:41:"wordpress-importer/wordpress-importer.php";O:8:"stdClass":6:{s:2:"id";s:5:"14975";s:4:"slug";s:18:"wordpress-importer";s:6:"plugin";s:41:"wordpress-importer/wordpress-importer.php";s:11:"new_version";s:5:"0.6.1";s:3:"url";s:49:"https://wordpress.org/plugins/wordpress-importer/";s:7:"package";s:67:"https://downloads.wordpress.org/plugin/wordpress-importer.0.6.1.zip";}s:45:"wp-admin-bar-removal/wp-admin-bar-removal.php";O:8:"stdClass":7:{s:2:"id";s:5:"18320";s:4:"slug";s:20:"wp-admin-bar-removal";s:6:"plugin";s:45:"wp-admin-bar-removal/wp-admin-bar-removal.php";s:11:"new_version";s:14:"2014.0707.0383";s:3:"url";s:51:"https://wordpress.org/plugins/wp-admin-bar-removal/";s:7:"package";s:78:"https://downloads.wordpress.org/plugin/wp-admin-bar-removal.2014.0707.0383.zip";s:14:"upgrade_notice";s:252:"Major Update [CERTIFIED] Disable WordPress Admin Bar and Toolbar and Remove Code Completely on WP 3.1+ or later for Minimal Memory Load, and Dashboard Speedup, with new Unified Coding Approach without loosing Logout and Network MultiSite functionality!";}}}', 'yes');
INSERT INTO `ofs2616_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(451, 'theme_mods_eightstore-lite-child', 'a:31:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:33;}s:23:"ticker_setting_category";i:29;s:23:"slider_setting_category";i:27;s:34:"es_category_promo_setting_category";i:30;s:32:"eightstore_blog_setting_category";i:28;s:39:"eightstore_testimonial_setting_category";i:31;s:22:"social_icons_in_header";i:1;s:15:"social_facebook";s:54:"https://www.facebook.com/Onefabshopph-215945351924631/";s:16:"social_instagram";s:39:"https://www.instagram.com/onefabshop12/";s:18:"heading_typography";s:0:"";s:15:"body_typography";s:27:"Roboto Condensed,sans-serif";s:23:"eightstore_blog_section";i:1;s:30:"eightstore_testimonial_section";i:1;s:12:"header_image";s:66:"http://localhost/onefabshop/wp-content/uploads/2016/02/ofslogo.png";s:17:"header_image_data";O:8:"stdClass":5:{s:13:"attachment_id";i:146;s:3:"url";s:66:"http://localhost/onefabshop/wp-content/uploads/2016/02/ofslogo.png";s:13:"thumbnail_url";s:66:"http://localhost/onefabshop/wp-content/uploads/2016/02/ofslogo.png";s:6:"height";i:250;s:5:"width";i:250;}s:20:"typography_format_h1";s:2:"82";s:19:"typography_color_h1";s:7:"#ac0472";s:11:"callto_text";s:785:"\n<a class="top-contact top-phone" href="tel:09187225153">\n	<span>\n		<i class="fa fa-mobile"></i>\n		+63918-722-5153\n	</span>\n	<span class="caption">\n		(Manila) Look for Naing\n	</span>\n</a>\n<a class="top-contact top-phone" href="tel:6328330278">\n	<span>\n		<i class="fa fa-phone"></i>\n		+6328-330-278\n	</span>\n	<span class="caption">\n		(Manila) Look for Naing\n	</span>\n</a>\n<a class="top-contact top-phone" href="tel:09151859909">\n	<span>\n		<i class="fa fa-mobile"></i>\n		+63915-185-9909\n	</span>\n	<span class="caption">\n		(Provincial) Look for Gem\n	</span>\n</a>\n<a class="top-contact top-mail" href="mailto:ph.support@onefabshop.net">\n	<span>\n		<i class="fa fa-envelope"></i>\n		ph.support@onefabshop.net\n	</span>\n	<span class="caption">\n		Email us your questions/inquiries\n	</span>\n</a>\n";s:26:"eightstore_ticker_checkbox";i:1;s:14:"display_slider";i:1;s:13:"display_pager";i:1;s:16:"display_controls";i:1;s:22:"enable_auto_transition";i:1;s:15:"transition_type";s:4:"true";s:16:"transition_speed";s:3:"300";s:16:"display_captions";i:1;s:21:"eightstore_blog_title";s:9:"Our Blogs";s:28:"eightstore_testimonial_title";s:16:"Our Testimonials";s:21:"footer_copyright_text";s:167:"© 2016 Onefabshop. All Rights Reserved.\n<br />\n Web design and development by <a href="https://www.linkedin.com/in/diannekatherinedelosreyes" target="_blank">D.K</a>.";s:23:"eightstore_ticker_title";s:19:"Go to Onefabshop AE";}', 'yes'),
(468, '_transient_shipping-transient-version', '1456721575', 'yes'),
(481, '_site_transient_timeout_theme_roots', '1454841467', 'yes'),
(482, '_site_transient_theme_roots', 'a:2:{s:21:"eightstore-lite-child";s:7:"/themes";s:15:"eightstore-lite";s:7:"/themes";}', 'yes'),
(484, 'general_options', '', 'yes'),
(485, 'pricing_options', '', 'yes'),
(538, 'post_count', '9', 'yes'),
(633, 'category_children', 'a:0:{}', 'yes'),
(634, 'custom_permalink_table', 'a:1:{s:6:"blogs/";a:3:{s:2:"id";i:28;s:4:"kind";s:8:"category";s:4:"slug";s:4:"blog";}}', 'yes'),
(649, 'acf_version', '4.4.5', 'yes'),
(677, 'product_cat_children', 'a:2:{i:7;a:4:{i:0;i:8;i:1;i:9;i:2;i:10;i:3;i:11;}i:6;a:4:{i:0;i:12;i:1;i:13;i:2;i:14;i:3;i:15;}}', 'yes'),
(687, '_transient_timeout_wc_product_children_40', '1458976645', 'no'),
(688, '_transient_wc_product_children_40', 'a:2:{s:7:"visible";a:2:{i:0;i:41;i:1;i:42;}s:3:"all";a:2:{i:0;i:41;i:1;i:42;}}', 'no'),
(689, '_transient_timeout_wc_var_prices_40', '1460450747', 'no'),
(690, '_transient_wc_var_prices_40', '{"version":"1457856461","f9e544f77b7eac7add281ef28ca5559f":{"price":{"42":"30","41":"35"},"regular_price":{"42":"35","41":"35"},"sale_price":{"42":"30","41":"35"}},"e1b88e1c9a8573a0fff4a38a491fcd6d":{"price":{"42":30,"41":35},"regular_price":{"42":35,"41":35},"sale_price":{"42":30,"41":35}}}', 'no'),
(691, '_transient_timeout_wc_product_children_104', '1458976471', 'no'),
(692, '_transient_wc_product_children_104', 'a:2:{s:7:"visible";a:2:{i:0;i:105;i:1;i:106;}s:3:"all";a:2:{i:0;i:105;i:1;i:106;}}', 'no'),
(693, '_transient_timeout_wc_var_prices_104', '1460469684', 'no'),
(694, '_transient_wc_var_prices_104', '{"version":"1457856461","f9e544f77b7eac7add281ef28ca5559f":{"price":{"106":"20","105":"20"},"regular_price":{"106":"20","105":"20"},"sale_price":{"106":"20","105":"20"}},"e1b88e1c9a8573a0fff4a38a491fcd6d":{"price":{"106":20,"105":20},"regular_price":{"106":20,"105":20},"sale_price":{"106":20,"105":20}}}', 'no'),
(751, '_transient_timeout_wc_cbp_307d3a53dfb49bc4ddd7b766790cff01', '1459285090', 'no'),
(752, '_transient_wc_cbp_307d3a53dfb49bc4ddd7b766790cff01', 'a:0:{}', 'no'),
(757, '_transient_timeout_wc_cbp_baf66d80846da8defe2c37bc2005ef04', '1459285429', 'no'),
(758, '_transient_wc_cbp_baf66d80846da8defe2c37bc2005ef04', 'a:0:{}', 'no'),
(771, 'catalog_options', '', 'yes'),
(772, 'image_options', '', 'yes'),
(779, 'woocommerce_bacs_accounts', 'a:1:{i:0;a:6:{s:12:"account_name";s:0:"";s:14:"account_number";s:0:"";s:9:"bank_name";s:0:"";s:9:"sort_code";s:0:"";s:4:"iban";s:0:"";s:3:"bic";s:0:"";}}', 'yes'),
(784, 'checkout_process_options', '', 'yes'),
(785, 'checkout_page_options', '', 'yes'),
(786, 'account_endpoint_options', '', 'yes'),
(787, 'checkout_endpoint_options', '', 'yes'),
(788, 'payment_gateways_options', '', 'yes'),
(789, 'woocommerce_gateway_order', 'a:4:{s:4:"bacs";i:0;s:6:"paypal";i:1;s:6:"cheque";i:2;s:3:"cod";i:3;}', 'yes'),
(792, 'shipping_options', '', 'yes'),
(793, 'woocommerce_shipping_method_selection_priority', 'a:5:{s:14:"local_delivery";i:1;s:9:"flat_rate";i:1;s:13:"free_shipping";i:1;s:22:"international_delivery";i:1;s:12:"local_pickup";i:1;}', 'yes'),
(794, 'woocommerce_shipping_method_order', 'a:5:{s:14:"local_delivery";i:0;s:9:"flat_rate";i:1;s:13:"free_shipping";i:2;s:22:"international_delivery";i:3;s:12:"local_pickup";i:4;}', 'yes'),
(797, 'woocommerce_local_delivery_settings', 'a:7:{s:7:"enabled";s:2:"no";s:5:"title";s:14:"Local Delivery";s:4:"type";s:5:"fixed";s:3:"fee";s:0:"";s:5:"codes";s:0:"";s:12:"availability";s:3:"all";s:9:"countries";s:0:"";}', 'yes'),
(800, 'woocommerce_free_shipping_settings', 'a:6:{s:7:"enabled";s:3:"yes";s:5:"title";s:13:"Free Shipping";s:12:"availability";s:3:"all";s:9:"countries";s:0:"";s:8:"requires";s:0:"";s:10:"min_amount";s:1:"0";}', 'yes'),
(803, 'woocommerce_local_pickup_settings', 'a:5:{s:7:"enabled";s:3:"yes";s:5:"title";s:12:"Local Pickup";s:5:"codes";s:0:"";s:12:"availability";s:3:"all";s:9:"countries";s:0:"";}', 'yes'),
(806, 'email_notification_settings', '', 'yes'),
(807, 'email_recipient_options', '', 'yes'),
(808, 'email_options', '', 'yes'),
(809, 'email_template_options', '', 'yes'),
(843, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(889, 'blog_upload_space', '', 'yes'),
(910, 'mucd_duplicable', 'no', 'yes'),
(914, 'product_inventory_options', '', 'yes'),
(921, 'yit_recently_activated', 'a:0:{}', 'yes'),
(922, 'yith_wcas_general_videobox', '', 'yes'),
(923, 'ywot_order_tracking_text', 'Your order has been picked up by [carrier_name] on [pickup_date]. Your track code is [track_code].', 'yes'),
(924, 'ywot_order_tracking_text_position', '1', 'yes'),
(927, 'ywot_section_general', '', 'yes'),
(928, 'ywot_carrier_default_name', 'Carrier', 'yes'),
(929, 'ywot_section_general_end', '', 'yes'),
(935, 'global-admin-bar-plugin-setting', '1', 'yes'),
(936, 'global-admin-bar-plugin-user-setting', '', 'yes'),
(937, 'global-admin-bar-roles', 'a:7:{i:0;s:13:"administrator";i:1;s:6:"editor";i:2;s:6:"author";i:3;s:11:"contributor";i:4;s:10:"subscriber";i:5;s:8:"customer";i:6;s:12:"shop_manager";}', 'yes'),
(938, 'global-admin-bar-profiles', 'a:7:{i:0;s:13:"administrator";i:1;s:6:"editor";i:2;s:6:"author";i:3;s:11:"contributor";i:4;s:10:"subscriber";i:5;s:8:"customer";i:6;s:12:"shop_manager";}', 'yes'),
(1022, '_transient_timeout_wc_cbp_6cdca6abb157e0fc124ea60e6b0e33c7', '1459953216', 'no'),
(1023, '_transient_wc_cbp_6cdca6abb157e0fc124ea60e6b0e33c7', 'a:0:{}', 'no'),
(1024, '_transient_timeout_wc_cbp_a4fca96cfce5ee0ca30e80707e2d5691', '1459953216', 'no'),
(1025, '_transient_wc_cbp_a4fca96cfce5ee0ca30e80707e2d5691', 'a:0:{}', 'no'),
(1076, '_transient_timeout_wc_cbp_8ccccad23fa2832112aa56e5b24800f3', '1460130639', 'no'),
(1077, '_transient_wc_cbp_8ccccad23fa2832112aa56e5b24800f3', 'a:0:{}', 'no'),
(1165, '_transient_timeout_geoip_::1', '1458380293', 'no'),
(1166, '_transient_geoip_::1', '', 'no'),
(1169, '_transient_timeout_external_ip_address_::1', '1458381370', 'no'),
(1170, '_transient_external_ip_address_::1', '112.198.103.40', 'no'),
(1171, '_transient_timeout_geoip_112.198.103.40', '1458381374', 'no'),
(1172, '_transient_geoip_112.198.103.40', '', 'no'),
(1195, 'yith_wcdp_general_enable', 'no', 'yes'),
(1196, 'yith_wcdp_general_deposit_enable', 'yes', 'yes'),
(1197, 'yith_wcdp_general_deposit_force', 'yes', 'yes'),
(1198, 'yith_wcdp_general_deposit_amount', '1000', 'yes'),
(1199, 'yith_wcdp_general_deposit_shipping', 'let_user_choose', 'yes'),
(1200, 'yith_wcdp_general_deposit_shipping_admin_selection', 'free_shipping', 'yes'),
(1203, 'yith_wcdp_general_options', '', 'yes'),
(1204, 'yith_wcdp_general_options_end', '', 'yes'),
(1205, 'yith_wcdp_general_deposit_options', '', 'yes'),
(1206, 'yith_wcdp_general_deposit_options_end', '', 'yes'),
(1217, '_transient_woocommerce_cache_excluded_uris', 'a:6:{i:0;s:3:"p=5";i:1;s:6:"/cart/";i:2;s:3:"p=6";i:3;s:10:"/checkout/";i:4;s:3:"p=7";i:5;s:12:"/my-account/";}', 'yes'),
(1222, 'wc_subscriptions_siteurl', 'http://localh_[wc_subscriptions_siteurl]_ost/onefabshop', 'yes'),
(1223, 'woocommerce_subscriptions_active_version', '1.4.5', 'yes'),
(1224, 'wcs_updated_to_wc_2_0', 'true', 'yes'),
(1225, 'woocommerce_subscriptions_add_to_cart_button_text', 'Sign Up Now', 'yes'),
(1226, 'woocommerce_subscriptions_order_button_text', 'Sign Up Now', 'yes'),
(1227, 'woocommerce_subscriptions_subscriber_role', 'subscriber', 'yes'),
(1228, 'woocommerce_subscriptions_cancelled_role', 'customer', 'yes'),
(1229, 'woocommerce_subscriptions_accept_manual_renewals', 'no', 'yes'),
(1230, 'woocommerce_subscriptions_turn_off_automatic_payments', 'no', 'yes'),
(1231, 'woocommerce_subscriptions_allow_switching', 'no', 'yes'),
(1232, 'woocommerce_subscriptions_apportion_recurring_price', 'no', 'yes'),
(1233, 'woocommerce_subscriptions_apportion_sign_up_fee', 'no', 'yes'),
(1234, 'woocommerce_subscriptions_apportion_length', 'no', 'yes'),
(1235, 'woocommerce_subscriptions_switch_button_text', 'Switch Subscription', 'yes'),
(1236, 'woocommerce_subscriptions_max_customer_suspensions', '0', 'yes'),
(1237, 'woocommerce_subscriptions_add_outstanding_balance', 'no', 'yes'),
(1238, 'woocommerce_subscriptions_add_sub_info_email', 'no', 'yes'),
(1252, 'woocommerce_subscriptions_is_active', '1', 'yes'),
(1328, 'pw_woocommerce_brands_text_single', 'yes', 'yes'),
(1329, 'widget_pw_brands_widget', 'a:2:{i:2;a:4:{s:5:"title";s:6:"Brands";s:4:"show";s:8:"dropdown";s:8:"featured";i:0;s:11:"post_counts";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(1330, 'widget_pw_brands_carousel_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(1336, 'product_brand_children', 'a:0:{}', 'yes'),
(1364, 'wc_attribute_menu', 's:52:"a:2:{i:0;s:9:"pa_brands";i:1;s:14:"pa_subcategory";}";', 'yes'),
(1365, 'wc_amm_priority', '1', 'yes'),
(1392, 'pa_brands_children', 'a:0:{}', 'yes'),
(1400, 'pa_item-type_children', 'a:0:{}', 'yes'),
(1416, 'pa_itemtype_children', 'a:0:{}', 'yes'),
(1427, 'pa_itemcategory_children', 'a:0:{}', 'yes'),
(1458, 'pa_subcategory_children', 'a:0:{}', 'yes'),
(1484, '_transient_timeout_wc_product_children_193', '1460450747', 'no'),
(1485, '_transient_wc_product_children_193', 'a:2:{s:7:"visible";a:3:{i:0;i:196;i:1;i:197;i:2;i:198;}s:3:"all";a:3:{i:0;i:196;i:1;i:197;i:2;i:198;}}', 'no'),
(1486, '_transient_timeout_wc_var_prices_193', '1460448461', 'no'),
(1487, '_transient_wc_var_prices_193', '{"version":"1457856461","e1b88e1c9a8573a0fff4a38a491fcd6d":{"price":{"198":2000,"197":2000,"196":2500},"regular_price":{"198":2000,"197":2000,"196":2500},"sale_price":{"198":2000,"197":2000,"196":2500}},"f9e544f77b7eac7add281ef28ca5559f":{"price":{"198":"2000","197":"2000","196":"2500"},"regular_price":{"198":"2000","197":"2000","196":"2500"},"sale_price":{"198":"2000","197":"2000","196":"2500"}}}', 'no'),
(1488, '_transient_timeout_wc_product_children_8', '1460448461', 'no'),
(1489, '_transient_wc_product_children_8', 'a:2:{s:3:"all";a:2:{i:0;i:181;i:1;i:182;}s:7:"visible";a:2:{i:0;i:181;i:1;i:182;}}', 'no'),
(1490, '_transient_timeout_wc_var_prices_8', '1460448461', 'no'),
(1491, '_transient_wc_var_prices_8', '{"version":"1457856461","e1b88e1c9a8573a0fff4a38a491fcd6d":{"price":{"182":1000,"181":1500},"regular_price":{"182":1000,"181":1500},"sale_price":{"182":1000,"181":1500}},"f9e544f77b7eac7add281ef28ca5559f":{"price":{"182":"1000","181":"1500"},"regular_price":{"182":"1000","181":"1500"},"sale_price":{"182":"1000","181":"1500"}}}', 'no'),
(1494, '_transient_timeout_wc_term_counts', '1460450747', 'no'),
(1495, '_transient_wc_term_counts', 'a:10:{i:6;s:2:"10";i:12;s:1:"3";i:14;s:1:"3";i:13;s:1:"3";i:15;s:1:"1";i:7;s:2:"16";i:9;s:1:"4";i:10;s:1:"3";i:8;s:1:"6";i:11;s:1:"3";}', 'no'),
(1496, '_transient_timeout_wc_upgrade_notice_2.5.2', '1457945806', 'no'),
(1497, '_transient_wc_upgrade_notice_2.5.2', '', 'no'),
(1498, '_transient_timeout_wc_low_stock_count', '1460451683', 'no'),
(1499, '_transient_wc_low_stock_count', '0', 'no'),
(1500, '_transient_timeout_wc_outofstock_count', '1460451683', 'no'),
(1501, '_transient_wc_outofstock_count', '0', 'no'),
(1504, 'woocommerce_db_version', '2.5.5', 'yes'),
(1505, 'woocommerce_version', '2.5.5', 'yes'),
(1506, 'woocommerce_admin_notices', 'a:0:{}', 'yes'),
(1508, '_transient_wc_attribute_taxonomies', 'a:3:{i:0;O:8:"stdClass":6:{s:12:"attribute_id";s:1:"2";s:14:"attribute_name";s:6:"brands";s:15:"attribute_label";s:6:"Brands";s:14:"attribute_type";s:6:"select";s:17:"attribute_orderby";s:4:"name";s:16:"attribute_public";s:1:"1";}i:1;O:8:"stdClass":6:{s:12:"attribute_id";s:1:"1";s:14:"attribute_name";s:5:"color";s:15:"attribute_label";s:6:"Colors";s:14:"attribute_type";s:6:"select";s:17:"attribute_orderby";s:4:"name";s:16:"attribute_public";s:1:"0";}i:2;O:8:"stdClass":6:{s:12:"attribute_id";s:1:"5";s:14:"attribute_name";s:11:"subcategory";s:15:"attribute_label";s:11:"Subcategory";s:14:"attribute_type";s:6:"select";s:17:"attribute_orderby";s:10:"menu_order";s:16:"attribute_public";s:1:"1";}}', 'yes'),
(1509, 'rewrite_rules', 'a:189:{s:22:"^wc-api/v([1-3]{1})/?$";s:51:"index.php?wc-api-version=$matches[1]&wc-api-route=/";s:24:"^wc-api/v([1-3]{1})(.*)?";s:61:"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]";s:24:"^wc-auth/v([1]{1})/(.*)?";s:63:"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]";s:7:"shop/?$";s:27:"index.php?post_type=product";s:37:"shop/feed/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:32:"shop/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:24:"shop/page/([0-9]{1,})/?$";s:45:"index.php?post_type=product&paged=$matches[1]";s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:32:"category/(.+?)/wc-api(/(.*))?/?$";s:54:"index.php?category_name=$matches[1]&wc-api=$matches[3]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?product_tag=$matches[1]&paged=$matches[2]";s:29:"tag/([^/]+)/wc-api(/(.*))?/?$";s:44:"index.php?tag=$matches[1]&wc-api=$matches[3]";s:14:"tag/([^/]+)/?$";s:33:"index.php?product_tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:35:"product/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:45:"product/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:65:"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:41:"product/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:24:"product/([^/]+)/embed/?$";s:40:"index.php?product=$matches[1]&embed=true";s:28:"product/([^/]+)/trackback/?$";s:34:"index.php?product=$matches[1]&tb=1";s:48:"product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:43:"product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:36:"product/([^/]+)/page/?([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&paged=$matches[2]";s:43:"product/([^/]+)/comment-page-([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&cpage=$matches[2]";s:33:"product/([^/]+)/wc-api(/(.*))?/?$";s:48:"index.php?product=$matches[1]&wc-api=$matches[3]";s:39:"product/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:50:"product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:32:"product/([^/]+)(?:/([0-9]+))?/?$";s:46:"index.php?product=$matches[1]&page=$matches[2]";s:24:"product/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:34:"product/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:54:"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:30:"product/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:45:"product_variation/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:55:"product_variation/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:75:"product_variation/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"product_variation/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"product_variation/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:51:"product_variation/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:34:"product_variation/([^/]+)/embed/?$";s:50:"index.php?product_variation=$matches[1]&embed=true";s:38:"product_variation/([^/]+)/trackback/?$";s:44:"index.php?product_variation=$matches[1]&tb=1";s:46:"product_variation/([^/]+)/page/?([0-9]{1,})/?$";s:57:"index.php?product_variation=$matches[1]&paged=$matches[2]";s:53:"product_variation/([^/]+)/comment-page-([0-9]{1,})/?$";s:57:"index.php?product_variation=$matches[1]&cpage=$matches[2]";s:43:"product_variation/([^/]+)/wc-api(/(.*))?/?$";s:58:"index.php?product_variation=$matches[1]&wc-api=$matches[3]";s:49:"product_variation/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:60:"product_variation/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:"product_variation/([^/]+)(?:/([0-9]+))?/?$";s:56:"index.php?product_variation=$matches[1]&page=$matches[2]";s:34:"product_variation/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"product_variation/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:64:"product_variation/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"product_variation/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"product_variation/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:40:"product_variation/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:45:"shop_order_refund/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:55:"shop_order_refund/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:75:"shop_order_refund/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"shop_order_refund/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"shop_order_refund/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:51:"shop_order_refund/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:34:"shop_order_refund/([^/]+)/embed/?$";s:50:"index.php?shop_order_refund=$matches[1]&embed=true";s:38:"shop_order_refund/([^/]+)/trackback/?$";s:44:"index.php?shop_order_refund=$matches[1]&tb=1";s:46:"shop_order_refund/([^/]+)/page/?([0-9]{1,})/?$";s:57:"index.php?shop_order_refund=$matches[1]&paged=$matches[2]";s:53:"shop_order_refund/([^/]+)/comment-page-([0-9]{1,})/?$";s:57:"index.php?shop_order_refund=$matches[1]&cpage=$matches[2]";s:43:"shop_order_refund/([^/]+)/wc-api(/(.*))?/?$";s:58:"index.php?shop_order_refund=$matches[1]&wc-api=$matches[3]";s:49:"shop_order_refund/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:60:"shop_order_refund/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:"shop_order_refund/([^/]+)(?:/([0-9]+))?/?$";s:56:"index.php?shop_order_refund=$matches[1]&page=$matches[2]";s:34:"shop_order_refund/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"shop_order_refund/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:64:"shop_order_refund/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"shop_order_refund/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"shop_order_refund/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:40:"shop_order_refund/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:43:"shop/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:38:"shop/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:31:"shop/(.+?)/page/?([0-9]{1,})/?$";s:51:"index.php?product_cat=$matches[1]&paged=$matches[2]";s:13:"shop/(.+?)/?$";s:33:"index.php?product_cat=$matches[1]";s:48:"pa_brands/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:48:"index.php?pa_brands=$matches[1]&feed=$matches[2]";s:43:"pa_brands/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:48:"index.php?pa_brands=$matches[1]&feed=$matches[2]";s:36:"pa_brands/(.+?)/page/?([0-9]{1,})/?$";s:49:"index.php?pa_brands=$matches[1]&paged=$matches[2]";s:18:"pa_brands/(.+?)/?$";s:31:"index.php?pa_brands=$matches[1]";s:53:"pa_subcategory/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:53:"index.php?pa_subcategory=$matches[1]&feed=$matches[2]";s:48:"pa_subcategory/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:53:"index.php?pa_subcategory=$matches[1]&feed=$matches[2]";s:41:"pa_subcategory/(.+?)/page/?([0-9]{1,})/?$";s:54:"index.php?pa_subcategory=$matches[1]&paged=$matches[2]";s:23:"pa_subcategory/(.+?)/?$";s:36:"index.php?pa_subcategory=$matches[1]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:16:".*wp-signup.php$";s:21:"index.php?signup=true";s:18:".*wp-activate.php$";s:23:"index.php?activate=true";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:40:"index.php?&page_id=111&cpage=$matches[1]";s:17:"wc-api(/(.*))?/?$";s:29:"index.php?&wc-api=$matches[2]";s:20:"order-pay(/(.*))?/?$";s:32:"index.php?&order-pay=$matches[2]";s:25:"order-received(/(.*))?/?$";s:37:"index.php?&order-received=$matches[2]";s:21:"view-order(/(.*))?/?$";s:33:"index.php?&view-order=$matches[2]";s:23:"edit-account(/(.*))?/?$";s:35:"index.php?&edit-account=$matches[2]";s:23:"edit-address(/(.*))?/?$";s:35:"index.php?&edit-address=$matches[2]";s:24:"lost-password(/(.*))?/?$";s:36:"index.php?&lost-password=$matches[2]";s:26:"customer-logout(/(.*))?/?$";s:38:"index.php?&customer-logout=$matches[2]";s:29:"add-payment-method(/(.*))?/?$";s:41:"index.php?&add-payment-method=$matches[2]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:26:"comments/wc-api(/(.*))?/?$";s:29:"index.php?&wc-api=$matches[2]";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:29:"search/(.+)/wc-api(/(.*))?/?$";s:42:"index.php?s=$matches[1]&wc-api=$matches[3]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:32:"author/([^/]+)/wc-api(/(.*))?/?$";s:52:"index.php?author_name=$matches[1]&wc-api=$matches[3]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:54:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$";s:82:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:41:"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$";s:66:"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:28:"([0-9]{4})/wc-api(/(.*))?/?$";s:45:"index.php?year=$matches[1]&wc-api=$matches[3]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:25:"(.?.+?)/wc-api(/(.*))?/?$";s:49:"index.php?pagename=$matches[1]&wc-api=$matches[3]";s:28:"(.?.+?)/order-pay(/(.*))?/?$";s:52:"index.php?pagename=$matches[1]&order-pay=$matches[3]";s:33:"(.?.+?)/order-received(/(.*))?/?$";s:57:"index.php?pagename=$matches[1]&order-received=$matches[3]";s:29:"(.?.+?)/view-order(/(.*))?/?$";s:53:"index.php?pagename=$matches[1]&view-order=$matches[3]";s:31:"(.?.+?)/edit-account(/(.*))?/?$";s:55:"index.php?pagename=$matches[1]&edit-account=$matches[3]";s:31:"(.?.+?)/edit-address(/(.*))?/?$";s:55:"index.php?pagename=$matches[1]&edit-address=$matches[3]";s:32:"(.?.+?)/lost-password(/(.*))?/?$";s:56:"index.php?pagename=$matches[1]&lost-password=$matches[3]";s:34:"(.?.+?)/customer-logout(/(.*))?/?$";s:58:"index.php?pagename=$matches[1]&customer-logout=$matches[3]";s:37:"(.?.+?)/add-payment-method(/(.*))?/?$";s:61:"index.php?pagename=$matches[1]&add-payment-method=$matches[3]";s:31:".?.+?/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"([^/]+)/embed/?$";s:37:"index.php?name=$matches[1]&embed=true";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:25:"([^/]+)/wc-api(/(.*))?/?$";s:45:"index.php?name=$matches[1]&wc-api=$matches[3]";s:31:"[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:"[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:24:"([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:22:"[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";}', 'yes'),
(1511, '_transient_timeout_wc_uf_pid_2a3877fa8586b9c15212c7478d9c8c41', '1460457224', 'no'),
(1512, '_transient_wc_uf_pid_2a3877fa8586b9c15212c7478d9c8c41', 'a:26:{i:0;i:193;i:1;i:184;i:2;i:8;i:3;i:99;i:4;i:96;i:5;i:93;i:6;i:90;i:7;i:87;i:8;i:83;i:9;i:79;i:10;i:76;i:11;i:73;i:12;i:70;i:13;i:67;i:14;i:60;i:15;i:56;i:16;i:53;i:17;i:50;i:18;i:47;i:19;i:40;i:20;i:37;i:21;i:34;i:22;i:31;i:23;i:104;i:24;i:103;i:25;i:102;}', 'no'),
(1513, '_transient_timeout_wc_related_99', '1457952731', 'no'),
(1514, '_transient_wc_related_99', 'a:14:{i:0;s:1:"8";i:1;s:2:"56";i:2;s:2:"60";i:3;s:2:"67";i:4;s:2:"70";i:5;s:2:"73";i:6;s:2:"76";i:7;s:2:"79";i:8;s:2:"83";i:9;s:2:"87";i:10;s:2:"90";i:11;s:2:"93";i:12;s:2:"96";i:13;s:3:"184";}', 'no'),
(1519, 'pa_color_children', 'a:0:{}', 'yes'),
(1521, '_transient_timeout_wc_uf_pid_1d767a7652f1f98800e671c1f765bf7e', '1460470169', 'no'),
(1522, '_transient_wc_uf_pid_1d767a7652f1f98800e671c1f765bf7e', 'a:10:{i:0;i:53;i:1;i:50;i:2;i:47;i:3;i:40;i:4;i:37;i:5;i:34;i:6;i:31;i:7;i:104;i:8;i:103;i:9;i:102;}', 'no'),
(1523, '_transient_timeout_wc_related_193', '1457964715', 'no'),
(1524, '_transient_wc_related_193', 'a:14:{i:0;s:1:"8";i:1;s:2:"56";i:2;s:2:"60";i:3;s:2:"67";i:4;s:2:"70";i:5;s:2:"73";i:6;s:2:"76";i:7;s:2:"79";i:8;s:2:"83";i:9;s:2:"87";i:10;s:2:"90";i:11;s:2:"93";i:12;s:2:"96";i:13;s:2:"99";}', 'no'),
(1528, 'ewww_image_optimizer_bulk_attachments', '', 'no'),
(1529, 'ewww_image_optimizer_flag_attachments', '', 'no'),
(1530, 'ewww_image_optimizer_ngg_attachments', '', 'no'),
(1531, 'ewww_image_optimizer_aux_attachments', '', 'no'),
(1532, 'ewww_image_optimizer_defer_attachments', '', 'no'),
(1533, 'ewww_image_optimizer_version', '259.0', 'yes'),
(1537, '_transient_timeout_wc_admin_report', '1458136907', 'no'),
(1538, '_transient_wc_admin_report', 'a:2:{s:32:"144d403c2705f0b32380082d9021d550";a:2:{i:0;O:8:"stdClass":2:{s:15:"sparkline_value";s:4:"2000";s:9:"post_date";s:19:"2016-03-09 16:10:00";}i:1;O:8:"stdClass":2:{s:15:"sparkline_value";s:4:"2500";s:9:"post_date";s:19:"2016-03-12 21:10:03";}}s:32:"fa5893bf5980e929f11141c48bc45fa5";a:2:{i:0;O:8:"stdClass":3:{s:10:"product_id";s:3:"193";s:15:"sparkline_value";s:1:"1";s:9:"post_date";s:19:"2016-03-09 16:10:00";}i:1;O:8:"stdClass":3:{s:10:"product_id";s:3:"193";s:15:"sparkline_value";s:1:"2";s:9:"post_date";s:19:"2016-03-12 21:10:03";}}}', 'no'),
(1539, '_transient_timeout_dash_88ae138922fe95674369b1cb3d215a2b', '1458094021', 'no'),
(1540, '_transient_dash_88ae138922fe95674369b1cb3d215a2b', '<div class="rss-widget"><p><strong>RSS Error</strong>: WP HTTP Error: name lookup timed out</p></div><div class="rss-widget"><p><strong>RSS Error</strong>: WP HTTP Error: name lookup timed out</p></div>', 'no'),
(1545, 'wpcf7', 'a:1:{s:7:"version";s:3:"4.4";}', 'yes'),
(1553, '_transient_is_multi_author', '0', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `ofs2616_postmeta`
--

CREATE TABLE IF NOT EXISTS `ofs2616_postmeta` (
`meta_id` bigint(20) unsigned NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=2438 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ofs2616_postmeta`
--

INSERT INTO `ofs2616_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 8, '_edit_last', '1'),
(3, 8, '_edit_lock', '1457277592:1'),
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
(24, 8, '_price', '1000'),
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
(933, 4, '_edit_lock', '1457757182:1'),
(934, 5, '_edit_lock', '1456293121:1'),
(938, 109, '_edit_last', '1'),
(939, 109, '_edit_lock', '1458053046:1'),
(942, 109, 'eightstore_lite_sidebar_layout', 'sidebar-no'),
(946, 111, '_edit_last', '1'),
(947, 111, '_edit_lock', '1457773982:1'),
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
(961, 115, '_wp_attached_file', '2016/02/Unknown-6.jpg'),
(962, 115, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:520;s:6:"height";i:520;s:4:"file";s:21:"2016/02/Unknown-6.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"Unknown-6-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"Unknown-6-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:21:"Unknown-6-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:21:"Unknown-6-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-small";a:4:{s:4:"file";s:21:"Unknown-6-520x260.jpg";s:5:"width";i:520;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:21:"eightstore-blog-image";a:4:{s:4:"file";s:21:"Unknown-6-290x260.jpg";s:5:"width";i:290;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:28:"eightstore-testimonial-image";a:4:{s:4:"file";s:19:"Unknown-6-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(963, 116, '_wp_attached_file', '2016/02/Unknown-7.jpg'),
(964, 116, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:520;s:6:"height";i:520;s:4:"file";s:21:"2016/02/Unknown-7.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"Unknown-7-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"Unknown-7-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:21:"Unknown-7-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:21:"Unknown-7-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-small";a:4:{s:4:"file";s:21:"Unknown-7-520x260.jpg";s:5:"width";i:520;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:21:"eightstore-blog-image";a:4:{s:4:"file";s:21:"Unknown-7-290x260.jpg";s:5:"width";i:290;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:28:"eightstore-testimonial-image";a:4:{s:4:"file";s:19:"Unknown-7-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(970, 120, '_edit_last', '1'),
(971, 120, '_edit_lock', '1457770615:1'),
(972, 120, '_thumbnail_id', '115'),
(974, 120, 'eightstore_lite_sidebar_layout', 'sidebar-no'),
(975, 122, '_edit_last', '1'),
(976, 122, '_edit_lock', '1457770936:1'),
(977, 122, '_thumbnail_id', '116'),
(979, 122, 'eightstore_lite_sidebar_layout', 'sidebar-no'),
(980, 124, '_edit_last', '1'),
(981, 124, '_edit_lock', '1457770707:1'),
(982, 125, '_wp_attached_file', '2016/02/Unknown-52.jpg'),
(983, 125, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:520;s:6:"height";i:238;s:4:"file";s:22:"2016/02/Unknown-52.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"Unknown-52-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:22:"Unknown-52-300x137.jpg";s:5:"width";i:300;s:6:"height";i:137;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:22:"Unknown-52-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:22:"Unknown-52-300x238.jpg";s:5:"width";i:300;s:6:"height";i:238;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-small";a:4:{s:4:"file";s:22:"Unknown-52-520x238.jpg";s:5:"width";i:520;s:6:"height";i:238;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-large";a:4:{s:4:"file";s:22:"Unknown-52-520x238.jpg";s:5:"width";i:520;s:6:"height";i:238;s:9:"mime-type";s:10:"image/jpeg";}s:21:"eightstore-blog-image";a:4:{s:4:"file";s:22:"Unknown-52-290x238.jpg";s:5:"width";i:290;s:6:"height";i:238;s:9:"mime-type";s:10:"image/jpeg";}s:28:"eightstore-testimonial-image";a:4:{s:4:"file";s:20:"Unknown-52-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(984, 126, '_wp_attached_file', '2016/02/Unknown-62.jpg'),
(985, 126, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:378;s:6:"height";i:174;s:4:"file";s:22:"2016/02/Unknown-62.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"Unknown-62-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:22:"Unknown-62-300x138.jpg";s:5:"width";i:300;s:6:"height";i:138;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:22:"Unknown-62-180x174.jpg";s:5:"width";i:180;s:6:"height";i:174;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:22:"Unknown-62-300x174.jpg";s:5:"width";i:300;s:6:"height";i:174;s:9:"mime-type";s:10:"image/jpeg";}s:21:"eightstore-blog-image";a:4:{s:4:"file";s:22:"Unknown-62-290x174.jpg";s:5:"width";i:290;s:6:"height";i:174;s:9:"mime-type";s:10:"image/jpeg";}s:28:"eightstore-testimonial-image";a:4:{s:4:"file";s:20:"Unknown-62-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(986, 124, '_thumbnail_id', '125'),
(988, 124, 'eightstore_lite_sidebar_layout', 'sidebar-no'),
(989, 128, '_edit_last', '1'),
(990, 128, '_edit_lock', '1457770756:1'),
(993, 128, 'eightstore_lite_sidebar_layout', 'sidebar-no'),
(994, 130, '_edit_last', '1'),
(995, 130, '_edit_lock', '1458055987:1'),
(1000, 130, 'eightstore_lite_sidebar_layout', 'sidebar-no'),
(1002, 133, '_edit_last', '1'),
(1003, 133, '_edit_lock', '1456708072:1'),
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
(1023, 139, '_wp_attached_file', '2016/02/denin-jens.jpg'),
(1024, 139, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:899;s:6:"height";i:204;s:4:"file";s:22:"2016/02/denin-jens.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"denin-jens-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"denin-jens-300x68.jpg";s:5:"width";i:300;s:6:"height";i:68;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:22:"denin-jens-768x174.jpg";s:5:"width";i:768;s:6:"height";i:174;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:22:"denin-jens-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:22:"denin-jens-300x204.jpg";s:5:"width";i:300;s:6:"height";i:204;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:22:"denin-jens-600x204.jpg";s:5:"width";i:600;s:6:"height";i:204;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-small";a:4:{s:4:"file";s:22:"denin-jens-520x204.jpg";s:5:"width";i:520;s:6:"height";i:204;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-large";a:4:{s:4:"file";s:22:"denin-jens-520x204.jpg";s:5:"width";i:520;s:6:"height";i:204;s:9:"mime-type";s:10:"image/jpeg";}s:21:"eightstore-blog-image";a:4:{s:4:"file";s:22:"denin-jens-290x204.jpg";s:5:"width";i:290;s:6:"height";i:204;s:9:"mime-type";s:10:"image/jpeg";}s:28:"eightstore-testimonial-image";a:4:{s:4:"file";s:20:"denin-jens-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1025, 140, '_edit_last', '1'),
(1026, 140, '_edit_lock', '1457770294:1'),
(1027, 140, '_thumbnail_id', '115'),
(1029, 140, 'eightstore_lite_sidebar_layout', 'sidebar-right'),
(1032, 40, '_wc_rating_count', 'a:3:{i:3;s:1:"1";i:4;s:1:"1";i:5;s:1:"1";}'),
(1033, 40, '_wc_average_rating', '4.00'),
(1041, 146, '_wp_attached_file', '2016/02/ofslogo.png'),
(1042, 146, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:250;s:6:"height";i:250;s:4:"file";s:19:"2016/02/ofslogo.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"ofslogo-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:19:"ofslogo-180x180.png";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:9:"image/png";}s:28:"eightstore-testimonial-image";a:4:{s:4:"file";s:17:"ofslogo-70x70.png";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1043, 146, '_wp_attachment_custom_header_last_used_eightstore-lite', '1454814061'),
(1044, 146, '_wp_attachment_is_custom_header', 'eightstore-lite-child'),
(1045, 146, '_wp_attachment_custom_header_last_used_eightstore-lite-child', '1454821553'),
(1050, 2, '_edit_lock', '1457771661:1'),
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
(1112, 158, '_wp_trash_meta_time', '1456293738');
INSERT INTO `ofs2616_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
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
(1187, 161, '_menu_item_type', 'taxonomy'),
(1188, 161, '_menu_item_menu_item_parent', '0'),
(1189, 161, '_menu_item_object_id', '28'),
(1190, 161, '_menu_item_object', 'category'),
(1191, 161, '_menu_item_target', ''),
(1192, 161, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1193, 161, '_menu_item_xfn', ''),
(1194, 161, '_menu_item_url', ''),
(1209, 163, '_wp_attached_file', '2016/02/man-img.jpg'),
(1210, 163, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:390;s:6:"height";i:382;s:4:"file";s:19:"2016/02/man-img.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"man-img-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:19:"man-img-300x294.jpg";s:5:"width";i:300;s:6:"height";i:294;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:19:"man-img-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:19:"man-img-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-small";a:4:{s:4:"file";s:19:"man-img-390x260.jpg";s:5:"width";i:390;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:21:"eightstore-blog-image";a:4:{s:4:"file";s:19:"man-img-290x260.jpg";s:5:"width";i:290;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:28:"eightstore-testimonial-image";a:4:{s:4:"file";s:17:"man-img-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1211, 164, '_wp_attached_file', '2016/02/women-img.jpg'),
(1212, 164, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:578;s:6:"height";i:565;s:4:"file";s:21:"2016/02/women-img.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"women-img-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"women-img-300x293.jpg";s:5:"width";i:300;s:6:"height";i:293;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:21:"women-img-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:21:"women-img-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-small";a:4:{s:4:"file";s:21:"women-img-520x260.jpg";s:5:"width";i:520;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-large";a:4:{s:4:"file";s:21:"women-img-520x520.jpg";s:5:"width";i:520;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";}s:21:"eightstore-blog-image";a:4:{s:4:"file";s:21:"women-img-290x260.jpg";s:5:"width";i:290;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:28:"eightstore-testimonial-image";a:4:{s:4:"file";s:19:"women-img-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1216, 166, '_edit_lock', '1457770355:1'),
(1217, 166, '_edit_last', '1'),
(1218, 166, 'field_56ce9a87d1024', 'a:14:{s:3:"key";s:19:"field_56ce9a87d1024";s:5:"label";s:12:"Redirect Url";s:4:"name";s:12:"redirect_url";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
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
(1329, 8, '_min_variation_price', '1000'),
(1330, 8, '_max_variation_price', '1500'),
(1331, 8, '_min_price_variation_id', '182'),
(1332, 8, '_max_price_variation_id', '181'),
(1333, 8, '_min_variation_regular_price', '1000'),
(1334, 8, '_max_variation_regular_price', '1500'),
(1335, 8, '_min_regular_price_variation_id', '182'),
(1336, 8, '_max_regular_price_variation_id', '181'),
(1337, 8, '_min_variation_sale_price', NULL),
(1338, 8, '_max_variation_sale_price', NULL),
(1339, 8, '_min_sale_price_variation_id', NULL),
(1340, 8, '_max_sale_price_variation_id', NULL),
(1341, 79, '_wc_rating_count', 'a:0:{}'),
(1342, 79, '_wc_average_rating', '0'),
(1343, 79, '_wc_review_count', '0'),
(1344, 93, '_wc_rating_count', 'a:0:{}'),
(1345, 93, '_wc_average_rating', '0'),
(1347, 102, '_wc_review_count', '1'),
(1348, 60, '_wc_rating_count', 'a:2:{i:3;s:1:"1";i:5;s:1:"1";}'),
(1349, 60, '_wc_average_rating', '4.00'),
(1350, 104, '_wc_rating_count', 'a:2:{i:4;s:1:"3";i:5;s:1:"1";}'),
(1351, 104, '_wc_review_count', '4'),
(1352, 104, '_wc_average_rating', '4.25'),
(1353, 184, '_edit_lock', '1457850021:1'),
(1354, 184, '_edit_last', '1'),
(1355, 185, '_wp_attached_file', '2016/02/aldo.jpg'),
(1356, 185, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:960;s:6:"height";i:818;s:4:"file";s:16:"2016/02/aldo.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"aldo-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:16:"aldo-300x256.jpg";s:5:"width";i:300;s:6:"height";i:256;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:16:"aldo-768x654.jpg";s:5:"width";i:768;s:6:"height";i:654;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:16:"aldo-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:16:"aldo-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:16:"aldo-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-small";a:4:{s:4:"file";s:16:"aldo-520x260.jpg";s:5:"width";i:520;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-large";a:4:{s:4:"file";s:16:"aldo-520x520.jpg";s:5:"width";i:520;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";}s:21:"eightstore-blog-image";a:4:{s:4:"file";s:16:"aldo-290x260.jpg";s:5:"width";i:290;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:28:"eightstore-testimonial-image";a:4:{s:4:"file";s:14:"aldo-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:17:"Lawrence_Quitlong";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:10:"Law7162001";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1357, 184, '_thumbnail_id', '185'),
(1358, 184, '_visibility', 'visible'),
(1359, 184, '_stock_status', 'instock'),
(1360, 184, 'total_sales', '1'),
(1361, 184, '_downloadable', 'no'),
(1362, 184, '_virtual', 'no'),
(1363, 184, '_purchase_note', ''),
(1364, 184, '_featured', 'no'),
(1365, 184, '_weight', '.5'),
(1366, 184, '_length', '12'),
(1367, 184, '_width', '5'),
(1368, 184, '_height', '8'),
(1369, 184, '_sku', 'AL1'),
(1370, 184, '_product_attributes', 'a:1:{s:9:"pa_brands";a:6:{s:4:"name";s:9:"pa_brands";s:5:"value";s:0:"";s:8:"position";s:1:"0";s:10:"is_visible";i:1;s:12:"is_variation";i:0;s:11:"is_taxonomy";i:1;}}'),
(1371, 184, '_regular_price', '2000'),
(1372, 184, '_sale_price', ''),
(1373, 184, '_sale_price_dates_from', ''),
(1374, 184, '_sale_price_dates_to', ''),
(1375, 184, '_price', '2000'),
(1376, 184, '_sold_individually', ''),
(1377, 184, '_manage_stock', 'no'),
(1378, 184, '_backorders', 'no'),
(1379, 184, '_stock', ''),
(1380, 184, '_upsell_ids', 'a:0:{}'),
(1381, 184, '_crosssell_ids', 'a:0:{}'),
(1382, 184, '_product_version', '2.5.2'),
(1383, 184, '_product_image_gallery', ''),
(1384, 184, '_wc_rating_count', 'a:0:{}'),
(1385, 184, '_wc_average_rating', '0'),
(1386, 184, '_wc_review_count', '0'),
(1387, 37, '_wc_rating_count', 'a:1:{i:5;s:1:"2";}'),
(1388, 37, '_wc_average_rating', '5.00'),
(1425, 190, '_order_key', 'wc_order_56d3797f089db'),
(1426, 190, '_order_currency', 'PHP'),
(1427, 190, '_prices_include_tax', 'no'),
(1428, 190, '_customer_ip_address', '127.0.0.1'),
(1429, 190, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(1430, 190, '_customer_user', '1'),
(1431, 190, '_created_via', 'checkout'),
(1432, 190, '_order_version', '2.5.2'),
(1433, 190, '_order_shipping', '0'),
(1434, 190, '_billing_first_name', 'Dianne Katherine'),
(1435, 190, '_billing_last_name', 'Delos Reyes'),
(1436, 190, '_billing_company', ''),
(1437, 190, '_billing_email', 'diannekatherinedelosreyes@gmail.com'),
(1438, 190, '_billing_phone', '9063897290'),
(1439, 190, '_billing_country', 'PH'),
(1440, 190, '_billing_address_1', '159 Lambakin Marilao Bulacan'),
(1441, 190, '_billing_address_2', ''),
(1442, 190, '_billing_city', 'Marilao'),
(1443, 190, '_billing_state', '00'),
(1444, 190, '_billing_postcode', '3019'),
(1445, 190, '_shipping_first_name', 'Dianne Katherine'),
(1446, 190, '_shipping_last_name', 'Delos Reyes'),
(1447, 190, '_shipping_company', ''),
(1448, 190, '_shipping_country', 'PH'),
(1449, 190, '_shipping_address_1', '159 Lambakin Marilao Bulacan'),
(1450, 190, '_shipping_address_2', ''),
(1451, 190, '_shipping_city', 'Marilao'),
(1452, 190, '_shipping_state', '00'),
(1453, 190, '_shipping_postcode', '3019'),
(1454, 190, '_payment_method', 'bacs'),
(1455, 190, '_payment_method_title', 'Direct Bank Transfer'),
(1456, 190, '_cart_discount', '0'),
(1457, 190, '_cart_discount_tax', '0'),
(1458, 190, '_order_tax', '0'),
(1459, 190, '_order_shipping_tax', '0'),
(1460, 190, '_order_total', '2000.00'),
(1461, 190, '_recorded_sales', 'yes'),
(1462, 190, '_order_stock_reduced', '1'),
(1481, 193, '_edit_lock', '1457854814:1'),
(1486, 130, 'redirect_url', ''),
(1487, 130, '_redirect_url', 'field_56ce9a87d1024'),
(1488, 193, '_edit_last', '1'),
(1489, 193, '_product_attributes', 'a:3:{s:8:"pa_color";a:6:{s:4:"name";s:8:"pa_color";s:5:"value";s:0:"";s:8:"position";s:1:"0";s:10:"is_visible";i:1;s:12:"is_variation";i:1;s:11:"is_taxonomy";i:1;}s:9:"pa_brands";a:6:{s:4:"name";s:9:"pa_brands";s:5:"value";s:0:"";s:8:"position";s:1:"1";s:10:"is_visible";i:1;s:12:"is_variation";i:0;s:11:"is_taxonomy";i:1;}s:14:"pa_subcategory";a:6:{s:4:"name";s:14:"pa_subcategory";s:5:"value";s:0:"";s:8:"position";s:1:"2";s:10:"is_visible";i:1;s:12:"is_variation";i:0;s:11:"is_taxonomy";i:1;}}'),
(1490, 196, 'attribute_pa_color', 'red'),
(1491, 196, '_stock_status', 'instock'),
(1492, 197, 'attribute_pa_color', 'brown'),
(1493, 197, '_stock_status', 'instock'),
(1494, 198, 'attribute_pa_color', 'black'),
(1495, 198, '_stock_status', 'instock'),
(1496, 199, '_wp_attached_file', '2016/02/aldo2-1.jpg'),
(1497, 199, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:454;s:6:"height";i:500;s:4:"file";s:19:"2016/02/aldo2-1.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"aldo2-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:19:"aldo2-1-272x300.jpg";s:5:"width";i:272;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:19:"aldo2-1-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:19:"aldo2-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-small";a:4:{s:4:"file";s:19:"aldo2-1-454x260.jpg";s:5:"width";i:454;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:21:"eightstore-blog-image";a:4:{s:4:"file";s:19:"aldo2-1-290x260.jpg";s:5:"width";i:290;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:28:"eightstore-testimonial-image";a:4:{s:4:"file";s:17:"aldo2-1-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1498, 200, '_wp_attached_file', '2016/02/aldo2-2.jpg'),
(1499, 200, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:470;s:6:"height";i:500;s:4:"file";s:19:"2016/02/aldo2-2.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"aldo2-2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:19:"aldo2-2-282x300.jpg";s:5:"width";i:282;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:19:"aldo2-2-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:19:"aldo2-2-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-small";a:4:{s:4:"file";s:19:"aldo2-2-470x260.jpg";s:5:"width";i:470;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:21:"eightstore-blog-image";a:4:{s:4:"file";s:19:"aldo2-2-290x260.jpg";s:5:"width";i:290;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:28:"eightstore-testimonial-image";a:4:{s:4:"file";s:17:"aldo2-2-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1500, 201, '_wp_attached_file', '2016/02/aldo2-3.jpg'),
(1501, 201, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:238;s:6:"height";i:500;s:4:"file";s:19:"2016/02/aldo2-3.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"aldo2-3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:19:"aldo2-3-143x300.jpg";s:5:"width";i:143;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:19:"aldo2-3-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:19:"aldo2-3-238x300.jpg";s:5:"width";i:238;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-small";a:4:{s:4:"file";s:19:"aldo2-3-238x260.jpg";s:5:"width";i:238;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:21:"eightstore-blog-image";a:4:{s:4:"file";s:19:"aldo2-3-238x260.jpg";s:5:"width";i:238;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:28:"eightstore-testimonial-image";a:4:{s:4:"file";s:17:"aldo2-3-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1502, 202, '_wp_attached_file', '2016/02/aldo2-4.jpg'),
(1503, 202, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:480;s:6:"height";i:360;s:4:"file";s:19:"2016/02/aldo2-4.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"aldo2-4-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:19:"aldo2-4-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:19:"aldo2-4-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:19:"aldo2-4-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-small";a:4:{s:4:"file";s:19:"aldo2-4-480x260.jpg";s:5:"width";i:480;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:21:"eightstore-blog-image";a:4:{s:4:"file";s:19:"aldo2-4-290x260.jpg";s:5:"width";i:290;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:28:"eightstore-testimonial-image";a:4:{s:4:"file";s:17:"aldo2-4-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1504, 203, '_wp_attached_file', '2016/02/aldo2-5.jpg'),
(1505, 203, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:488;s:6:"height";i:500;s:4:"file";s:19:"2016/02/aldo2-5.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"aldo2-5-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:19:"aldo2-5-293x300.jpg";s:5:"width";i:293;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:19:"aldo2-5-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:19:"aldo2-5-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-small";a:4:{s:4:"file";s:19:"aldo2-5-488x260.jpg";s:5:"width";i:488;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:21:"eightstore-blog-image";a:4:{s:4:"file";s:19:"aldo2-5-290x260.jpg";s:5:"width";i:290;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:28:"eightstore-testimonial-image";a:4:{s:4:"file";s:17:"aldo2-5-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1506, 198, '_sku', 'AL2B'),
(1507, 198, '_thumbnail_id', '199'),
(1508, 198, '_virtual', 'no'),
(1509, 198, '_downloadable', 'no'),
(1510, 198, '_weight', ''),
(1511, 198, '_length', ''),
(1512, 198, '_width', ''),
(1513, 198, '_height', ''),
(1514, 198, '_manage_stock', 'no'),
(1515, 198, '_regular_price', '2000'),
(1516, 198, '_sale_price', ''),
(1517, 198, '_sale_price_dates_from', ''),
(1518, 198, '_sale_price_dates_to', ''),
(1519, 198, '_price', '2000'),
(1520, 198, '_download_limit', ''),
(1521, 198, '_download_expiry', ''),
(1522, 198, '_downloadable_files', ''),
(1523, 198, '_variation_description', ''),
(1524, 197, '_sku', 'AL2BR'),
(1525, 197, '_thumbnail_id', '200'),
(1526, 197, '_virtual', 'no'),
(1527, 197, '_downloadable', 'no'),
(1528, 197, '_weight', ''),
(1529, 197, '_length', ''),
(1530, 197, '_width', ''),
(1531, 197, '_height', ''),
(1532, 197, '_manage_stock', 'no'),
(1533, 197, '_regular_price', '2000'),
(1534, 197, '_sale_price', ''),
(1535, 197, '_sale_price_dates_from', ''),
(1536, 197, '_sale_price_dates_to', ''),
(1537, 197, '_price', '2000'),
(1538, 197, '_download_limit', ''),
(1539, 197, '_download_expiry', ''),
(1540, 197, '_downloadable_files', ''),
(1541, 197, '_variation_description', ''),
(1542, 196, '_sku', 'AL2R'),
(1543, 196, '_thumbnail_id', '203'),
(1544, 196, '_virtual', 'no'),
(1545, 196, '_downloadable', 'no'),
(1546, 196, '_weight', ''),
(1547, 196, '_length', ''),
(1548, 196, '_width', ''),
(1549, 196, '_height', ''),
(1550, 196, '_manage_stock', 'no'),
(1551, 196, '_regular_price', '2500'),
(1552, 196, '_sale_price', ''),
(1553, 196, '_sale_price_dates_from', ''),
(1554, 196, '_sale_price_dates_to', ''),
(1555, 196, '_price', '2500'),
(1556, 196, '_download_limit', ''),
(1557, 196, '_download_expiry', ''),
(1558, 196, '_downloadable_files', ''),
(1559, 196, '_variation_description', ''),
(1560, 193, '_downloadable', 'no'),
(1561, 193, '_virtual', 'no'),
(1562, 193, '_min_variation_price', '2000'),
(1563, 193, '_max_variation_price', '2500'),
(1564, 193, '_min_price_variation_id', '197'),
(1565, 193, '_max_price_variation_id', '196'),
(1566, 193, '_min_variation_regular_price', '2000'),
(1567, 193, '_max_variation_regular_price', '2500'),
(1568, 193, '_min_regular_price_variation_id', '197'),
(1569, 193, '_max_regular_price_variation_id', '196'),
(1570, 193, '_min_variation_sale_price', NULL),
(1571, 193, '_max_variation_sale_price', NULL),
(1572, 193, '_min_sale_price_variation_id', NULL),
(1573, 193, '_max_sale_price_variation_id', NULL),
(1574, 193, '_price', '2000'),
(1575, 193, '_default_attributes', 'a:0:{}'),
(1576, 193, '_thumbnail_id', '200'),
(1577, 193, '_visibility', 'visible'),
(1578, 193, 'total_sales', '4'),
(1579, 193, '_purchase_note', ''),
(1580, 193, '_featured', 'no'),
(1581, 193, '_weight', '1'),
(1582, 193, '_length', '100'),
(1583, 193, '_width', '50'),
(1584, 193, '_height', '50'),
(1585, 193, '_sku', 'AL2'),
(1586, 193, '_regular_price', ''),
(1587, 193, '_sale_price', ''),
(1588, 193, '_sale_price_dates_from', ''),
(1589, 193, '_sale_price_dates_to', ''),
(1590, 193, '_sold_individually', ''),
(1591, 193, '_manage_stock', 'no'),
(1592, 193, '_backorders', 'no'),
(1593, 193, '_stock', ''),
(1594, 193, '_upsell_ids', 'a:0:{}'),
(1595, 193, '_crosssell_ids', 'a:0:{}'),
(1596, 193, '_stock_status', 'instock'),
(1597, 193, '_product_version', '2.5.2'),
(1598, 193, '_product_image_gallery', '201,202'),
(1599, 193, '_wc_rating_count', 'a:0:{}'),
(1600, 193, '_wc_average_rating', '0'),
(1601, 193, '_wc_review_count', '0'),
(1602, 205, '_edit_lock', '1456707661:1'),
(1603, 205, '_edit_last', '1'),
(1604, 206, '_wp_attached_file', '2016/02/Cheetah.jpg'),
(1605, 206, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:960;s:6:"height";i:648;s:4:"file";s:19:"2016/02/Cheetah.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"Cheetah-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:19:"Cheetah-300x203.jpg";s:5:"width";i:300;s:6:"height";i:203;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:19:"Cheetah-768x518.jpg";s:5:"width";i:768;s:6:"height";i:518;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:19:"Cheetah-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:19:"Cheetah-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:19:"Cheetah-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-small";a:4:{s:4:"file";s:19:"Cheetah-520x260.jpg";s:5:"width";i:520;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-large";a:4:{s:4:"file";s:19:"Cheetah-520x520.jpg";s:5:"width";i:520;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";}s:21:"eightstore-blog-image";a:4:{s:4:"file";s:19:"Cheetah-290x260.jpg";s:5:"width";i:290;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:28:"eightstore-testimonial-image";a:4:{s:4:"file";s:17:"Cheetah-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1606, 205, '_thumbnail_id', '206'),
(1607, 205, '_product_attributes', 'a:1:{s:4:"size";a:6:{s:4:"name";s:4:"Size";s:5:"value";s:17:"36 | 37 | 38 | 39";s:8:"position";s:1:"0";s:10:"is_visible";i:1;s:12:"is_variation";i:0;s:11:"is_taxonomy";i:0;}}'),
(1608, 205, '_visibility', 'visible'),
(1609, 205, 'total_sales', '0'),
(1610, 205, '_downloadable', 'no'),
(1611, 205, '_virtual', 'no'),
(1612, 205, '_purchase_note', ''),
(1613, 205, '_featured', 'no'),
(1614, 205, '_weight', ''),
(1615, 205, '_length', ''),
(1616, 205, '_width', ''),
(1617, 205, '_height', ''),
(1618, 205, '_sku', 'SH1'),
(1619, 205, '_regular_price', '1000'),
(1620, 205, '_sale_price', ''),
(1621, 205, '_sale_price_dates_from', ''),
(1622, 205, '_sale_price_dates_to', ''),
(1623, 205, '_sold_individually', ''),
(1624, 205, '_manage_stock', 'no'),
(1625, 205, '_backorders', 'no'),
(1626, 205, '_stock', ''),
(1627, 205, '_upsell_ids', 'a:0:{}'),
(1628, 205, '_crosssell_ids', 'a:0:{}'),
(1629, 205, '_price', '1000'),
(1630, 205, '_stock_status', 'outofstock'),
(1631, 205, '_product_version', '2.5.2'),
(1632, 205, '_product_image_gallery', ''),
(1633, 205, '_wc_rating_count', 'a:0:{}'),
(1634, 205, '_wc_average_rating', '0'),
(1637, 208, '_wp_attached_file', '2016/02/guess-banner.jpg'),
(1638, 208, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1919;s:6:"height";i:814;s:4:"file";s:24:"2016/02/guess-banner.jpg";s:5:"sizes";a:11:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"guess-banner-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:24:"guess-banner-300x127.jpg";s:5:"width";i:300;s:6:"height";i:127;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:24:"guess-banner-768x326.jpg";s:5:"width";i:768;s:6:"height";i:326;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:25:"guess-banner-1024x434.jpg";s:5:"width";i:1024;s:6:"height";i:434;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:24:"guess-banner-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:24:"guess-banner-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:24:"guess-banner-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-small";a:4:{s:4:"file";s:24:"guess-banner-520x260.jpg";s:5:"width";i:520;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-large";a:4:{s:4:"file";s:24:"guess-banner-520x520.jpg";s:5:"width";i:520;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";}s:21:"eightstore-blog-image";a:4:{s:4:"file";s:24:"guess-banner-290x260.jpg";s:5:"width";i:290;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:28:"eightstore-testimonial-image";a:4:{s:4:"file";s:22:"guess-banner-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1643, 210, 'redirect_url', ''),
(1644, 210, '_redirect_url', 'field_56ce9a87d1024'),
(1645, 109, 'redirect_url', ''),
(1646, 109, '_redirect_url', 'field_56ce9a87d1024'),
(1647, 156, '_wp_trash_meta_status', 'publish'),
(1648, 156, '_wp_trash_meta_time', '1456703412'),
(1653, 212, '_wp_attached_file', '2016/02/guess2-banner-2-1.jpg'),
(1654, 212, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1919;s:6:"height";i:814;s:4:"file";s:29:"2016/02/guess2-banner-2-1.jpg";s:5:"sizes";a:11:{s:9:"thumbnail";a:4:{s:4:"file";s:29:"guess2-banner-2-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:29:"guess2-banner-2-1-300x127.jpg";s:5:"width";i:300;s:6:"height";i:127;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:29:"guess2-banner-2-1-768x326.jpg";s:5:"width";i:768;s:6:"height";i:326;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:30:"guess2-banner-2-1-1024x434.jpg";s:5:"width";i:1024;s:6:"height";i:434;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:29:"guess2-banner-2-1-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:29:"guess2-banner-2-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:29:"guess2-banner-2-1-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-small";a:4:{s:4:"file";s:29:"guess2-banner-2-1-520x260.jpg";s:5:"width";i:520;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-large";a:4:{s:4:"file";s:29:"guess2-banner-2-1-520x520.jpg";s:5:"width";i:520;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";}s:21:"eightstore-blog-image";a:4:{s:4:"file";s:29:"guess2-banner-2-1-290x260.jpg";s:5:"width";i:290;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:28:"eightstore-testimonial-image";a:4:{s:4:"file";s:27:"guess2-banner-2-1-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1658, 214, 'redirect_url', ''),
(1659, 214, '_redirect_url', 'field_56ce9a87d1024'),
(1660, 215, '_wp_attached_file', '2016/02/bags.jpg'),
(1661, 215, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:378;s:6:"height";i:174;s:4:"file";s:16:"2016/02/bags.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"bags-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:16:"bags-300x138.jpg";s:5:"width";i:300;s:6:"height";i:138;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:16:"bags-180x174.jpg";s:5:"width";i:180;s:6:"height";i:174;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:16:"bags-300x174.jpg";s:5:"width";i:300;s:6:"height";i:174;s:9:"mime-type";s:10:"image/jpeg";}s:21:"eightstore-blog-image";a:4:{s:4:"file";s:16:"bags-290x174.jpg";s:5:"width";i:290;s:6:"height";i:174;s:9:"mime-type";s:10:"image/jpeg";}s:28:"eightstore-testimonial-image";a:4:{s:4:"file";s:14:"bags-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1662, 128, '_thumbnail_id', '215'),
(1664, 216, 'redirect_url', 'http://localhost/onefabshop/tag/bags/'),
(1665, 216, '_redirect_url', 'field_56ce9a87d1024'),
(1667, 217, 'redirect_url', 'http://localhost/onefabshop/tag/shoes/'),
(1668, 217, '_redirect_url', 'field_56ce9a87d1024'),
(1670, 218, 'redirect_url', ''),
(1671, 218, '_redirect_url', 'field_56ce9a87d1024'),
(1673, 140, 'redirect_url', ''),
(1674, 140, '_redirect_url', 'field_56ce9a87d1024'),
(1675, 140, 'custom_permalink', 'sample-blog-2'),
(1677, 219, 'redirect_url', ''),
(1678, 219, '_redirect_url', 'field_56ce9a87d1024'),
(1679, 133, 'redirect_url', ''),
(1680, 133, '_redirect_url', 'field_56ce9a87d1024'),
(1681, 220, '_edit_lock', '1457770855:1'),
(1682, 220, '_edit_last', '1'),
(1683, 220, '_wp_page_template', 'default'),
(1684, 220, 'eightstore_lite_sidebar_layout', 'sidebar-right'),
(1685, 222, '_edit_last', '1'),
(1686, 222, '_wp_page_template', 'default'),
(1687, 222, 'eightstore_lite_sidebar_layout', 'sidebar-right'),
(1688, 222, '_edit_lock', '1457770874:1'),
(1689, 224, '_menu_item_type', 'post_type'),
(1690, 224, '_menu_item_menu_item_parent', '0'),
(1691, 224, '_menu_item_object_id', '222'),
(1692, 224, '_menu_item_object', 'page'),
(1693, 224, '_menu_item_target', ''),
(1694, 224, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1695, 224, '_menu_item_xfn', ''),
(1696, 224, '_menu_item_url', ''),
(1698, 225, '_menu_item_type', 'post_type'),
(1699, 225, '_menu_item_menu_item_parent', '0'),
(1700, 225, '_menu_item_object_id', '220'),
(1701, 225, '_menu_item_object', 'page'),
(1702, 225, '_menu_item_target', ''),
(1703, 225, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1704, 225, '_menu_item_xfn', ''),
(1705, 225, '_menu_item_url', ''),
(1727, 229, '_menu_item_type', 'post_type'),
(1728, 229, '_menu_item_menu_item_parent', '0'),
(1729, 229, '_menu_item_object_id', '4'),
(1730, 229, '_menu_item_object', 'page'),
(1731, 229, '_menu_item_target', ''),
(1732, 229, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1733, 229, '_menu_item_xfn', ''),
(1734, 229, '_menu_item_url', ''),
(1736, 230, '_menu_item_type', 'post_type'),
(1737, 230, '_menu_item_menu_item_parent', '0'),
(1738, 230, '_menu_item_object_id', '4'),
(1739, 230, '_menu_item_object', 'page'),
(1740, 230, '_menu_item_target', ''),
(1741, 230, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1742, 230, '_menu_item_xfn', ''),
(1743, 230, '_menu_item_url', ''),
(1747, 232, '_order_key', 'wc_order_56d3c79d72cf9'),
(1748, 232, '_order_currency', 'PHP'),
(1749, 232, '_prices_include_tax', 'no'),
(1750, 232, '_customer_ip_address', '127.0.0.1'),
(1751, 232, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(1752, 232, '_customer_user', '1'),
(1753, 232, '_created_via', 'checkout'),
(1754, 232, '_order_version', '2.5.2'),
(1755, 232, '_order_shipping', '0'),
(1756, 232, '_billing_first_name', 'Dianne Katherine'),
(1757, 232, '_billing_last_name', 'Delos Reyes'),
(1758, 232, '_billing_company', ''),
(1759, 232, '_billing_email', 'diannekatherinedelosreyes@gmail.com'),
(1760, 232, '_billing_phone', '9063897290'),
(1761, 232, '_billing_country', 'PH'),
(1762, 232, '_billing_address_1', '159 Lambakin Marilao Bulacan'),
(1763, 232, '_billing_address_2', ''),
(1764, 232, '_billing_city', 'Marilao'),
(1765, 232, '_billing_state', '00'),
(1766, 232, '_billing_postcode', '3019'),
(1767, 232, '_shipping_first_name', 'Dianne Katherine'),
(1768, 232, '_shipping_last_name', 'Delos Reyes'),
(1769, 232, '_shipping_company', ''),
(1770, 232, '_shipping_country', 'PH'),
(1771, 232, '_shipping_address_1', '159 Lambakin Marilao Bulacan'),
(1772, 232, '_shipping_address_2', ''),
(1773, 232, '_shipping_city', 'Marilao'),
(1774, 232, '_shipping_state', '00'),
(1775, 232, '_shipping_postcode', '3019'),
(1776, 232, '_payment_method', 'bacs'),
(1777, 232, '_payment_method_title', 'Direct Bank Transfer'),
(1778, 232, '_cart_discount', '0'),
(1779, 232, '_cart_discount_tax', '0'),
(1780, 232, '_order_tax', '0'),
(1781, 232, '_order_shipping_tax', '0'),
(1782, 232, '_order_total', '2000.00'),
(1783, 232, '_recorded_sales', 'yes'),
(1784, 232, '_order_stock_reduced', '1'),
(1785, 232, '_edit_lock', '1457783327:1'),
(1786, 233, '_menu_item_type', 'post_type'),
(1787, 233, '_menu_item_menu_item_parent', '0'),
(1788, 233, '_menu_item_object_id', '7'),
(1789, 233, '_menu_item_object', 'page'),
(1790, 233, '_menu_item_target', ''),
(1791, 233, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1792, 233, '_menu_item_xfn', ''),
(1793, 233, '_menu_item_url', ''),
(1794, 233, '_menu_item_orphaned', '1456720345'),
(1795, 234, '_menu_item_type', 'post_type'),
(1796, 234, '_menu_item_menu_item_parent', '0'),
(1797, 234, '_menu_item_object_id', '7'),
(1798, 234, '_menu_item_object', 'page'),
(1799, 234, '_menu_item_target', ''),
(1800, 234, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1801, 234, '_menu_item_xfn', ''),
(1802, 234, '_menu_item_url', ''),
(1804, 7, '_edit_lock', '1456720603:1'),
(1805, 7, '_edit_last', '1'),
(1806, 7, '_wp_page_template', 'default'),
(1807, 7, 'eightstore_lite_sidebar_layout', 'sidebar-no'),
(1810, 232, '_edit_last', '1'),
(1811, 232, 'ywot_tracking_code', '9878'),
(1812, 232, 'ywot_carrier_name', 'LBC'),
(1813, 232, 'ywot_pick_up_date', '2016-02-29'),
(1814, 232, '_transaction_id', ''),
(1815, 232, 'ywot_picked_up', 'on'),
(1818, 238, '_edit_lock', '1457770393:1'),
(1819, 238, '_edit_last', '1'),
(1821, 239, 'redirect_url', ''),
(1822, 239, '_redirect_url', 'field_56ce9a87d1024'),
(1823, 238, 'eightstore_lite_sidebar_layout', 'sidebar-right'),
(1824, 238, 'redirect_url', 'http://localhost/onefabshop/ae'),
(1825, 238, '_redirect_url', 'field_56ce9a87d1024'),
(1827, 240, 'redirect_url', 'http://localhost/onefabshop/ae'),
(1828, 240, '_redirect_url', 'field_56ce9a87d1024'),
(1830, 241, 'redirect_url', 'http://localhost/onefabshop/ae'),
(1831, 241, '_redirect_url', 'field_56ce9a87d1024'),
(1832, 182, '_sku', ''),
(1833, 182, '_thumbnail_id', '0'),
(1834, 182, '_virtual', 'no'),
(1835, 182, '_downloadable', 'no'),
(1836, 182, '_weight', ''),
(1837, 182, '_length', ''),
(1838, 182, '_width', ''),
(1839, 182, '_height', ''),
(1840, 182, '_manage_stock', 'no'),
(1841, 182, '_regular_price', '1000'),
(1842, 182, '_sale_price', ''),
(1843, 182, '_sale_price_dates_from', ''),
(1844, 182, '_sale_price_dates_to', ''),
(1845, 182, '_price', '1000'),
(1846, 182, '_download_limit', ''),
(1847, 182, '_download_expiry', ''),
(1848, 182, '_downloadable_files', ''),
(1849, 182, '_variation_description', ''),
(1850, 181, '_sku', ''),
(1851, 181, '_thumbnail_id', '0'),
(1852, 181, '_virtual', 'no'),
(1853, 181, '_downloadable', 'no'),
(1854, 181, '_weight', ''),
(1855, 181, '_length', ''),
(1856, 181, '_width', ''),
(1857, 181, '_height', ''),
(1858, 181, '_manage_stock', 'no'),
(1859, 181, '_regular_price', '1500'),
(1860, 181, '_sale_price', ''),
(1861, 181, '_sale_price_dates_from', ''),
(1862, 181, '_sale_price_dates_to', ''),
(1863, 181, '_price', '1500'),
(1864, 181, '_download_limit', ''),
(1865, 181, '_download_expiry', ''),
(1866, 181, '_downloadable_files', ''),
(1867, 181, '_variation_description', ''),
(1868, 8, '_default_attributes', 'a:0:{}'),
(1869, 2, 'custom_permalink', 'about'),
(1870, 37, '_wc_review_count', '2'),
(1871, 56, '_wc_rating_count', 'a:3:{i:1;s:1:"1";i:4;s:1:"1";i:5;s:1:"3";}'),
(1872, 56, '_wc_average_rating', '4.00'),
(1873, 205, '_wc_review_count', '0'),
(1874, 73, '_wc_review_count', '2'),
(1875, 243, '_order_key', 'wc_order_56e04b0aafd90'),
(1876, 243, '_order_currency', 'PHP'),
(1877, 243, '_prices_include_tax', 'no'),
(1878, 243, '_customer_ip_address', '::1'),
(1879, 243, '_customer_user_agent', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_1 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Version/9.0 Mobile/13B137 Safari/601.1'),
(1880, 243, '_customer_user', '1'),
(1881, 243, '_created_via', 'checkout'),
(1882, 243, '_order_version', '2.5.2'),
(1883, 243, '_order_shipping', '0'),
(1884, 243, '_billing_first_name', 'Dianne Katherine'),
(1885, 243, '_billing_last_name', 'Delos Reyes'),
(1886, 243, '_billing_company', ''),
(1887, 243, '_billing_email', 'diannekatherinedelosreyes@gmail.com'),
(1888, 243, '_billing_phone', '9063897290'),
(1889, 243, '_billing_country', 'PH'),
(1890, 243, '_billing_address_1', '159 Lambakin Marilao Bulacan'),
(1891, 243, '_billing_address_2', ''),
(1892, 243, '_billing_city', 'Marilao'),
(1893, 243, '_billing_state', '00'),
(1894, 243, '_billing_postcode', '3019'),
(1895, 243, '_shipping_first_name', 'Dianne Katherine'),
(1896, 243, '_shipping_last_name', 'Delos Reyes'),
(1897, 243, '_shipping_company', ''),
(1898, 243, '_shipping_country', 'PH'),
(1899, 243, '_shipping_address_1', '159 Lambakin Marilao Bulacan'),
(1900, 243, '_shipping_address_2', ''),
(1901, 243, '_shipping_city', 'Marilao'),
(1902, 243, '_shipping_state', '00'),
(1903, 243, '_shipping_postcode', '3019'),
(1904, 243, '_payment_method', 'bacs'),
(1905, 243, '_payment_method_title', 'Direct Bank Transfer'),
(1906, 243, '_cart_discount', '0'),
(1907, 243, '_cart_discount_tax', '0'),
(1908, 243, '_order_tax', '0'),
(1909, 243, '_order_shipping_tax', '0'),
(1910, 243, '_order_total', '2000.00'),
(1911, 243, 'ywot_carrier_name', 'Carrier'),
(1912, 243, '_recorded_sales', 'yes'),
(1913, 243, '_order_stock_reduced', '1'),
(1915, 245, 'redirect_url', 'http://localhost/onefabshop/ae'),
(1916, 245, '_redirect_url', 'field_56ce9a87d1024'),
(1918, 246, 'redirect_url', 'http://localhost/onefabshop/ae'),
(1919, 246, '_redirect_url', 'field_56ce9a87d1024'),
(1923, 238, '_wp_old_slug', 'for-customers-in-uae'),
(1934, 248, 'redirect_url', 'http://localhost/onefabshop/ae'),
(1935, 248, '_redirect_url', 'field_56ce9a87d1024'),
(1939, 249, 'redirect_url', 'http://localhost/onefabshop/ae'),
(1940, 249, '_redirect_url', 'field_56ce9a87d1024'),
(1943, 250, '_wp_attached_file', '2016/02/ph.png'),
(1944, 250, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2000;s:6:"height";i:1000;s:4:"file";s:14:"2016/02/ph.png";s:5:"sizes";a:11:{s:9:"thumbnail";a:4:{s:4:"file";s:14:"ph-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:14:"ph-300x150.png";s:5:"width";i:300;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:14:"ph-768x384.png";s:5:"width";i:768;s:6:"height";i:384;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:15:"ph-1024x512.png";s:5:"width";i:1024;s:6:"height";i:512;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:14:"ph-180x180.png";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:14:"ph-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:14:"ph-600x600.png";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:9:"image/png";}s:22:"eightstore-promo-small";a:4:{s:4:"file";s:14:"ph-520x260.png";s:5:"width";i:520;s:6:"height";i:260;s:9:"mime-type";s:9:"image/png";}s:22:"eightstore-promo-large";a:4:{s:4:"file";s:14:"ph-520x520.png";s:5:"width";i:520;s:6:"height";i:520;s:9:"mime-type";s:9:"image/png";}s:21:"eightstore-blog-image";a:4:{s:4:"file";s:14:"ph-290x260.png";s:5:"width";i:290;s:6:"height";i:260;s:9:"mime-type";s:9:"image/png";}s:28:"eightstore-testimonial-image";a:4:{s:4:"file";s:12:"ph-70x70.png";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1945, 251, '_wp_attached_file', '2016/02/uae.png'),
(1946, 251, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:318;s:6:"height";i:159;s:4:"file";s:15:"2016/02/uae.png";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:15:"uae-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:15:"uae-300x150.png";s:5:"width";i:300;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:15:"uae-180x159.png";s:5:"width";i:180;s:6:"height";i:159;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:15:"uae-300x159.png";s:5:"width";i:300;s:6:"height";i:159;s:9:"mime-type";s:9:"image/png";}s:21:"eightstore-blog-image";a:4:{s:4:"file";s:15:"uae-290x159.png";s:5:"width";i:290;s:6:"height";i:159;s:9:"mime-type";s:9:"image/png";}s:28:"eightstore-testimonial-image";a:4:{s:4:"file";s:13:"uae-70x70.png";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1947, 238, '_thumbnail_id', '251'),
(1952, 252, '_order_key', 'wc_order_56e3ac1ce01a5'),
(1953, 252, '_order_currency', 'AED'),
(1954, 252, '_prices_include_tax', 'no'),
(1955, 252, '_customer_ip_address', '::1'),
(1956, 252, '_customer_user_agent', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(1957, 252, '_customer_user', '1'),
(1958, 252, '_created_via', 'checkout'),
(1959, 252, '_order_version', '2.5.2'),
(1960, 252, '_order_shipping', '0'),
(1961, 252, '_billing_first_name', 'Dianne Katherine'),
(1962, 252, '_billing_last_name', 'Delos Reyes'),
(1963, 252, '_billing_company', ''),
(1964, 252, '_billing_email', 'diannekatherinedelosreyes@gmail.com'),
(1965, 252, '_billing_phone', '9063897290'),
(1966, 252, '_billing_country', 'PH'),
(1967, 252, '_billing_address_1', '159 Lambakin Marilao Bulacan'),
(1968, 252, '_billing_address_2', ''),
(1969, 252, '_billing_city', 'Marilao'),
(1970, 252, '_billing_state', '00'),
(1971, 252, '_billing_postcode', '3019'),
(1972, 252, '_shipping_first_name', 'Dianne Katherine'),
(1973, 252, '_shipping_last_name', 'Delos Reyes'),
(1974, 252, '_shipping_company', ''),
(1975, 252, '_shipping_country', 'PH'),
(1976, 252, '_shipping_address_1', '159 Lambakin Marilao Bulacan'),
(1977, 252, '_shipping_address_2', ''),
(1978, 252, '_shipping_city', 'Marilao'),
(1979, 252, '_shipping_state', '00'),
(1980, 252, '_shipping_postcode', '3019'),
(1981, 252, '_payment_method', 'paypal'),
(1982, 252, '_payment_method_title', 'PayPal'),
(1983, 252, '_cart_discount', '0'),
(1984, 252, '_cart_discount_tax', '0'),
(1985, 252, '_order_tax', '0'),
(1986, 252, '_order_shipping_tax', '0'),
(1987, 252, '_order_total', '2.00'),
(1988, 252, 'ywot_carrier_name', 'Carrier'),
(1989, 252, 'ywot_carrier_name', 'Carrier'),
(1990, 252, 'ywot_carrier_name', 'Carrier'),
(1991, 252, 'ywot_carrier_name', 'Carrier'),
(1992, 252, 'ywot_carrier_name', 'Carrier'),
(1993, 252, 'ywot_carrier_name', 'Carrier'),
(1994, 252, 'ywot_carrier_name', 'Carrier'),
(1995, 252, 'ywot_carrier_name', 'Carrier'),
(1996, 252, 'ywot_carrier_name', 'Carrier'),
(1997, 252, 'ywot_carrier_name', 'Carrier'),
(2001, 166, 'rule', 'a:5:{s:5:"param";s:13:"post_category";s:8:"operator";s:2:"==";s:5:"value";s:2:"29";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(2002, 166, 'rule', 'a:5:{s:5:"param";s:13:"post_category";s:8:"operator";s:2:"==";s:5:"value";s:2:"30";s:8:"order_no";i:0;s:8:"group_no";i:1;}'),
(2003, 253, '_menu_item_type', 'taxonomy'),
(2004, 253, '_menu_item_menu_item_parent', '0'),
(2005, 253, '_menu_item_object_id', '28'),
(2006, 253, '_menu_item_object', 'category'),
(2007, 253, '_menu_item_target', ''),
(2008, 253, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(2009, 253, '_menu_item_xfn', '');
INSERT INTO `ofs2616_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(2010, 253, '_menu_item_url', ''),
(2011, 253, '_menu_item_orphaned', '1457771869'),
(2012, 254, '_menu_item_type', 'taxonomy'),
(2013, 254, '_menu_item_menu_item_parent', '0'),
(2014, 254, '_menu_item_object_id', '28'),
(2015, 254, '_menu_item_object', 'category'),
(2016, 254, '_menu_item_target', ''),
(2017, 254, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(2018, 254, '_menu_item_xfn', ''),
(2019, 254, '_menu_item_url', ''),
(2020, 243, '_edit_lock', '1457782591:1'),
(2021, 190, '_edit_lock', '1457782266:1'),
(2022, 252, '_edit_lock', '1457782271:1'),
(2023, 243, '_edit_last', '1'),
(2024, 243, 'ywot_tracking_code', ''),
(2025, 243, 'ywot_pick_up_date', ''),
(2026, 243, '_transaction_id', ''),
(2027, 255, '_edit_lock', '1457782822:1'),
(2028, 193, '_enable_deposit', 'default'),
(2029, 193, '_force_deposit', 'yes'),
(2030, 193, '_wc_deposits_enable_deposit', 'yes'),
(2031, 193, '_wc_deposits_force_deposit', 'no'),
(2032, 193, '_wc_deposits_amount_type', 'percent'),
(2033, 193, '_wc_deposits_deposit_amount', '25'),
(2034, 256, '_order_key', 'wc_order_56e485ab9379a'),
(2035, 256, '_order_currency', 'PHP'),
(2036, 256, '_prices_include_tax', 'no'),
(2037, 256, '_customer_ip_address', '::1'),
(2038, 256, '_customer_user_agent', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(2039, 256, '_customer_user', '1'),
(2040, 256, '_created_via', 'checkout'),
(2041, 256, '_order_version', '2.5.2'),
(2042, 256, '_order_shipping', '0'),
(2043, 256, '_billing_first_name', 'Dianne Katherine'),
(2044, 256, '_billing_last_name', 'Delos Reyes'),
(2045, 256, '_billing_company', ''),
(2046, 256, '_billing_email', 'diannekatherinedelosreyes@gmail.com'),
(2047, 256, '_billing_phone', '9063897290'),
(2048, 256, '_billing_country', 'PH'),
(2049, 256, '_billing_address_1', '159 Lambakin Marilao Bulacan'),
(2050, 256, '_billing_address_2', ''),
(2051, 256, '_billing_city', 'Marilao'),
(2052, 256, '_billing_state', '00'),
(2053, 256, '_billing_postcode', '3019'),
(2054, 256, '_shipping_first_name', 'Dianne Katherine'),
(2055, 256, '_shipping_last_name', 'Delos Reyes'),
(2056, 256, '_shipping_company', ''),
(2057, 256, '_shipping_country', 'PH'),
(2058, 256, '_shipping_address_1', '159 Lambakin Marilao Bulacan'),
(2059, 256, '_shipping_address_2', ''),
(2060, 256, '_shipping_city', 'Marilao'),
(2061, 256, '_shipping_state', '00'),
(2062, 256, '_shipping_postcode', '3019'),
(2063, 256, '_payment_method', 'bacs'),
(2064, 256, '_payment_method_title', 'Direct Bank Transfer'),
(2065, 256, '_cart_discount', '0'),
(2066, 256, '_cart_discount_tax', '0'),
(2067, 256, '_order_tax', '0'),
(2068, 256, '_order_shipping_tax', '0'),
(2069, 256, '_order_total', '500.00'),
(2070, 256, '_wc_deposits_remaining', '1500'),
(2071, 256, '_wc_deposits_remaining_paid', 'no'),
(2072, 256, 'ywot_carrier_name', 'Carrier'),
(2073, 256, '_recorded_sales', 'yes'),
(2074, 256, '_order_stock_reduced', '1'),
(2075, 257, '_order_key', 'wc_order_56e48bd83bf1e'),
(2076, 257, '_order_currency', 'PHP'),
(2077, 257, '_prices_include_tax', 'no'),
(2078, 257, '_customer_ip_address', '::1'),
(2079, 257, '_customer_user_agent', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(2080, 257, '_customer_user', '1'),
(2081, 257, '_created_via', 'checkout'),
(2082, 257, '_order_version', '2.5.2'),
(2083, 257, '_order_shipping', '0'),
(2084, 257, '_billing_first_name', 'Dianne Katherine'),
(2085, 257, '_billing_last_name', 'Delos Reyes'),
(2086, 257, '_billing_company', ''),
(2087, 257, '_billing_email', 'diannekatherinedelosreyes@gmail.com'),
(2088, 257, '_billing_phone', '9063897290'),
(2089, 257, '_billing_country', 'PH'),
(2090, 257, '_billing_address_1', '159 Lambakin Marilao Bulacan'),
(2091, 257, '_billing_address_2', ''),
(2092, 257, '_billing_city', 'Marilao'),
(2093, 257, '_billing_state', '00'),
(2094, 257, '_billing_postcode', '3019'),
(2095, 257, '_shipping_first_name', 'Dianne Katherine'),
(2096, 257, '_shipping_last_name', 'Delos Reyes'),
(2097, 257, '_shipping_company', ''),
(2098, 257, '_shipping_country', 'PH'),
(2099, 257, '_shipping_address_1', '159 Lambakin Marilao Bulacan'),
(2100, 257, '_shipping_address_2', ''),
(2101, 257, '_shipping_city', 'Marilao'),
(2102, 257, '_shipping_state', '00'),
(2103, 257, '_shipping_postcode', '3019'),
(2104, 257, '_payment_method', 'bacs'),
(2105, 257, '_payment_method_title', 'Direct Bank Transfer'),
(2106, 257, '_cart_discount', '0'),
(2107, 257, '_cart_discount_tax', '0'),
(2108, 257, '_order_tax', '0'),
(2109, 257, '_order_shipping_tax', '0'),
(2110, 257, '_order_total', '2000'),
(2111, 257, '_wc_deposits_remaining', '0'),
(2112, 257, '_wc_deposits_remaining_paid', 'yes'),
(2113, 257, 'ywot_carrier_name', 'Carrier'),
(2114, 257, '_recorded_sales', 'yes'),
(2115, 257, '_order_stock_reduced', '1'),
(2116, 257, '_edit_lock', '1457818779:1'),
(2117, 257, '_edit_last', '1'),
(2118, 257, 'ywot_tracking_code', ''),
(2119, 257, 'ywot_pick_up_date', ''),
(2120, 257, '_transaction_id', ''),
(2121, 257, '_download_permissions_granted', '1'),
(2122, 257, '_completed_date', '2016-03-12 21:41:15'),
(2150, 262, '_menu_item_type', 'taxonomy'),
(2151, 262, '_menu_item_menu_item_parent', '0'),
(2152, 262, '_menu_item_object_id', '7'),
(2153, 262, '_menu_item_object', 'product_cat'),
(2154, 262, '_menu_item_target', ''),
(2155, 262, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(2156, 262, '_menu_item_xfn', ''),
(2157, 262, '_menu_item_url', ''),
(2159, 263, '_menu_item_type', 'taxonomy'),
(2160, 263, '_menu_item_menu_item_parent', '262'),
(2161, 263, '_menu_item_object_id', '8'),
(2162, 263, '_menu_item_object', 'product_cat'),
(2163, 263, '_menu_item_target', ''),
(2164, 263, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(2165, 263, '_menu_item_xfn', ''),
(2166, 263, '_menu_item_url', ''),
(2168, 264, '_menu_item_type', 'taxonomy'),
(2169, 264, '_menu_item_menu_item_parent', '262'),
(2170, 264, '_menu_item_object_id', '9'),
(2171, 264, '_menu_item_object', 'product_cat'),
(2172, 264, '_menu_item_target', ''),
(2173, 264, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(2174, 264, '_menu_item_xfn', ''),
(2175, 264, '_menu_item_url', ''),
(2177, 265, '_menu_item_type', 'taxonomy'),
(2178, 265, '_menu_item_menu_item_parent', '262'),
(2179, 265, '_menu_item_object_id', '10'),
(2180, 265, '_menu_item_object', 'product_cat'),
(2181, 265, '_menu_item_target', ''),
(2182, 265, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(2183, 265, '_menu_item_xfn', ''),
(2184, 265, '_menu_item_url', ''),
(2186, 266, '_menu_item_type', 'taxonomy'),
(2187, 266, '_menu_item_menu_item_parent', '262'),
(2188, 266, '_menu_item_object_id', '11'),
(2189, 266, '_menu_item_object', 'product_cat'),
(2190, 266, '_menu_item_target', ''),
(2191, 266, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(2192, 266, '_menu_item_xfn', ''),
(2193, 266, '_menu_item_url', ''),
(2195, 267, '_menu_item_type', 'taxonomy'),
(2196, 267, '_menu_item_menu_item_parent', '0'),
(2197, 267, '_menu_item_object_id', '6'),
(2198, 267, '_menu_item_object', 'product_cat'),
(2199, 267, '_menu_item_target', ''),
(2200, 267, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(2201, 267, '_menu_item_xfn', ''),
(2202, 267, '_menu_item_url', ''),
(2204, 268, '_menu_item_type', 'taxonomy'),
(2205, 268, '_menu_item_menu_item_parent', '267'),
(2206, 268, '_menu_item_object_id', '12'),
(2207, 268, '_menu_item_object', 'product_cat'),
(2208, 268, '_menu_item_target', ''),
(2209, 268, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(2210, 268, '_menu_item_xfn', ''),
(2211, 268, '_menu_item_url', ''),
(2213, 269, '_menu_item_type', 'taxonomy'),
(2214, 269, '_menu_item_menu_item_parent', '267'),
(2215, 269, '_menu_item_object_id', '13'),
(2216, 269, '_menu_item_object', 'product_cat'),
(2217, 269, '_menu_item_target', ''),
(2218, 269, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(2219, 269, '_menu_item_xfn', ''),
(2220, 269, '_menu_item_url', ''),
(2222, 270, '_menu_item_type', 'taxonomy'),
(2223, 270, '_menu_item_menu_item_parent', '267'),
(2224, 270, '_menu_item_object_id', '14'),
(2225, 270, '_menu_item_object', 'product_cat'),
(2226, 270, '_menu_item_target', ''),
(2227, 270, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(2228, 270, '_menu_item_xfn', ''),
(2229, 270, '_menu_item_url', ''),
(2231, 271, '_menu_item_type', 'taxonomy'),
(2232, 271, '_menu_item_menu_item_parent', '267'),
(2233, 271, '_menu_item_object_id', '15'),
(2234, 271, '_menu_item_object', 'product_cat'),
(2235, 271, '_menu_item_target', ''),
(2236, 271, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(2237, 271, '_menu_item_xfn', ''),
(2238, 271, '_menu_item_url', ''),
(2240, 272, '_menu_item_type', 'taxonomy'),
(2241, 272, '_menu_item_menu_item_parent', '0'),
(2242, 272, '_menu_item_object_id', '64'),
(2243, 272, '_menu_item_object', 'pa_subcategory'),
(2244, 272, '_menu_item_target', ''),
(2245, 272, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(2246, 272, '_menu_item_xfn', ''),
(2247, 272, '_menu_item_url', ''),
(2249, 273, '_menu_item_type', 'taxonomy'),
(2250, 273, '_menu_item_menu_item_parent', '0'),
(2251, 273, '_menu_item_object_id', '63'),
(2252, 273, '_menu_item_object', 'pa_subcategory'),
(2253, 273, '_menu_item_target', ''),
(2254, 273, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(2255, 273, '_menu_item_xfn', ''),
(2256, 273, '_menu_item_url', ''),
(2258, 274, '_menu_item_type', 'taxonomy'),
(2259, 274, '_menu_item_menu_item_parent', '0'),
(2260, 274, '_menu_item_object_id', '61'),
(2261, 274, '_menu_item_object', 'pa_subcategory'),
(2262, 274, '_menu_item_target', ''),
(2263, 274, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(2264, 274, '_menu_item_xfn', ''),
(2265, 274, '_menu_item_url', ''),
(2267, 275, '_menu_item_type', 'taxonomy'),
(2268, 275, '_menu_item_menu_item_parent', '0'),
(2269, 275, '_menu_item_object_id', '62'),
(2270, 275, '_menu_item_object', 'pa_subcategory'),
(2271, 275, '_menu_item_target', ''),
(2272, 275, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(2273, 275, '_menu_item_xfn', ''),
(2274, 275, '_menu_item_url', ''),
(2276, 276, '_menu_item_type', 'taxonomy'),
(2277, 276, '_menu_item_menu_item_parent', '288'),
(2278, 276, '_menu_item_object_id', '56'),
(2279, 276, '_menu_item_object', 'pa_brands'),
(2280, 276, '_menu_item_target', ''),
(2281, 276, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(2282, 276, '_menu_item_xfn', ''),
(2283, 276, '_menu_item_url', ''),
(2285, 277, '_menu_item_type', 'taxonomy'),
(2286, 277, '_menu_item_menu_item_parent', '288'),
(2287, 277, '_menu_item_object_id', '43'),
(2288, 277, '_menu_item_object', 'pa_brands'),
(2289, 277, '_menu_item_target', ''),
(2290, 277, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(2291, 277, '_menu_item_xfn', ''),
(2292, 277, '_menu_item_url', ''),
(2294, 278, '_menu_item_type', 'taxonomy'),
(2295, 278, '_menu_item_menu_item_parent', '288'),
(2296, 278, '_menu_item_object_id', '48'),
(2297, 278, '_menu_item_object', 'pa_brands'),
(2298, 278, '_menu_item_target', ''),
(2299, 278, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(2300, 278, '_menu_item_xfn', ''),
(2301, 278, '_menu_item_url', ''),
(2303, 279, '_menu_item_type', 'taxonomy'),
(2304, 279, '_menu_item_menu_item_parent', '288'),
(2305, 279, '_menu_item_object_id', '55'),
(2306, 279, '_menu_item_object', 'pa_brands'),
(2307, 279, '_menu_item_target', ''),
(2308, 279, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(2309, 279, '_menu_item_xfn', ''),
(2310, 279, '_menu_item_url', ''),
(2312, 280, '_menu_item_type', 'taxonomy'),
(2313, 280, '_menu_item_menu_item_parent', '288'),
(2314, 280, '_menu_item_object_id', '49'),
(2315, 280, '_menu_item_object', 'pa_brands'),
(2316, 280, '_menu_item_target', ''),
(2317, 280, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(2318, 280, '_menu_item_xfn', ''),
(2319, 280, '_menu_item_url', ''),
(2321, 281, '_menu_item_type', 'taxonomy'),
(2322, 281, '_menu_item_menu_item_parent', '288'),
(2323, 281, '_menu_item_object_id', '53'),
(2324, 281, '_menu_item_object', 'pa_brands'),
(2325, 281, '_menu_item_target', ''),
(2326, 281, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(2327, 281, '_menu_item_xfn', ''),
(2328, 281, '_menu_item_url', ''),
(2330, 282, '_menu_item_type', 'taxonomy'),
(2331, 282, '_menu_item_menu_item_parent', '288'),
(2332, 282, '_menu_item_object_id', '52'),
(2333, 282, '_menu_item_object', 'pa_brands'),
(2334, 282, '_menu_item_target', ''),
(2335, 282, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(2336, 282, '_menu_item_xfn', ''),
(2337, 282, '_menu_item_url', ''),
(2339, 283, '_menu_item_type', 'taxonomy'),
(2340, 283, '_menu_item_menu_item_parent', '288'),
(2341, 283, '_menu_item_object_id', '44'),
(2342, 283, '_menu_item_object', 'pa_brands'),
(2343, 283, '_menu_item_target', ''),
(2344, 283, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(2345, 283, '_menu_item_xfn', ''),
(2346, 283, '_menu_item_url', ''),
(2348, 284, '_menu_item_type', 'taxonomy'),
(2349, 284, '_menu_item_menu_item_parent', '288'),
(2350, 284, '_menu_item_object_id', '54'),
(2351, 284, '_menu_item_object', 'pa_brands'),
(2352, 284, '_menu_item_target', ''),
(2353, 284, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(2354, 284, '_menu_item_xfn', ''),
(2355, 284, '_menu_item_url', ''),
(2357, 285, '_menu_item_type', 'taxonomy'),
(2358, 285, '_menu_item_menu_item_parent', '288'),
(2359, 285, '_menu_item_object_id', '47'),
(2360, 285, '_menu_item_object', 'pa_brands'),
(2361, 285, '_menu_item_target', ''),
(2362, 285, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(2363, 285, '_menu_item_xfn', ''),
(2364, 285, '_menu_item_url', ''),
(2366, 286, '_menu_item_type', 'taxonomy'),
(2367, 286, '_menu_item_menu_item_parent', '288'),
(2368, 286, '_menu_item_object_id', '51'),
(2369, 286, '_menu_item_object', 'pa_brands'),
(2370, 286, '_menu_item_target', ''),
(2371, 286, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(2372, 286, '_menu_item_xfn', ''),
(2373, 286, '_menu_item_url', ''),
(2375, 287, '_menu_item_type', 'taxonomy'),
(2376, 287, '_menu_item_menu_item_parent', '288'),
(2377, 287, '_menu_item_object_id', '50'),
(2378, 287, '_menu_item_object', 'pa_brands'),
(2379, 287, '_menu_item_target', ''),
(2380, 287, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(2381, 287, '_menu_item_xfn', ''),
(2382, 287, '_menu_item_url', ''),
(2384, 288, '_menu_item_type', 'custom'),
(2385, 288, '_menu_item_menu_item_parent', '0'),
(2386, 288, '_menu_item_object_id', '288'),
(2387, 288, '_menu_item_object', 'custom'),
(2388, 288, '_menu_item_target', ''),
(2389, 288, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(2390, 288, '_menu_item_xfn', ''),
(2391, 288, '_menu_item_url', 'http://localhost/onefabshop/pa_brands/adidas/'),
(2393, 289, '_edit_lock', '1457859318:1'),
(2394, 290, '_wp_attached_file', '2016/02/guess-banner-copy.jpg'),
(2395, 290, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1919;s:6:"height";i:564;s:4:"file";s:29:"2016/02/guess-banner-copy.jpg";s:5:"sizes";a:11:{s:9:"thumbnail";a:5:{s:4:"file";s:29:"guess-banner-copy-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 6.8% (393.0&nbsp;B)";}s:6:"medium";a:5:{s:4:"file";s:28:"guess-banner-copy-300x88.jpg";s:5:"width";i:300;s:6:"height";i:88;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 6.7% (605.0&nbsp;B)";}s:12:"medium_large";a:5:{s:4:"file";s:29:"guess-banner-copy-768x226.jpg";s:5:"width";i:768;s:6:"height";i:226;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 5.8% (2.5&nbsp;kB)";}s:5:"large";a:5:{s:4:"file";s:30:"guess-banner-copy-1024x301.jpg";s:5:"width";i:1024;s:6:"height";i:301;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 5.6% (3.8&nbsp;kB)";}s:14:"shop_thumbnail";a:5:{s:4:"file";s:29:"guess-banner-copy-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 5.8% (452.0&nbsp;B)";}s:12:"shop_catalog";a:5:{s:4:"file";s:29:"guess-banner-copy-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 5.5% (972.0&nbsp;B)";}s:11:"shop_single";a:5:{s:4:"file";s:29:"guess-banner-copy-600x564.jpg";s:5:"width";i:600;s:6:"height";i:564;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 3.1% (1.5&nbsp;kB)";}s:22:"eightstore-promo-small";a:5:{s:4:"file";s:29:"guess-banner-copy-520x260.jpg";s:5:"width";i:520;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 5.5% (1.5&nbsp;kB)";}s:22:"eightstore-promo-large";a:5:{s:4:"file";s:29:"guess-banner-copy-520x520.jpg";s:5:"width";i:520;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 3.9% (1.6&nbsp;kB)";}s:21:"eightstore-blog-image";a:5:{s:4:"file";s:29:"guess-banner-copy-290x260.jpg";s:5:"width";i:290;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 5.6% (890.0&nbsp;B)";}s:28:"eightstore-testimonial-image";a:5:{s:4:"file";s:27:"guess-banner-copy-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:31:"Reduced by 16.8% (370.0&nbsp;B)";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}s:20:"ewww_image_optimizer";s:31:"Reduced by 14.2% (23.2&nbsp;kB)";}'),
(2396, 291, '_wp_attached_file', '2016/02/guess2-banner-2-1-copy.jpg'),
(2397, 291, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1919;s:6:"height";i:564;s:4:"file";s:34:"2016/02/guess2-banner-2-1-copy.jpg";s:5:"sizes";a:11:{s:9:"thumbnail";a:5:{s:4:"file";s:34:"guess2-banner-2-1-copy-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 7.2% (681.0&nbsp;B)";}s:6:"medium";a:5:{s:4:"file";s:33:"guess2-banner-2-1-copy-300x88.jpg";s:5:"width";i:300;s:6:"height";i:88;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 6.0% (444.0&nbsp;B)";}s:12:"medium_large";a:5:{s:4:"file";s:34:"guess2-banner-2-1-copy-768x226.jpg";s:5:"width";i:768;s:6:"height";i:226;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 5.6% (2.0&nbsp;kB)";}s:5:"large";a:5:{s:4:"file";s:35:"guess2-banner-2-1-copy-1024x301.jpg";s:5:"width";i:1024;s:6:"height";i:301;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 5.1% (3.0&nbsp;kB)";}s:14:"shop_thumbnail";a:5:{s:4:"file";s:34:"guess2-banner-2-1-copy-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 7.3% (951.0&nbsp;B)";}s:12:"shop_catalog";a:5:{s:4:"file";s:34:"guess2-banner-2-1-copy-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 6.8% (2.1&nbsp;kB)";}s:11:"shop_single";a:5:{s:4:"file";s:34:"guess2-banner-2-1-copy-600x564.jpg";s:5:"width";i:600;s:6:"height";i:564;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 5.0% (4.6&nbsp;kB)";}s:22:"eightstore-promo-small";a:5:{s:4:"file";s:34:"guess2-banner-2-1-copy-520x260.jpg";s:5:"width";i:520;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 5.9% (1.9&nbsp;kB)";}s:22:"eightstore-promo-large";a:5:{s:4:"file";s:34:"guess2-banner-2-1-copy-520x520.jpg";s:5:"width";i:520;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 5.0% (3.6&nbsp;kB)";}s:21:"eightstore-blog-image";a:5:{s:4:"file";s:34:"guess2-banner-2-1-copy-290x260.jpg";s:5:"width";i:290;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 6.6% (1.7&nbsp;kB)";}s:28:"eightstore-testimonial-image";a:5:{s:4:"file";s:32:"guess2-banner-2-1-copy-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:31:"Reduced by 13.4% (410.0&nbsp;B)";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}s:20:"ewww_image_optimizer";s:31:"Reduced by 16.5% (24.2&nbsp;kB)";}'),
(2398, 109, '_thumbnail_id', '291'),
(2400, 130, '_thumbnail_id', '290'),
(2402, 292, '_form', '<p>Your Name (required)<br />\n    [text* your-name] </p>\n\n<p>Your Email (required)<br />\n    [email* your-email] </p>\n\n<p>Subject<br />\n    [text your-subject] </p>\n\n<p>Your Message<br />\n    [textarea your-message] </p>\n\n<p>[submit class:contact-form-button "Send" ]</p>'),
(2403, 292, '_mail', 'a:8:{s:7:"subject";s:30:"Onefabshop Ph "[your-subject]"";s:6:"sender";s:49:"[your-name] <diannekatherinedelosreyes@gmail.com>";s:4:"body";s:178:"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on Onefabshop Ph (http://localhost/onefabshop)";s:9:"recipient";s:35:"diannekatherinedelosreyes@gmail.com";s:18:"additional_headers";s:22:"Reply-To: [your-email]";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(2404, 292, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:30:"Onefabshop Ph "[your-subject]"";s:6:"sender";s:51:"Onefabshop Ph <diannekatherinedelosreyes@gmail.com>";s:4:"body";s:120:"Message Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on Onefabshop Ph (http://localhost/onefabshop)";s:9:"recipient";s:12:"[your-email]";s:18:"additional_headers";s:45:"Reply-To: diannekatherinedelosreyes@gmail.com";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(2405, 292, '_messages', 'a:23:{s:12:"mail_sent_ok";s:45:"Thank you for your message. It has been sent.";s:12:"mail_sent_ng";s:71:"There was an error trying to send your message. Please try again later.";s:16:"validation_error";s:61:"One or more fields have an error. Please check and try again.";s:4:"spam";s:71:"There was an error trying to send your message. Please try again later.";s:12:"accept_terms";s:69:"You must accept the terms and conditions before sending your message.";s:16:"invalid_required";s:22:"The field is required.";s:16:"invalid_too_long";s:22:"The field is too long.";s:17:"invalid_too_short";s:23:"The field is too short.";s:12:"invalid_date";s:29:"The date format is incorrect.";s:14:"date_too_early";s:44:"The date is before the earliest one allowed.";s:13:"date_too_late";s:41:"The date is after the latest one allowed.";s:13:"upload_failed";s:46:"There was an unknown error uploading the file.";s:24:"upload_file_type_invalid";s:49:"You are not allowed to upload files of this type.";s:21:"upload_file_too_large";s:20:"The file is too big.";s:23:"upload_failed_php_error";s:38:"There was an error uploading the file.";s:14:"invalid_number";s:29:"The number format is invalid.";s:16:"number_too_small";s:47:"The number is smaller than the minimum allowed.";s:16:"number_too_large";s:46:"The number is larger than the maximum allowed.";s:23:"quiz_answer_not_correct";s:36:"The answer to the quiz is incorrect.";s:17:"captcha_not_match";s:31:"Your entered code is incorrect.";s:13:"invalid_email";s:38:"The e-mail address entered is invalid.";s:11:"invalid_url";s:19:"The URL is invalid.";s:11:"invalid_tel";s:32:"The telephone number is invalid.";}'),
(2406, 292, '_additional_settings', ''),
(2407, 292, '_locale', 'en_US'),
(2408, 293, '_edit_lock', '1458057493:1'),
(2409, 293, '_edit_last', '1'),
(2410, 293, '_wp_page_template', 'default'),
(2411, 293, 'eightstore_lite_sidebar_layout', 'sidebar-right'),
(2412, 295, '_menu_item_type', 'post_type'),
(2413, 295, '_menu_item_menu_item_parent', '0'),
(2414, 295, '_menu_item_object_id', '293'),
(2415, 295, '_menu_item_object', 'page'),
(2416, 295, '_menu_item_target', ''),
(2417, 295, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(2418, 295, '_menu_item_xfn', ''),
(2419, 295, '_menu_item_url', ''),
(2420, 295, '_menu_item_orphaned', '1458057574'),
(2421, 296, '_menu_item_type', 'post_type'),
(2422, 296, '_menu_item_menu_item_parent', '0'),
(2423, 296, '_menu_item_object_id', '293'),
(2424, 296, '_menu_item_object', 'page'),
(2425, 296, '_menu_item_target', ''),
(2426, 296, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(2427, 296, '_menu_item_xfn', ''),
(2428, 296, '_menu_item_url', ''),
(2430, 297, '_menu_item_type', 'post_type'),
(2431, 297, '_menu_item_menu_item_parent', '0'),
(2432, 297, '_menu_item_object_id', '293'),
(2433, 297, '_menu_item_object', 'page'),
(2434, 297, '_menu_item_target', ''),
(2435, 297, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(2436, 297, '_menu_item_xfn', ''),
(2437, 297, '_menu_item_url', '');

-- --------------------------------------------------------

--
-- Table structure for table `ofs2616_posts`
--

CREATE TABLE IF NOT EXISTS `ofs2616_posts` (
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
) ENGINE=InnoDB AUTO_INCREMENT=298 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ofs2616_posts`
--

INSERT INTO `ofs2616_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(2, 1, '2016-02-06 07:33:43', '2016-02-06 07:33:43', '', 'About', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2016-03-06 15:33:00', '2016-03-06 15:33:00', '', 0, 'http://localhost/onefabshop/?page_id=2', 8, 'page', '', 0),
(4, 1, '2016-02-06 08:06:34', '2016-02-06 08:06:34', '', 'Shop', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2016-02-06 08:06:34', '2016-02-06 08:06:34', '', 0, 'http://localhost/onefabshop/index.php/shop/', 9, 'page', '', 0),
(5, 1, '2016-02-06 08:06:34', '2016-02-06 08:06:34', '[woocommerce_cart]', 'Cart', '', 'publish', 'closed', 'closed', '', 'cart', '', '', '2016-02-06 08:06:34', '2016-02-06 08:06:34', '', 0, 'http://localhost/onefabshop/index.php/cart/', 4, 'page', '', 0),
(6, 1, '2016-02-06 08:06:34', '2016-02-06 08:06:34', '[woocommerce_checkout]', 'Checkout', '', 'publish', 'closed', 'closed', '', 'checkout', '', '', '2016-02-06 08:06:34', '2016-02-06 08:06:34', '', 0, 'http://localhost/onefabshop/index.php/checkout/', 5, 'page', '', 0),
(7, 1, '2016-02-06 08:06:34', '2016-02-06 08:06:34', '[woocommerce_my_account]', 'My Account', '', 'publish', 'closed', 'closed', '', 'my-account', '', '', '2016-02-29 04:37:59', '2016-02-29 04:37:59', '', 0, 'http://localhost/onefabshop/index.php/my-account/', 7, 'page', '', 0),
(8, 1, '2016-02-06 08:20:24', '2016-02-06 08:20:24', 'sample description here', 'MK Bag', 'sample short description here', 'publish', 'open', 'closed', '', 'mk-bag', '', '', '2016-03-13 08:07:40', '2016-03-13 08:07:40', '', 0, 'http://localhost/onefabshop/?post_type=product&#038;p=8', 4, 'product', '', 0),
(9, 1, '2016-02-06 08:20:12', '2016-02-06 08:20:12', '', '12644998_572741109573734_5503681196439159547_n', '', 'inherit', 'open', 'closed', '', '12644998_572741109573734_5503681196439159547_n', '', '', '2016-02-06 08:20:12', '2016-02-06 08:20:12', '', 8, 'http://localhost/onefabshop/wp-content/uploads/2016/02/12644998_572741109573734_5503681196439159547_n.jpg', 0, 'attachment', 'image/jpeg', 0),
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
(31, 1, '2013-06-07 10:49:51', '2013-06-07 10:49:51', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Ninja Silhouette', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'ninja-silhouette', '', '', '2016-02-25 07:14:12', '2016-02-25 07:14:12', '', 0, 'http://demo.woothemes.com/woocommerce/?post_type=product&#038;p=31', 24, 'product', '', 1),
(32, 1, '2013-06-07 10:49:13', '2013-06-07 10:49:13', '', 'T_5_front', '', 'inherit', 'open', 'open', '', 't_5_front', '', '', '2013-06-07 10:49:13', '2013-06-07 10:49:13', '', 31, 'http://localhost/onefabshop/wp-content/uploads/2013/06/T_5_front.jpg', 0, 'attachment', 'image/jpeg', 0),
(33, 1, '2013-06-07 10:49:23', '2013-06-07 10:49:23', '', 'T_5_back', '', 'inherit', 'open', 'open', '', 't_5_back', '', '', '2013-06-07 10:49:23', '2013-06-07 10:49:23', '', 31, 'http://localhost/onefabshop/wp-content/uploads/2013/06/T_5_back.jpg', 0, 'attachment', 'image/jpeg', 0),
(34, 1, '2013-06-07 10:52:06', '2013-06-07 10:52:06', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Woo Ninja', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'woo-ninja', '', '', '2016-02-25 07:12:34', '2016-02-25 07:12:34', '', 0, 'http://demo.woothemes.com/woocommerce/?post_type=product&#038;p=34', 23, 'product', '', 0),
(35, 1, '2013-06-07 10:51:51', '2013-06-07 10:51:51', '', 'T_6_front', '', 'inherit', 'open', 'open', '', 't_6_front', '', '', '2013-06-07 10:51:51', '2013-06-07 10:51:51', '', 34, 'http://localhost/onefabshop/wp-content/uploads/2013/06/T_6_front.jpg', 0, 'attachment', 'image/jpeg', 0),
(36, 1, '2013-06-07 10:52:02', '2013-06-07 10:52:02', '', 'T_6_back', '', 'inherit', 'open', 'open', '', 't_6_back', '', '', '2013-06-07 10:52:02', '2013-06-07 10:52:02', '', 34, 'http://localhost/onefabshop/wp-content/uploads/2013/06/T_6_back.jpg', 0, 'attachment', 'image/jpeg', 0),
(37, 1, '2013-06-07 10:53:15', '2013-06-07 10:53:15', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Happy Ninja', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'happy-ninja', '', '', '2016-02-25 07:12:34', '2016-02-25 07:12:34', '', 0, 'http://demo.woothemes.com/woocommerce/?post_type=product&#038;p=37', 22, 'product', '', 2),
(38, 1, '2013-06-07 10:52:55', '2013-06-07 10:52:55', '', 'T_7_front', '', 'inherit', 'open', 'open', '', 't_7_front', '', '', '2013-06-07 10:52:55', '2013-06-07 10:52:55', '', 37, 'http://localhost/onefabshop/wp-content/uploads/2013/06/T_7_front.jpg', 0, 'attachment', 'image/jpeg', 0),
(39, 1, '2013-06-07 10:53:29', '2013-06-07 10:53:29', '', 'T_7_back', '', 'inherit', 'open', 'open', '', 't_7_back', '', '', '2013-06-07 10:53:29', '2013-06-07 10:53:29', '', 37, 'http://localhost/onefabshop/wp-content/uploads/2013/06/T_7_back.jpg', 0, 'attachment', 'image/jpeg', 0),
(40, 1, '2013-06-07 11:00:28', '2013-06-07 11:00:28', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Ship Your Idea', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'ship-your-idea-2', '', '', '2016-02-25 07:12:33', '2016-02-25 07:12:33', '', 0, 'http://demo.woothemes.com/woocommerce/?post_type=product&#038;p=40', 21, 'product', '', 3),
(41, 1, '2013-06-07 10:59:15', '2013-06-07 10:59:15', '', 'Variation #41 of Ship Your Idea', '', 'publish', 'open', 'open', '', 'product-40-variation', '', '', '2013-06-07 10:59:15', '2013-06-07 10:59:15', '', 40, 'http://demo.woothemes.com/woocommerce/?product_variation=product-40-variation', 0, 'product_variation', '', 0),
(42, 1, '2013-06-07 10:59:15', '2013-06-07 10:59:15', '', 'Variation #42 of Ship Your Idea', '', 'publish', 'open', 'open', '', 'product-40-variation-2', '', '', '2013-06-07 10:59:15', '2013-06-07 10:59:15', '', 40, 'http://demo.woothemes.com/woocommerce/?product_variation=product-40-variation-2', 1, 'product_variation', '', 0),
(43, 1, '2013-06-07 10:59:40', '2013-06-07 10:59:40', '', 'hoodie_7_front', '', 'inherit', 'open', 'open', '', 'hoodie_7_front', '', '', '2013-06-07 10:59:40', '2013-06-07 10:59:40', '', 40, 'http://localhost/onefabshop/wp-content/uploads/2013/06/hoodie_7_front.jpg', 0, 'attachment', 'image/jpeg', 0),
(44, 1, '2013-06-07 10:59:54', '2013-06-07 10:59:54', '', 'hoodie_7_back', '', 'inherit', 'open', 'open', '', 'hoodie_7_back', '', '', '2013-06-07 10:59:54', '2013-06-07 10:59:54', '', 40, 'http://localhost/onefabshop/wp-content/uploads/2013/06/hoodie_7_back.jpg', 0, 'attachment', 'image/jpeg', 0),
(45, 1, '2013-06-07 11:00:00', '2013-06-07 11:00:00', '', 'hoodie_1_back', '', 'inherit', 'open', 'open', '', 'hoodie_1_back', '', '', '2013-06-07 11:00:00', '2013-06-07 11:00:00', '', 40, 'http://localhost/onefabshop/wp-content/uploads/2013/06/hoodie_1_back.jpg', 0, 'attachment', 'image/jpeg', 0),
(46, 1, '2013-06-07 11:00:01', '2013-06-07 11:00:01', '', 'hoodie_1_front', '', 'inherit', 'open', 'open', '', 'hoodie_1_front', '', '', '2013-06-07 11:00:01', '2013-06-07 11:00:01', '', 40, 'http://localhost/onefabshop/wp-content/uploads/2013/06/hoodie_1_front.jpg', 0, 'attachment', 'image/jpeg', 0),
(47, 1, '2013-06-07 11:02:31', '2013-06-07 11:02:31', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Woo Ninja', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'woo-ninja-2', '', '', '2016-03-13 08:07:41', '2016-03-13 08:07:41', '', 0, 'http://demo.woothemes.com/woocommerce/?post_type=product&#038;p=47', 20, 'product', '', 2),
(48, 1, '2013-06-07 11:01:23', '2013-06-07 11:01:23', '', 'hoodie_2_front', '', 'inherit', 'open', 'open', '', 'hoodie_2_front', '', '', '2013-06-07 11:01:23', '2013-06-07 11:01:23', '', 47, 'http://localhost/onefabshop/wp-content/uploads/2013/06/hoodie_2_front.jpg', 0, 'attachment', 'image/jpeg', 0),
(49, 1, '2013-06-07 11:02:26', '2013-06-07 11:02:26', '', 'hoodie_2_back', '', 'inherit', 'open', 'open', '', 'hoodie_2_back', '', '', '2013-06-07 11:02:26', '2013-06-07 11:02:26', '', 47, 'http://localhost/onefabshop/wp-content/uploads/2013/06/hoodie_2_back.jpg', 0, 'attachment', 'image/jpeg', 0),
(50, 1, '2013-06-07 11:03:56', '2013-06-07 11:03:56', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Patient Ninja', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'patient-ninja', '', '', '2016-03-13 08:07:41', '2016-03-13 08:07:41', '', 0, 'http://demo.woothemes.com/woocommerce/?post_type=product&#038;p=50', 19, 'product', '', 3),
(51, 1, '2013-06-07 11:03:16', '2013-06-07 11:03:16', '', 'hoodie_3_front', '', 'inherit', 'open', 'open', '', 'hoodie_3_front', '', '', '2013-06-07 11:03:16', '2013-06-07 11:03:16', '', 50, 'http://localhost/onefabshop/wp-content/uploads/2013/06/hoodie_3_front.jpg', 0, 'attachment', 'image/jpeg', 0),
(52, 1, '2013-06-07 11:03:50', '2013-06-07 11:03:50', '', 'hoodie_3_back', '', 'inherit', 'open', 'open', '', 'hoodie_3_back', '', '', '2013-06-07 11:03:50', '2013-06-07 11:03:50', '', 50, 'http://localhost/onefabshop/wp-content/uploads/2013/06/hoodie_3_back.jpg', 0, 'attachment', 'image/jpeg', 0),
(53, 1, '2013-06-07 11:05:37', '2013-06-07 11:05:37', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Happy Ninja', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'happy-ninja-2', '', '', '2016-03-13 08:07:41', '2016-03-13 08:07:41', '', 0, 'http://demo.woothemes.com/woocommerce/?post_type=product&#038;p=53', 18, 'product', '', 2),
(54, 1, '2013-06-07 11:05:03', '2013-06-07 11:05:03', '', 'hoodie_4_front', '', 'inherit', 'open', 'open', '', 'hoodie_4_front', '', '', '2013-06-07 11:05:03', '2013-06-07 11:05:03', '', 53, 'http://localhost/onefabshop/wp-content/uploads/2013/06/hoodie_4_front.jpg', 0, 'attachment', 'image/jpeg', 0),
(55, 1, '2013-06-07 11:05:13', '2013-06-07 11:05:13', '', 'hoodie_4_back', '', 'inherit', 'open', 'open', '', 'hoodie_4_back', '', '', '2013-06-07 11:05:13', '2013-06-07 11:05:13', '', 53, 'http://localhost/onefabshop/wp-content/uploads/2013/06/hoodie_4_back.jpg', 0, 'attachment', 'image/jpeg', 0),
(56, 1, '2013-06-07 11:07:19', '2013-06-07 11:07:19', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Ninja Silhouette', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'ninja-silhouette-2', '', '', '2016-03-13 08:07:41', '2016-03-13 08:07:41', '', 0, 'http://demo.woothemes.com/woocommerce/?post_type=product&#038;p=56', 17, 'product', '', 5),
(57, 1, '2013-06-07 11:06:32', '2013-06-07 11:06:32', '', 'hoodie_5_front', '', 'inherit', 'open', 'open', '', 'hoodie_5_front', '', '', '2013-06-07 11:06:32', '2013-06-07 11:06:32', '', 56, 'http://localhost/onefabshop/wp-content/uploads/2013/06/hoodie_5_front.jpg', 0, 'attachment', 'image/jpeg', 0),
(58, 1, '2013-06-07 11:07:10', '2013-06-07 11:07:10', '', 'hoodie_5_back', '', 'inherit', 'open', 'open', '', 'hoodie_5_back', '', '', '2013-06-07 11:07:10', '2013-06-07 11:07:10', '', 56, 'http://localhost/onefabshop/wp-content/uploads/2013/06/hoodie_5_back.jpg', 0, 'attachment', 'image/jpeg', 0),
(60, 1, '2013-06-07 11:12:55', '2013-06-07 11:12:55', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Woo Logo', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'woo-logo-2', '', '', '2016-03-13 08:07:41', '2016-03-13 08:07:41', '', 0, 'http://demo.woothemes.com/woocommerce/?post_type=product&#038;p=60', 16, 'product', '', 2),
(61, 1, '2013-06-07 11:12:02', '2013-06-07 11:12:02', '', 'hoodie_6_front', '', 'inherit', 'open', 'open', '', 'hoodie_6_front', '', '', '2013-06-07 11:12:02', '2013-06-07 11:12:02', '', 60, 'http://localhost/onefabshop/wp-content/uploads/2013/06/hoodie_6_front.jpg', 0, 'attachment', 'image/jpeg', 0),
(62, 1, '2013-06-07 11:12:16', '2013-06-07 11:12:16', '', 'hoodie_6_back', '', 'inherit', 'open', 'open', '', 'hoodie_6_back', '', '', '2013-06-07 11:12:16', '2013-06-07 11:12:16', '', 60, 'http://localhost/onefabshop/wp-content/uploads/2013/06/hoodie_6_back.jpg', 0, 'attachment', 'image/jpeg', 0),
(67, 1, '2013-06-07 11:22:50', '2013-06-07 11:22:50', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Ship Your Idea', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'ship-your-idea-3', '', '', '2016-03-13 08:07:41', '2016-03-13 08:07:41', '', 0, 'http://demo.woothemes.com/woocommerce/?post_type=product&#038;p=67', 15, 'product', '', 0),
(68, 1, '2013-06-07 11:21:34', '2013-06-07 11:21:34', '', 'poster_1_up', '', 'inherit', 'open', 'open', '', 'poster_1_up', '', '', '2013-06-07 11:21:34', '2013-06-07 11:21:34', '', 67, 'http://localhost/onefabshop/wp-content/uploads/2013/06/poster_1_up.jpg', 0, 'attachment', 'image/jpeg', 0),
(69, 1, '2013-06-07 11:22:05', '2013-06-07 11:22:05', '', 'Poster_1_flat', '', 'inherit', 'open', 'open', '', 'poster_1_flat', '', '', '2013-06-07 11:22:05', '2013-06-07 11:22:05', '', 67, 'http://localhost/onefabshop/wp-content/uploads/2013/06/Poster_1_flat.jpg', 0, 'attachment', 'image/jpeg', 0),
(70, 1, '2013-06-07 11:25:01', '2013-06-07 11:25:01', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Flying Ninja', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'flying-ninja', '', '', '2016-03-13 08:07:40', '2016-03-13 08:07:40', '', 0, 'http://demo.woothemes.com/woocommerce/?post_type=product&#038;p=70', 14, 'product', '', 4),
(71, 1, '2013-06-07 11:24:19', '2013-06-07 11:24:19', '', 'poster_2_up', '', 'inherit', 'open', 'open', '', 'poster_2_up', '', '', '2013-06-07 11:24:19', '2013-06-07 11:24:19', '', 70, 'http://localhost/onefabshop/wp-content/uploads/2013/06/poster_2_up.jpg', 0, 'attachment', 'image/jpeg', 0),
(72, 1, '2013-06-07 11:24:47', '2013-06-07 11:24:47', '', 'Poster_2_flat', '', 'inherit', 'open', 'open', '', 'poster_2_flat', '', '', '2013-06-07 11:24:47', '2013-06-07 11:24:47', '', 70, 'http://localhost/onefabshop/wp-content/uploads/2013/06/Poster_2_flat.jpg', 0, 'attachment', 'image/jpeg', 0),
(73, 1, '2013-06-07 11:27:38', '2013-06-07 11:27:38', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Premium Quality', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'premium-quality-2', '', '', '2016-03-13 08:07:40', '2016-03-13 08:07:40', '', 0, 'http://demo.woothemes.com/woocommerce/?post_type=product&#038;p=73', 13, 'product', '', 2),
(74, 1, '2013-06-07 11:26:47', '2013-06-07 11:26:47', '', 'poster_3_up', '', 'inherit', 'open', 'open', '', 'poster_3_up', '', '', '2013-06-07 11:26:47', '2013-06-07 11:26:47', '', 73, 'http://localhost/onefabshop/wp-content/uploads/2013/06/poster_3_up.jpg', 0, 'attachment', 'image/jpeg', 0),
(75, 1, '2013-06-07 11:27:31', '2013-06-07 11:27:31', '', 'Poster_3_flat', '', 'inherit', 'open', 'open', '', 'poster_3_flat', '', '', '2013-06-07 11:27:31', '2013-06-07 11:27:31', '', 73, 'http://localhost/onefabshop/wp-content/uploads/2013/06/Poster_3_flat.jpg', 0, 'attachment', 'image/jpeg', 0),
(76, 1, '2013-06-07 11:28:45', '2013-06-07 11:28:45', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Woo Ninja', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'woo-ninja-3', '', '', '2016-03-13 08:07:40', '2016-03-13 08:07:40', '', 0, 'http://demo.woothemes.com/woocommerce/?post_type=product&#038;p=76', 12, 'product', '', 1),
(77, 1, '2013-06-07 11:28:07', '2013-06-07 11:28:07', '', 'poster_4_up', '', 'inherit', 'open', 'open', '', 'poster_4_up', '', '', '2013-06-07 11:28:07', '2013-06-07 11:28:07', '', 76, 'http://localhost/onefabshop/wp-content/uploads/2013/06/poster_4_up.jpg', 0, 'attachment', 'image/jpeg', 0),
(78, 1, '2013-06-07 11:28:20', '2013-06-07 11:28:20', '', 'Poster_4_flat', '', 'inherit', 'open', 'open', '', 'poster_4_flat', '', '', '2013-06-07 11:28:20', '2013-06-07 11:28:20', '', 76, 'http://localhost/onefabshop/wp-content/uploads/2013/06/Poster_4_flat.jpg', 0, 'attachment', 'image/jpeg', 0),
(79, 1, '2013-06-07 11:29:44', '2013-06-07 11:29:44', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Woo Logo', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'woo-logo-3', '', '', '2016-03-13 08:07:40', '2016-03-13 08:07:40', '', 0, 'http://demo.woothemes.com/woocommerce/?post_type=product&#038;p=79', 11, 'product', '', 0),
(80, 1, '2013-06-07 11:29:26', '2013-06-07 11:29:26', '', 'poster_5_up', '', 'inherit', 'open', 'open', '', 'poster_5_up', '', '', '2013-06-07 11:29:26', '2013-06-07 11:29:26', '', 79, 'http://localhost/onefabshop/wp-content/uploads/2013/06/poster_5_up.jpg', 0, 'attachment', 'image/jpeg', 0),
(81, 1, '2013-06-07 11:29:37', '2013-06-07 11:29:37', '', 'Poster_5_flat', '', 'inherit', 'open', 'open', '', 'poster_5_flat', '', '', '2013-06-07 11:29:37', '2013-06-07 11:29:37', '', 79, 'http://localhost/onefabshop/wp-content/uploads/2013/06/Poster_5_flat.jpg', 0, 'attachment', 'image/jpeg', 0),
(83, 1, '2013-06-07 11:33:05', '2013-06-07 11:33:05', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Woo Album #1', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'woo-album-1', '', '', '2016-03-13 08:07:40', '2016-03-13 08:07:40', '', 0, 'http://demo.woothemes.com/woocommerce/?post_type=product&#038;p=83', 10, 'product', '', 0),
(84, 1, '2013-06-07 11:32:44', '2013-06-07 11:32:44', '', 'cd_1_angle', '', 'inherit', 'open', 'open', '', 'cd_1_angle', '', '', '2013-06-07 11:32:44', '2013-06-07 11:32:44', '', 83, 'http://localhost/onefabshop/wp-content/uploads/2013/06/cd_1_angle.jpg', 0, 'attachment', 'image/jpeg', 0),
(85, 1, '2013-06-07 11:32:57', '2013-06-07 11:32:57', '', 'cd_1_flat', '', 'inherit', 'open', 'open', '', 'cd_1_flat', '', '', '2013-06-07 11:32:57', '2013-06-07 11:32:57', '', 83, 'http://localhost/onefabshop/wp-content/uploads/2013/06/cd_1_flat.jpg', 0, 'attachment', 'image/jpeg', 0),
(87, 1, '2013-06-07 11:34:14', '2013-06-07 11:34:14', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Woo Album #2', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'woo-album-2', '', '', '2016-03-13 08:07:40', '2016-03-13 08:07:40', '', 0, 'http://demo.woothemes.com/woocommerce/?post_type=product&#038;p=87', 9, 'product', '', 1),
(88, 1, '2013-06-07 11:33:53', '2013-06-07 11:33:53', '', 'cd_2_angle', '', 'inherit', 'open', 'open', '', 'cd_2_angle', '', '', '2013-06-07 11:33:53', '2013-06-07 11:33:53', '', 87, 'http://localhost/onefabshop/wp-content/uploads/2013/06/cd_2_angle.jpg', 0, 'attachment', 'image/jpeg', 0),
(89, 1, '2013-06-07 11:34:07', '2013-06-07 11:34:07', '', 'cd_2_flat', '', 'inherit', 'open', 'open', '', 'cd_2_flat', '', '', '2013-06-07 11:34:07', '2013-06-07 11:34:07', '', 87, 'http://localhost/onefabshop/wp-content/uploads/2013/06/cd_2_flat.jpg', 0, 'attachment', 'image/jpeg', 0),
(90, 1, '2013-06-07 11:35:18', '2013-06-07 11:35:18', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Woo Album #3', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'woo-album-3', '', '', '2016-03-13 08:07:40', '2016-03-13 08:07:40', '', 0, 'http://demo.woothemes.com/woocommerce/?post_type=product&#038;p=90', 8, 'product', '', 1),
(91, 1, '2013-06-07 11:34:58', '2013-06-07 11:34:58', '', 'cd_3_angle', '', 'inherit', 'open', 'open', '', 'cd_3_angle', '', '', '2013-06-07 11:34:58', '2013-06-07 11:34:58', '', 90, 'http://localhost/onefabshop/wp-content/uploads/2013/06/cd_3_angle.jpg', 0, 'attachment', 'image/jpeg', 0),
(92, 1, '2013-06-07 11:35:10', '2013-06-07 11:35:10', '', 'cd_3_flat', '', 'inherit', 'open', 'open', '', 'cd_3_flat', '', '', '2013-06-07 11:35:10', '2013-06-07 11:35:10', '', 90, 'http://localhost/onefabshop/wp-content/uploads/2013/06/cd_3_flat.jpg', 0, 'attachment', 'image/jpeg', 0),
(93, 1, '2013-06-07 11:36:34', '2013-06-07 11:36:34', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Woo Single #1', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'woo-single-1', '', '', '2016-03-13 08:07:40', '2016-03-13 08:07:40', '', 0, 'http://demo.woothemes.com/woocommerce/?post_type=product&#038;p=93', 7, 'product', '', 0),
(94, 1, '2013-06-07 11:36:10', '2013-06-07 11:36:10', '', 'cd_4_flat', '', 'inherit', 'open', 'open', '', 'cd_4_flat', '', '', '2013-06-07 11:36:10', '2013-06-07 11:36:10', '', 93, 'http://localhost/onefabshop/wp-content/uploads/2013/06/cd_4_flat.jpg', 0, 'attachment', 'image/jpeg', 0),
(95, 1, '2013-06-07 11:36:22', '2013-06-07 11:36:22', '', 'cd_4_angle', '', 'inherit', 'open', 'open', '', 'cd_4_angle', '', '', '2013-06-07 11:36:22', '2013-06-07 11:36:22', '', 93, 'http://localhost/onefabshop/wp-content/uploads/2013/06/cd_4_angle.jpg', 0, 'attachment', 'image/jpeg', 0),
(96, 1, '2013-06-07 11:37:23', '2013-06-07 11:37:23', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Woo Album #4', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'woo-album-4', '', '', '2016-03-13 08:07:40', '2016-03-13 08:07:40', '', 0, 'http://demo.woothemes.com/woocommerce/?post_type=product&#038;p=96', 6, 'product', '', 2),
(97, 1, '2013-06-07 11:37:04', '2013-06-07 11:37:04', '', 'cd_5_angle', '', 'inherit', 'open', 'open', '', 'cd_5_angle', '', '', '2013-06-07 11:37:04', '2013-06-07 11:37:04', '', 96, 'http://localhost/onefabshop/wp-content/uploads/2013/06/cd_5_angle.jpg', 0, 'attachment', 'image/jpeg', 0),
(98, 1, '2013-06-07 11:37:17', '2013-06-07 11:37:17', '', 'cd_5_flat', '', 'inherit', 'open', 'open', '', 'cd_5_flat', '', '', '2013-06-07 11:37:17', '2013-06-07 11:37:17', '', 96, 'http://localhost/onefabshop/wp-content/uploads/2013/06/cd_5_flat.jpg', 0, 'attachment', 'image/jpeg', 0),
(99, 1, '2013-06-07 11:38:12', '2013-06-07 11:38:12', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Woo Single #2', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'woo-single-2', '', '', '2016-03-13 08:07:40', '2016-03-13 08:07:40', '', 0, 'http://demo.woothemes.com/woocommerce/?post_type=product&#038;p=99', 5, 'product', '', 2),
(100, 1, '2013-06-07 11:37:51', '2013-06-07 11:37:51', '', 'cd_6_angle', '', 'inherit', 'open', 'open', '', 'cd_6_angle', '', '', '2013-06-07 11:37:51', '2013-06-07 11:37:51', '', 99, 'http://localhost/onefabshop/wp-content/uploads/2013/06/cd_6_angle.jpg', 0, 'attachment', 'image/jpeg', 0),
(101, 1, '2013-06-07 11:38:03', '2013-06-07 11:38:03', '', 'cd_6_flat', '', 'inherit', 'open', 'open', '', 'cd_6_flat', '', '', '2013-06-07 11:38:03', '2013-06-07 11:38:03', '', 99, 'http://localhost/onefabshop/wp-content/uploads/2013/06/cd_6_flat.jpg', 0, 'attachment', 'image/jpeg', 0),
(102, 1, '2013-06-07 10:35:51', '2013-06-07 10:35:51', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Woo Logo', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'woo-logo', '', '', '2016-02-25 07:09:14', '2016-02-25 07:09:14', '', 0, 'http://demo.woothemes.com/woocommerce/?post_type=product&#038;p=15', 27, 'product', '', 1),
(103, 1, '2013-06-07 10:41:52', '2013-06-07 10:41:52', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Premium Quality', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'premium-quality', '', '', '2016-02-25 07:14:13', '2016-02-25 07:14:13', '', 0, 'http://demo.woothemes.com/woocommerce/?post_type=product&#038;p=19', 26, 'product', '', 2),
(104, 1, '2013-06-07 10:46:01', '2013-06-07 10:46:01', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Ship Your Idea', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'ship-your-idea', '', '', '2016-02-25 07:14:12', '2016-02-25 07:14:12', '', 0, 'http://demo.woothemes.com/woocommerce/?post_type=product&#038;p=22', 25, 'product', '', 4),
(105, 1, '2013-06-07 10:44:57', '2013-06-07 10:44:57', '', 'Variation #23 of Ship Your Idea', '', 'publish', 'open', 'open', '', 'product-22-variation', '', '', '2013-06-07 10:44:57', '2013-06-07 10:44:57', '', 104, 'http://demo.woothemes.com/woocommerce/?product_variation=product-22-variation', 0, 'product_variation', '', 0),
(106, 1, '2013-06-07 10:44:58', '2013-06-07 10:44:58', '', 'Variation #24 of Ship Your Idea', '', 'publish', 'open', 'open', '', 'product-22-variation-2', '', '', '2013-06-07 10:44:58', '2013-06-07 10:44:58', '', 104, 'http://demo.woothemes.com/woocommerce/?product_variation=product-22-variation-2', 1, 'product_variation', '', 0),
(109, 1, '2016-02-06 12:17:16', '2016-02-06 12:17:16', '', 'AUTHENTIC GUESS BAGS AVAILABLE NOW!', '', 'publish', 'open', 'open', '', 'title', '', '', '2016-03-15 14:45:35', '2016-03-15 14:45:35', '', 0, 'http://localhost/onefabshop/?p=109', 9, 'post', '', 0),
(110, 1, '2016-02-06 12:17:16', '2016-02-06 12:17:16', 'description', 'Title', '', 'inherit', 'closed', 'closed', '', '109-revision-v1', '', '', '2016-02-06 12:17:16', '2016-02-06 12:17:16', '', 109, 'http://localhost/onefabshop/index.php/2016/02/06/109-revision-v1/', 0, 'revision', '', 0),
(111, 1, '2016-02-06 12:31:29', '2016-02-06 12:31:29', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2016-02-06 12:31:29', '2016-02-06 12:31:29', '', 0, 'http://localhost/onefabshop/?page_id=111', 6, 'page', '', 0),
(112, 1, '2016-02-06 12:31:29', '2016-02-06 12:31:29', '', 'Home', '', 'inherit', 'closed', 'closed', '', '111-revision-v1', '', '', '2016-02-06 12:31:29', '2016-02-06 12:31:29', '', 111, 'http://localhost/onefabshop/index.php/2016/02/06/111-revision-v1/', 0, 'revision', '', 0),
(113, 1, '2016-02-06 12:33:21', '2016-02-06 12:33:21', ' ', '', '', 'publish', 'closed', 'closed', '', '113', '', '', '2016-03-15 16:00:08', '2016-03-15 16:00:08', '', 0, 'http://localhost/onefabshop/?p=113', 1, 'nav_menu_item', '', 0),
(115, 1, '2016-02-06 12:39:31', '2016-02-06 12:39:31', '', 'Unknown-6', '', 'inherit', 'open', 'closed', '', 'unknown-6', '', '', '2016-02-06 12:39:31', '2016-02-06 12:39:31', '', 109, 'http://localhost/onefabshop/wp-content/uploads/2016/02/Unknown-6.jpg', 0, 'attachment', 'image/jpeg', 0),
(116, 1, '2016-02-06 12:39:31', '2016-02-06 12:39:31', '', 'Unknown-7', '', 'inherit', 'open', 'closed', '', 'unknown-7', '', '', '2016-02-06 12:39:31', '2016-02-06 12:39:31', '', 109, 'http://localhost/onefabshop/wp-content/uploads/2016/02/Unknown-7.jpg', 0, 'attachment', 'image/jpeg', 0),
(117, 1, '2016-02-06 12:40:32', '2016-02-06 12:40:32', 'description', 'POINTED CLOSED SHOES', '', 'inherit', 'closed', 'closed', '', '109-revision-v1', '', '', '2016-02-06 12:40:32', '2016-02-06 12:40:32', '', 109, 'http://localhost/onefabshop/index.php/2016/02/06/109-revision-v1/', 0, 'revision', '', 0),
(119, 1, '2016-02-06 12:41:59', '2016-02-06 12:41:59', 'Sample description here. Sample description here. <span style="line-height: 1.5;">Sample description here. Sample description here. </span>', 'POINTED CLOSED SHOES AVAILABLE NOW!', '', 'inherit', 'closed', 'closed', '', '109-revision-v1', '', '', '2016-02-06 12:41:59', '2016-02-06 12:41:59', '', 109, 'http://localhost/onefabshop/index.php/2016/02/06/109-revision-v1/', 0, 'revision', '', 0),
(120, 1, '2016-02-06 12:43:26', '2016-02-06 12:43:26', '', 'Men', '', 'publish', 'open', 'open', '', 'men', '', '', '2016-02-25 06:11:52', '2016-02-25 06:11:52', '', 0, 'http://localhost/onefabshop/?p=120', 5, 'post', '', 0),
(121, 1, '2016-02-06 12:43:26', '2016-02-06 12:43:26', '', 'Men', '', 'inherit', 'closed', 'closed', '', '120-revision-v1', '', '', '2016-02-06 12:43:26', '2016-02-06 12:43:26', '', 120, 'http://localhost/onefabshop/index.php/2016/02/06/120-revision-v1/', 0, 'revision', '', 0),
(122, 1, '2016-02-06 12:44:14', '2016-02-06 12:44:14', '', 'Women', '', 'publish', 'open', 'open', '', 'women', '', '', '2016-02-25 06:26:57', '2016-02-25 06:26:57', '', 0, 'http://localhost/onefabshop/?p=122', 8, 'post', '', 0),
(123, 1, '2016-02-06 12:44:14', '2016-02-06 12:44:14', '', 'Women', '', 'inherit', 'closed', 'closed', '', '122-revision-v1', '', '', '2016-02-06 12:44:14', '2016-02-06 12:44:14', '', 122, 'http://localhost/onefabshop/index.php/2016/02/06/122-revision-v1/', 0, 'revision', '', 0),
(124, 1, '2016-02-06 12:47:10', '2016-02-06 12:47:10', '', 'Shoes', '', 'publish', 'open', 'open', '', 'shoes-20-off', '', '', '2016-02-29 00:20:36', '2016-02-29 00:20:36', '', 0, 'http://localhost/onefabshop/?p=124', 6, 'post', '', 0),
(125, 1, '2016-02-06 12:47:01', '2016-02-06 12:47:01', '', 'Unknown-52', '', 'inherit', 'open', 'closed', '', 'unknown-52', '', '', '2016-02-06 12:47:01', '2016-02-06 12:47:01', '', 124, 'http://localhost/onefabshop/wp-content/uploads/2016/02/Unknown-52.jpg', 0, 'attachment', 'image/jpeg', 0),
(126, 1, '2016-02-06 12:47:03', '2016-02-06 12:47:03', '', 'Unknown-62', '', 'inherit', 'open', 'closed', '', 'unknown-62', '', '', '2016-02-06 12:47:03', '2016-02-06 12:47:03', '', 124, 'http://localhost/onefabshop/wp-content/uploads/2016/02/Unknown-62.jpg', 0, 'attachment', 'image/jpeg', 0),
(127, 1, '2016-02-06 12:47:10', '2016-02-06 12:47:10', '', 'Shoes 20% Off', '', 'inherit', 'closed', 'closed', '', '124-revision-v1', '', '', '2016-02-06 12:47:10', '2016-02-06 12:47:10', '', 124, 'http://localhost/onefabshop/index.php/2016/02/06/124-revision-v1/', 0, 'revision', '', 0),
(128, 1, '2016-02-06 12:47:37', '2016-02-06 12:47:37', '', 'Authentic Bags', '', 'publish', 'open', 'open', '', 'watches-5-off', '', '', '2016-02-29 00:18:46', '2016-02-29 00:18:46', '', 0, 'http://localhost/onefabshop/?p=128', 7, 'post', '', 0),
(129, 1, '2016-02-06 12:47:37', '2016-02-06 12:47:37', '', 'Watches 5% Off', '', 'inherit', 'closed', 'closed', '', '128-revision-v1', '', '', '2016-02-06 12:47:37', '2016-02-06 12:47:37', '', 128, 'http://localhost/onefabshop/index.php/2016/02/06/128-revision-v1/', 0, 'revision', '', 0),
(130, 1, '2016-02-20 13:39:06', '2016-02-20 13:39:06', '', 'Our Special Offer 50% Off', '', 'publish', 'open', 'open', '', 'our-special-offer-50-off', '', '', '2016-03-15 14:46:48', '2016-03-15 14:46:48', '', 0, 'http://localhost/onefabshop/?p=130', 4, 'post', '', 0),
(132, 1, '2016-02-06 13:39:06', '2016-02-06 13:39:06', '', 'Our Special Offer 50% Off', '', 'inherit', 'closed', 'closed', '', '130-revision-v1', '', '', '2016-02-06 13:39:06', '2016-02-06 13:39:06', '', 130, 'http://localhost/onefabshop/index.php/2016/02/06/130-revision-v1/', 0, 'revision', '', 0),
(133, 1, '2016-02-06 13:56:21', '2016-02-06 13:56:21', 'content here.', 'Sample', '', 'publish', 'open', 'open', '', 'sample-blog', '', '', '2016-02-29 01:06:50', '2016-02-29 01:06:50', '', 0, 'http://localhost/onefabshop/?p=133', 3, 'post', '', 2),
(134, 1, '2016-02-06 13:56:21', '2016-02-06 13:56:21', 'sample text sample text <span style="line-height: 1.5;">sample text sample text </span><span style="line-height: 1.5;">sample text sample text </span><span style="line-height: 1.5;">sample text sample text sample text sample text sample text sample text sample text sample text sample text sample text sample text <span style="line-height: 1.5;">sample text sample text </span><span style="line-height: 1.5;">sample text sample text </span><span style="line-height: 1.5;">sample text sample text sample text sample text sample text sample text sample text sample text sample text </span>sample text sample text <span style="line-height: 1.5;">sample text sample text </span><span style="line-height: 1.5;">sample text sample text </span><span style="line-height: 1.5;">sample text sample text sample text sample text sample text sample text sample text sample text sample text </span>sample text sample text <span style="line-height: 1.5;">sample text sample text </span><span style="line-height: 1.5;">sample text sample text </span><span style="line-height: 1.5;">sample text sample text sample text sample text sample text sample text sample text sample text sample text </span>sample text sample text <span style="line-height: 1.5;">sample text sample text </span><span style="line-height: 1.5;">sample text sample text </span><span style="line-height: 1.5;">sample text sample text sample text sample text sample text sample text sample text sample text sample text </span>sample text sample text <span style="line-height: 1.5;">sample text sample text </span><span style="line-height: 1.5;">sample text sample text </span><span style="line-height: 1.5;">sample text sample text sample text sample text sample text sample text sample text sample text sample text </span></span>', 'Sample Blog', '', 'inherit', 'closed', 'closed', '', '133-revision-v1', '', '', '2016-02-06 13:56:21', '2016-02-06 13:56:21', '', 133, 'http://localhost/onefabshop/133-revision-v1/', 0, 'revision', '', 0),
(137, 1, '2016-02-06 14:08:22', '2016-02-06 14:08:22', '', 'video-bkg', '', 'inherit', 'open', 'closed', '', 'video-bkg', '', '', '2016-02-06 14:08:22', '2016-02-06 14:08:22', '', 0, 'http://localhost/onefabshop/wp-content/uploads/2016/02/video-bkg.jpg', 0, 'attachment', 'image/jpeg', 0),
(138, 1, '2016-02-06 14:12:51', '2016-02-06 14:12:51', '', '8degree-callto', '', 'inherit', 'open', 'closed', '', '8degree-callto', '', '', '2016-02-06 14:12:51', '2016-02-06 14:12:51', '', 0, 'http://localhost/onefabshop/wp-content/uploads/2016/02/8degree-callto.jpg', 0, 'attachment', 'image/jpeg', 0),
(139, 1, '2016-02-06 14:26:21', '2016-02-06 14:26:21', '', 'denin-jens', '', 'inherit', 'open', 'closed', '', 'denin-jens', '', '', '2016-02-06 14:26:21', '2016-02-06 14:26:21', '', 0, 'http://localhost/onefabshop/wp-content/uploads/2016/02/denin-jens.jpg', 0, 'attachment', 'image/jpeg', 0),
(140, 1, '2016-02-06 14:59:38', '2016-02-06 14:59:38', 'content here.', 'Sample', '', 'publish', 'open', 'open', '', 'sample-blog-2', '', '', '2016-02-29 01:04:53', '2016-02-29 01:04:53', '', 0, 'http://localhost/onefabshop/?p=140', 2, 'post', '', 0),
(141, 1, '2016-02-06 14:59:38', '2016-02-06 14:59:38', 'sample text here', 'Sample Blog 2', '', 'inherit', 'closed', 'closed', '', '140-revision-v1', '', '', '2016-02-06 14:59:38', '2016-02-06 14:59:38', '', 140, 'http://localhost/onefabshop/140-revision-v1/', 0, 'revision', '', 0),
(142, 1, '2016-02-06 15:05:02', '2016-02-06 15:05:02', 'sample textsample textsample textsample textsample textsample textsample textsample textsample textsample textsample textsample textsample textsample textsample textsample textsample textsample text', 'Sample Blog', '', 'inherit', 'closed', 'closed', '', '133-revision-v1', '', '', '2016-02-06 15:05:02', '2016-02-06 15:05:02', '', 133, 'http://localhost/onefabshop/133-revision-v1/', 0, 'revision', '', 0),
(143, 1, '2016-02-06 15:05:25', '2016-02-06 15:05:25', 'sample textsample textsample textsample textsample textsample textsample textsample textsample textsample textsample textsample textsample textsample textsample textsample textsample textsample text', 'Sample Blog 2', '', 'inherit', 'closed', 'closed', '', '140-revision-v1', '', '', '2016-02-06 15:05:25', '2016-02-06 15:05:25', '', 140, 'http://localhost/onefabshop/140-revision-v1/', 0, 'revision', '', 0),
(146, 1, '2016-02-07 03:00:32', '2016-02-07 03:00:32', '', 'ofslogo', '', 'inherit', 'open', 'closed', '', 'ofslogo', '', '', '2016-02-07 03:00:32', '2016-02-07 03:00:32', '', 0, 'http://localhost/onefabshop/wp-content/uploads/2016/02/ofslogo.png', 0, 'attachment', 'image/png', 0);
INSERT INTO `ofs2616_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(149, 1, '2016-02-07 08:45:27', '2016-02-07 08:45:27', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\n\r\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\r\n\r\n...or something like this:\r\n\r\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\r\n\r\nAs a new WordPress user, you should go to <a href="http://localhost/onefabshop/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'About', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2016-02-07 08:45:27', '2016-02-07 08:45:27', '', 2, 'http://localhost/onefabshop/2-revision-v1/', 0, 'revision', '', 0),
(150, 1, '2016-02-07 08:46:37', '2016-02-07 08:46:37', ' ', '', '', 'publish', 'closed', 'closed', '', '150', '', '', '2016-03-15 16:00:08', '2016-03-15 16:00:08', '', 0, 'http://localhost/onefabshop/?p=150', 3, 'nav_menu_item', '', 0),
(153, 1, '2016-02-24 05:45:56', '2016-02-24 05:45:56', ' ', '', '', 'publish', 'closed', 'closed', '', '153', '', '', '2016-03-15 15:59:57', '2016-03-15 15:59:57', '', 0, 'http://localhost/onefabshop/?p=153', 1, 'nav_menu_item', '', 0),
(154, 1, '2016-02-24 05:45:57', '2016-02-24 05:45:57', ' ', '', '', 'publish', 'closed', 'closed', '', '154', '', '', '2016-03-15 15:59:57', '2016-03-15 15:59:57', '', 0, 'http://localhost/onefabshop/?p=154', 31, 'nav_menu_item', '', 0),
(156, 1, '2016-02-24 05:49:28', '2016-02-24 05:49:28', 'asdasdadada', 'asd', '', 'trash', 'open', 'open', '', 'asd', '', '', '2016-02-28 23:50:12', '2016-02-28 23:50:12', '', 0, 'http://localhost/onefabshop/?p=156', 1, 'post', '', 0),
(157, 1, '2016-02-24 05:49:28', '2016-02-24 05:49:28', 'asdasdadada', 'asd', '', 'inherit', 'closed', 'closed', '', '156-revision-v1', '', '', '2016-02-24 05:49:28', '2016-02-24 05:49:28', '', 156, 'http://localhost/onefabshop/blog/2016/02/24/156-revision-v1/', 0, 'revision', '', 0),
(158, 1, '2016-02-24 05:55:13', '2016-02-24 05:55:13', '', 'Blog', '', 'trash', 'closed', 'closed', '', 'blog', '', '', '2016-02-24 06:02:18', '2016-02-24 06:02:18', '', 0, 'http://localhost/onefabshop/?page_id=158', 0, 'page', '', 0),
(159, 1, '2016-02-24 05:55:13', '2016-02-24 05:55:13', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '158-revision-v1', '', '', '2016-02-24 05:55:13', '2016-02-24 05:55:13', '', 158, 'http://localhost/onefabshop/blog/158-revision-v1/', 0, 'revision', '', 0),
(161, 1, '2016-02-24 07:18:57', '2016-02-24 07:18:57', '', 'Blogs', '', 'publish', 'closed', 'closed', '', '161', '', '', '2016-03-15 15:59:57', '2016-03-15 15:59:57', '', 0, 'http://localhost/onefabshop/?p=161', 30, 'nav_menu_item', '', 0),
(163, 1, '2016-02-25 05:39:43', '2016-02-25 05:39:43', '', 'man-img', '', 'inherit', 'open', 'closed', '', 'man-img', '', '', '2016-02-25 05:39:43', '2016-02-25 05:39:43', '', 0, 'http://localhost/onefabshop/wp-content/uploads/2016/02/man-img.jpg', 0, 'attachment', 'image/jpeg', 0),
(164, 1, '2016-02-25 05:39:49', '2016-02-25 05:39:49', '', 'women-img', '', 'inherit', 'open', 'closed', '', 'women-img', '', '', '2016-02-25 05:39:49', '2016-02-25 05:39:49', '', 0, 'http://localhost/onefabshop/wp-content/uploads/2016/02/women-img.jpg', 0, 'attachment', 'image/jpeg', 0),
(165, 1, '2016-02-25 05:48:16', '2016-02-25 05:48:16', '', 'Men', '', 'inherit', 'closed', 'closed', '', '120-autosave-v1', '', '', '2016-02-25 05:48:16', '2016-02-25 05:48:16', '', 120, 'http://localhost/onefabshop/120-autosave-v1/', 0, 'revision', '', 0),
(166, 1, '2016-02-25 06:10:37', '2016-02-25 06:10:37', '', 'Post Redirects', '', 'publish', 'closed', 'closed', '', 'acf_post-redirects', '', '', '2016-03-12 08:14:14', '2016-03-12 08:14:14', '', 0, 'http://localhost/onefabshop/?post_type=acf&#038;p=166', 0, 'acf', '', 0),
(167, 1, '2016-02-25 06:11:52', '2016-02-25 06:11:52', '', 'Men', '', 'inherit', 'closed', 'closed', '', '120-revision-v1', '', '', '2016-02-25 06:11:52', '2016-02-25 06:11:52', '', 120, 'http://localhost/onefabshop/120-revision-v1/', 0, 'revision', '', 0),
(168, 1, '2016-02-25 06:26:57', '2016-02-25 06:26:57', '', 'Women', '', 'inherit', 'closed', 'closed', '', '122-revision-v1', '', '', '2016-02-25 06:26:57', '2016-02-25 06:26:57', '', 122, 'http://localhost/onefabshop/122-revision-v1/', 0, 'revision', '', 0),
(170, 1, '2016-02-25 06:42:21', '2016-02-25 06:42:21', '', 'Shoes 20% Off', '', 'inherit', 'closed', 'closed', '', '124-revision-v1', '', '', '2016-02-25 06:42:21', '2016-02-25 06:42:21', '', 124, 'http://localhost/onefabshop/124-revision-v1/', 0, 'revision', '', 0),
(179, 1, '2016-02-29 00:18:38', '2016-02-29 00:18:38', '', 'Authentic Bags', '', 'inherit', 'closed', 'closed', '', '128-autosave-v1', '', '', '2016-02-29 00:18:38', '2016-02-29 00:18:38', '', 128, 'http://localhost/onefabshop/128-autosave-v1/', 0, 'revision', '', 0),
(180, 1, '2016-02-25 07:06:16', '2016-02-25 07:06:16', '', 'Watches 5% Off', '', 'inherit', 'closed', 'closed', '', '128-revision-v1', '', '', '2016-02-25 07:06:16', '2016-02-25 07:06:16', '', 128, 'http://localhost/onefabshop/128-revision-v1/', 0, 'revision', '', 0),
(181, 1, '2016-02-25 07:28:53', '2016-02-25 07:28:53', '', 'Variation #181 of MK Bag', '', 'publish', 'closed', 'closed', '', 'product-8-variation', '', '', '2016-03-06 12:42:17', '2016-03-06 12:42:17', '', 8, 'http://localhost/onefabshop/product_variation/product-8-variation/', 0, 'product_variation', '', 0),
(182, 1, '2016-02-25 07:28:53', '2016-02-25 07:28:53', '', 'Variation #182 of MK Bag', '', 'publish', 'closed', 'closed', '', 'product-8-variation-2', '', '', '2016-03-06 12:42:17', '2016-03-06 12:42:17', '', 8, 'http://localhost/onefabshop/product_variation/product-8-variation-2/', 0, 'product_variation', '', 0),
(183, 1, '2016-02-28 21:21:03', '2016-02-28 21:21:03', '', 'About', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2016-02-28 21:21:03', '2016-02-28 21:21:03', '', 2, 'http://localhost/onefabshop/2-revision-v1/', 0, 'revision', '', 0),
(184, 1, '2016-02-28 22:40:36', '2016-02-28 22:40:36', 'Authentic ALDO Bag. Free Shipping Nationwide!', 'Aldo', 'Authentic ALDO Bag. Free Shipping Nationwide!', 'publish', 'open', 'closed', '', 'aldo', '', '', '2016-03-13 08:07:40', '2016-03-13 08:07:40', '', 0, 'http://localhost/onefabshop/?post_type=product&#038;p=184', 3, 'product', '', 0),
(185, 1, '2016-02-28 22:36:39', '2016-02-28 22:36:39', '', 'aldo', '', 'inherit', 'open', 'closed', '', 'aldo', '', '', '2016-02-28 22:36:39', '2016-02-28 22:36:39', '', 184, 'http://localhost/onefabshop/wp-content/uploads/2016/02/aldo.jpg', 0, 'attachment', 'image/jpeg', 0),
(190, 1, '2016-02-28 22:49:34', '2016-02-28 22:49:34', '', 'Order &ndash; February 28, 2016 @ 10:49 PM', '', 'wc-on-hold', 'open', 'closed', 'order_56d3797ee1c6d', 'order-feb-28-2016-1049-pm', '', '', '2016-02-28 22:50:00', '2016-02-28 22:50:00', '', 0, 'http://localhost/onefabshop/?post_type=shop_order&#038;p=190', 0, 'shop_order', '', 1),
(193, 1, '2016-02-28 23:11:50', '2016-02-28 23:11:50', 'FROM 2000-3000 PESOS ONLY\r\n\r\nFREE SHIPPING NATIONWIDE PHILIPPINES', 'Aldo Bag', 'FROM 2000-3000 PESOS ONLY. FREE SHIPPING NATIONWIDE PHILIPPINES', 'publish', 'open', 'closed', '', 'aldo-bag', '', '', '2016-03-13 08:07:40', '2016-03-13 08:07:40', '', 0, 'http://localhost/onefabshop/?post_type=product&#038;p=193', 2, 'product', '', 0),
(195, 1, '2016-02-28 23:05:26', '2016-02-28 23:05:26', '', 'Our Special Offer 50% Off', '', 'inherit', 'closed', 'closed', '', '130-autosave-v1', '', '', '2016-02-28 23:05:26', '2016-02-28 23:05:26', '', 130, 'http://localhost/onefabshop/130-autosave-v1/', 0, 'revision', '', 0),
(196, 1, '2016-02-28 23:08:47', '2016-02-28 23:08:47', '', 'Variation #196 of Aldo Bag', '', 'publish', 'closed', 'closed', '', 'product-193-variation', '', '', '2016-02-28 23:10:54', '2016-02-28 23:10:54', '', 193, 'http://localhost/onefabshop/product_variation/product-193-variation/', 0, 'product_variation', '', 0),
(197, 1, '2016-02-28 23:08:48', '2016-02-28 23:08:48', '', 'Variation #197 of Aldo Bag', '', 'publish', 'closed', 'closed', '', 'product-193-variation-2', '', '', '2016-02-28 23:10:54', '2016-02-28 23:10:54', '', 193, 'http://localhost/onefabshop/product_variation/product-193-variation-2/', 0, 'product_variation', '', 0),
(198, 1, '2016-02-28 23:08:48', '2016-02-28 23:08:48', '', 'Variation #198 of Aldo Bag', '', 'publish', 'closed', 'closed', '', 'product-193-variation-3', '', '', '2016-02-28 23:10:53', '2016-02-28 23:10:53', '', 193, 'http://localhost/onefabshop/product_variation/product-193-variation-3/', 0, 'product_variation', '', 0),
(199, 1, '2016-02-28 23:09:24', '2016-02-28 23:09:24', '', 'aldo2-1', '', 'inherit', 'open', 'closed', '', 'aldo2-1', '', '', '2016-02-28 23:09:24', '2016-02-28 23:09:24', '', 198, 'http://localhost/onefabshop/wp-content/uploads/2016/02/aldo2-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(200, 1, '2016-02-28 23:09:29', '2016-02-28 23:09:29', '', 'aldo2-2', '', 'inherit', 'open', 'closed', '', 'aldo2-2', '', '', '2016-02-28 23:09:29', '2016-02-28 23:09:29', '', 198, 'http://localhost/onefabshop/wp-content/uploads/2016/02/aldo2-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(201, 1, '2016-02-28 23:09:35', '2016-02-28 23:09:35', '', 'aldo2-3', '', 'inherit', 'open', 'closed', '', 'aldo2-3', '', '', '2016-02-28 23:09:35', '2016-02-28 23:09:35', '', 198, 'http://localhost/onefabshop/wp-content/uploads/2016/02/aldo2-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(202, 1, '2016-02-28 23:09:38', '2016-02-28 23:09:38', '', 'aldo2-4', '', 'inherit', 'open', 'closed', '', 'aldo2-4', '', '', '2016-02-28 23:09:38', '2016-02-28 23:09:38', '', 198, 'http://localhost/onefabshop/wp-content/uploads/2016/02/aldo2-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(203, 1, '2016-02-28 23:09:43', '2016-02-28 23:09:43', '', 'aldo2-5', '', 'inherit', 'open', 'closed', '', 'aldo2-5', '', '', '2016-02-28 23:09:43', '2016-02-28 23:09:43', '', 198, 'http://localhost/onefabshop/wp-content/uploads/2016/02/aldo2-5.jpg', 0, 'attachment', 'image/jpeg', 0),
(205, 1, '2016-02-28 23:23:39', '2016-02-28 23:23:39', '', 'Dune - Cheetah Print', '', 'publish', 'open', 'closed', '', 'dune-cheetah-print', '', '', '2016-03-13 08:07:40', '2016-03-13 08:07:40', '', 0, 'http://localhost/onefabshop/?post_type=product&#038;p=205', 0, 'product', '', 0),
(206, 1, '2016-02-28 23:20:46', '2016-02-28 23:20:46', '', 'Cheetah', '', 'inherit', 'open', 'closed', '', 'cheetah', '', '', '2016-02-28 23:20:46', '2016-02-28 23:20:46', '', 205, 'http://localhost/onefabshop/wp-content/uploads/2016/02/Cheetah.jpg', 0, 'attachment', 'image/jpeg', 0),
(208, 1, '2016-02-28 23:45:44', '2016-02-28 23:45:44', '', 'guess-banner', '', 'inherit', 'open', 'closed', '', 'guess-banner', '', '', '2016-02-28 23:45:44', '2016-02-28 23:45:44', '', 130, 'http://localhost/onefabshop/wp-content/uploads/2016/02/guess-banner.jpg', 0, 'attachment', 'image/jpeg', 0),
(210, 1, '2016-02-28 23:48:33', '2016-02-28 23:48:33', 'Sample description here. Sample description here. <span style="line-height: 1.5;">Sample description here. Sample description here. </span>', 'AUTHENTIC GUESS BAGS AVAILABLE NOW!', '', 'inherit', 'closed', 'closed', '', '109-revision-v1', '', '', '2016-02-28 23:48:33', '2016-02-28 23:48:33', '', 109, 'http://localhost/onefabshop/109-revision-v1/', 0, 'revision', '', 0),
(212, 1, '2016-02-28 23:57:34', '2016-02-28 23:57:34', '', 'guess2-banner-2', '', 'inherit', 'open', 'closed', '', 'guess2-banner-2-2', '', '', '2016-02-28 23:57:34', '2016-02-28 23:57:34', '', 109, 'http://localhost/onefabshop/wp-content/uploads/2016/02/guess2-banner-2-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(213, 1, '2016-02-29 00:03:02', '2016-02-29 00:03:02', '', 'AUTHENTIC GUESS BAGS AVAILABLE NOW!', '', 'inherit', 'closed', 'closed', '', '109-autosave-v1', '', '', '2016-02-29 00:03:02', '2016-02-29 00:03:02', '', 109, 'http://localhost/onefabshop/109-autosave-v1/', 0, 'revision', '', 0),
(214, 1, '2016-02-29 00:03:08', '2016-02-29 00:03:08', '', 'AUTHENTIC GUESS BAGS AVAILABLE NOW!', '', 'inherit', 'closed', 'closed', '', '109-revision-v1', '', '', '2016-02-29 00:03:08', '2016-02-29 00:03:08', '', 109, 'http://localhost/onefabshop/109-revision-v1/', 0, 'revision', '', 0),
(215, 1, '2016-02-29 00:18:29', '2016-02-29 00:18:29', '', 'bags', '', 'inherit', 'open', 'closed', '', 'bags-4', '', '', '2016-02-29 00:18:29', '2016-02-29 00:18:29', '', 128, 'http://localhost/onefabshop/wp-content/uploads/2016/02/bags.jpg', 0, 'attachment', 'image/jpeg', 0),
(216, 1, '2016-02-29 00:18:46', '2016-02-29 00:18:46', '', 'Authentic Bags', '', 'inherit', 'closed', 'closed', '', '128-revision-v1', '', '', '2016-02-29 00:18:46', '2016-02-29 00:18:46', '', 128, 'http://localhost/onefabshop/128-revision-v1/', 0, 'revision', '', 0),
(217, 1, '2016-02-29 00:20:36', '2016-02-29 00:20:36', '', 'Shoes', '', 'inherit', 'closed', 'closed', '', '124-revision-v1', '', '', '2016-02-29 00:20:36', '2016-02-29 00:20:36', '', 124, 'http://localhost/onefabshop/124-revision-v1/', 0, 'revision', '', 0),
(218, 1, '2016-02-29 01:04:53', '2016-02-29 01:04:53', 'content here.', 'Sample', '', 'inherit', 'closed', 'closed', '', '140-revision-v1', '', '', '2016-02-29 01:04:53', '2016-02-29 01:04:53', '', 140, 'http://localhost/onefabshop/140-revision-v1/', 0, 'revision', '', 0),
(219, 1, '2016-02-29 01:06:50', '2016-02-29 01:06:50', 'content here.', 'Sample', '', 'inherit', 'closed', 'closed', '', '133-revision-v1', '', '', '2016-02-29 01:06:50', '2016-02-29 01:06:50', '', 133, 'http://localhost/onefabshop/133-revision-v1/', 0, 'revision', '', 0),
(220, 1, '2016-02-29 01:13:52', '2016-02-29 01:13:52', '', 'Terms and Conditions', '', 'publish', 'closed', 'closed', '', 'terms-and-conditions', '', '', '2016-02-29 01:13:52', '2016-02-29 01:13:52', '', 0, 'http://localhost/onefabshop/?page_id=220', 2, 'page', '', 0),
(221, 1, '2016-02-29 01:13:52', '2016-02-29 01:13:52', '', 'Terms and Conditions', '', 'inherit', 'closed', 'closed', '', '220-revision-v1', '', '', '2016-02-29 01:13:52', '2016-02-29 01:13:52', '', 220, 'http://localhost/onefabshop/220-revision-v1/', 0, 'revision', '', 0),
(222, 1, '2016-02-29 01:14:43', '2016-02-29 01:14:43', '', 'Privacy', '', 'publish', 'closed', 'closed', '', 'privacy', '', '', '2016-02-29 01:14:43', '2016-02-29 01:14:43', '', 0, 'http://localhost/onefabshop/?page_id=222', 3, 'page', '', 0),
(223, 1, '2016-02-29 01:14:43', '2016-02-29 01:14:43', '', 'Privacy', '', 'inherit', 'closed', 'closed', '', '222-revision-v1', '', '', '2016-02-29 01:14:43', '2016-02-29 01:14:43', '', 222, 'http://localhost/onefabshop/222-revision-v1/', 0, 'revision', '', 0),
(224, 1, '2016-02-29 01:15:39', '2016-02-29 01:15:39', ' ', '', '', 'publish', 'closed', 'closed', '', '224', '', '', '2016-03-15 16:00:08', '2016-03-15 16:00:08', '', 0, 'http://localhost/onefabshop/?p=224', 5, 'nav_menu_item', '', 0),
(225, 1, '2016-02-29 01:15:40', '2016-02-29 01:15:40', ' ', '', '', 'publish', 'closed', 'closed', '', '225', '', '', '2016-03-15 16:00:08', '2016-03-15 16:00:08', '', 0, 'http://localhost/onefabshop/?p=225', 6, 'nav_menu_item', '', 0),
(229, 1, '2016-02-29 02:44:35', '2016-02-29 02:44:35', ' ', '', '', 'publish', 'closed', 'closed', '', '229', '', '', '2016-03-15 16:00:08', '2016-03-15 16:00:08', '', 0, 'http://localhost/onefabshop/?p=229', 2, 'nav_menu_item', '', 0),
(230, 1, '2016-02-29 02:45:20', '2016-02-29 02:45:20', ' ', '', '', 'publish', 'closed', 'closed', '', '230', '', '', '2016-03-15 15:59:57', '2016-03-15 15:59:57', '', 0, 'http://localhost/onefabshop/?p=230', 2, 'nav_menu_item', '', 0),
(232, 1, '2016-02-29 04:22:00', '2016-02-29 04:22:00', '', 'Order &ndash; February 29, 2016 @ 04:22 AM', '', 'wc-on-hold', 'closed', 'closed', 'order_56d3c79d57fe2', 'order-feb-29-2016-0422-am', '', '', '2016-02-29 04:49:52', '2016-02-29 04:49:52', '', 0, 'http://localhost/onefabshop/?post_type=shop_order&#038;p=232', 0, 'shop_order', '', 2),
(233, 1, '2016-02-29 04:32:25', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-02-29 04:32:25', '0000-00-00 00:00:00', '', 0, 'http://localhost/onefabshop/?p=233', 1, 'nav_menu_item', '', 0),
(234, 1, '2016-02-29 04:33:29', '2016-02-29 04:33:29', ' ', '', '', 'publish', 'closed', 'closed', '', '234', '', '', '2016-03-15 15:59:57', '2016-03-15 15:59:57', '', 0, 'http://localhost/onefabshop/?p=234', 33, 'nav_menu_item', '', 0),
(235, 1, '2016-02-29 04:37:10', '2016-02-29 04:37:10', '[woocommerce_my_account]', 'My Account', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2016-02-29 04:37:10', '2016-02-29 04:37:10', '', 7, 'http://localhost/onefabshop/7-revision-v1/', 0, 'revision', '', 0),
(238, 1, '2016-02-29 05:27:53', '2016-02-29 05:27:53', '', 'for customers in UAE.', '', 'publish', 'open', 'open', '', 'store-uae', '', '', '2016-03-12 08:12:37', '2016-03-12 08:12:37', '', 0, 'http://localhost/onefabshop/?p=238', 1, 'post', '', 0),
(239, 1, '2016-02-29 05:27:53', '2016-02-29 05:27:53', '', 'For Customers in UAE', '', 'inherit', 'closed', 'closed', '', '238-revision-v1', '', '', '2016-02-29 05:27:53', '2016-02-29 05:27:53', '', 238, 'http://localhost/onefabshop/238-revision-v1/', 0, 'revision', '', 0),
(240, 1, '2016-02-29 05:28:33', '2016-02-29 05:28:33', '', 'For Customers in UAE', '', 'inherit', 'closed', 'closed', '', '238-revision-v1', '', '', '2016-02-29 05:28:33', '2016-02-29 05:28:33', '', 238, 'http://localhost/onefabshop/238-revision-v1/', 0, 'revision', '', 0),
(241, 1, '2016-02-29 05:35:53', '2016-02-29 05:35:53', '', 'For Customers in UAE.', '', 'inherit', 'closed', 'closed', '', '238-revision-v1', '', '', '2016-02-29 05:35:53', '2016-02-29 05:35:53', '', 238, 'http://localhost/onefabshop/238-revision-v1/', 0, 'revision', '', 0),
(243, 1, '2016-03-09 16:10:00', '2016-03-09 16:10:00', '', 'Order &ndash; March 9, 2016 @ 04:10 PM', '', 'wc-on-hold', 'closed', 'closed', 'order_56e04b0a8b168', 'order-mar-09-2016-0410-pm', '', '', '2016-03-12 11:34:24', '2016-03-12 11:34:24', '', 0, 'http://localhost/onefabshop/?post_type=shop_order&#038;p=243', 0, 'shop_order', '', 2),
(245, 1, '2016-03-12 02:32:38', '2016-03-12 02:32:38', '', 'For customers in UAE.', '', 'inherit', 'closed', 'closed', '', '238-revision-v1', '', '', '2016-03-12 02:32:38', '2016-03-12 02:32:38', '', 238, 'http://localhost/onefabshop/238-revision-v1/', 0, 'revision', '', 0),
(246, 1, '2016-03-12 02:36:54', '2016-03-12 02:36:54', '', 'for customers in UAE.', '', 'inherit', 'closed', 'closed', '', '238-revision-v1', '', '', '2016-03-12 02:36:54', '2016-03-12 02:36:54', '', 238, 'http://localhost/onefabshop/238-revision-v1/', 0, 'revision', '', 0),
(247, 1, '2016-03-12 03:07:51', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-03-12 03:07:51', '0000-00-00 00:00:00', '', 0, 'http://localhost/onefabshop/?p=247', 0, 'post', '', 0),
(248, 1, '2016-03-12 03:25:56', '2016-03-12 03:25:56', '', 'for customers in UAE, click here.', '', 'inherit', 'closed', 'closed', '', '238-revision-v1', '', '', '2016-03-12 03:25:56', '2016-03-12 03:25:56', '', 238, 'http://localhost/onefabshop/238-revision-v1/', 0, 'revision', '', 0),
(249, 1, '2016-03-12 03:43:15', '2016-03-12 03:43:15', '', 'for customers in UAE.', '', 'inherit', 'closed', 'closed', '', '238-revision-v1', '', '', '2016-03-12 03:43:15', '2016-03-12 03:43:15', '', 238, 'http://localhost/onefabshop/238-revision-v1/', 0, 'revision', '', 0),
(250, 1, '2016-03-12 03:50:11', '2016-03-12 03:50:11', '', 'ph', '', 'inherit', 'open', 'closed', '', 'ph', '', '', '2016-03-12 03:50:11', '2016-03-12 03:50:11', '', 238, 'http://localhost/onefabshop/wp-content/uploads/2016/02/ph.png', 0, 'attachment', 'image/png', 0),
(251, 1, '2016-03-12 03:50:17', '2016-03-12 03:50:17', '', 'uae', '', 'inherit', 'open', 'closed', '', 'uae', '', '', '2016-03-12 03:50:17', '2016-03-12 03:50:17', '', 238, 'http://localhost/onefabshop/wp-content/uploads/2016/02/uae.png', 0, 'attachment', 'image/png', 0),
(252, 1, '2016-03-12 05:41:48', '2016-03-12 05:41:48', '', 'Order &ndash; March 12, 2016 @ 05:41 AM', '', 'wc-cancelled', 'open', 'closed', 'order_56e3ac1cdac2e', 'order-mar-12-2016-0541-am', '', '', '2016-03-12 08:50:34', '2016-03-12 08:50:34', '', 0, 'http://localhost/onefabshop/?post_type=shop_order&#038;p=252', 0, 'shop_order', '', 1),
(253, 1, '2016-03-12 08:37:49', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-03-12 08:37:49', '0000-00-00 00:00:00', '', 0, 'http://localhost/onefabshop/?p=253', 1, 'nav_menu_item', '', 0),
(254, 1, '2016-03-12 09:17:09', '2016-03-12 09:17:09', '', 'Blogs', '', 'publish', 'closed', 'closed', '', 'blogs-2', '', '', '2016-03-15 16:00:08', '2016-03-15 16:00:08', '', 0, 'http://localhost/onefabshop/?p=254', 4, 'nav_menu_item', '', 0),
(255, 1, '2016-03-12 11:39:50', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-03-12 11:39:50', '0000-00-00 00:00:00', '', 0, 'http://localhost/onefabshop/?post_type=shop_coupon&p=255', 0, 'shop_coupon', '', 0),
(256, 1, '2016-03-12 21:10:03', '2016-03-12 21:10:03', '', 'Order &ndash; March 12, 2016 @ 09:10 PM', '', 'wc-on-hold', 'open', 'closed', 'order_56e485ab90bcd', 'order-mar-12-2016-0910-pm', '', '', '2016-03-12 21:10:03', '2016-03-12 21:10:03', '', 0, 'http://localhost/onefabshop/?post_type=shop_order&#038;p=256', 0, 'shop_order', '', 1),
(257, 1, '2016-03-12 21:36:24', '2016-03-12 21:36:24', '', 'Order &ndash; March 12, 2016 @ 09:36 PM', '', 'wc-completed', 'closed', 'closed', 'order_56e48bd834e26', 'order-mar-12-2016-0936-pm', '', '', '2016-03-12 21:41:15', '2016-03-12 21:41:15', '', 0, 'http://localhost/onefabshop/?post_type=shop_order&#038;p=257', 0, 'shop_order', '', 4),
(258, 1, '2016-03-13 05:46:54', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2016-03-13 05:46:54', '0000-00-00 00:00:00', '', 0, 'http://localhost/onefabshop/?post_type=product&p=258', 0, 'product', '', 0),
(262, 1, '2016-03-13 07:55:19', '2016-03-13 07:55:19', ' ', '', '', 'publish', 'closed', 'closed', '', '262', '', '', '2016-03-15 15:59:57', '2016-03-15 15:59:57', '', 0, 'http://localhost/onefabshop/?p=262', 16, 'nav_menu_item', '', 0),
(263, 1, '2016-03-13 07:55:19', '2016-03-13 07:55:19', ' ', '', '', 'publish', 'closed', 'closed', '', '263', '', '', '2016-03-15 15:59:57', '2016-03-15 15:59:57', '', 7, 'http://localhost/onefabshop/?p=263', 19, 'nav_menu_item', '', 0),
(264, 1, '2016-03-13 07:55:19', '2016-03-13 07:55:19', ' ', '', '', 'publish', 'closed', 'closed', '', '264', '', '', '2016-03-15 15:59:57', '2016-03-15 15:59:57', '', 7, 'http://localhost/onefabshop/?p=264', 17, 'nav_menu_item', '', 0),
(265, 1, '2016-03-13 07:55:19', '2016-03-13 07:55:19', ' ', '', '', 'publish', 'closed', 'closed', '', '265', '', '', '2016-03-15 15:59:57', '2016-03-15 15:59:57', '', 7, 'http://localhost/onefabshop/?p=265', 18, 'nav_menu_item', '', 0),
(266, 1, '2016-03-13 07:55:19', '2016-03-13 07:55:19', ' ', '', '', 'publish', 'closed', 'closed', '', '266', '', '', '2016-03-15 15:59:57', '2016-03-15 15:59:57', '', 7, 'http://localhost/onefabshop/?p=266', 20, 'nav_menu_item', '', 0),
(267, 1, '2016-03-13 07:55:20', '2016-03-13 07:55:20', ' ', '', '', 'publish', 'closed', 'closed', '', '267', '', '', '2016-03-15 15:59:57', '2016-03-15 15:59:57', '', 0, 'http://localhost/onefabshop/?p=267', 21, 'nav_menu_item', '', 0),
(268, 1, '2016-03-13 07:55:20', '2016-03-13 07:55:20', ' ', '', '', 'publish', 'closed', 'closed', '', '268', '', '', '2016-03-15 15:59:57', '2016-03-15 15:59:57', '', 6, 'http://localhost/onefabshop/?p=268', 22, 'nav_menu_item', '', 0),
(269, 1, '2016-03-13 07:55:20', '2016-03-13 07:55:20', ' ', '', '', 'publish', 'closed', 'closed', '', '269', '', '', '2016-03-15 15:59:57', '2016-03-15 15:59:57', '', 6, 'http://localhost/onefabshop/?p=269', 24, 'nav_menu_item', '', 0),
(270, 1, '2016-03-13 07:55:20', '2016-03-13 07:55:20', ' ', '', '', 'publish', 'closed', 'closed', '', '270', '', '', '2016-03-15 15:59:57', '2016-03-15 15:59:57', '', 6, 'http://localhost/onefabshop/?p=270', 23, 'nav_menu_item', '', 0),
(271, 1, '2016-03-13 07:55:20', '2016-03-13 07:55:20', ' ', '', '', 'publish', 'closed', 'closed', '', '271', '', '', '2016-03-15 15:59:57', '2016-03-15 15:59:57', '', 6, 'http://localhost/onefabshop/?p=271', 25, 'nav_menu_item', '', 0),
(272, 1, '2016-03-13 07:56:54', '2016-03-13 07:56:54', ' ', '', '', 'publish', 'closed', 'closed', '', '272', '', '', '2016-03-15 15:59:57', '2016-03-15 15:59:57', '', 0, 'http://localhost/onefabshop/?p=272', 29, 'nav_menu_item', '', 0),
(273, 1, '2016-03-13 07:56:54', '2016-03-13 07:56:54', ' ', '', '', 'publish', 'closed', 'closed', '', '273', '', '', '2016-03-15 15:59:57', '2016-03-15 15:59:57', '', 0, 'http://localhost/onefabshop/?p=273', 27, 'nav_menu_item', '', 0),
(274, 1, '2016-03-13 07:56:54', '2016-03-13 07:56:54', ' ', '', '', 'publish', 'closed', 'closed', '', '274', '', '', '2016-03-15 15:59:57', '2016-03-15 15:59:57', '', 0, 'http://localhost/onefabshop/?p=274', 28, 'nav_menu_item', '', 0),
(275, 1, '2016-03-13 07:56:54', '2016-03-13 07:56:54', ' ', '', '', 'publish', 'closed', 'closed', '', '275', '', '', '2016-03-15 15:59:57', '2016-03-15 15:59:57', '', 0, 'http://localhost/onefabshop/?p=275', 26, 'nav_menu_item', '', 0),
(276, 1, '2016-03-13 07:58:03', '2016-03-13 07:58:03', ' ', '', '', 'publish', 'closed', 'closed', '', '276', '', '', '2016-03-15 15:59:57', '2016-03-15 15:59:57', '', 0, 'http://localhost/onefabshop/?p=276', 4, 'nav_menu_item', '', 0),
(277, 1, '2016-03-13 07:58:03', '2016-03-13 07:58:03', 'ALDO is an International brand that specializes in the creation of on-trend fashion footwear and accessories for stylish, young women and men. Since its inception in Montreal, Canada in 1972, ALDO has quickly become one of the leading fashion footwear & accessories brands in the world! ALDO is constantly evolving. The stores offer a fun, upbeat environment. The product is always on-trend, and new styles are arriving on a regular basis. The collection has fashionable inspiration taken from the numerous trends found around the world, giving consumers a global perspective on fashion. The shop fit is modern and fresh, and the merchandising is very approachable. ALDO initiated its retail entry into the U.S in 1993, and hit the global scene in 2002 on the high streets of London, England. Currently ALDO operates in almost 900 corporate stores across Canada, the US and the UK, and over 800 franchised stores worldwide. As of today, ALDO operates over 1400 stores in 87 countries. To-date there has been a very aggressive global expansion plan. In fact, in a very short period of time, ALDO expanded the store & country reach to a point where ALDO stores operate across all continents except Antarctica. ALDO…', '', '', 'publish', 'closed', 'closed', '', '277', '', '', '2016-03-15 15:59:57', '2016-03-15 15:59:57', '', 0, 'http://localhost/onefabshop/?p=277', 5, 'nav_menu_item', '', 0),
(278, 1, '2016-03-13 07:58:03', '2016-03-13 07:58:03', ' ', '', '', 'publish', 'closed', 'closed', '', '278', '', '', '2016-03-15 15:59:57', '2016-03-15 15:59:57', '', 0, 'http://localhost/onefabshop/?p=278', 6, 'nav_menu_item', '', 0),
(279, 1, '2016-03-13 07:58:03', '2016-03-13 07:58:03', ' ', '', '', 'publish', 'closed', 'closed', '', '279', '', '', '2016-03-15 15:59:57', '2016-03-15 15:59:57', '', 0, 'http://localhost/onefabshop/?p=279', 7, 'nav_menu_item', '', 0),
(280, 1, '2016-03-13 07:58:03', '2016-03-13 07:58:03', ' ', '', '', 'publish', 'closed', 'closed', '', '280', '', '', '2016-03-15 15:59:57', '2016-03-15 15:59:57', '', 0, 'http://localhost/onefabshop/?p=280', 8, 'nav_menu_item', '', 0),
(281, 1, '2016-03-13 07:58:03', '2016-03-13 07:58:03', ' ', '', '', 'publish', 'closed', 'closed', '', '281', '', '', '2016-03-15 15:59:57', '2016-03-15 15:59:57', '', 0, 'http://localhost/onefabshop/?p=281', 9, 'nav_menu_item', '', 0),
(282, 1, '2016-03-13 07:58:03', '2016-03-13 07:58:03', ' ', '', '', 'publish', 'closed', 'closed', '', '282', '', '', '2016-03-15 15:59:57', '2016-03-15 15:59:57', '', 0, 'http://localhost/onefabshop/?p=282', 10, 'nav_menu_item', '', 0),
(283, 1, '2016-03-13 07:58:03', '2016-03-13 07:58:03', 'It all started back in 1993, when kate brosnahan spade, a former accessories editor at mademoiselle, set out to design the perfect handbag. debuting with just six silhouettes, she combined sleek, utilitarian shapes and colorful palettes in an entirely new way. and so kate spade new york was born. women and fashion editors fell for the fresh, modern sensibility, and our first shop in new york city swiftly opened in 1996. as the company grew, our graphic approach and trademark wit created a visual shorthand for a brand recognizable the world over. in 2007, spade turned the reins to design powerhouse kate spade & company (formerly known as liz claiborne, inc.). shortly after, deborah lloyd took the helm as president and chief creative officer with an aim to broaden the line while honoring our rich history. along with ceo craig leavitt, she quickly launched clothing and jewelry collections, quickly followed by the introduction of bedding, legwear and fragrance. today we’ve grown into a global lifestyle brand, and aim to inspire colorful living through our handbags and clothing to jewelry, shoes, stationery, eyewear, baby, fragrance, tabletop, bedding and gifts. all the while, we’ve never lost sight of who we are: our…', '', '', 'publish', 'closed', 'closed', '', '283', '', '', '2016-03-15 15:59:57', '2016-03-15 15:59:57', '', 0, 'http://localhost/onefabshop/?p=283', 11, 'nav_menu_item', '', 0),
(284, 1, '2016-03-13 07:58:03', '2016-03-13 07:58:03', ' ', '', '', 'publish', 'closed', 'closed', '', '284', '', '', '2016-03-15 15:59:57', '2016-03-15 15:59:57', '', 0, 'http://localhost/onefabshop/?p=284', 12, 'nav_menu_item', '', 0),
(285, 1, '2016-03-13 07:58:03', '2016-03-13 07:58:03', ' ', '', '', 'publish', 'closed', 'closed', '', '285', '', '', '2016-03-15 15:59:57', '2016-03-15 15:59:57', '', 0, 'http://localhost/onefabshop/?p=285', 13, 'nav_menu_item', '', 0),
(286, 1, '2016-03-13 07:58:03', '2016-03-13 07:58:03', ' ', '', '', 'publish', 'closed', 'closed', '', '286', '', '', '2016-03-15 15:59:57', '2016-03-15 15:59:57', '', 0, 'http://localhost/onefabshop/?p=286', 14, 'nav_menu_item', '', 0),
(287, 1, '2016-03-13 07:58:04', '2016-03-13 07:58:04', ' ', '', '', 'publish', 'closed', 'closed', '', '287', '', '', '2016-03-15 15:59:57', '2016-03-15 15:59:57', '', 0, 'http://localhost/onefabshop/?p=287', 15, 'nav_menu_item', '', 0),
(288, 1, '2016-03-13 08:00:43', '2016-03-13 08:00:43', '', 'Brands', '', 'publish', 'closed', 'closed', '', 'brands', '', '', '2016-03-15 15:59:57', '2016-03-15 15:59:57', '', 0, 'http://localhost/onefabshop/?p=288', 3, 'nav_menu_item', '', 0),
(289, 1, '2016-03-13 08:49:45', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2016-03-13 08:49:45', '0000-00-00 00:00:00', '', 0, 'http://localhost/onefabshop/?post_type=product&p=289', 0, 'product', '', 0),
(290, 1, '2016-03-15 14:45:23', '2016-03-15 14:45:23', '', 'guess-banner copy', '', 'inherit', 'open', 'closed', '', 'guess-banner-copy', '', '', '2016-03-15 14:45:23', '2016-03-15 14:45:23', '', 109, 'http://localhost/onefabshop/wp-content/uploads/2016/02/guess-banner-copy.jpg', 0, 'attachment', 'image/jpeg', 0),
(291, 1, '2016-03-15 14:45:25', '2016-03-15 14:45:25', '', 'guess2-banner-2-1 copy', '', 'inherit', 'open', 'closed', '', 'guess2-banner-2-1-copy', '', '', '2016-03-15 14:45:25', '2016-03-15 14:45:25', '', 109, 'http://localhost/onefabshop/wp-content/uploads/2016/02/guess2-banner-2-1-copy.jpg', 0, 'attachment', 'image/jpeg', 0),
(292, 1, '2016-03-15 15:24:05', '2016-03-15 15:24:05', '<p>Your Name (required)<br />\r\n    [text* your-name] </p>\r\n\r\n<p>Your Email (required)<br />\r\n    [email* your-email] </p>\r\n\r\n<p>Subject<br />\r\n    [text your-subject] </p>\r\n\r\n<p>Your Message<br />\r\n    [textarea your-message] </p>\r\n\r\n<p>[submit class:contact-form-button "Send" ]</p>\nOnefabshop Ph "[your-subject]"\n[your-name] <diannekatherinedelosreyes@gmail.com>\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n--\r\nThis e-mail was sent from a contact form on Onefabshop Ph (http://localhost/onefabshop)\ndiannekatherinedelosreyes@gmail.com\nReply-To: [your-email]\n\n\n\n\nOnefabshop Ph "[your-subject]"\nOnefabshop Ph <diannekatherinedelosreyes@gmail.com>\nMessage Body:\r\n[your-message]\r\n\r\n--\r\nThis e-mail was sent from a contact form on Onefabshop Ph (http://localhost/onefabshop)\n[your-email]\nReply-To: diannekatherinedelosreyes@gmail.com\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nYour entered code is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Contact form', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2016-03-15 15:55:50', '2016-03-15 15:55:50', '', 0, 'http://localhost/onefabshop/?post_type=wpcf7_contact_form&#038;p=292', 0, 'wpcf7_contact_form', '', 0),
(293, 1, '2016-03-15 15:39:25', '2016-03-15 15:39:25', '[contact-form-7 id="292" title="Contact Us"]', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2016-03-15 15:39:25', '2016-03-15 15:39:25', '', 0, 'http://localhost/onefabshop/?page_id=293', 0, 'page', '', 0),
(294, 1, '2016-03-15 15:39:25', '2016-03-15 15:39:25', '[contact-form-7 id="292" title="Contact Us"]', 'Contact', '', 'inherit', 'closed', 'closed', '', '293-revision-v1', '', '', '2016-03-15 15:39:25', '2016-03-15 15:39:25', '', 293, 'http://localhost/onefabshop/293-revision-v1/', 0, 'revision', '', 0),
(295, 1, '2016-03-15 15:59:34', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-03-15 15:59:34', '0000-00-00 00:00:00', '', 0, 'http://localhost/onefabshop/?p=295', 1, 'nav_menu_item', '', 0),
(296, 1, '2016-03-15 15:59:57', '2016-03-15 15:59:57', ' ', '', '', 'publish', 'closed', 'closed', '', '296', '', '', '2016-03-15 15:59:57', '2016-03-15 15:59:57', '', 0, 'http://localhost/onefabshop/?p=296', 32, 'nav_menu_item', '', 0),
(297, 1, '2016-03-15 16:00:08', '2016-03-15 16:00:08', ' ', '', '', 'publish', 'closed', 'closed', '', '297', '', '', '2016-03-15 16:00:08', '2016-03-15 16:00:08', '', 0, 'http://localhost/onefabshop/?p=297', 7, 'nav_menu_item', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ofs2616_registration_log`
--

CREATE TABLE IF NOT EXISTS `ofs2616_registration_log` (
`ID` bigint(20) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `IP` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `blog_id` bigint(20) NOT NULL DEFAULT '0',
  `date_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ofs2616_registration_log`
--

INSERT INTO `ofs2616_registration_log` (`ID`, `email`, `IP`, `blog_id`, `date_registered`) VALUES
(1, 'diannekatherinedelosreyes@gmail.com', '1', 2, '2016-02-07 12:19:05'),
(2, 'diannekatherinedelosreyes@gmail.com', '127.0.0.1', 3, '2016-02-29 01:36:29'),
(3, 'diannekatherinedelosreyes@gmail.com', '127.0.0.1', 4, '2016-02-29 03:44:12'),
(4, 'try@yahoo.com', '127.0.0.1', 5, '2016-02-29 04:05:40'),
(5, 'diannekatherinedelosreyes@gmail.com', '1', 2, '2016-03-12 03:01:57'),
(6, 'uae@yahoo.com', '1', 3, '2016-03-13 09:10:35');

-- --------------------------------------------------------

--
-- Table structure for table `ofs2616_signups`
--

CREATE TABLE IF NOT EXISTS `ofs2616_signups` (
`signup_id` bigint(20) NOT NULL,
  `domain` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `activation_key` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `meta` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ofs2616_site`
--

CREATE TABLE IF NOT EXISTS `ofs2616_site` (
`id` bigint(20) NOT NULL,
  `domain` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
`meta_id` bigint(20) NOT NULL,
  `site_id` bigint(20) NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=236 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(21, 1, 'active_sitewide_plugins', 'a:11:{s:59:"intuitive-custom-post-order/intuitive-custom-post-order.php";i:1454847864;s:27:"woocommerce/woocommerce.php";i:1454847974;s:41:"wordpress-importer/wordpress-importer.php";i:1454847974;s:30:"advanced-custom-fields/acf.php";i:1456709289;s:25:"redirector/redirector.php";i:1456709298;s:47:"paydollar-payment-gateway-woocommerce/index.php";i:1456709439;s:55:"global-admin-bar-hide-or-remove/hide-admin-tool-bar.php";i:1456722107;s:39:"custom-permalinks/custom-permalinks.php";i:1457278471;s:40:"yith-woocommerce-order-tracking/init.php";i:1457818460;s:45:"ewww-image-optimizer/ewww-image-optimizer.php";i:1457964134;s:36:"contact-form-7/wp-contact-form-7.php";i:1458055445;}'),
(22, 1, 'WPLANG', 'en_US'),
(23, 1, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:58:"http://downloads.wordpress.org/release/wordpress-4.4.2.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:58:"http://downloads.wordpress.org/release/wordpress-4.4.2.zip";s:10:"no_content";s:69:"http://downloads.wordpress.org/release/wordpress-4.4.2-no-content.zip";s:11:"new_bundled";s:70:"http://downloads.wordpress.org/release/wordpress-4.4.2-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.4.2";s:7:"version";s:5:"4.4.2";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.4";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1458134999;s:15:"version_checked";s:5:"4.4.2";s:12:"translations";a:0:{}}'),
(28, 1, '_site_transient_timeout_browser_09405e74b30b86007210b586b2ddc252', '1455451980'),
(29, 1, '_site_transient_browser_09405e74b30b86007210b586b2ddc252', 'a:9:{s:8:"platform";s:9:"Macintosh";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"48.0.2564.103";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}'),
(30, 1, 'can_compress_scripts', '1'),
(31, 1, 'blog_count', '3'),
(32, 1, 'user_count', '3'),
(33, 1, 'recently_activated', 'a:2:{s:45:"woocommerce-attributes-menu-manager/index.php";i:1457860091;s:57:"multisite-clone-duplicator/multisite-clone-duplicator.php";i:1457769767;}'),
(53, 1, '_site_transient_timeout_browser_dee24e1cb8ffa5ebe8021356c173956d', '1456903234'),
(54, 1, '_site_transient_browser_dee24e1cb8ffa5ebe8021356c173956d', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"48.0.2564.116";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}'),
(95, 1, 'mucd_copy_files', 'yes'),
(96, 1, 'mucd_keep_users', 'yes'),
(97, 1, 'mucd_log', 'no'),
(98, 1, 'mucd_log_dir', 'C:\\xampp\\htdocs\\onefabshop/wp-content/plugins/multisite-clone-duplicator/logs/'),
(99, 1, 'mucd_duplicables', 'all'),
(162, 1, '_site_transient_timeout_browser_93c424ae4d0e7469a4221c7407b7931e', '1458356870'),
(163, 1, '_site_transient_browser_93c424ae4d0e7469a4221c7407b7931e', 'a:9:{s:8:"platform";s:9:"Macintosh";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"48.0.2564.116";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}'),
(188, 1, 'registrationnotification', 'yes'),
(189, 1, 'welcome_user_email', 'Howdy USERNAME,\n\nYour new account is set up.\n\nYou can log in with the following information:\nUsername: USERNAME\nPassword: PASSWORD\nLOGINLINK\n\nThanks!\n\n--The Team @ SITE_NAME'),
(220, 1, 'ewww_image_optimizer_disable_pngout', '1'),
(221, 1, 'ewww_image_optimizer_optipng_level', '2'),
(222, 1, 'ewww_image_optimizer_pngout_level', '2'),
(223, 1, 'ewww_image_optimizer_jpegtran_copy', '1'),
(224, 1, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1457975939'),
(225, 1, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'a:100:{s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";s:4:"5762";}s:4:"post";a:3:{s:4:"name";s:4:"Post";s:4:"slug";s:4:"post";s:5:"count";s:4:"3580";}s:6:"plugin";a:3:{s:4:"name";s:6:"plugin";s:4:"slug";s:6:"plugin";s:5:"count";s:4:"3548";}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";s:4:"3046";}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";s:4:"2757";}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";s:4:"2281";}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";s:4:"2190";}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";s:4:"2045";}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";s:4:"1999";}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";s:4:"1968";}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";s:4:"1959";}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";s:4:"1915";}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";s:4:"1828";}s:8:"facebook";a:3:{s:4:"name";s:8:"Facebook";s:4:"slug";s:8:"facebook";s:5:"count";s:4:"1641";}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";s:4:"1539";}s:11:"woocommerce";a:3:{s:4:"name";s:11:"woocommerce";s:4:"slug";s:11:"woocommerce";s:5:"count";s:4:"1532";}s:9:"wordpress";a:3:{s:4:"name";s:9:"wordpress";s:4:"slug";s:9:"wordpress";s:5:"count";s:4:"1509";}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";s:4:"1338";}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";s:4:"1281";}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";s:4:"1276";}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";s:4:"1178";}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";s:4:"1080";}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";s:4:"1055";}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";s:3:"996";}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";s:3:"950";}s:9:"ecommerce";a:3:{s:4:"name";s:9:"ecommerce";s:4:"slug";s:9:"ecommerce";s:5:"count";s:3:"922";}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";s:3:"907";}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";s:3:"892";}s:4:"ajax";a:3:{s:4:"name";s:4:"AJAX";s:4:"slug";s:4:"ajax";s:5:"count";s:3:"889";}s:5:"login";a:3:{s:4:"name";s:5:"login";s:4:"slug";s:5:"login";s:5:"count";s:3:"878";}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";s:3:"878";}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";s:3:"822";}s:10:"responsive";a:3:{s:4:"name";s:10:"responsive";s:4:"slug";s:10:"responsive";s:5:"count";s:3:"784";}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";s:3:"778";}s:8:"security";a:3:{s:4:"name";s:8:"security";s:4:"slug";s:8:"security";s:5:"count";s:3:"759";}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";s:3:"743";}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";s:3:"737";}s:4:"spam";a:3:{s:4:"name";s:4:"spam";s:4:"slug";s:4:"spam";s:5:"count";s:3:"736";}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";s:3:"735";}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";s:3:"732";}s:5:"share";a:3:{s:4:"name";s:5:"Share";s:4:"slug";s:5:"share";s:5:"count";s:3:"727";}s:10:"e-commerce";a:3:{s:4:"name";s:10:"e-commerce";s:4:"slug";s:10:"e-commerce";s:5:"count";s:3:"726";}s:8:"category";a:3:{s:4:"name";s:8:"category";s:4:"slug";s:8:"category";s:5:"count";s:3:"687";}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";s:3:"681";}s:4:"form";a:3:{s:4:"name";s:4:"form";s:4:"slug";s:4:"form";s:5:"count";s:3:"671";}s:9:"analytics";a:3:{s:4:"name";s:9:"analytics";s:4:"slug";s:9:"analytics";s:5:"count";s:3:"671";}s:5:"embed";a:3:{s:4:"name";s:5:"embed";s:4:"slug";s:5:"embed";s:5:"count";s:3:"670";}s:3:"css";a:3:{s:4:"name";s:3:"CSS";s:4:"slug";s:3:"css";s:5:"count";s:3:"661";}s:6:"search";a:3:{s:4:"name";s:6:"search";s:4:"slug";s:6:"search";s:5:"count";s:3:"648";}s:9:"slideshow";a:3:{s:4:"name";s:9:"slideshow";s:4:"slug";s:9:"slideshow";s:5:"count";s:3:"630";}s:6:"custom";a:3:{s:4:"name";s:6:"custom";s:4:"slug";s:6:"custom";s:5:"count";s:3:"629";}s:6:"slider";a:3:{s:4:"name";s:6:"slider";s:4:"slug";s:6:"slider";s:5:"count";s:3:"626";}s:5:"stats";a:3:{s:4:"name";s:5:"stats";s:4:"slug";s:5:"stats";s:5:"count";s:3:"609";}s:6:"button";a:3:{s:4:"name";s:6:"button";s:4:"slug";s:6:"button";s:5:"count";s:3:"602";}s:7:"comment";a:3:{s:4:"name";s:7:"comment";s:4:"slug";s:7:"comment";s:5:"count";s:3:"591";}s:4:"tags";a:3:{s:4:"name";s:4:"tags";s:4:"slug";s:4:"tags";s:5:"count";s:3:"585";}s:4:"menu";a:3:{s:4:"name";s:4:"menu";s:4:"slug";s:4:"menu";s:5:"count";s:3:"585";}s:5:"theme";a:3:{s:4:"name";s:5:"theme";s:4:"slug";s:5:"theme";s:5:"count";s:3:"585";}s:9:"dashboard";a:3:{s:4:"name";s:9:"dashboard";s:4:"slug";s:9:"dashboard";s:5:"count";s:3:"584";}s:10:"categories";a:3:{s:4:"name";s:10:"categories";s:4:"slug";s:10:"categories";s:5:"count";s:3:"570";}s:6:"mobile";a:3:{s:4:"name";s:6:"mobile";s:4:"slug";s:6:"mobile";s:5:"count";s:3:"562";}s:10:"statistics";a:3:{s:4:"name";s:10:"statistics";s:4:"slug";s:10:"statistics";s:5:"count";s:3:"558";}s:3:"ads";a:3:{s:4:"name";s:3:"ads";s:4:"slug";s:3:"ads";s:5:"count";s:3:"548";}s:4:"user";a:3:{s:4:"name";s:4:"user";s:4:"slug";s:4:"user";s:5:"count";s:3:"540";}s:6:"editor";a:3:{s:4:"name";s:6:"editor";s:4:"slug";s:6:"editor";s:5:"count";s:3:"537";}s:5:"users";a:3:{s:4:"name";s:5:"users";s:4:"slug";s:5:"users";s:5:"count";s:3:"526";}s:4:"list";a:3:{s:4:"name";s:4:"list";s:4:"slug";s:4:"list";s:5:"count";s:3:"517";}s:7:"picture";a:3:{s:4:"name";s:7:"picture";s:4:"slug";s:7:"picture";s:5:"count";s:3:"507";}s:9:"affiliate";a:3:{s:4:"name";s:9:"affiliate";s:4:"slug";s:9:"affiliate";s:5:"count";s:3:"502";}s:7:"plugins";a:3:{s:4:"name";s:7:"plugins";s:4:"slug";s:7:"plugins";s:5:"count";s:3:"501";}s:6:"simple";a:3:{s:4:"name";s:6:"simple";s:4:"slug";s:6:"simple";s:5:"count";s:3:"491";}s:9:"multisite";a:3:{s:4:"name";s:9:"multisite";s:4:"slug";s:9:"multisite";s:5:"count";s:3:"489";}s:12:"social-media";a:3:{s:4:"name";s:12:"social media";s:4:"slug";s:12:"social-media";s:5:"count";s:3:"486";}s:12:"contact-form";a:3:{s:4:"name";s:12:"contact form";s:4:"slug";s:12:"contact-form";s:5:"count";s:3:"484";}s:7:"contact";a:3:{s:4:"name";s:7:"contact";s:4:"slug";s:7:"contact";s:5:"count";s:3:"466";}s:8:"pictures";a:3:{s:4:"name";s:8:"pictures";s:4:"slug";s:8:"pictures";s:5:"count";s:3:"452";}s:4:"shop";a:3:{s:4:"name";s:4:"shop";s:4:"slug";s:4:"shop";s:5:"count";s:3:"438";}s:10:"navigation";a:3:{s:4:"name";s:10:"navigation";s:4:"slug";s:10:"navigation";s:5:"count";s:3:"436";}s:3:"url";a:3:{s:4:"name";s:3:"url";s:4:"slug";s:3:"url";s:5:"count";s:3:"436";}s:4:"html";a:3:{s:4:"name";s:4:"html";s:4:"slug";s:4:"html";s:5:"count";s:3:"435";}s:3:"api";a:3:{s:4:"name";s:3:"api";s:4:"slug";s:3:"api";s:5:"count";s:3:"434";}s:9:"marketing";a:3:{s:4:"name";s:9:"marketing";s:4:"slug";s:9:"marketing";s:5:"count";s:3:"428";}s:5:"flash";a:3:{s:4:"name";s:5:"flash";s:4:"slug";s:5:"flash";s:5:"count";s:3:"422";}s:10:"newsletter";a:3:{s:4:"name";s:10:"newsletter";s:4:"slug";s:10:"newsletter";s:5:"count";s:3:"419";}s:4:"meta";a:3:{s:4:"name";s:4:"meta";s:4:"slug";s:4:"meta";s:5:"count";s:3:"414";}s:4:"news";a:3:{s:4:"name";s:4:"News";s:4:"slug";s:4:"news";s:5:"count";s:3:"404";}s:3:"tag";a:3:{s:4:"name";s:3:"tag";s:4:"slug";s:3:"tag";s:5:"count";s:3:"404";}s:8:"calendar";a:3:{s:4:"name";s:8:"calendar";s:4:"slug";s:8:"calendar";s:5:"count";s:3:"402";}s:6:"events";a:3:{s:4:"name";s:6:"events";s:4:"slug";s:6:"events";s:5:"count";s:3:"402";}s:8:"tracking";a:3:{s:4:"name";s:8:"tracking";s:4:"slug";s:8:"tracking";s:5:"count";s:3:"398";}s:11:"advertising";a:3:{s:4:"name";s:11:"advertising";s:4:"slug";s:11:"advertising";s:5:"count";s:3:"397";}s:10:"shortcodes";a:3:{s:4:"name";s:10:"shortcodes";s:4:"slug";s:10:"shortcodes";s:5:"count";s:3:"394";}s:9:"thumbnail";a:3:{s:4:"name";s:9:"thumbnail";s:4:"slug";s:9:"thumbnail";s:5:"count";s:3:"390";}s:4:"text";a:3:{s:4:"name";s:4:"text";s:4:"slug";s:4:"text";s:5:"count";s:3:"388";}s:6:"upload";a:3:{s:4:"name";s:6:"upload";s:4:"slug";s:6:"upload";s:5:"count";s:3:"386";}s:7:"sharing";a:3:{s:4:"name";s:7:"sharing";s:4:"slug";s:7:"sharing";s:5:"count";s:3:"384";}s:4:"code";a:3:{s:4:"name";s:4:"code";s:4:"slug";s:4:"code";s:5:"count";s:3:"384";}s:12:"notification";a:3:{s:4:"name";s:12:"notification";s:4:"slug";s:12:"notification";s:5:"count";s:3:"384";}s:9:"automatic";a:3:{s:4:"name";s:9:"automatic";s:4:"slug";s:9:"automatic";s:5:"count";s:3:"381";}s:6:"paypal";a:3:{s:4:"name";s:6:"paypal";s:4:"slug";s:6:"paypal";s:5:"count";s:3:"381";}}'),
(232, 1, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1458135112;s:7:"checked";a:2:{s:21:"eightstore-lite-child";s:5:"1.0.0";s:15:"eightstore-lite";s:6:"1.0.58";}s:8:"response";a:1:{s:15:"eightstore-lite";a:4:{s:5:"theme";s:15:"eightstore-lite";s:11:"new_version";s:6:"1.0.59";s:3:"url";s:45:"https://wordpress.org/themes/eightstore-lite/";s:7:"package";s:64:"https://downloads.wordpress.org/theme/eightstore-lite.1.0.59.zip";}}s:12:"translations";a:0:{}}'),
(233, 1, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1458135077;s:8:"response";a:1:{s:45:"ewww-image-optimizer/ewww-image-optimizer.php";O:8:"stdClass":9:{s:2:"id";s:5:"32121";s:4:"slug";s:20:"ewww-image-optimizer";s:6:"plugin";s:45:"ewww-image-optimizer/ewww-image-optimizer.php";s:11:"new_version";s:5:"2.6.0";s:3:"url";s:51:"https://wordpress.org/plugins/ewww-image-optimizer/";s:7:"package";s:69:"https://downloads.wordpress.org/plugin/ewww-image-optimizer.2.6.0.zip";s:14:"upgrade_notice";s:162:"jpegtran and cwebp binaries have been revamped, please check your plugin status to make sure they are still working (cwebp only if you have it enabled, of course)";s:6:"tested";s:3:"4.5";s:13:"compatibility";b:0;}}s:12:"translations";a:0:{}s:9:"no_update";a:10:{s:30:"advanced-custom-fields/acf.php";O:8:"stdClass":6:{s:2:"id";s:5:"21367";s:4:"slug";s:22:"advanced-custom-fields";s:6:"plugin";s:30:"advanced-custom-fields/acf.php";s:11:"new_version";s:5:"4.4.5";s:3:"url";s:53:"https://wordpress.org/plugins/advanced-custom-fields/";s:7:"package";s:71:"https://downloads.wordpress.org/plugin/advanced-custom-fields.4.4.5.zip";}s:36:"contact-form-7/wp-contact-form-7.php";O:8:"stdClass":6:{s:2:"id";s:3:"790";s:4:"slug";s:14:"contact-form-7";s:6:"plugin";s:36:"contact-form-7/wp-contact-form-7.php";s:11:"new_version";s:3:"4.4";s:3:"url";s:45:"https://wordpress.org/plugins/contact-form-7/";s:7:"package";s:61:"https://downloads.wordpress.org/plugin/contact-form-7.4.4.zip";}s:39:"custom-permalinks/custom-permalinks.php";O:8:"stdClass":6:{s:2:"id";s:4:"5158";s:4:"slug";s:17:"custom-permalinks";s:6:"plugin";s:39:"custom-permalinks/custom-permalinks.php";s:11:"new_version";s:6:"0.7.21";s:3:"url";s:48:"https://wordpress.org/plugins/custom-permalinks/";s:7:"package";s:67:"https://downloads.wordpress.org/plugin/custom-permalinks.0.7.21.zip";}s:55:"global-admin-bar-hide-or-remove/hide-admin-tool-bar.php";O:8:"stdClass":7:{s:2:"id";s:5:"20838";s:4:"slug";s:31:"global-admin-bar-hide-or-remove";s:6:"plugin";s:55:"global-admin-bar-hide-or-remove/hide-admin-tool-bar.php";s:11:"new_version";s:7:"1.6.1.1";s:3:"url";s:62:"https://wordpress.org/plugins/global-admin-bar-hide-or-remove/";s:7:"package";s:82:"https://downloads.wordpress.org/plugin/global-admin-bar-hide-or-remove.1.6.1.1.zip";s:14:"upgrade_notice";s:119:"Update [STABLE] Plugin repackaging and refreshing before merging to new 2016 branche and bugs fixing (Build 2016-01-05)";}s:59:"intuitive-custom-post-order/intuitive-custom-post-order.php";O:8:"stdClass":6:{s:2:"id";s:5:"35583";s:4:"slug";s:27:"intuitive-custom-post-order";s:6:"plugin";s:59:"intuitive-custom-post-order/intuitive-custom-post-order.php";s:11:"new_version";s:5:"3.0.7";s:3:"url";s:58:"https://wordpress.org/plugins/intuitive-custom-post-order/";s:7:"package";s:76:"https://downloads.wordpress.org/plugin/intuitive-custom-post-order.3.0.7.zip";}s:25:"redirector/redirector.php";O:8:"stdClass":6:{s:2:"id";s:4:"5185";s:4:"slug";s:10:"redirector";s:6:"plugin";s:25:"redirector/redirector.php";s:11:"new_version";s:5:"3.0.1";s:3:"url";s:41:"https://wordpress.org/plugins/redirector/";s:7:"package";s:59:"https://downloads.wordpress.org/plugin/redirector.3.0.1.zip";}s:27:"woocommerce/woocommerce.php";O:8:"stdClass":6:{s:2:"id";s:5:"25331";s:4:"slug";s:11:"woocommerce";s:6:"plugin";s:27:"woocommerce/woocommerce.php";s:11:"new_version";s:5:"2.5.5";s:3:"url";s:42:"https://wordpress.org/plugins/woocommerce/";s:7:"package";s:60:"https://downloads.wordpress.org/plugin/woocommerce.2.5.5.zip";}s:45:"woocommerce-attributes-menu-manager/index.php";O:8:"stdClass":6:{s:2:"id";s:5:"57595";s:4:"slug";s:35:"woocommerce-attributes-menu-manager";s:6:"plugin";s:45:"woocommerce-attributes-menu-manager/index.php";s:11:"new_version";s:3:"0.6";s:3:"url";s:66:"https://wordpress.org/plugins/woocommerce-attributes-menu-manager/";s:7:"package";s:82:"https://downloads.wordpress.org/plugin/woocommerce-attributes-menu-manager.0.6.zip";}s:41:"wordpress-importer/wordpress-importer.php";O:8:"stdClass":6:{s:2:"id";s:5:"14975";s:4:"slug";s:18:"wordpress-importer";s:6:"plugin";s:41:"wordpress-importer/wordpress-importer.php";s:11:"new_version";s:5:"0.6.1";s:3:"url";s:49:"https://wordpress.org/plugins/wordpress-importer/";s:7:"package";s:67:"https://downloads.wordpress.org/plugin/wordpress-importer.0.6.1.zip";}s:40:"yith-woocommerce-order-tracking/init.php";O:8:"stdClass":6:{s:2:"id";s:5:"57256";s:4:"slug";s:31:"yith-woocommerce-order-tracking";s:6:"plugin";s:40:"yith-woocommerce-order-tracking/init.php";s:11:"new_version";s:5:"1.0.7";s:3:"url";s:62:"https://wordpress.org/plugins/yith-woocommerce-order-tracking/";s:7:"package";s:80:"https://downloads.wordpress.org/plugin/yith-woocommerce-order-tracking.1.0.7.zip";}}}'),
(234, 1, '_site_transient_timeout_theme_roots', '1458149114'),
(235, 1, '_site_transient_theme_roots', 'a:2:{s:21:"eightstore-lite-child";s:7:"/themes";s:15:"eightstore-lite";s:7:"/themes";}');

-- --------------------------------------------------------

--
-- Table structure for table `ofs2616_termmeta`
--

CREATE TABLE IF NOT EXISTS `ofs2616_termmeta` (
`meta_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ofs2616_terms`
--

CREATE TABLE IF NOT EXISTS `ofs2616_terms` (
`term_id` bigint(20) unsigned NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  `term_order` int(4) DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(38, 'Red', 'red', 0, 0),
(39, 'Brown', 'brown', 0, 0),
(40, 'subscription', 'subscription', 0, 0),
(43, 'ALDO', 'aldo', 0, 0),
(44, 'kate spade', 'kate-spade', 0, 0),
(45, 'ALDO', 'aldo', 0, 0),
(46, 'kate spade', 'kate-spade', 0, 0),
(47, 'Nine West', 'nine-west', 0, 0),
(48, 'Anne Klein', 'anne-klein', 0, 0),
(49, 'Guess', 'guess', 0, 0),
(50, 'Tory Burch', 'tory-burch', 0, 0),
(51, 'Prada', 'prada', 0, 0),
(52, 'Ipanema', 'ipanema', 0, 0),
(53, 'Havaianas', 'havaianas', 0, 0),
(54, 'Michael Kors', 'michael-kors', 0, 0),
(55, 'DKNY', 'dkny', 0, 0),
(56, 'Adidas', 'adidas', 0, 0),
(61, 'Bags', 'bags', 0, 0),
(62, 'Shoes', 'shoes', 0, 0),
(63, 'Apparels', 'apparels', 0, 0),
(64, 'Accessories', 'accessories', 0, 0),
(65, 'White', 'white', 0, 0),
(66, 'Orange', 'orange', 0, 0),
(67, 'Pink', 'pink', 0, 0),
(68, 'Yellow', 'yellow', 0, 0),
(69, 'Purple', 'purple', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ofs2616_term_relationships`
--

CREATE TABLE IF NOT EXISTS `ofs2616_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ofs2616_term_relationships`
--

INSERT INTO `ofs2616_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(8, 4, 0),
(8, 7, 0),
(8, 8, 0),
(8, 18, 0),
(8, 38, 0),
(31, 2, 0),
(31, 6, 0),
(31, 13, 0),
(34, 2, 0),
(34, 6, 0),
(34, 14, 0),
(37, 2, 0),
(37, 6, 0),
(37, 14, 0),
(40, 4, 0),
(40, 6, 0),
(40, 14, 0),
(40, 17, 0),
(40, 18, 0),
(47, 2, 0),
(47, 6, 0),
(47, 12, 0),
(50, 2, 0),
(50, 6, 0),
(50, 12, 0),
(53, 2, 0),
(53, 6, 0),
(53, 12, 0),
(56, 2, 0),
(56, 7, 0),
(56, 11, 0),
(60, 2, 0),
(60, 7, 0),
(60, 11, 0),
(67, 2, 0),
(67, 7, 0),
(67, 11, 0),
(70, 2, 0),
(70, 7, 0),
(70, 10, 0),
(73, 2, 0),
(73, 7, 0),
(73, 10, 0),
(76, 2, 0),
(76, 7, 0),
(76, 10, 0),
(79, 2, 0),
(79, 7, 0),
(79, 9, 0),
(83, 2, 0),
(83, 7, 0),
(83, 9, 0),
(87, 2, 0),
(87, 7, 0),
(87, 9, 0),
(90, 2, 0),
(90, 7, 0),
(90, 8, 0),
(93, 2, 0),
(93, 7, 0),
(93, 9, 0),
(96, 2, 0),
(96, 7, 0),
(96, 8, 0),
(99, 2, 0),
(99, 7, 0),
(99, 8, 0),
(102, 2, 0),
(102, 6, 0),
(102, 15, 0),
(103, 2, 0),
(103, 6, 0),
(103, 13, 0),
(104, 4, 0),
(104, 6, 0),
(104, 13, 0),
(104, 17, 0),
(104, 19, 0),
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
(153, 33, 0),
(154, 33, 0),
(156, 28, 0),
(161, 33, 0),
(184, 2, 0),
(184, 7, 0),
(184, 8, 0),
(184, 44, 0),
(184, 46, 0),
(193, 4, 0),
(193, 7, 0),
(193, 8, 0),
(193, 17, 0),
(193, 38, 0),
(193, 39, 0),
(193, 43, 0),
(193, 45, 0),
(193, 61, 0),
(205, 2, 0),
(205, 7, 0),
(205, 9, 0),
(224, 16, 0),
(225, 16, 0),
(229, 16, 0),
(230, 33, 0),
(234, 33, 0),
(238, 29, 0),
(254, 16, 0),
(262, 33, 0),
(263, 33, 0),
(264, 33, 0),
(265, 33, 0),
(266, 33, 0),
(267, 33, 0),
(268, 33, 0),
(269, 33, 0),
(270, 33, 0),
(271, 33, 0),
(272, 33, 0),
(273, 33, 0),
(274, 33, 0),
(275, 33, 0),
(276, 33, 0),
(277, 33, 0),
(278, 33, 0),
(279, 33, 0),
(280, 33, 0),
(281, 33, 0),
(282, 33, 0),
(283, 33, 0),
(284, 33, 0),
(285, 33, 0),
(286, 33, 0),
(287, 33, 0),
(288, 33, 0),
(296, 33, 0),
(297, 16, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ofs2616_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `ofs2616_term_taxonomy` (
`term_taxonomy_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ofs2616_term_taxonomy`
--

INSERT INTO `ofs2616_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'product_type', '', 0, 23),
(3, 3, 'product_type', '', 0, 0),
(4, 4, 'product_type', '', 0, 4),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'product_cat', '', 0, 10),
(7, 7, 'product_cat', '', 0, 17),
(8, 8, 'product_cat', '', 7, 6),
(9, 9, 'product_cat', '', 7, 5),
(10, 10, 'product_cat', '', 7, 3),
(11, 11, 'product_cat', '', 7, 3),
(12, 12, 'product_cat', '', 6, 3),
(13, 13, 'product_cat', '', 6, 3),
(14, 14, 'product_cat', '', 6, 3),
(15, 15, 'product_cat', '', 6, 1),
(16, 16, 'nav_menu', '', 0, 7),
(17, 17, 'pa_color', '', 0, 3),
(18, 18, 'pa_color', '', 0, 2),
(19, 19, 'pa_color', '', 0, 1),
(27, 27, 'category', '', 0, 2),
(28, 28, 'category', '', 0, 2),
(29, 29, 'category', '', 0, 1),
(30, 30, 'category', '', 0, 4),
(31, 31, 'category', '', 0, 2),
(32, 32, 'post_format', '', 0, 6),
(33, 33, 'nav_menu', '', 0, 33),
(38, 38, 'pa_color', '', 0, 2),
(39, 39, 'pa_color', '', 0, 1),
(40, 40, 'product_type', '', 0, 0),
(43, 43, 'pa_brands', 'ALDO is an International brand that specializes in the creation of on-trend fashion footwear and accessories for stylish, young women and men. Since its inception in Montreal, Canada in 1972, ALDO has quickly become one of the leading fashion footwear &amp; accessories brands in the world!\r\nALDO is constantly evolving. The stores offer a fun, upbeat environment. The product is always on-trend, and new styles are arriving on a regular basis. The collection has fashionable inspiration taken from the numerous trends found around the world, giving consumers a global perspective on fashion. The shop fit is modern and fresh, and the merchandising is very approachable.\r\nALDO initiated its retail entry into the U.S in 1993, and hit the global scene in 2002 on the high streets of London, England. Currently ALDO operates in almost 900 corporate stores across Canada, the US and the UK, and over 800 franchised stores worldwide. As of today, ALDO operates over 1400 stores in 87 countries.\r\nTo-date there has been a very aggressive global expansion plan. In fact, in a very short period of time, ALDO expanded the store &amp; country reach to a point where ALDO stores operate across all continents except Antarctica.\r\nALDO is more than just a brand; it is a lifestyle, with a distinct personality. So although ALDO continues to grow at a rapid pace, the company never loses sight of its vision of excellence: to make people feel good through the products and services it provides everyday. ALDO''s incredible growth is attributed to the very principles on which its founder and Executive Chairman, Mr. Aldo Bensadoun, built the company from day one. These principles are LOVE, INTEGRITY, and RESPECT.\r\nALDO caters to all customers. The key to the ALDO recipe is that it is a brand that is both aspirational and accessible because ALDO consistently offers on-trend fashion footwear at affordable prices, value being our top priority for all customers across the globe.\r\nALDO places a premium on being a good corporate citizen by working to enrich the communities in which we live and work. It''s not uncommon for ALDO or its employees to participate in fundraisers or to volunteer their time to community causes. ALDO is a brand with a conscience, a brand that cares. Giving back to our communities is a necessary and fundamental part of the work we do everyday.', 0, 1),
(44, 44, 'pa_brands', 'It all started back in 1993, when kate brosnahan spade, a former accessories editor at mademoiselle, set out to design the perfect handbag. debuting with just six silhouettes, she combined sleek, utilitarian shapes and colorful palettes in an entirely new way. and so kate spade new york was born.\r\n\r\nwomen and fashion editors fell for the fresh, modern sensibility, and our first shop in new york city swiftly opened in 1996. as the company grew, our graphic approach and trademark wit created a visual shorthand for a brand recognizable the world over.\r\n\r\nin 2007, spade turned the reins to design powerhouse kate spade &amp; company (formerly known as liz claiborne, inc.). shortly after, deborah lloyd took the helm as president and chief creative officer with an aim to broaden the line while honoring our rich history. along with ceo craig leavitt, she quickly launched clothing and jewelry collections, quickly followed by the introduction of bedding, legwear and fragrance.\r\n\r\ntoday we’ve grown into a global lifestyle brand, and aim to inspire colorful living through our handbags and clothing to jewelry, shoes, stationery, eyewear, baby, fragrance, tabletop, bedding and gifts.\r\n\r\nall the while, we’ve never lost sight of who we are: our spirited approach, commitment to curiosity and passion for sharing our colorful world still shapes all that is kate spade new york.', 0, 1),
(45, 45, 'product_brand', '', 0, 1),
(46, 46, 'product_brand', '', 0, 1),
(47, 47, 'pa_brands', '', 0, 0),
(48, 48, 'pa_brands', '', 0, 0),
(49, 49, 'pa_brands', '', 0, 0),
(50, 50, 'pa_brands', '', 0, 0),
(51, 51, 'pa_brands', '', 0, 0),
(52, 52, 'pa_brands', '', 0, 0),
(53, 53, 'pa_brands', '', 0, 0),
(54, 54, 'pa_brands', '', 0, 0),
(55, 55, 'pa_brands', '', 0, 0),
(56, 56, 'pa_brands', '', 0, 0),
(61, 61, 'pa_subcategory', '', 0, 1),
(62, 62, 'pa_subcategory', '', 0, 0),
(63, 63, 'pa_subcategory', '', 0, 0),
(64, 64, 'pa_subcategory', '', 0, 0),
(65, 65, 'pa_color', '', 0, 0),
(66, 66, 'pa_color', '', 0, 0),
(67, 67, 'pa_color', '', 0, 0),
(68, 68, 'pa_color', '', 0, 0),
(69, 69, 'pa_color', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ofs2616_ufbl_entries`
--

CREATE TABLE IF NOT EXISTS `ofs2616_ufbl_entries` (
`entry_id` mediumint(9) NOT NULL,
  `form_id` mediumint(9) DEFAULT NULL,
  `entry_detail` text COLLATE utf8mb4_unicode_ci,
  `entry_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ofs2616_ufbl_forms`
--

CREATE TABLE IF NOT EXISTS `ofs2616_ufbl_forms` (
`form_id` mediumint(9) NOT NULL,
  `form_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `form_detail` text COLLATE utf8mb4_unicode_ci,
  `form_status` int(11) DEFAULT NULL,
  `form_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `form_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
`umeta_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(15, 1, 'ofs2616_dashboard_quick_press_last_post_id', '247'),
(16, 1, 'manageedit-shop_ordercolumnshidden', 'a:1:{i:0;s:15:"billing_address";}'),
(17, 1, 'ofs2616_user-settings', 'libraryContent=browse&editor=html'),
(18, 1, 'ofs2616_user-settings-time', '1458056360'),
(19, 1, 'wporg_favorites', ''),
(21, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:15:"title-attribute";i:1;s:11:"link-target";i:2;s:11:"css-classes";i:3;s:3:"xfn";i:4;s:11:"description";}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:5:{i:0;s:21:"add-post-type-product";i:1;s:12:"add-category";i:2;s:12:"add-post_tag";i:3;s:15:"add-post_format";i:4;s:30:"woocommerce_endpoints_nav_link";}'),
(23, 1, 'nav_menu_recently_edited', '16'),
(24, 1, 'closedpostboxes_post', 'a:1:{i:0;s:35:"eightstore_lite_post_sidebar_layout";}'),
(25, 1, 'metaboxhidden_post', 'a:6:{i:0;s:11:"postexcerpt";i:1;s:13:"trackbacksdiv";i:2;s:10:"postcustom";i:3;s:16:"commentstatusdiv";i:4;s:11:"commentsdiv";i:5;s:9:"authordiv";}'),
(26, 1, 'source_domain', 'localhost'),
(27, 1, 'primary_blog', '1'),
(30, 1, 'ofs2616_2_user-settings', 'libraryContent=browse&editor=html'),
(31, 1, 'ofs2616_2_user-settings-time', '1458057177'),
(32, 1, 'ofs2616_2_dashboard_quick_press_last_post_id', '7'),
(34, 1, 'closedpostboxes_product', 'a:0:{}'),
(35, 1, 'metaboxhidden_product', 'a:3:{i:0;s:7:"acf_166";i:1;s:10:"postcustom";i:2;s:7:"slugdiv";}'),
(36, 1, 'session_tokens', 'a:1:{s:64:"ab4277951af7f539af243fddcf921a5faa66a2865a8247f39cf5bdebe0b0953e";a:4:{s:10:"expiration";i:1458222311;s:2:"ip";s:3:"::1";s:2:"ua";s:121:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36";s:5:"login";i:1458049511;}}'),
(37, 1, 'billing_first_name', 'Dianne Katherine'),
(38, 1, 'billing_last_name', 'Delos Reyes'),
(39, 1, 'billing_company', ''),
(40, 1, 'billing_email', 'diannekatherinedelosreyes@gmail.com'),
(41, 1, 'billing_phone', '9063897290'),
(42, 1, 'billing_country', 'PH'),
(43, 1, 'billing_address_1', '159 Lambakin Marilao Bulacan'),
(44, 1, 'billing_address_2', ''),
(45, 1, 'billing_city', 'Marilao'),
(46, 1, 'billing_state', '00'),
(47, 1, 'billing_postcode', '3019'),
(48, 1, 'shipping_first_name', 'Dianne Katherine'),
(49, 1, 'shipping_last_name', 'Delos Reyes'),
(50, 1, 'shipping_company', ''),
(51, 1, 'shipping_country', 'PH'),
(52, 1, 'shipping_address_1', '159 Lambakin Marilao Bulacan'),
(53, 1, 'shipping_address_2', ''),
(54, 1, 'shipping_city', 'Marilao'),
(55, 1, 'shipping_state', '00'),
(56, 1, 'shipping_postcode', '3019'),
(59, 1, 'ofs2616_3_user-settings', 'libraryContent=browse&editor=html'),
(60, 1, 'ofs2616_3_user-settings-time', '1456709830'),
(61, 1, 'ofs2616_3_dashboard_quick_press_last_post_id', '3'),
(64, 1, 'ofs2616_4_user-settings', 'libraryContent=browse&editor=html'),
(65, 1, 'ofs2616_4_user-settings-time', '1456717647'),
(66, 1, 'ofs2616_4_dashboard_quick_press_last_post_id', '231'),
(67, 2, 'nickname', 'try'),
(68, 2, 'first_name', ''),
(69, 2, 'last_name', ''),
(70, 2, 'description', ''),
(71, 2, 'rich_editing', 'true'),
(72, 2, 'comment_shortcuts', 'false'),
(73, 2, 'admin_color', 'fresh'),
(74, 2, 'use_ssl', '0'),
(75, 2, 'show_admin_bar_front', 'true'),
(78, 2, 'dismissed_wp_pointers', ''),
(79, 2, 'show_welcome_panel', '2'),
(80, 2, 'primary_blog', ''),
(81, 2, 'source_domain', ''),
(82, 1, 'ofs2616_2_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(83, 1, 'ofs2616_2_user_level', '10'),
(86, 1, 'paying_customer', '1'),
(87, 1, '_money_spent', '500'),
(88, 1, '_order_count', '1'),
(89, 1, 'closedpostboxes_nav-menus', 'a:0:{}'),
(90, 3, 'nickname', 'uae'),
(91, 3, 'first_name', ''),
(92, 3, 'last_name', ''),
(93, 3, 'description', ''),
(94, 3, 'rich_editing', 'true'),
(95, 3, 'comment_shortcuts', 'false'),
(96, 3, 'admin_color', 'fresh'),
(97, 3, 'use_ssl', '0'),
(98, 3, 'show_admin_bar_front', 'true'),
(101, 3, 'dismissed_wp_pointers', ''),
(102, 3, 'show_welcome_panel', '2'),
(103, 3, 'primary_blog', '3'),
(104, 3, 'source_domain', 'localhost'),
(105, 3, 'ofs2616_3_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(106, 3, 'ofs2616_3_user_level', '10'),
(107, 1, 'ofs2616_2_media_library_mode', 'list');

-- --------------------------------------------------------

--
-- Table structure for table `ofs2616_users`
--

CREATE TABLE IF NOT EXISTS `ofs2616_users` (
`ID` bigint(20) unsigned NOT NULL,
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
  `deleted` tinyint(2) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ofs2616_users`
--

INSERT INTO `ofs2616_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`, `spam`, `deleted`) VALUES
(1, 'onefabshop_admin', '$P$BZ2gGK9Zo64xQWdNsU3/9cZ4QhbCyx0', 'onefabshop_admin', 'diannekatherinedelosreyes@gmail.com', '', '2016-02-06 07:33:43', '', 0, 'onefabshop_admin', 0, 0),
(2, 'try', '$P$BKibunIk7z6bhlwavjEbPbmvm4xFPF0', 'try', 'try@yahoo.com', '', '2016-02-29 04:05:29', '1456718731:$P$B8aTbzT2kIvApvSnyvXkb4WVbOBQ.T1', 0, 'try', 0, 0),
(3, 'uae', '$P$B9CZ/rPSld2GJNXayUwz/z4KcbMPSM0', 'uae', 'uae@yahoo.com', '', '2016-03-13 09:10:30', '1457860230:$P$BCkEdVHLCivPX1dk8GdOsv1DVtJ36i/', 0, 'uae', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ofs2616_woocommerce_api_keys`
--

CREATE TABLE IF NOT EXISTS `ofs2616_woocommerce_api_keys` (
`key_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ofs2616_woocommerce_attribute_taxonomies`
--

CREATE TABLE IF NOT EXISTS `ofs2616_woocommerce_attribute_taxonomies` (
`attribute_id` bigint(20) NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_label` longtext COLLATE utf8mb4_unicode_ci,
  `attribute_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_orderby` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ofs2616_woocommerce_attribute_taxonomies`
--

INSERT INTO `ofs2616_woocommerce_attribute_taxonomies` (`attribute_id`, `attribute_name`, `attribute_label`, `attribute_type`, `attribute_orderby`, `attribute_public`) VALUES
(1, 'color', 'Colors', 'select', 'name', 0),
(2, 'brands', 'Brands', 'select', 'name', 1),
(5, 'subcategory', 'Subcategory', 'select', 'menu_order', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ofs2616_woocommerce_downloadable_product_permissions`
--

CREATE TABLE IF NOT EXISTS `ofs2616_woocommerce_downloadable_product_permissions` (
`permission_id` bigint(20) NOT NULL,
  `download_id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `order_id` bigint(20) NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ofs2616_woocommerce_order_itemmeta`
--

CREATE TABLE IF NOT EXISTS `ofs2616_woocommerce_order_itemmeta` (
`meta_id` bigint(20) NOT NULL,
  `order_item_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=203 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ofs2616_woocommerce_order_itemmeta`
--

INSERT INTO `ofs2616_woocommerce_order_itemmeta` (`meta_id`, `order_item_id`, `meta_key`, `meta_value`) VALUES
(13, 3, '_qty', '1'),
(14, 3, '_tax_class', ''),
(15, 3, '_product_id', '184'),
(16, 3, '_variation_id', '0'),
(17, 3, '_line_subtotal', '2000'),
(18, 3, '_line_total', '2000'),
(19, 3, '_line_subtotal_tax', '0'),
(20, 3, '_line_tax', '0'),
(21, 3, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(22, 4, 'method_id', 'local_pickup'),
(23, 4, 'cost', '0.00'),
(24, 4, 'taxes', 'a:0:{}'),
(25, 5, '_qty', '1'),
(26, 5, '_tax_class', ''),
(27, 5, '_product_id', '193'),
(28, 5, '_variation_id', '198'),
(29, 5, '_line_subtotal', '2000'),
(30, 5, '_line_total', '2000'),
(31, 5, '_line_subtotal_tax', '0'),
(32, 5, '_line_tax', '0'),
(33, 5, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(34, 5, 'pa_color', 'black'),
(35, 6, 'method_id', 'free_shipping'),
(36, 6, 'cost', '0.00'),
(37, 6, 'taxes', 'a:0:{}'),
(38, 7, '_qty', '1'),
(39, 7, '_tax_class', ''),
(40, 7, '_product_id', '193'),
(41, 7, '_variation_id', '197'),
(42, 7, '_line_subtotal', '2000'),
(43, 7, '_line_total', '2000'),
(44, 7, '_line_subtotal_tax', '0'),
(45, 7, '_line_tax', '0'),
(46, 7, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(47, 7, 'pa_color', 'brown'),
(48, 8, 'method_id', 'local_pickup'),
(49, 8, 'cost', '0.00'),
(50, 8, 'taxes', 'a:0:{}'),
(162, 27, '_qty', '1'),
(163, 27, '_tax_class', ''),
(164, 27, '_product_id', '99'),
(165, 27, '_variation_id', '0'),
(166, 27, '_line_subtotal', '2'),
(167, 27, '_line_total', '2'),
(168, 27, '_line_subtotal_tax', '0'),
(169, 27, '_line_tax', '0'),
(170, 27, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(171, 28, 'method_id', 'local_pickup'),
(172, 28, 'cost', '0.00'),
(173, 28, 'taxes', 'a:0:{}'),
(174, 29, '_qty', '1'),
(175, 29, '_tax_class', ''),
(176, 29, '_product_id', '193'),
(177, 29, '_variation_id', '197'),
(178, 29, '_line_subtotal', '2000'),
(179, 29, '_line_total', '2000'),
(180, 29, '_line_subtotal_tax', '0'),
(181, 29, '_line_tax', '0'),
(182, 29, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(183, 29, 'pa_color', 'brown'),
(184, 29, '_wc_deposit_meta', 'a:5:{s:6:"enable";s:3:"yes";s:7:"deposit";d:500;s:9:"remaining";d:1500;s:5:"total";i:2000;s:5:"ratio";d:1;}'),
(185, 30, 'method_id', 'local_pickup'),
(186, 30, 'cost', '0.00'),
(187, 30, 'taxes', 'a:0:{}'),
(188, 31, '_qty', '1'),
(189, 31, '_tax_class', ''),
(190, 31, '_product_id', '193'),
(191, 31, '_variation_id', '198'),
(192, 31, '_line_subtotal', '2000'),
(193, 31, '_line_total', '2000'),
(194, 31, '_line_subtotal_tax', '0'),
(195, 31, '_line_tax', '0'),
(196, 31, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(197, 31, 'pa_color', 'black'),
(198, 31, '_wc_deposit_meta', 'a:5:{s:6:"enable";s:3:"yes";s:7:"deposit";d:500;s:9:"remaining";d:1500;s:5:"total";i:2000;s:5:"ratio";d:1;}'),
(199, 32, 'method_id', 'local_pickup'),
(200, 32, 'cost', '0.00'),
(201, 32, 'taxes', 'a:0:{}'),
(202, 31, 'wc_deposit_meta', 'a:3:{s:7:"deposit";d:500;s:9:"remaining";d:1500;s:6:"enable";s:3:"yes";}');

-- --------------------------------------------------------

--
-- Table structure for table `ofs2616_woocommerce_order_items`
--

CREATE TABLE IF NOT EXISTS `ofs2616_woocommerce_order_items` (
`order_item_id` bigint(20) NOT NULL,
  `order_item_name` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ofs2616_woocommerce_order_items`
--

INSERT INTO `ofs2616_woocommerce_order_items` (`order_item_id`, `order_item_name`, `order_item_type`, `order_id`) VALUES
(3, 'Aldo', 'line_item', 190),
(4, 'Local Pickup', 'shipping', 190),
(5, 'Aldo Bag', 'line_item', 232),
(6, 'Free Shipping', 'shipping', 232),
(7, 'Aldo Bag', 'line_item', 243),
(8, 'Local Pickup', 'shipping', 243),
(27, 'Woo Single #2', 'line_item', 252),
(28, 'Local Pickup', 'shipping', 252),
(29, 'Aldo Bag', 'line_item', 256),
(30, 'Local Pickup', 'shipping', 256),
(31, 'Aldo Bag', 'line_item', 257),
(32, 'Local Pickup', 'shipping', 257);

-- --------------------------------------------------------

--
-- Table structure for table `ofs2616_woocommerce_sessions`
--

CREATE TABLE IF NOT EXISTS `ofs2616_woocommerce_sessions` (
`session_id` bigint(20) NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_expiry` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ofs2616_woocommerce_tax_rates`
--

CREATE TABLE IF NOT EXISTS `ofs2616_woocommerce_tax_rates` (
`tax_rate_id` bigint(20) NOT NULL,
  `tax_rate_country` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ofs2616_woocommerce_tax_rate_locations`
--

CREATE TABLE IF NOT EXISTS `ofs2616_woocommerce_tax_rate_locations` (
`location_id` bigint(20) NOT NULL,
  `location_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate_id` bigint(20) NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ofs2616_woocommerce_termmeta`
--

CREATE TABLE IF NOT EXISTS `ofs2616_woocommerce_termmeta` (
`meta_id` bigint(20) NOT NULL,
  `woocommerce_term_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ofs2616_woocommerce_termmeta`
--

INSERT INTO `ofs2616_woocommerce_termmeta` (`meta_id`, `woocommerce_term_id`, `meta_key`, `meta_value`) VALUES
(1, 6, 'order', '1'),
(2, 7, 'order', '6'),
(3, 8, 'order', '9'),
(4, 7, 'product_count_product_cat', '16'),
(5, 8, 'product_count_product_cat', '6'),
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
(60, 38, 'order_pa_color', '0'),
(63, 19, 'product_ids', 'a:1:{i:0;s:3:"104";}'),
(65, 39, 'order_pa_color', '0'),
(78, 43, 'order_pa_brands', '0'),
(79, 44, 'order_pa_brands', '0'),
(85, 45, 'featured', '1'),
(86, 46, 'featured', '1'),
(92, 47, 'order_pa_brands', '0'),
(93, 48, 'order_pa_brands', '0'),
(94, 49, 'order_pa_brands', '0'),
(95, 50, 'order_pa_brands', '0'),
(96, 51, 'order_pa_brands', '0'),
(97, 52, 'order_pa_brands', '0'),
(98, 53, 'order_pa_brands', '0'),
(99, 54, 'order_pa_brands', '0'),
(100, 55, 'order_pa_brands', '0'),
(101, 56, 'order_pa_brands', '0'),
(110, 61, 'order_pa_subcategory', '0'),
(116, 62, 'order_pa_subcategory', '0'),
(117, 63, 'order_pa_subcategory', '0'),
(118, 64, 'order_pa_subcategory', '0'),
(119, 61, 'product_ids', 'a:1:{i:0;s:3:"193";}'),
(120, 43, 'product_ids', 'a:1:{i:0;s:3:"193";}'),
(121, 44, 'product_ids', 'a:1:{i:0;s:3:"184";}'),
(122, 17, 'product_ids', 'a:3:{i:0;s:2:"40";i:1;s:3:"104";i:2;s:3:"193";}'),
(123, 18, 'product_ids', 'a:2:{i:0;s:1:"8";i:1;s:2:"40";}'),
(124, 39, 'product_ids', 'a:1:{i:0;s:3:"193";}'),
(125, 38, 'product_ids', 'a:2:{i:0;s:1:"8";i:1;s:3:"193";}'),
(126, 65, 'order_pa_color', '0'),
(127, 66, 'order_pa_color', '0'),
(128, 67, 'order_pa_color', '0'),
(129, 68, 'order_pa_color', '0'),
(130, 69, 'order_pa_color', '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ofs2616_2_commentmeta`
--
ALTER TABLE `ofs2616_2_commentmeta`
 ADD PRIMARY KEY (`meta_id`), ADD KEY `comment_id` (`comment_id`), ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `ofs2616_2_comments`
--
ALTER TABLE `ofs2616_2_comments`
 ADD PRIMARY KEY (`comment_ID`), ADD KEY `comment_post_ID` (`comment_post_ID`), ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`), ADD KEY `comment_date_gmt` (`comment_date_gmt`), ADD KEY `comment_parent` (`comment_parent`), ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `ofs2616_2_ewwwio_images`
--
ALTER TABLE `ofs2616_2_ewwwio_images`
 ADD UNIQUE KEY `id` (`id`), ADD KEY `path_image_size` (`path`(191),`image_size`);

--
-- Indexes for table `ofs2616_2_links`
--
ALTER TABLE `ofs2616_2_links`
 ADD PRIMARY KEY (`link_id`), ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `ofs2616_2_options`
--
ALTER TABLE `ofs2616_2_options`
 ADD PRIMARY KEY (`option_id`), ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `ofs2616_2_postmeta`
--
ALTER TABLE `ofs2616_2_postmeta`
 ADD PRIMARY KEY (`meta_id`), ADD KEY `post_id` (`post_id`), ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `ofs2616_2_posts`
--
ALTER TABLE `ofs2616_2_posts`
 ADD PRIMARY KEY (`ID`), ADD KEY `post_name` (`post_name`(191)), ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`), ADD KEY `post_parent` (`post_parent`), ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `ofs2616_2_termmeta`
--
ALTER TABLE `ofs2616_2_termmeta`
 ADD PRIMARY KEY (`meta_id`), ADD KEY `term_id` (`term_id`), ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `ofs2616_2_terms`
--
ALTER TABLE `ofs2616_2_terms`
 ADD PRIMARY KEY (`term_id`), ADD KEY `slug` (`slug`(191)), ADD KEY `name` (`name`(191));

--
-- Indexes for table `ofs2616_2_term_relationships`
--
ALTER TABLE `ofs2616_2_term_relationships`
 ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`), ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `ofs2616_2_term_taxonomy`
--
ALTER TABLE `ofs2616_2_term_taxonomy`
 ADD PRIMARY KEY (`term_taxonomy_id`), ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`), ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `ofs2616_2_ufbl_entries`
--
ALTER TABLE `ofs2616_2_ufbl_entries`
 ADD UNIQUE KEY `entry_id` (`entry_id`);

--
-- Indexes for table `ofs2616_2_ufbl_forms`
--
ALTER TABLE `ofs2616_2_ufbl_forms`
 ADD UNIQUE KEY `form_id` (`form_id`);

--
-- Indexes for table `ofs2616_2_woocommerce_api_keys`
--
ALTER TABLE `ofs2616_2_woocommerce_api_keys`
 ADD PRIMARY KEY (`key_id`), ADD KEY `consumer_key` (`consumer_key`), ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Indexes for table `ofs2616_2_woocommerce_attribute_taxonomies`
--
ALTER TABLE `ofs2616_2_woocommerce_attribute_taxonomies`
 ADD PRIMARY KEY (`attribute_id`), ADD KEY `attribute_name` (`attribute_name`(191));

--
-- Indexes for table `ofs2616_2_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `ofs2616_2_woocommerce_downloadable_product_permissions`
 ADD PRIMARY KEY (`permission_id`), ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(191),`download_id`), ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`);

--
-- Indexes for table `ofs2616_2_woocommerce_order_itemmeta`
--
ALTER TABLE `ofs2616_2_woocommerce_order_itemmeta`
 ADD PRIMARY KEY (`meta_id`), ADD KEY `order_item_id` (`order_item_id`), ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `ofs2616_2_woocommerce_order_items`
--
ALTER TABLE `ofs2616_2_woocommerce_order_items`
 ADD PRIMARY KEY (`order_item_id`), ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `ofs2616_2_woocommerce_sessions`
--
ALTER TABLE `ofs2616_2_woocommerce_sessions`
 ADD PRIMARY KEY (`session_key`), ADD UNIQUE KEY `session_id` (`session_id`);

--
-- Indexes for table `ofs2616_2_woocommerce_tax_rates`
--
ALTER TABLE `ofs2616_2_woocommerce_tax_rates`
 ADD PRIMARY KEY (`tax_rate_id`), ADD KEY `tax_rate_country` (`tax_rate_country`(191)), ADD KEY `tax_rate_state` (`tax_rate_state`(191)), ADD KEY `tax_rate_class` (`tax_rate_class`(191)), ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Indexes for table `ofs2616_2_woocommerce_tax_rate_locations`
--
ALTER TABLE `ofs2616_2_woocommerce_tax_rate_locations`
 ADD PRIMARY KEY (`location_id`), ADD KEY `tax_rate_id` (`tax_rate_id`), ADD KEY `location_type` (`location_type`), ADD KEY `location_type_code` (`location_type`,`location_code`(90));

--
-- Indexes for table `ofs2616_2_woocommerce_termmeta`
--
ALTER TABLE `ofs2616_2_woocommerce_termmeta`
 ADD PRIMARY KEY (`meta_id`), ADD KEY `woocommerce_term_id` (`woocommerce_term_id`), ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `ofs2616_3_commentmeta`
--
ALTER TABLE `ofs2616_3_commentmeta`
 ADD PRIMARY KEY (`meta_id`), ADD KEY `comment_id` (`comment_id`), ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `ofs2616_3_comments`
--
ALTER TABLE `ofs2616_3_comments`
 ADD PRIMARY KEY (`comment_ID`), ADD KEY `comment_post_ID` (`comment_post_ID`), ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`), ADD KEY `comment_date_gmt` (`comment_date_gmt`), ADD KEY `comment_parent` (`comment_parent`), ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `ofs2616_3_links`
--
ALTER TABLE `ofs2616_3_links`
 ADD PRIMARY KEY (`link_id`), ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `ofs2616_3_options`
--
ALTER TABLE `ofs2616_3_options`
 ADD PRIMARY KEY (`option_id`), ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `ofs2616_3_postmeta`
--
ALTER TABLE `ofs2616_3_postmeta`
 ADD PRIMARY KEY (`meta_id`), ADD KEY `post_id` (`post_id`), ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `ofs2616_3_posts`
--
ALTER TABLE `ofs2616_3_posts`
 ADD PRIMARY KEY (`ID`), ADD KEY `post_name` (`post_name`(191)), ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`), ADD KEY `post_parent` (`post_parent`), ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `ofs2616_3_termmeta`
--
ALTER TABLE `ofs2616_3_termmeta`
 ADD PRIMARY KEY (`meta_id`), ADD KEY `term_id` (`term_id`), ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `ofs2616_3_terms`
--
ALTER TABLE `ofs2616_3_terms`
 ADD PRIMARY KEY (`term_id`), ADD KEY `slug` (`slug`(191)), ADD KEY `name` (`name`(191));

--
-- Indexes for table `ofs2616_3_term_relationships`
--
ALTER TABLE `ofs2616_3_term_relationships`
 ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`), ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `ofs2616_3_term_taxonomy`
--
ALTER TABLE `ofs2616_3_term_taxonomy`
 ADD PRIMARY KEY (`term_taxonomy_id`), ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`), ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `ofs2616_3_woocommerce_api_keys`
--
ALTER TABLE `ofs2616_3_woocommerce_api_keys`
 ADD PRIMARY KEY (`key_id`), ADD KEY `consumer_key` (`consumer_key`), ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Indexes for table `ofs2616_3_woocommerce_attribute_taxonomies`
--
ALTER TABLE `ofs2616_3_woocommerce_attribute_taxonomies`
 ADD PRIMARY KEY (`attribute_id`), ADD KEY `attribute_name` (`attribute_name`(191));

--
-- Indexes for table `ofs2616_3_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `ofs2616_3_woocommerce_downloadable_product_permissions`
 ADD PRIMARY KEY (`permission_id`), ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(191),`download_id`), ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`);

--
-- Indexes for table `ofs2616_3_woocommerce_order_itemmeta`
--
ALTER TABLE `ofs2616_3_woocommerce_order_itemmeta`
 ADD PRIMARY KEY (`meta_id`), ADD KEY `order_item_id` (`order_item_id`), ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `ofs2616_3_woocommerce_order_items`
--
ALTER TABLE `ofs2616_3_woocommerce_order_items`
 ADD PRIMARY KEY (`order_item_id`), ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `ofs2616_3_woocommerce_sessions`
--
ALTER TABLE `ofs2616_3_woocommerce_sessions`
 ADD PRIMARY KEY (`session_key`), ADD UNIQUE KEY `session_id` (`session_id`);

--
-- Indexes for table `ofs2616_3_woocommerce_tax_rates`
--
ALTER TABLE `ofs2616_3_woocommerce_tax_rates`
 ADD PRIMARY KEY (`tax_rate_id`), ADD KEY `tax_rate_country` (`tax_rate_country`(191)), ADD KEY `tax_rate_state` (`tax_rate_state`(191)), ADD KEY `tax_rate_class` (`tax_rate_class`(191)), ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Indexes for table `ofs2616_3_woocommerce_tax_rate_locations`
--
ALTER TABLE `ofs2616_3_woocommerce_tax_rate_locations`
 ADD PRIMARY KEY (`location_id`), ADD KEY `tax_rate_id` (`tax_rate_id`), ADD KEY `location_type` (`location_type`), ADD KEY `location_type_code` (`location_type`,`location_code`(90));

--
-- Indexes for table `ofs2616_3_woocommerce_termmeta`
--
ALTER TABLE `ofs2616_3_woocommerce_termmeta`
 ADD PRIMARY KEY (`meta_id`), ADD KEY `woocommerce_term_id` (`woocommerce_term_id`), ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `ofs2616_blogs`
--
ALTER TABLE `ofs2616_blogs`
 ADD PRIMARY KEY (`blog_id`), ADD KEY `domain` (`domain`(50),`path`(5)), ADD KEY `lang_id` (`lang_id`);

--
-- Indexes for table `ofs2616_blog_versions`
--
ALTER TABLE `ofs2616_blog_versions`
 ADD PRIMARY KEY (`blog_id`), ADD KEY `db_version` (`db_version`);

--
-- Indexes for table `ofs2616_commentmeta`
--
ALTER TABLE `ofs2616_commentmeta`
 ADD PRIMARY KEY (`meta_id`), ADD KEY `comment_id` (`comment_id`), ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `ofs2616_comments`
--
ALTER TABLE `ofs2616_comments`
 ADD PRIMARY KEY (`comment_ID`), ADD KEY `comment_post_ID` (`comment_post_ID`), ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`), ADD KEY `comment_date_gmt` (`comment_date_gmt`), ADD KEY `comment_parent` (`comment_parent`), ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `ofs2616_currencies`
--
ALTER TABLE `ofs2616_currencies`
 ADD UNIQUE KEY `currency_code` (`currency_code`);

--
-- Indexes for table `ofs2616_ewwwio_images`
--
ALTER TABLE `ofs2616_ewwwio_images`
 ADD UNIQUE KEY `id` (`id`), ADD KEY `path_image_size` (`path`(191),`image_size`);

--
-- Indexes for table `ofs2616_links`
--
ALTER TABLE `ofs2616_links`
 ADD PRIMARY KEY (`link_id`), ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `ofs2616_options`
--
ALTER TABLE `ofs2616_options`
 ADD PRIMARY KEY (`option_id`), ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `ofs2616_postmeta`
--
ALTER TABLE `ofs2616_postmeta`
 ADD PRIMARY KEY (`meta_id`), ADD KEY `post_id` (`post_id`), ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `ofs2616_posts`
--
ALTER TABLE `ofs2616_posts`
 ADD PRIMARY KEY (`ID`), ADD KEY `post_name` (`post_name`(191)), ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`), ADD KEY `post_parent` (`post_parent`), ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `ofs2616_registration_log`
--
ALTER TABLE `ofs2616_registration_log`
 ADD PRIMARY KEY (`ID`), ADD KEY `IP` (`IP`);

--
-- Indexes for table `ofs2616_signups`
--
ALTER TABLE `ofs2616_signups`
 ADD PRIMARY KEY (`signup_id`), ADD KEY `activation_key` (`activation_key`), ADD KEY `user_email` (`user_email`), ADD KEY `user_login_email` (`user_login`,`user_email`), ADD KEY `domain_path` (`domain`(140),`path`(51));

--
-- Indexes for table `ofs2616_site`
--
ALTER TABLE `ofs2616_site`
 ADD PRIMARY KEY (`id`), ADD KEY `domain` (`domain`(140),`path`(51));

--
-- Indexes for table `ofs2616_sitemeta`
--
ALTER TABLE `ofs2616_sitemeta`
 ADD PRIMARY KEY (`meta_id`), ADD KEY `meta_key` (`meta_key`(191)), ADD KEY `site_id` (`site_id`);

--
-- Indexes for table `ofs2616_termmeta`
--
ALTER TABLE `ofs2616_termmeta`
 ADD PRIMARY KEY (`meta_id`), ADD KEY `term_id` (`term_id`), ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `ofs2616_terms`
--
ALTER TABLE `ofs2616_terms`
 ADD PRIMARY KEY (`term_id`), ADD KEY `slug` (`slug`(191)), ADD KEY `name` (`name`(191));

--
-- Indexes for table `ofs2616_term_relationships`
--
ALTER TABLE `ofs2616_term_relationships`
 ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`), ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `ofs2616_term_taxonomy`
--
ALTER TABLE `ofs2616_term_taxonomy`
 ADD PRIMARY KEY (`term_taxonomy_id`), ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`), ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `ofs2616_ufbl_entries`
--
ALTER TABLE `ofs2616_ufbl_entries`
 ADD UNIQUE KEY `entry_id` (`entry_id`);

--
-- Indexes for table `ofs2616_ufbl_forms`
--
ALTER TABLE `ofs2616_ufbl_forms`
 ADD UNIQUE KEY `form_id` (`form_id`);

--
-- Indexes for table `ofs2616_usermeta`
--
ALTER TABLE `ofs2616_usermeta`
 ADD PRIMARY KEY (`umeta_id`), ADD KEY `user_id` (`user_id`), ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `ofs2616_users`
--
ALTER TABLE `ofs2616_users`
 ADD PRIMARY KEY (`ID`), ADD KEY `user_login_key` (`user_login`), ADD KEY `user_nicename` (`user_nicename`);

--
-- Indexes for table `ofs2616_woocommerce_api_keys`
--
ALTER TABLE `ofs2616_woocommerce_api_keys`
 ADD PRIMARY KEY (`key_id`), ADD KEY `consumer_key` (`consumer_key`), ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Indexes for table `ofs2616_woocommerce_attribute_taxonomies`
--
ALTER TABLE `ofs2616_woocommerce_attribute_taxonomies`
 ADD PRIMARY KEY (`attribute_id`), ADD KEY `attribute_name` (`attribute_name`(191));

--
-- Indexes for table `ofs2616_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `ofs2616_woocommerce_downloadable_product_permissions`
 ADD PRIMARY KEY (`permission_id`), ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(191),`download_id`), ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`);

--
-- Indexes for table `ofs2616_woocommerce_order_itemmeta`
--
ALTER TABLE `ofs2616_woocommerce_order_itemmeta`
 ADD PRIMARY KEY (`meta_id`), ADD KEY `order_item_id` (`order_item_id`), ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `ofs2616_woocommerce_order_items`
--
ALTER TABLE `ofs2616_woocommerce_order_items`
 ADD PRIMARY KEY (`order_item_id`), ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `ofs2616_woocommerce_sessions`
--
ALTER TABLE `ofs2616_woocommerce_sessions`
 ADD PRIMARY KEY (`session_key`), ADD UNIQUE KEY `session_id` (`session_id`);

--
-- Indexes for table `ofs2616_woocommerce_tax_rates`
--
ALTER TABLE `ofs2616_woocommerce_tax_rates`
 ADD PRIMARY KEY (`tax_rate_id`), ADD KEY `tax_rate_country` (`tax_rate_country`(191)), ADD KEY `tax_rate_state` (`tax_rate_state`(191)), ADD KEY `tax_rate_class` (`tax_rate_class`(191)), ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Indexes for table `ofs2616_woocommerce_tax_rate_locations`
--
ALTER TABLE `ofs2616_woocommerce_tax_rate_locations`
 ADD PRIMARY KEY (`location_id`), ADD KEY `tax_rate_id` (`tax_rate_id`), ADD KEY `location_type` (`location_type`), ADD KEY `location_type_code` (`location_type`,`location_code`(90));

--
-- Indexes for table `ofs2616_woocommerce_termmeta`
--
ALTER TABLE `ofs2616_woocommerce_termmeta`
 ADD PRIMARY KEY (`meta_id`), ADD KEY `woocommerce_term_id` (`woocommerce_term_id`), ADD KEY `meta_key` (`meta_key`(191));

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ofs2616_2_commentmeta`
--
ALTER TABLE `ofs2616_2_commentmeta`
MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ofs2616_2_comments`
--
ALTER TABLE `ofs2616_2_comments`
MODIFY `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ofs2616_2_ewwwio_images`
--
ALTER TABLE `ofs2616_2_ewwwio_images`
MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=475;
--
-- AUTO_INCREMENT for table `ofs2616_2_links`
--
ALTER TABLE `ofs2616_2_links`
MODIFY `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ofs2616_2_options`
--
ALTER TABLE `ofs2616_2_options`
MODIFY `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=556;
--
-- AUTO_INCREMENT for table `ofs2616_2_postmeta`
--
ALTER TABLE `ofs2616_2_postmeta`
MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=992;
--
-- AUTO_INCREMENT for table `ofs2616_2_posts`
--
ALTER TABLE `ofs2616_2_posts`
MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=151;
--
-- AUTO_INCREMENT for table `ofs2616_2_termmeta`
--
ALTER TABLE `ofs2616_2_termmeta`
MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ofs2616_2_terms`
--
ALTER TABLE `ofs2616_2_terms`
MODIFY `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=68;
--
-- AUTO_INCREMENT for table `ofs2616_2_term_taxonomy`
--
ALTER TABLE `ofs2616_2_term_taxonomy`
MODIFY `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=68;
--
-- AUTO_INCREMENT for table `ofs2616_2_ufbl_entries`
--
ALTER TABLE `ofs2616_2_ufbl_entries`
MODIFY `entry_id` mediumint(9) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ofs2616_2_ufbl_forms`
--
ALTER TABLE `ofs2616_2_ufbl_forms`
MODIFY `form_id` mediumint(9) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ofs2616_2_woocommerce_api_keys`
--
ALTER TABLE `ofs2616_2_woocommerce_api_keys`
MODIFY `key_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ofs2616_2_woocommerce_attribute_taxonomies`
--
ALTER TABLE `ofs2616_2_woocommerce_attribute_taxonomies`
MODIFY `attribute_id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `ofs2616_2_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `ofs2616_2_woocommerce_downloadable_product_permissions`
MODIFY `permission_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ofs2616_2_woocommerce_order_itemmeta`
--
ALTER TABLE `ofs2616_2_woocommerce_order_itemmeta`
MODIFY `meta_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ofs2616_2_woocommerce_order_items`
--
ALTER TABLE `ofs2616_2_woocommerce_order_items`
MODIFY `order_item_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ofs2616_2_woocommerce_sessions`
--
ALTER TABLE `ofs2616_2_woocommerce_sessions`
MODIFY `session_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ofs2616_2_woocommerce_tax_rates`
--
ALTER TABLE `ofs2616_2_woocommerce_tax_rates`
MODIFY `tax_rate_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ofs2616_2_woocommerce_tax_rate_locations`
--
ALTER TABLE `ofs2616_2_woocommerce_tax_rate_locations`
MODIFY `location_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ofs2616_2_woocommerce_termmeta`
--
ALTER TABLE `ofs2616_2_woocommerce_termmeta`
MODIFY `meta_id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=93;
--
-- AUTO_INCREMENT for table `ofs2616_3_commentmeta`
--
ALTER TABLE `ofs2616_3_commentmeta`
MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ofs2616_3_comments`
--
ALTER TABLE `ofs2616_3_comments`
MODIFY `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ofs2616_3_links`
--
ALTER TABLE `ofs2616_3_links`
MODIFY `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ofs2616_3_options`
--
ALTER TABLE `ofs2616_3_options`
MODIFY `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=222;
--
-- AUTO_INCREMENT for table `ofs2616_3_postmeta`
--
ALTER TABLE `ofs2616_3_postmeta`
MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ofs2616_3_posts`
--
ALTER TABLE `ofs2616_3_posts`
MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `ofs2616_3_termmeta`
--
ALTER TABLE `ofs2616_3_termmeta`
MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ofs2616_3_terms`
--
ALTER TABLE `ofs2616_3_terms`
MODIFY `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `ofs2616_3_term_taxonomy`
--
ALTER TABLE `ofs2616_3_term_taxonomy`
MODIFY `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `ofs2616_3_woocommerce_api_keys`
--
ALTER TABLE `ofs2616_3_woocommerce_api_keys`
MODIFY `key_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ofs2616_3_woocommerce_attribute_taxonomies`
--
ALTER TABLE `ofs2616_3_woocommerce_attribute_taxonomies`
MODIFY `attribute_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ofs2616_3_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `ofs2616_3_woocommerce_downloadable_product_permissions`
MODIFY `permission_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ofs2616_3_woocommerce_order_itemmeta`
--
ALTER TABLE `ofs2616_3_woocommerce_order_itemmeta`
MODIFY `meta_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ofs2616_3_woocommerce_order_items`
--
ALTER TABLE `ofs2616_3_woocommerce_order_items`
MODIFY `order_item_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ofs2616_3_woocommerce_sessions`
--
ALTER TABLE `ofs2616_3_woocommerce_sessions`
MODIFY `session_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ofs2616_3_woocommerce_tax_rates`
--
ALTER TABLE `ofs2616_3_woocommerce_tax_rates`
MODIFY `tax_rate_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ofs2616_3_woocommerce_tax_rate_locations`
--
ALTER TABLE `ofs2616_3_woocommerce_tax_rate_locations`
MODIFY `location_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ofs2616_3_woocommerce_termmeta`
--
ALTER TABLE `ofs2616_3_woocommerce_termmeta`
MODIFY `meta_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ofs2616_blogs`
--
ALTER TABLE `ofs2616_blogs`
MODIFY `blog_id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `ofs2616_commentmeta`
--
ALTER TABLE `ofs2616_commentmeta`
MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=222;
--
-- AUTO_INCREMENT for table `ofs2616_comments`
--
ALTER TABLE `ofs2616_comments`
MODIFY `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=56;
--
-- AUTO_INCREMENT for table `ofs2616_ewwwio_images`
--
ALTER TABLE `ofs2616_ewwwio_images`
MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `ofs2616_links`
--
ALTER TABLE `ofs2616_links`
MODIFY `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ofs2616_options`
--
ALTER TABLE `ofs2616_options`
MODIFY `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1556;
--
-- AUTO_INCREMENT for table `ofs2616_postmeta`
--
ALTER TABLE `ofs2616_postmeta`
MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2438;
--
-- AUTO_INCREMENT for table `ofs2616_posts`
--
ALTER TABLE `ofs2616_posts`
MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=298;
--
-- AUTO_INCREMENT for table `ofs2616_registration_log`
--
ALTER TABLE `ofs2616_registration_log`
MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `ofs2616_signups`
--
ALTER TABLE `ofs2616_signups`
MODIFY `signup_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ofs2616_site`
--
ALTER TABLE `ofs2616_site`
MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ofs2616_sitemeta`
--
ALTER TABLE `ofs2616_sitemeta`
MODIFY `meta_id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=236;
--
-- AUTO_INCREMENT for table `ofs2616_termmeta`
--
ALTER TABLE `ofs2616_termmeta`
MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ofs2616_terms`
--
ALTER TABLE `ofs2616_terms`
MODIFY `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=70;
--
-- AUTO_INCREMENT for table `ofs2616_term_taxonomy`
--
ALTER TABLE `ofs2616_term_taxonomy`
MODIFY `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=70;
--
-- AUTO_INCREMENT for table `ofs2616_ufbl_entries`
--
ALTER TABLE `ofs2616_ufbl_entries`
MODIFY `entry_id` mediumint(9) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ofs2616_ufbl_forms`
--
ALTER TABLE `ofs2616_ufbl_forms`
MODIFY `form_id` mediumint(9) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ofs2616_usermeta`
--
ALTER TABLE `ofs2616_usermeta`
MODIFY `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=108;
--
-- AUTO_INCREMENT for table `ofs2616_users`
--
ALTER TABLE `ofs2616_users`
MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `ofs2616_woocommerce_api_keys`
--
ALTER TABLE `ofs2616_woocommerce_api_keys`
MODIFY `key_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ofs2616_woocommerce_attribute_taxonomies`
--
ALTER TABLE `ofs2616_woocommerce_attribute_taxonomies`
MODIFY `attribute_id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `ofs2616_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `ofs2616_woocommerce_downloadable_product_permissions`
MODIFY `permission_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ofs2616_woocommerce_order_itemmeta`
--
ALTER TABLE `ofs2616_woocommerce_order_itemmeta`
MODIFY `meta_id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=203;
--
-- AUTO_INCREMENT for table `ofs2616_woocommerce_order_items`
--
ALTER TABLE `ofs2616_woocommerce_order_items`
MODIFY `order_item_id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `ofs2616_woocommerce_sessions`
--
ALTER TABLE `ofs2616_woocommerce_sessions`
MODIFY `session_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ofs2616_woocommerce_tax_rates`
--
ALTER TABLE `ofs2616_woocommerce_tax_rates`
MODIFY `tax_rate_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ofs2616_woocommerce_tax_rate_locations`
--
ALTER TABLE `ofs2616_woocommerce_tax_rate_locations`
MODIFY `location_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ofs2616_woocommerce_termmeta`
--
ALTER TABLE `ofs2616_woocommerce_termmeta`
MODIFY `meta_id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=131;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
