-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 24, 2020 at 08:05 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `money_transfer`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `picture` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `registered_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `name`, `email`, `password`, `status`, `picture`, `registered_date`) VALUES
(11, 'Md Jobayer Mahmud', 'a@gmail.com', 'c4ca4238a0b923820dcc509a6f75849badmin', 'super-admin', '1593689324.jpg', '2020-07-02');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `medium_banner` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_title` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_name` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `rank_order` int(11) DEFAULT '0',
  `seo_title` mediumtext COLLATE utf8mb4_unicode_ci,
  `seo_meta_title` mediumtext COLLATE utf8mb4_unicode_ci,
  `seo_keywords` mediumtext COLLATE utf8mb4_unicode_ci,
  `seo_content` mediumtext COLLATE utf8mb4_unicode_ci,
  `seo_meta_content` mediumtext COLLATE utf8mb4_unicode_ci,
  `registered_date` datetime NOT NULL,
  `share_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `medium_banner`, `category_title`, `category_name`, `parent_id`, `status`, `rank_order`, `seo_title`, `seo_meta_title`, `seo_keywords`, `seo_content`, `seo_meta_content`, `registered_date`, `share_image`) VALUES
(98, '1597679753.webp', 'GrameenPhone', 'grameenphone', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2020-08-17 00:00:00', NULL),
(99, '1597684686.jpg', 'Robi', 'robi', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2020-08-17 00:00:00', NULL),
(100, '1597684741.webp', 'Airtel', 'airtel', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2020-08-17 00:00:00', NULL),
(101, '1597684964.png', 'TeleTalk', 'teletalk', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2020-08-17 00:00:00', NULL),
(102, '1597687702.jpg', 'GrameenPhone Bundles', 'grameenphone-bundles', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2020-08-17 00:00:00', NULL),
(103, '1597687605.png', 'Banglalink', 'banglalink', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2020-08-17 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `courier`
--

CREATE TABLE `courier` (
  `courier_id` int(11) NOT NULL,
  `courier_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `courier_status` tinyint(4) NOT NULL COMMENT '1 for inside 2 outside',
  `created_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courier`
--

INSERT INTO `courier` (`courier_id`, `courier_name`, `courier_status`, `created_time`) VALUES
(2, 'sundor bon g', 2, '2020-05-29 06:21:24'),
(3, 'rupali ggggg', 1, '0000-00-00 00:00:00'),
(4, 'milon lai', 1, '2020-05-29 06:21:20');

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` int(2) UNSIGNED NOT NULL,
  `division_id` int(2) UNSIGNED NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bn_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lat` double NOT NULL,
  `lon` double NOT NULL,
  `website` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `division_id`, `name`, `bn_name`, `lat`, `lon`, `website`) VALUES
(1, 3, 'Dhaka', 'ঢাকা', 23.7115253, 90.4111451, 'www.dhaka.gov.bd'),
(2, 3, 'Faridpur', 'ফরিদপুর', 23.6070822, 89.8429406, 'www.faridpur.gov.bd'),
(3, 3, 'Gazipur', 'গাজীপুর', 24.0022858, 90.4264283, 'www.gazipur.gov.bd'),
(4, 3, 'Gopalganj', 'গোপালগঞ্জ', 23.0050857, 89.8266059, 'www.gopalganj.gov.bd'),
(5, 8, 'Jamalpur', 'জামালপুর', 24.937533, 89.937775, 'www.jamalpur.gov.bd'),
(6, 3, 'Kishoreganj', 'কিশোরগঞ্জ', 24.444937, 90.776575, 'www.kishoreganj.gov.bd'),
(7, 3, 'Madaripur', 'মাদারীপুর', 23.164102, 90.1896805, 'www.madaripur.gov.bd'),
(8, 3, 'Manikganj', 'মানিকগঞ্জ', 0, 0, 'www.manikganj.gov.bd'),
(9, 3, 'Munshiganj', 'মুন্সিগঞ্জ', 0, 0, 'www.munshiganj.gov.bd'),
(10, 8, 'Mymensingh', 'ময়মনসিংহ', 0, 0, 'www.mymensingh.gov.bd'),
(11, 3, 'Narayanganj', 'নারায়াণগঞ্জ', 23.63366, 90.496482, 'www.narayanganj.gov.bd'),
(12, 3, 'Narsingdi', 'নরসিংদী', 23.932233, 90.71541, 'www.narsingdi.gov.bd'),
(13, 8, 'Netrokona', 'নেত্রকোণা', 24.870955, 90.727887, 'www.netrokona.gov.bd'),
(14, 3, 'Rajbari', 'রাজবাড়ি', 23.7574305, 89.6444665, 'www.rajbari.gov.bd'),
(15, 3, 'Shariatpur', 'শরীয়তপুর', 0, 0, 'www.shariatpur.gov.bd'),
(16, 8, 'Sherpur', 'শেরপুর', 25.0204933, 90.0152966, 'www.sherpur.gov.bd'),
(17, 3, 'Tangail', 'টাঙ্গাইল', 0, 0, 'www.tangail.gov.bd'),
(18, 5, 'Bogura', 'বগুড়া', 24.8465228, 89.377755, 'www.bogra.gov.bd'),
(19, 5, 'Joypurhat', 'জয়পুরহাট', 0, 0, 'www.joypurhat.gov.bd'),
(20, 5, 'Naogaon', 'নওগাঁ', 0, 0, 'www.naogaon.gov.bd'),
(21, 5, 'Natore', 'নাটোর', 24.420556, 89.000282, 'www.natore.gov.bd'),
(22, 5, 'Chapainawabganj', 'চাঁপাইনবাবগঞ্জ', 24.5965034, 88.2775122, 'www.chapainawabganj.gov.bd'),
(23, 5, 'Pabna', 'পাবনা', 23.998524, 89.233645, 'www.pabna.gov.bd'),
(24, 5, 'Rajshahi', 'রাজশাহী', 0, 0, 'www.rajshahi.gov.bd'),
(25, 5, 'Sirajgonj', 'সিরাজগঞ্জ', 24.4533978, 89.7006815, 'www.sirajganj.gov.bd'),
(26, 6, 'Dinajpur', 'দিনাজপুর', 25.6217061, 88.6354504, 'www.dinajpur.gov.bd'),
(27, 6, 'Gaibandha', 'গাইবান্ধা', 25.328751, 89.528088, 'www.gaibandha.gov.bd'),
(28, 6, 'Kurigram', 'কুড়িগ্রাম', 25.805445, 89.636174, 'www.kurigram.gov.bd'),
(29, 6, 'Lalmonirhat', 'লালমনিরহাট', 0, 0, 'www.lalmonirhat.gov.bd'),
(30, 6, 'Nilphamari', 'নীলফামারী', 25.931794, 88.856006, 'www.nilphamari.gov.bd'),
(31, 6, 'Panchagarh', 'পঞ্চগড়', 26.3411, 88.5541606, 'www.panchagarh.gov.bd'),
(32, 6, 'Rangpur', 'রংপুর', 25.7558096, 89.244462, 'www.rangpur.gov.bd'),
(33, 6, 'Thakurgaon', 'ঠাকুরগাঁও', 26.0336945, 88.4616834, 'www.thakurgaon.gov.bd'),
(34, 1, 'Barguna', 'বরগুনা', 0, 0, 'www.barguna.gov.bd'),
(35, 1, 'Barishal', 'বরিশাল', 0, 0, 'www.barisal.gov.bd'),
(36, 1, 'Bhola', 'ভোলা', 22.685923, 90.648179, 'www.bhola.gov.bd'),
(37, 1, 'Jhalokati', 'ঝালকাঠি', 0, 0, 'www.jhalakathi.gov.bd'),
(38, 1, 'Patuakhali', 'পটুয়াখালী', 22.3596316, 90.3298712, 'www.patuakhali.gov.bd'),
(39, 1, 'Pirojpur', 'পিরোজপুর', 0, 0, 'www.pirojpur.gov.bd'),
(40, 2, 'Bandarban', 'বান্দরবান', 22.1953275, 92.2183773, 'www.bandarban.gov.bd'),
(41, 2, 'Brahmanbaria', 'ব্রাহ্মণবাড়িয়া', 23.9570904, 91.1119286, 'www.brahmanbaria.gov.bd'),
(42, 2, 'Chandpur', 'চাঁদপুর', 23.2332585, 90.6712912, 'www.chandpur.gov.bd'),
(43, 2, 'Chattogram', 'চট্টগ্রাম', 22.335109, 91.834073, 'www.chittagong.gov.bd'),
(44, 2, 'Cumilla', 'কুমিল্লা', 23.4682747, 91.1788135, 'www.comilla.gov.bd'),
(45, 2, 'Cox\'s Bazar', 'কক্স বাজার', 0, 0, 'www.coxsbazar.gov.bd'),
(46, 2, 'Feni', 'ফেনী', 23.023231, 91.3840844, 'www.feni.gov.bd'),
(47, 2, 'Khagrachhari', 'খাগড়াছড়ি', 23.119285, 91.984663, 'www.khagrachhari.gov.bd'),
(48, 2, 'Lakshmipur', 'লক্ষ্মীপুর', 22.942477, 90.841184, 'www.lakshmipur.gov.bd'),
(49, 2, 'Noakhali', 'নোয়াখালী', 22.869563, 91.099398, 'www.noakhali.gov.bd'),
(50, 2, 'Rangamati', 'রাঙ্গামাটি', 0, 0, 'www.rangamati.gov.bd'),
(51, 7, 'Habiganj', 'হবিগঞ্জ', 24.374945, 91.41553, 'www.habiganj.gov.bd'),
(52, 7, 'Moulvibazar', 'মৌলভীবাজার', 24.482934, 91.777417, 'www.moulvibazar.gov.bd'),
(53, 7, 'Sunamganj', 'সুনামগঞ্জ', 25.0658042, 91.3950115, 'www.sunamganj.gov.bd'),
(54, 7, 'Sylhet', 'সিলেট', 24.8897956, 91.8697894, 'www.sylhet.gov.bd'),
(55, 4, 'Bagerhat', 'বাগেরহাট', 22.651568, 89.785938, 'www.bagerhat.gov.bd'),
(56, 4, 'Chuadanga', 'চুয়াডাঙ্গা', 23.6401961, 88.841841, 'www.chuadanga.gov.bd'),
(57, 4, 'Jashore', 'যশোর', 23.16643, 89.2081126, 'www.jessore.gov.bd'),
(58, 4, 'Jhenaidah', 'ঝিনাইদহ', 23.5448176, 89.1539213, 'www.jhenaidah.gov.bd'),
(59, 4, 'Khulna', 'খুলনা', 22.815774, 89.568679, 'www.khulna.gov.bd'),
(60, 4, 'Kushtia', 'কুষ্টিয়া', 23.901258, 89.120482, 'www.kushtia.gov.bd'),
(61, 4, 'Magura', 'মাগুরা', 23.487337, 89.419956, 'www.magura.gov.bd'),
(62, 4, 'Meherpur', 'মেহেরপুর', 23.762213, 88.631821, 'www.meherpur.gov.bd'),
(63, 4, 'Narail', 'নড়াইল', 23.172534, 89.512672, 'www.narail.gov.bd'),
(64, 4, 'Satkhira', 'সাতক্ষীরা', 0, 0, 'www.satkhira.gov.bd');

-- --------------------------------------------------------

--
-- Table structure for table `homeslider`
--

CREATE TABLE `homeslider` (
  `homeslider_id` int(11) NOT NULL,
  `homeslider_title` varchar(555) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#',
  `homeslider_text` mediumtext COLLATE utf8mb4_unicode_ci,
  `target_url` varchar(555) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#',
  `homeslider_picture` varchar(555) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_time` datetime NOT NULL,
  `modified_time` datetime NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `homeslider`
--

INSERT INTO `homeslider` (`homeslider_id`, `homeslider_title`, `homeslider_text`, `target_url`, `homeslider_picture`, `created_time`, `modified_time`, `status`) VALUES
(1, 'Fast', NULL, 'https://www.sohojbuy.com/', '1594465594.jpg', '2020-07-02 00:00:00', '2020-07-11 00:00:00', 1),
(4, 'Fast2', NULL, 'https://www.sohojbuy.com/', '1594468975.jpg', '2020-07-02 00:00:00', '2020-07-11 00:00:00', 1),
(5, 'good slider', NULL, 'ddd', '1594542099.jpg', '2020-07-05 00:00:00', '2020-07-12 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `inquiry`
--

CREATE TABLE `inquiry` (
  `inquiry_id` int(11) NOT NULL,
  `name` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(555) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `message` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_time` datetime NOT NULL,
  `modified_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `inquiry`
--

INSERT INTO `inquiry` (`inquiry_id`, `name`, `phone`, `subject`, `status`, `message`, `created_time`, `modified_time`) VALUES
(4, 'Md Shahinul Islam Suzon', '01731692631', 'I need html template', '0', 'ddd', '2019-12-02 04:33:06', '0000-00-00 00:00:00'),
(5, 'Md Shahinul Islam Suzon', '01731692631', 'I need html template', '0', 'ddd', '2019-12-02 09:35:15', '0000-00-00 00:00:00'),
(6, 'Md Shahinul Islam Suzon', '01731692631', 'I need html template', '1', 'fffffff', '2019-12-02 09:45:07', '0000-00-00 00:00:00'),
(7, 'Md Shahinul Islam Suzon', '01711000000', 'I need html template', '0', 'rrr', '2019-12-02 09:45:41', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `media_id` int(11) NOT NULL,
  `media_title` varchar(555) COLLATE utf8mb4_unicode_ci DEFAULT '#',
  `product_code` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `media_path` varchar(555) COLLATE utf8mb4_unicode_ci NOT NULL,
  `media_type` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` int(15) DEFAULT NULL,
  `created_time` datetime NOT NULL,
  `modified_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`media_id`, `media_title`, `product_code`, `media_path`, `media_type`, `product_id`, `created_time`, `modified_time`) VALUES
(29, 'Mini Glue Gun', '100', 'uploads/1/13.glue-gun.jpeg', 'featured_image', 13, '2020-07-02 10:22:35', '2020-07-02 10:22:35'),
(30, 'Mini Glue Gun', '100', 'uploads/1/61.fresh-atta-2-kg.webp', 'galary_image1', 13, '2020-07-02 10:22:35', '2020-07-02 10:22:35'),
(31, 'Electric Hot Water Bag', 's55', 'uploads/14/14.IMG_6266-scaled.jpg', 'featured_image', 14, '2020-07-02 17:57:57', '2020-07-02 17:57:57'),
(32, 'Electric Hot Water Bag', 's55', 'uploads/14/21.IMG_6257-copy-600x434.jpg', 'galary_image1', 14, '2020-07-02 17:57:57', '2020-07-02 17:57:57'),
(33, 'Electric Hot Water Bag', 's55', 'uploads/14/69.IMG_6266-scaled.jpg', 'galary_image2', 14, '2020-07-02 17:57:58', '2020-07-02 17:57:58'),
(34, 'Electric Hot Water Bag', '12', 'uploads/15/15.IMG_6265-scaled.jpg', 'featured_image', 15, '2020-07-02 17:59:07', '2020-07-02 17:59:07'),
(35, 'Electric Hot Water Bag', '12', 'uploads/15/65.IMG_6272-copy-scaled.jpg', 'galary_image1', 15, '2020-07-02 17:59:08', '2020-07-02 17:59:08'),
(36, 'Electric Hot Water Bag', '12', 'uploads/15/30.IMG_6257-copy-scaled.jpg', 'galary_image2', 15, '2020-07-02 17:59:08', '2020-07-02 17:59:08'),
(37, 'Electric Hot Water Bag', '12', 'uploads/15/87.IMG_6266-scaled.jpg', 'galary_image3', 15, '2020-07-02 17:59:08', '2020-07-02 17:59:08'),
(38, 'V7 Deep Hydration Body Lotion', 'SB0003', 'uploads/17/17.DEEP-HYDRATION.jpg', 'featured_image', 17, '2020-07-02 18:08:32', '2020-07-02 18:08:32'),
(39, 'V7 Deep Hydration Body Lotion', 'SB0003', 'uploads/17/69.DEEP-HYDRATION1.jpg', 'galary_image1', 17, '2020-07-02 18:08:32', '2020-07-02 18:08:32'),
(40, 'V7 Deep Hydration Body Lotion', 'SB0003', 'uploads/17/30.V7-DEEP-HYDRATION.jpg', 'galary_image2', 17, '2020-07-02 18:08:32', '2020-07-02 18:08:32'),
(41, 'BIOAQUA Pink Cherry Whitening Pinkish Cream', 'SB0004', 'uploads/18/18.BIOAQUA-Pink-Cherry-Whitening-Pinkish-Cream.jpg', 'featured_image', 18, '2020-07-02 18:10:32', '2020-07-02 18:10:32'),
(42, 'BIOAQUA Pink Cherry Whitening Pinkish Cream', 'SB0004', 'uploads/18/80.Cherry-Pinkish-Cream.jpg', 'galary_image1', 18, '2020-07-02 18:10:32', '2020-07-02 18:10:32'),
(43, 'Power Floss Oral Irrigator Dental Water Flosser', 'BD0005', 'uploads/19/19.dental-floss-1.png', 'featured_image', 19, '2020-07-02 18:16:39', '2020-07-02 18:16:39'),
(44, 'Power Floss Oral Irrigator Dental Water Flosser', 'BD0005', 'uploads/19/54.Power-Floss.jpeg', 'galary_image1', 19, '2020-07-02 18:16:39', '2020-07-02 18:16:39'),
(45, 'TP-Link TL-WR820N 300Mbps Wireless N Router', 'SB0006', 'uploads/20/20.TP-Link TL-WR820N.jpg', 'featured_image', 20, '2020-07-02 18:22:48', '2020-07-02 18:22:48'),
(46, 'TP-Link TL-WR820N 300Mbps Wireless N Router', 'SB0006', 'uploads/20/23.TP-Link TL-WR820.jpg', 'galary_image1', 20, '2020-07-02 18:22:48', '2020-07-02 18:22:48'),
(47, 'TP-Link TL-WR841N 300Mbps Wireless Router', 'SB0006', 'uploads/22/22.TL-WR841.jpg', 'featured_image', 22, '2020-07-02 18:26:14', '2020-07-02 18:26:14'),
(48, 'TP-Link TL-WR841N 300Mbps Wireless Router', 'SB0006', 'uploads/22/61.TL-WR841N.jpg', 'galary_image1', 22, '2020-07-02 18:26:14', '2020-07-02 18:26:14'),
(49, 'Karchupi Dress For Women (1 Piece)', 'SB0009', 'uploads/24/24.Karchupi Dress For Women (1 Piece).jpg', 'featured_image', 24, '2020-07-03 10:24:02', '2020-07-03 10:24:02'),
(50, 'Karchupi Dress For Women (1 Piece)', 'SB0009', 'uploads/24/36.Karchupi Dress For Women (1 Piece).jpg', 'galary_image1', 24, '2020-07-03 10:24:02', '2020-07-03 10:24:02'),
(51, 'Karchupi Dress For Women (1 Piece) Blue', 'SB0010', 'uploads/25/25.3-scaled.jpg', 'featured_image', 25, '2020-07-03 10:28:04', '2020-07-03 10:28:04'),
(52, 'Karchupi Dress For Women (1 Piece) Blue', 'SB0010', 'uploads/25/24.3-scaled.jpg', 'galary_image1', 25, '2020-07-03 10:28:04', '2020-07-03 10:28:04'),
(53, 'Karchupi Kameez Dress For Women (1 Piece) Blue', 'SB0011', 'uploads/27/27.4-scaled.jpg', 'featured_image', 27, '2020-07-03 10:36:44', '2020-07-03 10:36:44'),
(54, 'Karchupi Kameez Dress For Women (1 Piece) Blue', 'SB0011', 'uploads/27/60.3-scaled (1).jpg', 'galary_image1', 27, '2020-07-03 10:35:06', '2020-07-03 10:35:06'),
(55, 'sb', NULL, 'sb-logo.png', NULL, NULL, '2020-07-03 04:50:11', '2020-07-03 04:50:11'),
(56, 'Women Slim Up Lift Plus Size Bra Tank Top Body Shaper', 'SB0012', 'uploads/28/28.Body-shaper-for-women.jpg', 'featured_image', 28, '2020-07-03 10:57:04', '2020-07-03 10:57:04'),
(57, 'Women Slim Up Lift Plus Size Bra Tank Top Body Shaper', 'SB0012', 'uploads/28/18.Slimming-Tops1.jpg', 'galary_image1', 28, '2020-07-03 10:57:04', '2020-07-03 10:57:04'),
(58, 'Women Slim Up Lift Plus Size Bra Tank Top Body Shaper', 'SB0012', 'uploads/28/76.Women-Shaper-Slim-Up-Lift-Plus-Size-Bra.jpg', 'galary_image2', 28, '2020-07-03 10:57:04', '2020-07-03 10:57:04'),
(59, 'Women Slim Up Lift Plus Size Bra Tank Top Body Shaper', 'SB0012', 'uploads/28/34.Product details of Women Slim Up Lift Plus Size Bra Tank Top Body Shaper.jpg', 'galary_image3', 28, '2020-07-03 10:57:04', '2020-07-03 10:57:04'),
(60, 'Handy Stitch Handheld Sewing Machine', 'SB0013', 'uploads/29/29.Handy-Handheld-Sewing-Machine.jpg', 'featured_image', 29, '2020-07-03 11:38:31', '2020-07-03 11:38:31'),
(61, 'Handy Stitch Handheld Sewing Machine', 'SB0013', 'uploads/29/45.Sewing-Machine.jpg', 'galary_image1', 29, '2020-07-03 11:38:31', '2020-07-03 11:38:31'),
(62, 'Handy Stitch Handheld Sewing Machine', 'SB0013', 'uploads/29/74.Handy-Stitch-Handheld-Sewing-Machine.jpg', 'galary_image2', 29, '2020-07-03 11:38:31', '2020-07-03 11:38:31'),
(63, 'Apple Cutter - Green', 'SB0014', 'uploads/30/30.Green-apple-slicer-and-green-apple.jpg', 'featured_image', 30, '2020-07-03 11:43:16', '2020-07-03 11:43:16'),
(64, 'Apple Cutter - Green', 'SB0014', 'uploads/30/21.apple-cutter.jpg', 'galary_image1', 30, '2020-07-03 11:43:16', '2020-07-03 11:43:16'),
(65, 'Apple Cutter - Green', 'SB0014', 'uploads/30/25.apple-peller.jpg', 'galary_image2', 30, '2020-07-03 11:43:16', '2020-07-03 11:43:16'),
(66, 'Self Stirring Mug Cup - Silver and Black', 'SB0016', 'uploads/32/32.stirring-mug.png', 'featured_image', 32, '2020-07-03 11:52:51', '2020-07-03 11:52:51'),
(67, 'Self Stirring Mug Cup - Silver and Black', 'SB0016', 'uploads/32/93.Mug.jpg', 'galary_image1', 32, '2020-07-03 11:52:51', '2020-07-03 11:52:51'),
(68, 'Self Stirring Mug Cup - Silver and Black', 'SB0016', 'uploads/32/70.Self-Stirring-Mug-Cup-c-1.jpg', 'galary_image2', 32, '2020-07-03 11:52:51', '2020-07-03 11:52:51'),
(69, 'A4Tech OP-620D USB 2X Click Optical Mouse', 'SB0017', 'uploads/33/33.A4tech mouse.jpg', 'featured_image', 33, '2020-07-03 12:16:02', '2020-07-03 12:16:02'),
(70, 'A4Tech OP-620D USB 2X Click Optical Mouse', 'SB0017', 'uploads/33/88.a4tech mouse 2x click1.jpg', 'galary_image1', 33, '2020-07-03 12:16:02', '2020-07-03 12:16:02'),
(71, 'Traveling Flexible Bag Bungee', 'SB0018', 'uploads/34/34.Traveling-Flexible-Bag.jpg', 'featured_image', 34, '2020-07-03 12:22:51', '2020-07-03 12:22:51'),
(72, 'Traveling Flexible Bag Bungee', 'SB0018', 'uploads/34/10.Traveling-Flexible-Bag-Bungee.jpg', 'galary_image1', 34, '2020-07-03 12:22:51', '2020-07-03 12:22:51'),
(73, 'Traveling Flexible Bag Bungee', 'SB0018', 'uploads/34/99.Traveling-Flexible-Bag1.jpg', 'galary_image2', 34, '2020-07-03 12:22:51', '2020-07-03 12:22:51'),
(74, '3 In 1 Travel Selection', 'SB0019', 'uploads/35/35.travel-selection-3-in-1.jpg', 'featured_image', 35, '2020-07-03 12:28:20', '2020-07-03 12:28:20'),
(75, '3 In 1 Travel Selection', 'SB0019', 'uploads/35/75.travel-selection.jpg', 'galary_image1', 35, '2020-07-03 12:28:20', '2020-07-03 12:28:20'),
(76, 'Potato Chipper Machine - Silver', 'SB0020', 'uploads/36/36.Potato-Chipper22.jpg', 'featured_image', 36, '2020-07-03 12:47:43', '2020-07-03 12:47:43'),
(77, 'Potato Chipper Machine - Silver', 'SB0020', 'uploads/36/56.Potato-Chipper5.jpg', 'galary_image1', 36, '2020-07-03 12:47:43', '2020-07-03 12:47:43'),
(78, 'Potato Chipper Machine - Silver', 'SB0020', 'uploads/36/25.Potato-Chipper.jpg', 'galary_image2', 36, '2020-07-03 12:47:43', '2020-07-03 12:47:43'),
(79, 'HAND BLENDER 4 IN 1 (SINBO)', 'SB0021', 'uploads/37/37.Blenderları-sinbo.jpg', 'featured_image', 37, '2020-07-03 12:52:17', '2020-07-03 12:52:17'),
(80, 'HAND BLENDER 4 IN 1 (SINBO)', 'SB0021', 'uploads/37/26.SINBO-HAND-BLENDER-4-IN-1.jpg', 'galary_image1', 37, '2020-07-03 12:52:17', '2020-07-03 12:52:17'),
(81, 'HAND BLENDER 4 IN 1 (SINBO)', 'SB0021', 'uploads/37/97.SINBO-HAND-BLENDER.jpg', 'galary_image2', 37, '2020-07-03 12:52:17', '2020-07-03 12:52:17'),
(82, 'Hot Pot QQ Lunch Box', 'SB0022', 'uploads/38/38.qq-lunch-box.jpg', 'featured_image', 38, '2020-07-03 13:04:05', '2020-07-03 13:04:05'),
(83, 'Hot Pot QQ Lunch Box', 'SB0022', 'uploads/38/28.lunch-box-cao-cap.jpg', 'galary_image1', 38, '2020-07-03 13:04:06', '2020-07-03 13:04:06'),
(84, 'Hot Pot QQ Lunch Box', 'SB0022', 'uploads/38/39.QQ-Lunch-Box-1.jpg', 'galary_image2', 38, '2020-07-03 13:04:06', '2020-07-03 13:04:06'),
(85, 'Apple Peeler Slicing Machine -blue', 'SB0023', 'uploads/39/39.Apple-Peeler-Machine.jpg', 'featured_image', 39, '2020-07-03 14:01:53', '2020-07-03 14:01:53'),
(86, 'Apple Peeler Slicing Machine -blue', 'SB0023', 'uploads/39/26.Apple-Peeler-1.jpg', 'galary_image1', 39, '2020-07-03 14:01:53', '2020-07-03 14:01:53'),
(87, 'Sunglasses Magnetic Clip 1 Optical Frame + 5 Lense Glasses 2258A', 'SB0024', 'uploads/40/40.5-in-1-sunglasses.jpg', 'featured_image', 40, '2020-07-03 14:07:31', '2020-07-03 14:07:31'),
(88, 'Sunglasses Magnetic Clip 1 Optical Frame + 5 Lense Glasses 2258A', 'SB0024', 'uploads/40/50.2258a.png', 'galary_image1', 40, '2020-07-03 14:07:31', '2020-07-03 14:07:31'),
(89, 'Sunglasses Magnetic Clip 1 Optical Frame + 5 Lense Glasses 2258A', 'SB0024', 'uploads/40/17.cc.png', 'galary_image2', 40, '2020-07-03 14:07:32', '2020-07-03 14:07:32'),
(90, 'Sunglasses Magnetic Clip 1 Optical Frame + 5 Lense Glasses 2258A', 'SB0024', 'uploads/40/48.Megnet.png', 'galary_image3', 40, '2020-07-03 14:07:32', '2020-07-03 14:07:32'),
(91, 'Baby Care Urine Alarm', 'SB0025', 'uploads/41/41.Baby-Urine-Alarm.jpg', 'featured_image', 41, '2020-07-03 14:11:13', '2020-07-03 14:11:13'),
(92, 'Baby Care Urine Alarm', 'SB0025', 'uploads/41/24.Baby-Urine-Alarm3.jpg', 'galary_image1', 41, '2020-07-03 14:11:13', '2020-07-03 14:11:13'),
(93, 'Baby Care Urine Alarm', 'SB0025', 'uploads/41/45.Baby-Urine-Alarm1.jpg', 'galary_image2', 41, '2020-07-03 14:11:13', '2020-07-03 14:11:13'),
(94, 'Coconut Scraper (AMBAR DELUXE) - Silver', 'SB0026', 'uploads/42/42.Coconut Scraper - Silver.jpg', 'featured_image', 42, '2020-07-03 14:14:46', '2020-07-03 14:14:46'),
(95, 'Coconut Scraper (AMBAR DELUXE) - Silver', 'SB0026', 'uploads/42/23.AMBAR-DELUXE-COCONUT-SCRAPER.jpg', 'galary_image1', 42, '2020-07-03 14:14:46', '2020-07-03 14:14:46'),
(96, 'Coconut Scraper (AMBAR DELUXE) - Silver', 'SB0026', 'uploads/42/47.COCONUT-SCRAPER-416x416.jpg', 'galary_image2', 42, '2020-07-03 14:14:46', '2020-07-03 14:14:46'),
(97, 'Remote Control Electric Switch', 'SB0027', 'uploads/43/43.Remote Control Electric Switch.jpg', 'featured_image', 43, '2020-07-03 14:17:55', '2020-07-03 14:17:55'),
(98, 'Remote Control Electric Switch', 'SB0027', 'uploads/43/19.Remote Control Electric Switch2.jpg', 'galary_image1', 43, '2020-07-03 14:17:55', '2020-07-03 14:17:55'),
(99, 'Remote Control Electric Switch', 'SB0027', 'uploads/43/29.Remote Control Electric.jpg', 'galary_image2', 43, '2020-07-03 14:17:55', '2020-07-03 14:17:55'),
(100, 'Travel Storage liquid Spray Bottle for Makeup', 'SB0028', 'uploads/44/44.Travel Storage liquid Spray Bottle for Makeup12 copy.jpg', 'featured_image', 44, '2020-07-08 17:54:52', '2020-07-08 17:54:52'),
(101, 'Travel Storage liquid Spray Bottle for Makeup', 'SB0028', 'uploads/44/57.Good for travel Storage.jpg', 'galary_image1', 44, '2020-07-03 14:28:18', '2020-07-03 14:28:18'),
(102, 'Travel Storage liquid Spray Bottle for Makeup', 'SB0028', 'uploads/44/100.Good for travel Storage1.jpg', 'galary_image2', 44, '2020-07-03 14:28:18', '2020-07-03 14:28:18'),
(103, 'Digital Therapy Machine 4 Pad – Silver', 'SB0029', 'uploads/45/45.digital-therapy-machine1.jpg', 'featured_image', 45, '2020-07-03 14:31:11', '2020-07-03 14:31:11'),
(104, 'Digital Therapy Machine 4 Pad – Silver', 'SB0029', 'uploads/45/13.digital-therapy.jpg', 'galary_image1', 45, '2020-07-03 14:31:11', '2020-07-03 14:31:11'),
(105, 'Digital Therapy Machine 4 Pad – Silver', 'SB0029', 'uploads/45/53.digital-therapy-machine.jpg', 'galary_image2', 45, '2020-07-03 14:31:12', '2020-07-03 14:31:12'),
(106, 'Electronic Kitchen scales 10 Kgs Weight.', 'SB0030', 'uploads/46/46.Electronic-Kitchen-scales-10-Kgs-Weight..jpg', 'featured_image', 46, '2020-07-03 14:38:14', '2020-07-03 14:38:14'),
(107, 'Electronic Kitchen scales 10 Kgs Weight.', 'SB0030', 'uploads/46/81.Electronic-Kitchen-scales-10-Kgs-Weight.12.jpg', 'galary_image1', 46, '2020-07-03 14:38:14', '2020-07-03 14:38:14'),
(108, 'Electronic Kitchen scales 10 Kgs Weight.', 'SB0030', 'uploads/46/77.Electronic-Kitchen.jpeg', 'galary_image2', 46, '2020-07-03 14:38:14', '2020-07-03 14:38:14'),
(109, 'Pest Repelling Aid Insect Killer', 'SB0031', 'uploads/47/47.Pest-Repelling-Aid-killing.jpg', 'featured_image', 47, '2020-07-03 14:49:51', '2020-07-03 14:49:51'),
(110, 'Pest Repelling Aid Insect Killer', 'SB0031', 'uploads/47/61.Repelling-Aid.jpg', 'galary_image1', 47, '2020-07-03 14:49:51', '2020-07-03 14:49:51'),
(111, 'Pest Repelling Aid Insect Killer', 'SB0031', 'uploads/47/90.Pest-Repelling-Aid1.jpg', 'galary_image2', 47, '2020-07-03 14:49:51', '2020-07-03 14:49:51'),
(112, 'Garden And House Magic Hose Expandable Stretch Hose Pipe 15m/50ft with Spray Gun- Blue', 'SB0032', 'uploads/48/48.magic-hose-50fit2.jpg', 'featured_image', 48, '2020-07-03 14:59:46', '2020-07-03 14:59:46'),
(113, 'Garden And House Magic Hose Expandable Stretch Hose Pipe 15m/50ft with Spray Gun- Blue', 'SB0032', 'uploads/48/14.Magic-Hose-pipe-spray-gun1.png', 'galary_image1', 48, '2020-07-03 14:59:46', '2020-07-03 14:59:46'),
(114, 'Mini Electric Cotton Candy Maker', 'SB0033', 'uploads/49/49.Mini-Electric-Cotton-Candy-Maker.jpg', 'featured_image', 49, '2020-07-03 15:03:13', '2020-07-03 15:03:13'),
(115, 'Mini Electric Cotton Candy Maker', 'SB0033', 'uploads/49/10.Cotton-Candy-Maker.jpg', 'galary_image1', 49, '2020-07-03 15:03:13', '2020-07-03 15:03:13'),
(116, 'Mini Electric Cotton Candy Maker', 'SB0033', 'uploads/49/28.Electric-Cotton-Candy-Maker.jpg', 'galary_image2', 49, '2020-07-03 15:03:13', '2020-07-03 15:03:13'),
(117, 'Baby Carrier Comfort Wrap Bag - Red', 'SB0034', 'uploads/50/50.BABY-CARRIERS.jpg', 'featured_image', 50, '2020-07-03 15:07:36', '2020-07-03 15:07:36'),
(118, 'Baby Carrier Comfort Wrap Bag - Red', 'SB0034', 'uploads/50/30.BABY-CARRIER.jpg', 'galary_image1', 50, '2020-07-03 15:07:36', '2020-07-03 15:07:36'),
(119, 'Baby Carrier Comfort Wrap Bag - Red', 'SB0034', 'uploads/50/99.BABY-CARRIERS-Backpack.jpg', 'galary_image2', 50, '2020-07-03 15:07:36', '2020-07-03 15:07:36'),
(120, 'Apple Peeler Slicing Machine - White', 'SB0035', 'uploads/51/51.Apple Peeler Machine.jpg', 'featured_image', 51, '2020-07-03 15:42:22', '2020-07-03 15:42:22'),
(121, 'Apple Peeler Slicing Machine - White', 'SB0035', 'uploads/51/42.Apple-Peeler-1 (1).jpg', 'galary_image1', 51, '2020-07-03 15:42:22', '2020-07-03 15:42:22'),
(122, 'Portable Digital Luggage Scale', 'SB0036', 'uploads/52/52.Luggage-ScalesLuggage-Scales.jpg', 'featured_image', 52, '2020-07-03 15:44:50', '2020-07-03 15:44:50'),
(123, 'Portable Digital Luggage Scale', 'SB0036', 'uploads/52/67.Portable-Digital-Luggage-Scale.jpg', 'galary_image1', 52, '2020-07-03 15:44:50', '2020-07-03 15:44:50'),
(124, 'Portable Digital Luggage Scale', 'SB0036', 'uploads/52/34.Luggage-Scales.jpg', 'galary_image2', 52, '2020-07-03 15:44:51', '2020-07-03 15:44:51'),
(125, 'Infrared Foan Vibration Heating Foot Massager', 'SB0037', 'uploads/53/53.Infrared Foan Vibration Heating Foot Massager.jpg', 'featured_image', 53, '2020-07-03 15:46:50', '2020-07-03 15:46:50'),
(126, 'Infrared Foan Vibration Heating Foot Massager', 'SB0037', 'uploads/53/92.Infrared-Foan-Foot-Massager.jpg', 'galary_image1', 53, '2020-07-03 15:46:50', '2020-07-03 15:46:50'),
(127, 'Infrared Foan Vibration Heating Foot Massager', 'SB0037', 'uploads/53/90.Foot-Massager2.jpg', 'galary_image2', 53, '2020-07-03 15:46:50', '2020-07-03 15:46:50'),
(128, 'Shoes Under Holds 12 Pairs of Shoes', 'SB0038', 'uploads/54/54.Shoes-Under-s.png', 'featured_image', 54, '2020-07-03 15:52:39', '2020-07-03 15:52:39'),
(129, 'Shoes Under Holds 12 Pairs of Shoes', 'SB0038', 'uploads/54/18.Shoes-Under-12.png', 'galary_image1', 54, '2020-07-03 15:52:40', '2020-07-03 15:52:40'),
(130, 'Shoes Under Holds 12 Pairs of Shoes', 'SB0038', 'uploads/54/99.Shoes-Under.jpg', 'galary_image2', 54, '2020-07-03 15:52:40', '2020-07-03 15:52:40'),
(131, 'Shoes Under Holds 12 Pairs of Shoes', 'SB0038', 'uploads/54/80.shoes_under_1_1.jpg', 'galary_image3', 54, '2020-07-03 15:52:40', '2020-07-03 15:52:40'),
(132, 'Revoflex Xtreme Wheels Double Power', 'SB0039', 'uploads/55/55.Revoflex Xtreme Wheels Double Power.jpg', 'featured_image', 55, '2020-07-03 16:11:35', '2020-07-03 16:11:35'),
(133, 'Revoflex Xtreme Wheels Double Power', 'SB0039', 'uploads/55/38.Revoflex Xtreme Wheels Double Power12.jpg', 'galary_image1', 55, '2020-07-03 16:11:35', '2020-07-03 16:11:35'),
(134, 'Electronic Mosquito Killer LED Electric Bug Zapper Lamp', 'SB0040', 'uploads/56/56.Electronic Mosquito Killer LED Electric Bug Zapper Lamp.jpg', 'featured_image', 56, '2020-07-03 16:16:28', '2020-07-03 16:16:28'),
(135, 'Electronic Mosquito Killer LED Electric Bug Zapper Lamp', 'SB0040', 'uploads/56/70.Electronic Mosquito Killer LED Electric.jpg', 'galary_image1', 56, '2020-07-03 16:16:29', '2020-07-03 16:16:29'),
(136, 'Electronic Mosquito Killer LED Electric Bug Zapper Lamp', 'SB0040', 'uploads/56/51.Electronic Mosquito Killer LED Electric Bug Lamp.jpg', 'galary_image2', 56, '2020-07-03 16:16:29', '2020-07-03 16:16:29'),
(137, 'Refrigerator Multifunctional Storage Box', 'SB0041', 'uploads/57/57.Refrigerator Multifunctional Box.webp', 'featured_image', 57, '2020-07-03 16:24:29', '2020-07-03 16:24:29'),
(138, 'Refrigerator Multifunctional Storage Box', 'SB0041', 'uploads/57/14.Refrigerator Storage Box.jpg', 'galary_image1', 57, '2020-07-03 16:24:29', '2020-07-03 16:24:29'),
(139, 'Refrigerator Multifunctional Storage Box', 'SB0041', 'uploads/57/24.Refrigerator Multifunctional Storage Box.jpg', 'galary_image2', 57, '2020-07-03 16:24:29', '2020-07-03 16:24:29'),
(140, 'Refrigerator Multifunctional Storage Box', 'SB0041', 'uploads/57/18.refrigerator-multifunctional-storage-box-500x500.jpg', 'galary_image3', 57, '2020-07-03 16:24:29', '2020-07-03 16:24:29'),
(141, 'Nicer Dicer Plus Genius - Green', 'SB0042', 'uploads/58/58.Genius-nicer_dicer_plus.jpg', 'featured_image', 58, '2020-07-03 16:31:43', '2020-07-03 16:31:43'),
(142, 'Nicer Dicer Plus Genius - Green', 'SB0042', 'uploads/58/86.nicer_dicer_plus.jpg', 'galary_image1', 58, '2020-07-03 16:31:43', '2020-07-03 16:31:43'),
(143, 'Nicer Dicer Plus Genius - Green', 'SB0042', 'uploads/58/88.nicer-dicer-plus-vegetables-fruits-dicer.jpg', 'galary_image2', 58, '2020-07-03 16:31:43', '2020-07-03 16:31:43'),
(144, 'Blood Pressure Monitor, RAK283', 'SB0043', 'uploads/59/59.electronic-blood-pressure-monitor-RAK283.jpg', 'featured_image', 59, '2020-07-03 16:42:48', '2020-07-03 16:42:48'),
(145, 'Blood Pressure Monitor, RAK283', 'SB0043', 'uploads/59/59.Blood Pressure.png', 'galary_image2', 59, '2020-07-03 16:42:48', '2020-07-03 16:42:48'),
(146, 'Blood Pressure Monitor, RAK283', 'SB0043', 'uploads/59/11.HTB.jpg', 'galary_image3', 59, '2020-07-03 16:42:48', '2020-07-03 16:42:48'),
(147, 'Naipo Massage Pillow Neck Back Massager with Heat', 'SB0044', 'uploads/60/60.car-home-massage-pillow.jpeg', 'featured_image', 60, '2020-07-03 16:49:08', '2020-07-03 16:49:08'),
(148, 'Naipo Massage Pillow Neck Back Massager with Heat', 'SB0044', 'uploads/60/60.Naipo Massage Pillow Neck Back Massager with Heat.jpg', 'galary_image1', 60, '2020-07-03 16:49:08', '2020-07-03 16:49:08'),
(149, 'Naipo Massage Pillow Neck Back Massager with Heat', 'SB0044', 'uploads/60/60.Naipo Massage Pillow Neck Back Massager with.jpg', 'galary_image2', 60, '2020-07-03 16:49:08', '2020-07-03 16:49:08'),
(150, 'Noodles Pasta Maker - Silver', 'SB0045', 'uploads/61/61.Noodles-Pasta-Maker1.jpg', 'featured_image', 61, '2020-07-03 16:52:31', '2020-07-03 16:52:31'),
(151, 'Noodles Pasta Maker - Silver', 'SB0045', 'uploads/61/43.Noodles-Pasta-Maker.jpg', 'galary_image1', 61, '2020-07-03 16:52:31', '2020-07-03 16:52:31'),
(152, 'Noodles Pasta Maker - Silver', 'SB0045', 'uploads/61/98.Noodles-Maker.jpg', 'galary_image2', 61, '2020-07-03 16:52:31', '2020-07-03 16:52:31'),
(153, 'Noodles Pasta Maker - Silver', 'SB0045', 'uploads/61/15.Noodles-Pasta.jpg', 'galary_image3', 61, '2020-07-03 16:52:31', '2020-07-03 16:52:31'),
(154, 'Spice Rack 16-in-1 Revolving', 'SB0046', 'uploads/62/62.Spice Rack 16-in-1 Revolving.jpg', 'featured_image', 62, '2020-07-03 16:55:27', '2020-07-03 16:55:27'),
(155, 'Spice Rack 16-in-1 Revolving', 'SB0046', 'uploads/62/85.Spice Rack 16-in-1.jpg', 'galary_image1', 62, '2020-07-03 16:55:27', '2020-07-03 16:55:27'),
(156, 'Spice Rack 16-in-1 Revolving', 'SB0046', 'uploads/62/64.Spice-Rack-16-in-1.png', 'galary_image2', 62, '2020-07-03 16:55:27', '2020-07-03 16:55:27'),
(157, 'Portable Ice Bag', 'SB0047', 'uploads/63/63.Portable-Ice-Bag.jpg', 'featured_image', 63, '2020-07-03 17:02:09', '2020-07-03 17:02:09'),
(158, 'Portable Ice Bag', 'SB0047', 'uploads/63/80.Ice-Bag.jpg', 'galary_image1', 63, '2020-07-03 17:02:09', '2020-07-03 17:02:09'),
(159, 'V7 Deep Hydration Body Lotion', 'SB0048', 'uploads/64/64.DEEP-HYDRATION.jpg', 'featured_image', 64, '2020-07-03 17:06:14', '2020-07-03 17:06:14'),
(160, 'V7 Deep Hydration Body Lotion', 'SB0048', 'uploads/64/11.V7 Deep Hydration Body.jpg', 'galary_image1', 64, '2020-07-03 17:06:14', '2020-07-03 17:06:14'),
(161, 'V7 Deep Hydration Body Lotion', 'SB0048', 'uploads/64/79.V7 Deep Body Lotion.jpg', 'galary_image2', 64, '2020-07-03 17:06:14', '2020-07-03 17:06:14'),
(162, 'V7 Toning Light Cream – 50g', 'SB0049', 'uploads/65/65.V7 Toning Light Cream – 50g.jpg', 'featured_image', 65, '2020-07-03 17:08:29', '2020-07-03 17:08:29'),
(163, 'V7 Toning Light Cream – 50g', 'SB0049', 'uploads/65/45.V7 Toning Light Cream.jpg', 'galary_image1', 65, '2020-07-03 17:08:29', '2020-07-03 17:08:29'),
(164, 'V7 Toning Light Cream – 50g', 'SB0049', 'uploads/65/94.V7 Toning Cream.jpg', 'galary_image2', 65, '2020-07-03 17:08:29', '2020-07-03 17:08:29'),
(165, 'Kinoki Detox Foot Patches 10PCS/1 boxes', 'SB0050', 'uploads/66/66.Kinoki Detox Foot Patches.jpg', 'featured_image', 66, '2020-07-03 17:39:39', '2020-07-03 17:39:39'),
(166, 'Kinoki Detox Foot Patches 10PCS/1 boxes', 'SB0050', 'uploads/66/38.Kinoki Detox Foot Patches 10PCS.jpg', 'galary_image1', 66, '2020-07-03 17:39:39', '2020-07-03 17:39:39'),
(167, '2 In 1 Anti Snoring and Air Purifier Silicone Snore Nose Clip', 'SB0051', 'uploads/67/67.Anti Snoring1.png', 'featured_image', 67, '2020-07-03 17:51:42', '2020-07-03 17:51:42'),
(168, '2 In 1 Anti Snoring and Air Purifier Silicone Snore Nose Clip', 'SB0051', 'uploads/67/60.2 In 1 Anti Snoring and Air Purifier Silicone Snore Nose Clip.jpg', 'galary_image1', 67, '2020-07-03 17:51:42', '2020-07-03 17:51:42'),
(169, '2 In 1 Anti Snoring and Air Purifier Silicone Snore Nose Clip', 'SB0051', 'uploads/67/98.Anti Snoring.jpg', 'galary_image2', 67, '2020-07-03 17:51:42', '2020-07-03 17:51:42'),
(170, '3 In 1 Apple Peeler Slicing Machine - Red', 'SB0052', 'uploads/68/68.3 In 1 Apple Peeler Slicing Machine - Red.jpg', 'featured_image', 68, '2020-07-03 18:29:30', '2020-07-03 18:29:30'),
(171, '3 In 1 Apple Peeler Slicing Machine - Red', 'SB0052', 'uploads/68/26.3 In 1 Apple Peeler Slicing Machine.jpg', 'galary_image1', 68, '2020-07-03 18:29:30', '2020-07-03 18:29:30'),
(172, 'BIOAQUA Pink Cherry Whitening Pinkish Cream', 'SB0053', 'uploads/69/69.BIOAQUA-Pink-Cherry-Whitening-Pinkish-Cream.jpg', 'featured_image', 69, '2020-07-04 11:39:52', '2020-07-04 11:39:52'),
(173, 'BIOAQUA Pink Cherry Whitening Pinkish Cream', 'SB0053', 'uploads/69/59.BIOAQUA1.jpg', 'galary_image1', 69, '2020-07-04 11:39:52', '2020-07-04 11:39:52'),
(174, 'BIOAQUA Pink Cherry Whitening Pinkish Cream', 'SB0053', 'uploads/69/67.Cherry-Pinkish-Cream.jpg', 'galary_image2', 69, '2020-07-04 11:39:52', '2020-07-04 11:39:52'),
(175, 'Water Purifier Friendly- SWS', 'SB0054', 'uploads/70/70.water-purifier1.jpg', 'featured_image', 70, '2020-07-04 11:42:41', '2020-07-04 11:42:41'),
(176, 'Water Purifier Friendly- SWS', 'SB0054', 'uploads/70/91.water-purifier-sws.jpg', 'galary_image1', 70, '2020-07-04 11:42:41', '2020-07-04 11:42:41'),
(177, 'Water Purifier Friendly- SWS', 'SB0054', 'uploads/70/39.water-purifier-review.jpg', 'galary_image2', 70, '2020-07-04 11:42:41', '2020-07-04 11:42:41'),
(178, 'Mosquito Killer Lamp – JT-Z01', 'SB0055', 'uploads/71/71.Mosquito-Killer-Lamp-sohojbuy.jpg', 'featured_image', 71, '2020-07-04 11:58:54', '2020-07-04 11:58:54'),
(179, 'Mosquito Killer Lamp – JT-Z01', 'SB0055', 'uploads/71/13.Mosquito-Killer-Lamp-1.jpg', 'galary_image1', 71, '2020-07-04 11:58:54', '2020-07-04 11:58:54'),
(180, 'Mosquito Killer Lamp – JT-Z01', 'SB0055', 'uploads/71/67.Mosquito-Killer-Lamp.jpg', 'galary_image2', 71, '2020-07-04 11:58:54', '2020-07-04 11:58:54'),
(181, 'Salad Cutter Bowl - White', 'SB0056', 'uploads/72/72.Salad Cutter Bowl - White.jpg', 'featured_image', 72, '2020-07-04 12:10:58', '2020-07-04 12:10:58'),
(182, 'Salad Cutter Bowl - White', 'SB0056', 'uploads/72/26.Salad Cutter Bowl.jpg', 'galary_image1', 72, '2020-07-04 12:10:59', '2020-07-04 12:10:59'),
(183, 'Salad Cutter Bowl - White', 'SB0056', 'uploads/72/73.Salad Cutter.jpg', 'galary_image2', 72, '2020-07-04 12:10:59', '2020-07-04 12:10:59'),
(184, 'Automatic Cleaning Essential Brush For Kitchen', 'SB0057', 'uploads/73/73.Automatic Cleaning Essential Brush For Kitchen.jpg', 'featured_image', 73, '2020-07-04 12:21:56', '2020-07-04 12:21:56'),
(185, 'Automatic Cleaning Essential Brush For Kitchen', 'SB0057', 'uploads/73/65.Automatic Cleaning Essential Brush.jpg', 'galary_image1', 73, '2020-07-04 12:21:56', '2020-07-04 12:21:56'),
(186, 'Automatic Cleaning Essential Brush For Kitchen', 'SB0057', 'uploads/73/77.Cleaning Essential Brush.jpg', 'galary_image2', 73, '2020-07-04 12:21:56', '2020-07-04 12:21:56'),
(187, 'logo', NULL, 'Logo copy.png', NULL, NULL, '2020-07-05 10:58:34', '2020-07-05 10:58:34'),
(188, 'Automatic Toothpaste Squeezing Device set', 'SB0058', 'uploads/74/74.Automatic Toothpaste Squeezing Device set.jpg', 'featured_image', 74, '2020-07-05 18:12:57', '2020-07-05 18:12:57'),
(189, 'Automatic Toothpaste Squeezing Device set', 'SB0058', 'uploads/74/98.Product details of Automatic Toothpaste Squeezing.jpeg', 'galary_image1', 74, '2020-07-05 18:12:57', '2020-07-05 18:12:57'),
(190, 'Automatic Toothpaste Squeezing Device set', 'SB0058', 'uploads/74/47.Automatic Toothpaste Squeezing Device.jpg', 'galary_image2', 74, '2020-07-05 18:12:57', '2020-07-05 18:12:57'),
(191, 'Electric Grinder Nima -NM-8300', 'SB0059', 'uploads/75/75.Electric Grinder Nima.jpg', 'featured_image', 75, '2020-07-05 18:53:42', '2020-07-05 18:53:42'),
(192, 'Electric Grinder Nima -NM-8300', 'SB0059', 'uploads/75/90.Electric Grinder Nima -NM-8300.jpg', 'galary_image1', 75, '2020-07-05 18:53:42', '2020-07-05 18:53:42'),
(193, 'Electric Grinder Nima -NM-8300', 'SB0059', 'uploads/75/44.Electric Grinder Nima1.jpg', 'galary_image2', 75, '2020-07-05 18:53:42', '2020-07-05 18:53:42'),
(194, 'Power Floss Oral Irrigator Dental Water Flosser', 'SB0060', 'uploads/76/76.Power Floss Oral Irrigator Dental Water Flosser.png', 'featured_image', 76, '2020-07-05 18:59:24', '2020-07-05 18:59:24'),
(195, 'Power Floss Oral Irrigator Dental Water Flosser', 'SB0060', 'uploads/76/32.Power Floss Oral Irrigator Dental.jpg', 'galary_image1', 76, '2020-07-05 18:59:24', '2020-07-05 18:59:24'),
(196, 'Power Floss Oral Irrigator Dental Water Flosser', 'SB0060', 'uploads/76/53.Power Floss Oral Irrigator Dental Water.jpeg', 'galary_image2', 76, '2020-07-05 18:59:24', '2020-07-05 18:59:24'),
(197, 'Cosmetic Bag Roll-N-Go', 'SB0061', 'uploads/77/77.Makeup-Box.jpg', 'featured_image', 77, '2020-07-06 12:57:53', '2020-07-06 12:57:53'),
(198, 'Cosmetic Bag Roll-N-Go', 'SB0061', 'uploads/77/66.Roll-n-600x600.jpg', 'galary_image1', 77, '2020-07-06 12:57:53', '2020-07-06 12:57:53'),
(199, 'Cosmetic Bag Roll-N-Go', 'SB0061', 'uploads/77/100.Roll-n-Go-Cosmetic-Bag-2-600x600.jpg', 'galary_image2', 77, '2020-07-06 12:57:53', '2020-07-06 12:57:53'),
(200, 'Nose Ear Hair Trimmer Painless 3 in 1 Rechargeable Electric', 'SB0062', 'uploads/78/78.Nose Ear Hair Trimmer Painless 3 in 1 Rechargeable Electric.jpg', 'featured_image', 78, '2020-07-06 13:16:37', '2020-07-06 13:16:37'),
(201, 'Nose Ear Hair Trimmer Painless 3 in 1 Rechargeable Electric', 'SB0062', 'uploads/78/20.Nose Ear Hair Trimmer Painless 3 in 1 Electric.jpg', 'galary_image1', 78, '2020-07-06 13:16:37', '2020-07-06 13:16:37'),
(202, 'Nose Ear Hair Trimmer Painless 3 in 1 Rechargeable Electric', 'SB0062', 'uploads/78/55.Nose Ear Hair Trimmer Painless 3 in 1 Rechargeable.jpg', 'galary_image2', 78, '2020-07-06 13:16:37', '2020-07-06 13:16:37'),
(203, 'Nose Ear Hair Trimmer Painless 3 in 1 Rechargeable Electric', 'SB0062', 'uploads/78/59.Nose Ear Hair Trimmer 3 in 1 Rechargeable Electric.jpg', 'galary_image3', 78, '2020-07-06 13:16:37', '2020-07-06 13:16:37'),
(204, 'TP-LINK ARCHER C20 AC750 3 Antenna ROUTER Price in Bd', 'SB0063', 'uploads/79/79.Tp-link Archer c20 AC750.jpg', 'featured_image', 79, '2020-07-09 11:16:45', '2020-07-09 11:16:45'),
(205, 'TP-LINK ARCHER C20 AC750 3 Antenna ROUTER Price in Bd', 'SB0063', 'uploads/79/73.Tp-link Archer c20 AC750  Router2.jpg', 'galary_image1', 79, '2020-07-09 11:16:45', '2020-07-09 11:16:45'),
(206, 'TP-LINK ARCHER C20 AC750 3 Antenna ROUTER Price in Bd', 'SB0063', 'uploads/79/47.Tp-link Archer c20 AC750  Router.jpg', 'galary_image2', 79, '2020-07-09 11:16:45', '2020-07-09 11:16:45'),
(209, 'ff', NULL, 'logo.gif', NULL, NULL, '2020-07-11 04:36:55', '2020-07-11 04:36:55'),
(210, 'Micropack K203 Basic USB Keyboard', '545', 'uploads/80/80.Micropack K203 Basic USB Keyboard2.jpg', 'featured_image', 80, '2020-07-12 10:45:43', '2020-07-12 10:45:43'),
(211, 'Micropack K203 Basic USB Keyboard', '545', 'uploads/80/58.Micropack K203 Basic USB Keyboard.jpg', 'galary_image1', 80, '2020-07-12 10:45:43', '2020-07-12 10:45:43'),
(212, 'hhhhhh', '100', 'uploads/81/81.people (1).png', 'featured_image', 81, '2020-07-12 10:47:14', '2020-07-12 10:47:14'),
(213, 'hhhhhh', '100', 'uploads/81/70.people (1).png', 'galary_image1', 81, '2020-07-12 10:47:14', '2020-07-12 10:47:14'),
(214, 'Wonder Hanger Max 8 Pack Easy Closet Space Saver', 'SB0065', 'uploads/81/82.Wonder Hanger Max 8 Pack.jpg', 'featured_image', 82, '2020-07-12 14:35:23', '2020-07-12 14:35:23'),
(215, 'Wonder Hanger Max 8 Pack Easy Closet Space Saver', 'SB0065', 'uploads/81/46.Wonder Hanger Max 8 Pack Easy Closet Space Saver.jpg', 'galary_image1', 82, '2020-07-12 14:35:23', '2020-07-12 14:35:23'),
(216, 'Wonder Hanger Max 8 Pack Easy Closet Space Saver', 'SB0065', 'uploads/81/42.Wonder Hanger Max 8 Pack Easy.jpg', 'galary_image2', 82, '2020-07-12 14:35:23', '2020-07-12 14:35:23'),
(217, 'Double Suction Cup Corner Rack', 'SB0066', 'uploads/83/83.Double Suction Cup Corner Rack2.jpg', 'featured_image', 83, '2020-07-12 15:16:20', '2020-07-12 15:16:20'),
(218, 'Double Suction Cup Corner Rack', 'SB0066', 'uploads/83/72.Double Suction Cup Corner Rack.jpg', 'galary_image1', 83, '2020-07-12 15:16:20', '2020-07-12 15:16:20'),
(219, 'Double Suction Cup Corner Rack', 'SB0066', 'uploads/83/48.Double Suction Cup Corner Rack1.jpg', 'galary_image2', 83, '2020-07-12 15:16:20', '2020-07-12 15:16:20'),
(220, 'Super Gold Kosturi for Long Lasting Sexual Happiness – 1 Box', 'SB0067', 'uploads/84/84.UTB8ofvLFmnEXKJk43Ubq6zLppXam.jpg_640x640.jpg', 'featured_image', 84, '2020-07-13 12:24:12', '2020-07-13 12:24:12'),
(221, 'Super Gold Kosturi for Long Lasting Sexual Happiness – 1 Box', 'SB0067', 'uploads/84/72.0097600_super-gold-kosturi-for-long-lasting-sexual-happiness-1-box.jpeg', 'galary_image1', 84, '2020-07-13 12:06:21', '2020-07-13 12:06:21'),
(222, 'VISION Electric Kettle 1.5L VIS-EK-004', 'SB0068', 'uploads/85/85.vision-electric-kettle-18l-vis-ek-005.jpg', 'featured_image', 85, '2020-07-13 13:43:45', '2020-07-13 13:43:45'),
(223, 'VISION Electric Kettle 1.5L VIS-EK-004', 'SB0068', 'uploads/85/84.VISION Electric Kettle (RFL)  1.5L VIS-EK-004.jpg', 'galary_image1', 85, '2020-07-13 13:43:45', '2020-07-13 13:43:45'),
(224, 'VISION Electric Kettle 1.5L VIS-EK-004', 'SB0068', 'uploads/85/78.VISION Electric Kettle (RFL)  1.5L.jpg', 'galary_image2', 85, '2020-07-13 13:43:45', '2020-07-13 13:43:45'),
(225, 'Vision Electric Kettle 1.8L VIS-EK-005', 'SB0069', 'uploads/86/86.vision-electric-kettle-1.8.jpg', 'featured_image', 86, '2020-07-13 13:55:15', '2020-07-13 13:55:15'),
(226, 'Vision Electric Kettle 1.8L VIS-EK-005', 'SB0069', 'uploads/86/49.Vision Electric Kettle 1.8L 005.jpg', 'galary_image1', 86, '2020-07-13 13:55:15', '2020-07-13 13:55:15'),
(227, 'TP-Link Archer C6 AC1200 Wireless Router', 'SB0070', 'uploads/87/87.archer-c6-ac1200-4-500x500.jpg', 'featured_image', 87, '2020-07-13 14:44:11', '2020-07-13 14:44:11'),
(228, 'TP-Link Archer C6 AC1200 Wireless Router', 'SB0070', 'uploads/87/72.archer-c6-ac1200-1-500x500.jpg', 'galary_image1', 87, '2020-07-13 14:44:11', '2020-07-13 14:44:11'),
(229, 'TP-Link Archer C6 AC1200 Wireless Router', 'SB0070', 'uploads/87/69.archer-c6-ac1200.jpg', 'galary_image2', 87, '2020-07-13 14:44:11', '2020-07-13 14:44:11'),
(230, 'TP-Link Archer C9 AC1900Mbps  Gigabit Router', 'SB0071', 'uploads/88/88.TP-Link Archer C9 AC1900Mbps.jpg', 'featured_image', 88, '2020-07-13 15:13:42', '2020-07-13 15:13:42'),
(231, 'TP-Link Archer C9 AC1900Mbps  Gigabit Router', 'SB0071', 'uploads/88/74.TP-Link Archer C9 AC1900Mbps1.jpg', 'galary_image1', 88, '2020-07-13 15:13:42', '2020-07-13 15:13:42'),
(232, 'TP-Link Archer C9 AC1900Mbps  Gigabit Router', 'SB0071', 'uploads/88/36.TP-Link Archer C9 AC1900Mbps2.jpg', 'galary_image2', 88, '2020-07-13 15:13:42', '2020-07-13 15:13:42'),
(233, 'WiFi receiver Fixed 3DBi Antenna Wireless-N USB Adapter (Alfa Net )', 'SB0072', 'uploads/89/89.Alfa Net WiFi Fixed 3DBi Antenna Wireless-N USB.jpg', 'featured_image', 89, '2020-07-13 16:40:07', '2020-07-13 16:40:07'),
(234, 'WiFi receiver Fixed 3DBi Antenna Wireless-N USB Adapter (Alfa Net )', 'SB0072', 'uploads/89/82.Alfa Net WiFi Fixed 3DBi Antenna Wireless-N USB Adapter.jpg', 'galary_image1', 89, '2020-07-13 16:40:07', '2020-07-13 16:40:07'),
(235, 'WiFi receiver Fixed 3DBi Antenna Wireless-N USB Adapter (Alfa Net )', 'SB0072', 'uploads/89/13.Alfa Net WiFi Fixed 3DBi Antenna.jpg', 'galary_image2', 89, '2020-07-13 16:40:07', '2020-07-13 16:40:07'),
(236, 'gdfgdfdfdf', 'dfdf', 'uploads/90/90.Google drive.jpg', 'featured_image', 90, '2020-07-13 17:58:23', '2020-07-13 17:58:23'),
(237, 'gdfgdfdfdf', 'dfdf', 'uploads/90/34.Google drive.jpg', 'galary_image1', 90, '2020-07-13 17:58:23', '2020-07-13 17:58:23'),
(238, 'Electronic Luggage Scale', 'JP0001', 'uploads/90/91.Electronic_Luggage_Scale1.jpg', 'featured_image', 91, '2020-07-16 18:44:45', '2020-07-16 18:44:45'),
(239, 'Electronic Luggage Scale', 'JP0001', 'uploads/90/33.Electronic_Luggage_Scale.jpg', 'galary_image1', 91, '2020-07-16 18:44:45', '2020-07-16 18:44:45'),
(240, '2 GB + 600 Mins || 30 Days', 'SB0091', 'uploads/92/92.GPbundel.jpg', 'featured_image', 92, '2020-08-18 00:10:38', '2020-08-18 00:10:38'),
(241, 'mlogo', NULL, 'uploads/mlogo.png', NULL, NULL, '2020-08-17 16:22:59', '2020-08-17 16:22:59');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `option_id` int(11) NOT NULL,
  `option_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `option_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`option_id`, `option_name`, `option_value`) VALUES
(59, 'home_page_category_id', '58,65'),
(60, 'logo', 'http://taka2.bestearnidea.com/public/uploads/mlogo.png'),
(61, 'icon', 'https://dev.sohojbuy.com/public/uploads/sb-logo.png'),
(62, 'site_title', 'Money Transfer'),
(63, 'order_image', NULL),
(64, 'phone', '01300884747'),
(65, 'phone_order', '<i class=\"fa fa-phone-square\" style=\"padding-left:20px;color: green;\">   </i> 01300884747 <br>\r\n <i class=\"fa fa-phone-square\" style=\"padding-left:20px;color: green;\"> </i> 01300884747 <br>'),
(66, 'address', '<ul class=\"toggle-footer\" style=\"\">\r\n                            <li class=\"media\">\r\n                                <div class=\"pull-left\">\r\n                      <span class=\"icon fa-stack fa-lg\">\r\n                      <i class=\"fa fa-map-marker fa-stack-1x fa-inverse\"></i>\r\n                      </span>\r\n                                </div>\r\n                                <div class=\"media-body\">\r\n                                    <p>Office no 1417, Level 13, Shah Ali Plaza, Mirpur 10, Dhaka</p>\r\n                                </div>\r\n                            </li>\r\n                            <li class=\"media\">\r\n                                <div class=\"pull-left\">\r\n                      <span class=\"icon fa-stack fa-lg\">\r\n                      <i class=\"fa fa-mobile fa-stack-1x fa-inverse\"></i>\r\n                      </span>\r\n                                </div>\r\n                                <div class=\"media-body\">\r\n                                    <p>01300884747<br>01300884747</p>\r\n                                </div>\r\n                            </li>\r\n                            <li class=\"media\">\r\n                                <div class=\"pull-left\">\r\n                      <span class=\"icon fa-stack fa-lg\">\r\n                      <i class=\"fa fa-envelope fa-stack-1x fa-inverse\"></i>\r\n                      </span>\r\n                                </div>\r\n                                <div class=\"media-body\">\r\n                                    <span><a href=\"#\">support@sohojbuy.com</a></span>\r\n                                </div>\r\n                            </li>\r\n                        </ul>'),
(67, 'admin_email', 'info@sohojbuy.com'),
(68, 'shipping_charge_in_dhaka', '60'),
(69, 'shipping_charge_out_of_dhaka', '120'),
(70, 'footer', NULL),
(71, 'google_map', NULL),
(72, 'copyright', NULL),
(73, 'default_product_terms', NULL),
(74, 'home_cat_section', '102'),
(75, 'home_seo_title', NULL),
(76, 'home_seo_content', NULL),
(77, 'home_seo_keywords', NULL),
(78, 'home_about_title', NULL),
(79, 'home_about_content', NULL),
(80, 'bkash', '01748188268'),
(81, 'facebook', 'https://www.facebook.com/sohojbuyshop'),
(82, 'youtube', 'https://www.youtube.com/channel/UCWA3XLqrBLNItdEXNAcZVSA'),
(83, 'twitter', NULL),
(84, 'linked', NULL),
(85, 'map', NULL),
(86, 'home_share_image', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_data`
--

CREATE TABLE `order_data` (
  `order_id` bigint(200) NOT NULL,
  `created_by` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT 'customer',
  `staff_id` int(11) DEFAULT NULL,
  `order_total` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_charge` int(11) DEFAULT NULL,
  `discount_price` int(11) NOT NULL DEFAULT '0',
  `advabced_price` int(11) NOT NULL DEFAULT '0',
  `order_status` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'new',
  `payment_type` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `products` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `courier_service` varchar(155) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipment_time` datetime DEFAULT NULL,
  `created_time` datetime NOT NULL,
  `order_date` date NOT NULL,
  `modified_time` datetime DEFAULT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_email` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delevery_address` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_area` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_note` mediumtext COLLATE utf8mb4_unicode_ci,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_data`
--

INSERT INTO `order_data` (`order_id`, `created_by`, `staff_id`, `order_total`, `shipping_charge`, `discount_price`, `advabced_price`, `order_status`, `payment_type`, `products`, `courier_service`, `shipment_time`, `created_time`, `order_date`, `modified_time`, `customer_name`, `customer_phone`, `customer_email`, `customer_address`, `delevery_address`, `order_area`, `order_note`, `user_id`) VALUES
(1, 'Customer', 0, '1054', 60, 0, 0, 'cancel', 'cash_on_delivery', 'a:1:{s:5:\"items\";a:1:{i:92;a:5:{s:14:\"featured_image\";s:71:\"http://localhost/money_transfer/public/uploads/92/small/92.GPbundel.jpg\";s:3:\"qty\";s:1:\"2\";s:5:\"price\";s:3:\"497\";s:8:\"subtotal\";s:3:\"994\";s:4:\"name\";s:26:\"2 GB + 600 Mins || 30 Days\";}}}', NULL, NULL, '2020-10-21 04:18:41', '2020-10-21', NULL, 'sumon ali', '01744434343', 'suzon@gmail.cph', 'ddddd', NULL, 'inside', NULL, 2),
(2, 'Customer', 0, '1054', 60, 0, 0, 'new', 'cash_on_delivery', 'a:1:{s:5:\"items\";a:1:{i:92;a:5:{s:14:\"featured_image\";s:71:\"http://localhost/money_transfer/public/uploads/92/small/92.GPbundel.jpg\";s:3:\"qty\";s:1:\"2\";s:5:\"price\";s:3:\"497\";s:8:\"subtotal\";s:3:\"994\";s:4:\"name\";s:26:\"2 GB + 600 Mins || 30 Days\";}}}', NULL, NULL, '2020-10-21 04:22:13', '2020-10-21', NULL, 'sumon ali', '01744434343', 'suzon@gmail.cph', 'ddddd', NULL, 'inside', NULL, 2),
(3, 'Customer', 0, '617', 120, 0, 0, 'new', 'cash_on_delivery', 'a:1:{s:5:\"items\";a:1:{i:92;a:5:{s:14:\"featured_image\";s:71:\"http://localhost/money_transfer/public/uploads/92/small/92.GPbundel.jpg\";s:3:\"qty\";s:1:\"1\";s:5:\"price\";s:3:\"497\";s:8:\"subtotal\";s:3:\"497\";s:4:\"name\";s:26:\"2 GB + 600 Mins || 30 Days\";}}}', NULL, NULL, '2020-10-24 04:47:08', '2020-10-24', NULL, 'sujon ali', '01738363636', 'suzonice15@gggg.com', 'ddd', NULL, 'outside', NULL, 0),
(4, 'Customer', 0, '617', 120, 0, 0, 'new', 'cash_on_delivery', 'a:1:{s:5:\"items\";a:1:{i:92;a:5:{s:14:\"featured_image\";s:71:\"http://localhost/money_transfer/public/uploads/92/small/92.GPbundel.jpg\";s:3:\"qty\";s:1:\"1\";s:5:\"price\";s:3:\"497\";s:8:\"subtotal\";s:3:\"497\";s:4:\"name\";s:26:\"2 GB + 600 Mins || 30 Days\";}}}', NULL, NULL, '2020-10-24 05:10:45', '2020-10-24', NULL, 'ddd', '555555', 'suzodnice15@gggg.com', 'dd', NULL, 'outside', NULL, 4),
(5, 'Customer', 0, '557', 60, 0, 0, 'paid', 'cash_on_delivery', 'a:1:{s:5:\"items\";a:1:{i:92;a:5:{s:3:\"qty\";s:1:\"1\";s:14:\"featured_image\";s:71:\"http://localhost/money_transfer/public/uploads/92/small/92.GPbundel.jpg\";s:5:\"price\";s:3:\"497\";s:4:\"name\";s:26:\"2 GB + 600 Mins || 30 Days\";s:8:\"subtotal\";s:3:\"497\";}}}', NULL, NULL, '2020-10-24 05:32:21', '2020-10-24', '2020-10-24 18:02:37', 'rff', '12345647890', 'suzonicegg15@gmail.com', 'ddd', NULL, 'inside', NULL, 4),
(6, 'Customer', 0, '1551', 60, 0, 0, 'cancel', 'cash_on_delivery', 'a:1:{s:5:\"items\";a:1:{i:92;a:5:{s:3:\"qty\";s:1:\"3\";s:14:\"featured_image\";s:71:\"http://localhost/money_transfer/public/uploads/92/small/92.GPbundel.jpg\";s:5:\"price\";s:3:\"497\";s:4:\"name\";s:26:\"2 GB + 600 Mins || 30 Days\";s:8:\"subtotal\";s:4:\"1491\";}}}', NULL, NULL, '2020-10-24 05:34:34', '2020-10-24', '2020-10-24 17:35:04', 'rff', '12345647890', 'suzonicegg15@gmail.com', 'd', NULL, 'inside', NULL, 4);

-- --------------------------------------------------------

--
-- Table structure for table `page`
--

CREATE TABLE `page` (
  `page_id` int(11) NOT NULL,
  `page_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_content` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page`
--

INSERT INTO `page` (`page_id`, `page_name`, `page_link`, `page_content`, `created_time`) VALUES
(3, 'Replacement Policy', 'replacement', '<p>রিপ্লেসমেন্ট পলিসিঃ যে সকল প্রোডাক্টটের মূল্য ২০০০ টাকার বেশি শুধুমাত্র সেগুলোর ক্ষেত্রে কাস্টমার নিম্নের শর্ত সাপেক্ষে প্রোডাক্টটির রিপ্লেসমেন্ট সুবিধা পাবে।<br />\r\n১) প্রোডাক্টের সমস্যার (যেমন : প্রোডাক্ট ভাঙ্গা, ছেঁড়া, ভুল সাইজ, প্রোডাক্ট কাজ না করা, ছবির সাথে প্রোডাক্টের মিল না থাকা ইত্যাদি) ক্ষেত্রে আপনি রিপ্লেসমেন্ট পেতে পারেন।<br />\r\n২) প্রোডাক্টটির বাক্স সহ সম্পূর্ণ অক্ষত অবস্থায় থাকতে হবে।<br />\r\n৩) ডেলিভারি গ্রহনের পর সর্বোচ্চ ৪৮ ঘন্টার মধ্যে আপনাকে info@ekushyshop.com এ মেইল করতে হবে অথবা 01796-000007 নাম্বারে কমপ্লেইন রেজিস্টার করতে হবে।<br />\r\n৪) আপনাকে উক্ত প্রোডাক্টটি কালেরহাট-এর অফিসে অবশ্যই সর্বোচ্চ ৭ কার্যদিবসের মধ্যে নিজ দায়িত্বে ফেরত পাঠাতে হবে। বিঃ দ্রঃ পণ্য ও সার্ভিস সম্পর্কিত কোনো অভিযোগের জন্য আমাদের কমপ্লেইন্ট টীম আপনাকে ফোন করবেন। এ জন্য আপনার অভিযোগটি সমাধান না হওয়া পর্যন্ত আপনাকে আমরা ফোনে সক্রিয় পেতে চাই। আপনার যোগাযোগে দেওয়া নম্বরটি সক্রিয় না থাকলে বিকল্প কোনো নম্বর সক্রিয় থাকতে হবে। রিফান্ডের জন্য আপনাকে টাকাটি ফেরতের মাধ্যম আমাদের জানাতে হবে। আমরা আপনার কোনো প্রকার সহযোগিতা ১৫ কার্যদিবসের মধ্যে ফোনে অথবা ইমেইলে না পেলে আপনার অভিযোগটি নিস্পত্তি বলে মনে করবো।</p>\r\n', '2019-10-07 10:18:01'),
(4, 'About Us ', 'about', '<h1><strong>About Ekusheyshop</strong></h1>\r\n\r\n<hr />\r\n<p>ekusheyshop.com is the ultimate online shopping destination in Bangladesh, offering completely hassle-free shopping experience through secure and trusted payment gateways and quickest delivery service. We are offering you trendy and reliable shopping with all your favorite brands and more. Now shopping is much more easier, faster and joyous. We are here to help you make the right choice. Ekusheyshop.com is a concern of Ekushey Technology.</p>\r\n\r\n<p>Ekusheyshop showcases only Original products from all categories such as clothing, footwear, jewellery, accessories, electronics, home appliance, gadgets, health &amp; beauty and still counting!&nbsp; Our products are exclusively selected for you. Ekusheyshop have all the stuffs that you need under one umbrella at incredible prices.</p>\r\n\r\n<p>In tune with the vision <strong>&ldquo;Digital Bangladesh&rdquo;</strong>, ekusheyshop.com opens the doorway for everybody to shop over the Internet sitting at home. We are constantly updating our product lines, services and special offers that fits with your requirement. We provide on-time delivery across the nation and quick resolution of any concerns. Customer support and satisfaction is our main strength. We are working hard every moment to make your online shopping secure &amp; enjoyable.&nbsp;</p>\r\n', '2019-11-13 11:56:27'),
(5, 'TERMS & CONDITIONS', 'terms', '<p>কীভাবে মূল্য ফেরত নেবেন অনলাইন পেমেণ্ট এর ক্ষেত্রে অতিরিক্ত মূল্য পরিশোধিত হলে ২৪ ঘণ্টার মধ্যে জানাতে হবে । এক্ষেত্রে info@okshop এ মেইল করে জানানোর জন্য অনুরোধ করা হচ্ছে । ১. নষ্ট বা ক্ষতিগ্রস্ত পণ্যের ক্ষেত্রে পণ্য গ্রহন না করে পন্যবাহকের কাছে পণ্য ফেরত দেবার জন্য বলা হচ্ছে এবং আমাদেরকে টেলিফোন/ ইমেইল করে অবহিত করার জন্য অনুরোধ করা হচ্ছে। ২. নষ্ট পণ্য সাথে সাথে বাহকের কাছে ফেরত দিতে সমর্থ না হলে পরবর্তীতে ফেরত দেবার ক্ষেত্রে যাবতীয় পরিবহন খরচ ক্রেতাকে বহন করতে হবে। ৩. ব্যবহার করা পণ্যের ক্ষেত্রে কোনভাবেই মূল্য ফেরত দেওয়া হবে না। ৪. ট্রাভেল ডিল এর ক্ষেত্রে যাত্রা বাতিল করে মূল্য ফেরত নেবার জন্য নির্দিষ্ট সময়ের মধ্যে আমাদেরকে অবহিত করার জন্য অনুরোধ করা হচ্ছে । ৫. পরিশোধকৃত মূল্য ফেরত নেবার ক্ষেত্রে অবশ্যই ক্রেতাকে আমাদের অফিসে এসে মূল্য ফেরত নিতে হবে (অনলাইন পেমেন্ট এর ক্ষেএে প্রযোজ্য নয়)। ৬. মূল্য ফেরত পাবার জন্য অবহিত করার পর ৭ থেকে ২১ দিন পর্যন্ত অপেক্ষা করতে হতে পারে। ৭. অনলাইন পেমেন্ট ফেরত নেবার ক্ষেত্রে ক্রেতার ব্যাংক স্টেটমেন্ট দিতে হতে পারে। .</p>\r\n', '2019-10-06 07:30:58'),
(6, 'Track Your Order ', 'page_track', '<ul style=\"list-style-type:circle\">\r\n	<li>1.আপনার অর্ডারের আপডেট জানতে নিচের বক্সে অর্ডার নাম্বার অথবা আপনার মোবাইল নাম্বার দিয়ে Track order বাটনে চাপুন।</li>\r\n	<li>2.To get latest update about your order please enter your order number or mobile number and click on the Track order button</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n', '2019-12-01 12:10:59'),
(7, 'Contact Us', 'contact-us', '<h3>Call Us</h3>\r\n\r\n<p><br />\r\n<strong>Sohojbuy Online Shop<br />\r\nSupport: </strong>01300884747<br />\r\n<strong>Sales:</strong>01300884747<br />\r\n<strong>Hotline:</strong>01300884747</p>', '2019-11-10 03:39:39'),
(8, 'Return Policy', 'return_policy', '**If your product arrives damaged or faulty, please do not accept it. If you did accept it, please get in contact with our customer service team on 16492**\r\n\r\n\r\nCan I return this product?\r\n\r\nYou can return this product for a replacement or a refund, within 7 days after receiving your original order.\r\n\r\nOnly Custom or Made-to-order products; Imported On-order products and delivered out of Bangladesh products cannot be returned.\r\n\r\n\r\nWhat are the required conditions?\r\n\r\nCondition A:\r\n\r\n    If the product is not as you expected/not as advertised; or\r\n    If you don\'t want the product anymore\r\n\r\nThe product must be returned unused, in original packaging and with all seals & tags intact.\r\n\r\nCondition B:\r\n\r\n    If the product is damaged, defective or counterfeit; or\r\n    If your fashion product is the wrong size\r\n\r\nThe product must be returned in its original packaging. All accessories, tags and free gifts must also be returned.\r\n\r\n\r\nHow to return this product?\r\n\r\nTo return a product, simply follow the steps below:\r\n\r\nYou can also request a return by calling Customer Service at 16492\r\n\r\n\r\nStep 1: Start the Easy & Fast Return\r\n\r\n    Go to Returns or call us at 16492\r\n    Select your order and click \"Return a product\"\r\n    Choose your preferred return and replacement/refund method\r\n\r\n\r\nStep 2: Pack your product\r\n\r\n    Pack your product according to the return conditions\r\n    Include all tags, accessories or free gifts you received\r\n    Fill and include the \"Easy & Fast Return\" form included in your package\r\n\r\n\r\nStep 3: Return your product\r\n\r\n    If you requested a pickup, we will contact you to arrange a pickup time\r\n    For further information please visit Help\r\n\r\n\r\n\r\nWhat\'s next?\r\n\r\nWe will send you a tracking number via SMS after the package has been picked up or dropped off. We will immediately initiate your replacement or refund when we have received your package and it has passed our Quality Evaluation. For expected timelines please visit Help\r\n\r\n', '2019-09-01 07:07:54'),
(9, 'How to buy', 'buy', '<p>ddd</p>\r\n', '2019-11-10 03:33:59'),
(10, 'sujon prodduct', '1222', '<p>ddd</p>\r\n\r\n<p>gggg</p>', '2020-07-05 08:13:01');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` double DEFAULT NULL,
  `purchase_price` double DEFAULT NULL,
  `discount_price` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_summary` longtext COLLATE utf8mb4_unicode_ci,
  `product_description` longtext COLLATE utf8mb4_unicode_ci,
  `product_specification` longtext COLLATE utf8mb4_unicode_ci,
  `product_terms` mediumtext COLLATE utf8mb4_unicode_ci,
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_stock` int(11) DEFAULT NULL,
  `product_of_size` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1 active 0 in active',
  `product_type` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT 'general',
  `created_time` datetime NOT NULL,
  `modified_time` datetime NOT NULL,
  `folder` int(11) NOT NULL,
  `feasured_image` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `galary_image_6` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `galary_image_1` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `galary_image_2` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `galary_image_3` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `galary_image_4` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `galary_image_5` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_title` longtext COLLATE utf8mb4_unicode_ci,
  `seo_keywords` longtext COLLATE utf8mb4_unicode_ci,
  `seo_content` longtext COLLATE utf8mb4_unicode_ci,
  `stock_alert` int(11) DEFAULT NULL,
  `discount` tinyint(4) NOT NULL DEFAULT '0',
  `vendor_id` int(11) NOT NULL,
  `delivery_in_dhaka` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_out_dhaka` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vendor_percent` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_title`, `product_name`, `product_price`, `purchase_price`, `discount_price`, `product_summary`, `product_description`, `product_specification`, `product_terms`, `sku`, `product_stock`, `product_of_size`, `product_color`, `product_video`, `status`, `product_type`, `created_time`, `modified_time`, `folder`, `feasured_image`, `galary_image_6`, `galary_image_1`, `galary_image_2`, `galary_image_3`, `galary_image_4`, `galary_image_5`, `seo_title`, `seo_keywords`, `seo_content`, `stock_alert`, `discount`, `vendor_id`, `delivery_in_dhaka`, `delivery_out_dhaka`, `vendor_percent`) VALUES
(92, '2 GB + 600 Mins || 30 Days', 'ffffffffffff', 497, 495, '497', NULL, NULL, NULL, NULL, 'SB0091', 2, NULL, NULL, NULL, 1, 'general', '2020-08-18 00:10:38', '2020-08-18 00:10:38', 92, '92.GPbundel.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `product_category_relation`
--

CREATE TABLE `product_category_relation` (
  `product_category_relation_id` bigint(250) NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `category_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_category_relation`
--

INSERT INTO `product_category_relation` (`product_category_relation_id`, `product_id`, `category_id`) VALUES
(410, 13, 1),
(411, 13, 2),
(412, 13, 3),
(139, 14, 1),
(140, 14, 4),
(141, 14, 5),
(142, 14, 6),
(22, 15, 4),
(23, 15, 5),
(24, 15, 6),
(135, 17, 1),
(136, 17, 4),
(137, 17, 7),
(138, 17, 8),
(131, 18, 1),
(132, 18, 4),
(133, 18, 7),
(134, 18, 8),
(129, 19, 1),
(130, 19, 5),
(335, 20, 1),
(336, 20, 9),
(337, 20, 10),
(338, 20, 11),
(346, 22, 1),
(347, 22, 9),
(348, 22, 10),
(349, 22, 11),
(343, 23, 1),
(344, 23, 9),
(345, 23, 11),
(113, 24, 1),
(114, 24, 12),
(115, 24, 13),
(116, 24, 14),
(109, 25, 1),
(110, 25, 12),
(111, 25, 13),
(112, 25, 14),
(105, 27, 1),
(106, 27, 12),
(107, 27, 13),
(108, 27, 14),
(103, 28, 1),
(104, 28, 4),
(100, 29, 1),
(101, 29, 16),
(102, 29, 17),
(96, 30, 1),
(97, 30, 18),
(98, 30, 19),
(99, 30, 21),
(362, 31, 1),
(363, 31, 18),
(364, 31, 19),
(365, 31, 20),
(89, 32, 1),
(90, 32, 18),
(91, 32, 19),
(87, 33, 1),
(88, 33, 23),
(83, 34, 1),
(84, 34, 24),
(85, 34, 25),
(86, 34, 26),
(80, 35, 1),
(81, 35, 24),
(82, 35, 27),
(146, 36, 1),
(147, 36, 18),
(148, 36, 19),
(149, 36, 20),
(150, 36, 21),
(151, 37, 1),
(152, 37, 18),
(153, 37, 19),
(157, 38, 1),
(158, 38, 18),
(159, 38, 19),
(160, 38, 28),
(161, 38, 29),
(162, 39, 1),
(163, 39, 18),
(165, 40, 1),
(166, 40, 30),
(167, 40, 31),
(168, 40, 32),
(169, 41, 1),
(170, 41, 33),
(171, 41, 34),
(172, 41, 35),
(173, 42, 1),
(174, 42, 18),
(175, 42, 19),
(176, 42, 21),
(177, 43, 1),
(178, 43, 2),
(179, 43, 36),
(418, 44, 1),
(419, 44, 24),
(420, 44, 25),
(421, 44, 26),
(422, 44, 27),
(187, 45, 1),
(188, 45, 4),
(189, 45, 37),
(391, 46, 1),
(392, 46, 18),
(393, 46, 19),
(394, 46, 38),
(199, 47, 1),
(200, 47, 39),
(201, 47, 40),
(202, 47, 41),
(204, 48, 1),
(205, 48, 42),
(206, 49, 1),
(207, 49, 18),
(208, 49, 43),
(209, 49, 44),
(210, 50, 1),
(211, 50, 33),
(212, 50, 34),
(213, 50, 45),
(214, 50, 46),
(215, 51, 1),
(216, 51, 18),
(217, 51, 19),
(218, 51, 20),
(219, 51, 21),
(220, 52, 1),
(221, 52, 2),
(222, 52, 48),
(223, 53, 1),
(224, 53, 4),
(225, 53, 7),
(226, 53, 8),
(227, 53, 37),
(371, 54, 1),
(372, 54, 49),
(373, 54, 50),
(374, 54, 51),
(232, 55, 1),
(233, 55, 38),
(234, 55, 52),
(235, 55, 53),
(236, 56, 1),
(237, 56, 39),
(238, 56, 40),
(239, 56, 41),
(320, 57, 1),
(321, 57, 18),
(322, 57, 19),
(247, 58, 1),
(248, 58, 18),
(249, 58, 54),
(250, 58, 55),
(350, 59, 1),
(351, 59, 56),
(352, 59, 57),
(254, 60, 1),
(255, 60, 4),
(256, 60, 7),
(257, 60, 8),
(258, 60, 37),
(259, 61, 1),
(260, 61, 18),
(261, 61, 19),
(262, 61, 58),
(263, 62, 1),
(264, 62, 18),
(265, 62, 28),
(266, 62, 29),
(267, 62, 59),
(268, 63, 1),
(269, 63, 4),
(270, 63, 5),
(271, 63, 6),
(272, 64, 1),
(273, 64, 4),
(274, 64, 7),
(275, 64, 8),
(276, 65, 1),
(277, 65, 4),
(278, 65, 7),
(279, 65, 8),
(280, 66, 1),
(281, 66, 4),
(282, 66, 5),
(283, 66, 6),
(288, 67, 1),
(289, 67, 4),
(290, 67, 5),
(291, 67, 64),
(292, 68, 1),
(293, 68, 18),
(294, 68, 38),
(295, 68, 54),
(296, 68, 55),
(297, 69, 1),
(298, 69, 4),
(299, 69, 7),
(300, 69, 8),
(302, 70, 1),
(303, 70, 16),
(304, 70, 65),
(305, 70, 66),
(308, 71, 1),
(309, 71, 4),
(310, 71, 68),
(311, 71, 69),
(312, 72, 1),
(313, 72, 39),
(314, 72, 40),
(315, 72, 41),
(316, 73, 1),
(317, 73, 16),
(318, 73, 18),
(319, 73, 19),
(325, 74, 1),
(326, 74, 4),
(327, 75, 1),
(328, 75, 2),
(329, 75, 18),
(330, 76, 1),
(331, 76, 4),
(332, 76, 64),
(333, 76, 68),
(334, 76, 76),
(353, 77, 1),
(354, 77, 4),
(355, 77, 70),
(356, 77, 77),
(357, 77, 78),
(358, 78, 1),
(359, 78, 4),
(360, 78, 80),
(361, 78, 81),
(387, 79, 1),
(388, 79, 9),
(389, 79, 10),
(390, 79, 11),
(399, 80, 1),
(400, 80, 9),
(401, 80, 23),
(397, 81, 1),
(398, 81, 2),
(402, 82, 1),
(403, 82, 83),
(404, 82, 84),
(405, 82, 85),
(406, 83, 1),
(407, 83, 86),
(408, 83, 87),
(409, 83, 88),
(416, 84, 1),
(417, 84, 89),
(426, 85, 1),
(427, 85, 2),
(428, 85, 16),
(429, 85, 54),
(430, 85, 90),
(431, 86, 1),
(432, 86, 16),
(433, 86, 54),
(434, 86, 90),
(435, 87, 1),
(436, 87, 9),
(437, 87, 10),
(438, 87, 11),
(441, 88, 1),
(442, 88, 9),
(443, 88, 11),
(444, 89, 1),
(445, 89, 9),
(446, 89, 10),
(447, 89, 92),
(448, 90, 1),
(449, 90, 5),
(450, 91, 1),
(451, 91, 2),
(452, 91, 16),
(456, 92, 102);

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `review_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` mediumtext COLLATE utf8mb4_unicode_ci,
  `rating` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `review_active` int(11) NOT NULL DEFAULT '0',
  `created_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`review_id`, `product_id`, `name`, `email`, `comment`, `rating`, `review_active`, `created_time`) VALUES
(1, 84, 'sujon', 'suzonice15@gmail.com', 'good', '5', 0, NULL),
(2, 84, 'mitul', 'fjjfjf@fmao.com', 'ok		', '3', 1, '2019-09-20 05:40:29'),
(3, 169, 'suzon', 'suzonice15@gmail.com', 'ttt', '5', 1, '2019-09-19 14:14:06'),
(4, 169, 'suzon', 'suzonice15@gmail.com', 'hh				', '5', 1, '2019-09-20 05:40:22'),
(5, 169, 'suzon', 'suzonice15@gmail.com', 'ok', '3', 1, '2019-09-19 14:17:05'),
(8, 180, 'sumon', 'suzonice15@gmail.com', 'ddd', '5', 0, '2019-09-20 09:42:36'),
(9, 167, 'mitul', 'suzonice1@gmal.com', 'hhh', '5', 0, '2019-09-20 16:28:07'),
(10, 169, 'raihan', 'mitul@gmail.com', 'ddd', '5', 1, '2019-09-20 16:30:26'),
(11, 169, 'abu', 'abu@gmail.com', 'ok\n', '5', 1, '2019-09-20 16:34:44'),
(12, 178, 'suzon', 'suzonice15@gmail.com', 'ok', '5', 1, '2019-09-22 09:57:49'),
(13, 178, 'mitul', 'suzonice15@gmail.com', 'nice		2e', '5', 1, '2019-10-10 02:13:18'),
(14, 167, 'Full HD 1080P স্পোর্টস অ্যাকশন ওয়াটারপ্রুফ ক্যামেরা 12MP - Black', 'anisurrups@gmail.com', 'kk		', '5', 1, '2019-11-18 05:24:57'),
(15, 186, 'Asia', 'anisur134@gmail.com', 'ok', '5', 1, '2019-10-17 13:45:07');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_history`
--

CREATE TABLE `transaction_history` (
  `transaction_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL COMMENT '1 for add 0 minus',
  `amount` float NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `admin_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction_history`
--

INSERT INTO `transaction_history` (`transaction_id`, `user_id`, `status`, `amount`, `created_at`, `admin_id`) VALUES
(1, 3, 1, 10, '2020-10-20 22:30:35', 11),
(2, 3, 1, 70, '2020-10-20 22:30:52', 11),
(3, 2, 1, 666, '2020-10-20 23:13:22', 11),
(4, 2, 0, 1054, '2020-10-21 23:40:23', 11),
(5, 2, 0, 1054, '2020-10-21 23:49:35', 11),
(6, 4, 1, 550, '2020-10-24 23:12:47', 11),
(7, 4, 1, 40, '2020-10-24 23:32:14', 11),
(8, 4, 0, 557, '2020-10-24 23:32:47', 11),
(9, 4, 1, 10000, '2020-10-24 23:33:36', 11),
(10, 4, 1, -1000, '2020-10-24 23:35:50', 11),
(11, 4, 1, -9000, '2020-10-24 23:36:08', 11),
(12, 4, 0, 1551, '2020-10-24 23:36:16', 11),
(13, 4, 1, 9000, '2020-10-24 23:59:54', 11),
(14, 4, 0, 557, '2020-10-25 00:00:05', 11),
(15, 4, 0, 557, '2020-10-25 00:02:38', 11);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `phone` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wallet` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `phone`, `address`, `wallet`) VALUES
(2, 'Sujon', 'suzdonice15@gmail.com', NULL, 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, NULL, 'sumonali1', NULL, -1442),
(3, 'sumon ali kokorao', 'suzoniddce15@gmail.com', NULL, '5f4dcc3b5aa765d61d8327deb882cf99', NULL, NULL, NULL, '01774464664', NULL, 100),
(4, 'rff', 'suzonicegg15@gmail.com', NULL, '81dc9bdb52d04dc20036dbd8313ed055', NULL, NULL, NULL, '12345647890', NULL, 6368);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `courier`
--
ALTER TABLE `courier`
  ADD PRIMARY KEY (`courier_id`);

--
-- Indexes for table `homeslider`
--
ALTER TABLE `homeslider`
  ADD PRIMARY KEY (`homeslider_id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`media_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`option_id`);

--
-- Indexes for table `order_data`
--
ALTER TABLE `order_data`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`page_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `product_id` (`product_id`,`product_name`(191),`sku`(191),`vendor_id`);

--
-- Indexes for table `product_category_relation`
--
ALTER TABLE `product_category_relation`
  ADD PRIMARY KEY (`product_category_relation_id`),
  ADD KEY `product_id` (`product_id`,`category_id`);

--
-- Indexes for table `transaction_history`
--
ALTER TABLE `transaction_history`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `courier`
--
ALTER TABLE `courier`
  MODIFY `courier_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `homeslider`
--
ALTER TABLE `homeslider`
  MODIFY `homeslider_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `media_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=242;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `order_data`
--
ALTER TABLE `order_data`
  MODIFY `order_id` bigint(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `page`
--
ALTER TABLE `page`
  MODIFY `page_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `product_category_relation`
--
ALTER TABLE `product_category_relation`
  MODIFY `product_category_relation_id` bigint(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=457;

--
-- AUTO_INCREMENT for table `transaction_history`
--
ALTER TABLE `transaction_history`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
