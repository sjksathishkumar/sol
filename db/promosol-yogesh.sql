-- phpMyAdmin SQL Dump
-- version 3.3.2deb1ubuntu1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 08, 2014 at 05:11 PM
-- Server version: 5.1.73
-- PHP Version: 5.3.2-1ubuntu4.26

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `promosol`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin_access_log`
--

CREATE TABLE IF NOT EXISTS `tbl_admin_access_log` (
  `pkAdminAccessID` int(11) NOT NULL AUTO_INCREMENT,
  `fkAdminID` int(11) NOT NULL,
  `adminAccessLoginIP` varchar(255) NOT NULL,
  `adminAccessLoginTime` datetime NOT NULL,
  `adminAccessLogoutTime` datetime NOT NULL,
  PRIMARY KEY (`pkAdminAccessID`),
  KEY `fkAdminID` (`fkAdminID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=106 ;

--
-- Dumping data for table `tbl_admin_access_log`
--

INSERT INTO `tbl_admin_access_log` (`pkAdminAccessID`, `fkAdminID`, `adminAccessLoginIP`, `adminAccessLoginTime`, `adminAccessLogoutTime`) VALUES
(48, 1, '127.0.0.1', '2014-10-07 16:53:33', '2014-10-07 16:53:36'),
(49, 1, '127.0.0.1', '2014-10-07 16:53:50', '2014-10-07 17:00:02'),
(50, 1, '127.0.0.1', '2014-10-07 17:00:15', '2014-10-07 17:00:20'),
(51, 1, '127.0.0.1', '2014-10-07 17:09:30', '0000-00-00 00:00:00'),
(52, 1, '127.0.0.1', '2014-10-08 09:57:52', '0000-00-00 00:00:00'),
(53, 1, '127.0.0.1', '2014-10-08 10:43:35', '0000-00-00 00:00:00'),
(54, 1, '127.0.0.1', '2014-10-08 15:41:32', '0000-00-00 00:00:00'),
(55, 1, '127.0.0.1', '2014-10-08 16:13:32', '2014-10-08 18:39:41'),
(56, 1, '127.0.0.1', '2014-10-08 18:39:52', '0000-00-00 00:00:00'),
(57, 1, '127.0.0.1', '2014-10-08 19:24:02', '0000-00-00 00:00:00'),
(58, 1, '127.0.0.1', '2014-10-09 10:22:25', '0000-00-00 00:00:00'),
(59, 1, '127.0.0.1', '2014-10-09 10:58:58', '0000-00-00 00:00:00'),
(60, 1, '127.0.0.1', '2014-10-09 13:57:35', '0000-00-00 00:00:00'),
(61, 1, '127.0.0.1', '2014-10-09 14:09:06', '0000-00-00 00:00:00'),
(62, 1, '127.0.0.1', '2014-10-09 16:51:26', '0000-00-00 00:00:00'),
(63, 1, '127.0.0.1', '2014-10-09 19:18:12', '0000-00-00 00:00:00'),
(64, 1, '127.0.0.1', '2014-10-10 15:58:26', '0000-00-00 00:00:00'),
(65, 1, '127.0.0.1', '2014-10-10 16:03:38', '0000-00-00 00:00:00'),
(66, 1, '127.0.0.1', '2014-10-10 16:25:55', '0000-00-00 00:00:00'),
(67, 1, '127.0.0.1', '2014-10-10 16:26:21', '0000-00-00 00:00:00'),
(68, 1, '127.0.0.1', '2014-10-10 16:27:15', '2014-10-10 16:30:30'),
(69, 1, '127.0.0.1', '2014-10-10 16:30:49', '0000-00-00 00:00:00'),
(70, 1, '127.0.0.1', '2014-10-10 18:09:53', '0000-00-00 00:00:00'),
(71, 1, '127.0.0.1', '2014-10-15 11:35:43', '0000-00-00 00:00:00'),
(72, 1, '127.0.0.1', '2014-10-15 13:38:51', '0000-00-00 00:00:00'),
(73, 1, '127.0.0.1', '2014-10-15 13:39:41', '0000-00-00 00:00:00'),
(74, 1, '127.0.0.1', '2014-10-16 10:16:01', '0000-00-00 00:00:00'),
(75, 1, '127.0.0.1', '2014-10-17 15:52:36', '0000-00-00 00:00:00'),
(76, 1, '127.0.0.1', '2014-10-17 18:42:57', '0000-00-00 00:00:00'),
(77, 1, '127.0.0.1', '2014-10-20 11:20:46', '0000-00-00 00:00:00'),
(78, 1, '127.0.0.1', '2014-10-20 17:08:07', '0000-00-00 00:00:00'),
(79, 1, '127.0.0.1', '2014-10-21 15:07:47', '0000-00-00 00:00:00'),
(80, 1, '127.0.0.1', '2014-10-21 15:12:48', '0000-00-00 00:00:00'),
(81, 1, '127.0.0.1', '2014-10-21 16:38:41', '0000-00-00 00:00:00'),
(82, 1, '127.0.0.1', '2014-10-21 17:41:47', '0000-00-00 00:00:00'),
(83, 1, '127.0.0.1', '2014-10-22 09:43:40', '0000-00-00 00:00:00'),
(84, 1, '127.0.0.1', '2014-10-22 10:31:42', '0000-00-00 00:00:00'),
(85, 1, '127.0.0.1', '2014-10-22 12:34:32', '0000-00-00 00:00:00'),
(86, 1, '127.0.0.1', '2014-10-22 16:15:36', '2014-10-22 16:20:07'),
(87, 1, '127.0.0.1', '2014-10-22 16:20:20', '0000-00-00 00:00:00'),
(88, 1, '127.0.0.1', '2014-10-27 16:28:29', '0000-00-00 00:00:00'),
(89, 1, '127.0.0.1', '2014-10-27 16:34:16', '0000-00-00 00:00:00'),
(90, 1, '127.0.0.1', '2014-10-27 18:27:35', '0000-00-00 00:00:00'),
(91, 1, '127.0.0.1', '2014-10-27 18:33:15', '0000-00-00 00:00:00'),
(92, 1, '127.0.0.1', '2014-10-28 10:29:09', '0000-00-00 00:00:00'),
(93, 1, '127.0.0.1', '2014-10-28 10:47:46', '0000-00-00 00:00:00'),
(94, 1, '127.0.0.1', '2014-10-28 12:39:29', '0000-00-00 00:00:00'),
(95, 1, '127.0.0.1', '2014-10-28 14:03:22', '0000-00-00 00:00:00'),
(96, 1, '127.0.0.1', '2014-10-29 09:18:21', '0000-00-00 00:00:00'),
(97, 1, '127.0.0.1', '2014-10-29 10:45:42', '0000-00-00 00:00:00'),
(98, 1, '127.0.0.1', '2014-10-29 10:51:56', '0000-00-00 00:00:00'),
(99, 1, '127.0.0.1', '2014-10-29 12:12:04', '0000-00-00 00:00:00'),
(100, 1, '127.0.0.1', '2014-10-30 14:03:59', '0000-00-00 00:00:00'),
(101, 1, '127.0.0.1', '2014-10-30 16:38:09', '0000-00-00 00:00:00'),
(102, 1, '127.0.0.1', '2014-10-30 17:46:53', '0000-00-00 00:00:00'),
(103, 1, '127.0.0.1', '2014-10-31 09:55:04', '0000-00-00 00:00:00'),
(104, 1, '127.0.0.1', '2014-10-31 14:09:42', '0000-00-00 00:00:00'),
(105, 1, '127.0.0.1', '2014-11-03 09:36:41', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_banner_slider`
--

CREATE TABLE IF NOT EXISTS `tbl_banner_slider` (
  `pkBannerID` int(11) NOT NULL AUTO_INCREMENT,
  `bannerTitle` varchar(255) NOT NULL,
  `bannerTagLine` varchar(255) NOT NULL,
  `bannerImage` varchar(255) NOT NULL,
  `bannerAltTag` varchar(100) NOT NULL,
  `bannerOrder` int(10) NOT NULL,
  `fkCmsID` int(11) NOT NULL,
  `bannerStatus` enum('0','1') NOT NULL,
  `bannerDateAdded` datetime NOT NULL,
  `bannerDateModified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pkBannerID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `tbl_banner_slider`
--

INSERT INTO `tbl_banner_slider` (`pkBannerID`, `bannerTitle`, `bannerTagLine`, `bannerImage`, `bannerAltTag`, `bannerOrder`, `fkCmsID`, `bannerStatus`, `bannerDateAdded`, `bannerDateModified`) VALUES
(4, 'Deal Banner2', '', 'banner.jpg', 'Deal Banner2', 1, 1, '1', '2014-08-26 11:20:16', '2014-09-09 14:17:48'),
(5, 'Deal Banner Title 3', '', 'banner.jpg', 'Deal Banner Alt3', 2, 1, '1', '2014-08-26 11:20:42', '2014-09-09 14:17:48'),
(6, 'Banner3', '', 'banner.jpg', 'Banner3', 4, 1, '1', '2014-08-27 20:22:18', '2014-09-09 14:17:48'),
(7, 'Search Page Banner', '', 'search-page-banner.png', 'Search Page Banner', 3, 8, '1', '2014-08-28 14:59:50', '2014-09-09 14:17:48');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_categories`
--

CREATE TABLE IF NOT EXISTS `tbl_categories` (
  `pkCategoryID` int(11) NOT NULL AUTO_INCREMENT,
  `fkParentCategoryID` int(11) NOT NULL,
  `categoryLevel` int(11) NOT NULL,
  `categoryHierarchy` varchar(255) NOT NULL,
  `categoryName` varchar(255) NOT NULL,
  `categorySlug` varchar(255) NOT NULL,
  `categoryImage` varchar(255) NOT NULL,
  `categoryDescription` text NOT NULL,
  `categoryStatus` enum('0','1','2') NOT NULL COMMENT '0=InActive 1=Active 2=Delete',
  `categoryDateAdded` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `categoryDateModified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pkCategoryID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `tbl_categories`
--

INSERT INTO `tbl_categories` (`pkCategoryID`, `fkParentCategoryID`, `categoryLevel`, `categoryHierarchy`, `categoryName`, `categorySlug`, `categoryImage`, `categoryDescription`, `categoryStatus`, `categoryDateAdded`, `categoryDateModified`) VALUES
(13, 0, 0, '13', 'Travel', 'travel', 'plane-ico.png', 'eeee', '1', '2014-08-27 11:12:54', '2014-09-08 19:36:02'),
(14, 0, 0, '14', 'Food', 'food', 'plane-ico.png', 'dsdsd1', '1', '2014-08-27 11:14:27', '2014-09-08 19:35:40'),
(15, 0, 0, '15', 'Fashion', 'fashion', 'fation-ico.png', 'ddddddd1', '1', '2014-08-27 11:18:53', '2014-09-08 18:31:18'),
(16, 0, 0, '16', 'Gadgets', 'gadgets', '', 'rrrrr', '1', '2014-08-27 11:20:27', '2014-09-08 18:31:18'),
(17, 0, 0, '17', 'Home', 'home', 'plane-ico.png', 'fdfdf', '1', '2014-08-27 11:30:42', '2014-09-08 18:31:18'),
(19, 13, 1, '13,19', 'Sub Category1', 'sub-category1', 'plane-ico.png', 'Test Description', '2', '2014-08-27 18:13:14', '2014-09-08 12:19:45'),
(20, 13, 1, '13,20', 'Sub Category2', 'sub-category2', 'plane-ico.png', 'dsdsd', '2', '2014-08-27 18:52:34', '2014-09-08 12:19:57'),
(21, 14, 1, '14,21', 'Sub Category3', 'sub-category3', 'plane-ico.png', 'Test Description', '2', '2014-08-27 19:39:24', '2014-09-08 12:21:18'),
(22, 13, 1, '13,22', 'Cat-1234', 'cat-1234', 'plane-ico.png', 'dasdsdasdasd', '1', '2014-09-09 10:40:04', '2014-09-11 12:11:37');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cities`
--

CREATE TABLE IF NOT EXISTS `tbl_cities` (
  `pkCityID` int(11) NOT NULL AUTO_INCREMENT,
  `cityName` varchar(255) NOT NULL,
  `fkStateID` int(11) NOT NULL,
  `cityStatus` tinyint(1) NOT NULL,
  `cityDateAdded` datetime NOT NULL,
  `cityDateModified` datetime NOT NULL,
  PRIMARY KEY (`pkCityID`),
  KEY `fkStateID` (`fkStateID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `tbl_cities`
--

INSERT INTO `tbl_cities` (`pkCityID`, `cityName`, `fkStateID`, `cityStatus`, `cityDateAdded`, `cityDateModified`) VALUES
(1, 'Dehradun', 2, 1, '0000-00-00 00:00:00', '2014-10-08 18:37:16'),
(2, 'Kotdwara', 2, 1, '0000-00-00 00:00:00', '2014-10-08 17:47:39'),
(3, 'Meerut', 3, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Saharanpur', 3, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Chapra', 4, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Texta', 5, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Teadh', 5, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cms`
--

CREATE TABLE IF NOT EXISTS `tbl_cms` (
  `pkCmsID` int(11) NOT NULL AUTO_INCREMENT,
  `cmsDisplayTitle` varchar(255) NOT NULL,
  `cmsPageTitle` varchar(255) NOT NULL,
  `cmsSlug` varchar(255) NOT NULL,
  `cmsContent` text NOT NULL,
  `cmsMetaTitle` varchar(255) NOT NULL,
  `cmsMetaKeywords` text NOT NULL,
  `cmsMetaDescription` text NOT NULL,
  `cmsContentAvailable` enum('0','1') NOT NULL COMMENT '''0''=>No, ''1''=>Yes',
  `cmsBannerAvailable` enum('0','1') NOT NULL COMMENT '''0''=>No, ''1''=>Yes',
  `cmsIsPage` enum('0','1') NOT NULL,
  `cmsStatus` enum('0','1') NOT NULL COMMENT '0=Inactive | 1=Active',
  `cmsDateAdded` datetime NOT NULL,
  `cmsDateModified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pkCmsID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `tbl_cms`
--

INSERT INTO `tbl_cms` (`pkCmsID`, `cmsDisplayTitle`, `cmsPageTitle`, `cmsSlug`, `cmsContent`, `cmsMetaTitle`, `cmsMetaKeywords`, `cmsMetaDescription`, `cmsContentAvailable`, `cmsBannerAvailable`, `cmsIsPage`, `cmsStatus`, `cmsDateAdded`, `cmsDateModified`) VALUES
(1, 'Home', 'Home', 'home', 'Home', 'Home', 'Home', 'Home', '0', '1', '0', '1', '2014-08-28 00:00:00', '2014-09-08 18:32:52'),
(2, 'About Us', 'About Us', 'about-us', '<p>\r\n    About Us</p>\r\n', 'About Us', 'About Us', 'About Us', '1', '0', '1', '1', '2014-06-11 15:33:46', '2014-09-08 18:32:52'),
(3, 'Terms & Conditions', 'Terms & Conditions', 'terms-conditions', '<p>\r\n    Terms &amp; Conditions</p>\r\n', 'Terms & Conditions', 'Terms & Conditions', 'Terms & Conditions', '1', '0', '1', '1', '2014-06-11 17:59:58', '2014-09-08 18:32:52'),
(4, 'Delivery Information', 'Delivery Information', 'delivery-information', '<p>\r\n    Delivery Information</p>\r\n', 'Delivery Information', 'Delivery Information', 'Delivery Information', '1', '0', '1', '1', '2014-06-11 18:02:50', '2014-09-08 18:32:52'),
(5, 'Privacy Policy', 'Privacy Policy', 'privacy-policy', '<p>\r\n	Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Nam cursus. Morbi ut mi. Nullam enim leo, egestas id, condimentum at, laoreet mattis, massa. Sed eleifend nonummy diam. Praesent mauris ante, elementum et, bibendum at, posuere sit amet, nibh. Duis tincidunt lectus quis dui viverra vestibulum. Suspendisse vulputate aliquam dui. Nulla elementum dui ut augue. Aliquam vehicula mi at mauris. Maecenas placerat, nisl at consequat rhoncus, sem nunc gravida justo, quis eleifend arcu velit quis lacus. Morbi magna magna, tincidunt a, mattis non, imperdiet vitae, tellus. Sed odio est, auctor ac, sollicitudin in, consequat vitae, orci. Fusce id felis. Vivamus sollicitudin metus eget eros.</p>\r\n<h4 class="cms_heading">\r\n	Information we collect</h4>\r\n<p>\r\n	Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Nam cursus. Morbi ut mi. Nullam enim leo, egestas id, condimentum at, laoreet mattis, massa. Sed eleifend nonummy diam. Praesent mauris ante, elementum et, bibendum at, posuere sit amet, nibh. Duis tincidunt lectus quis dui viverra vestibulum. Suspendisse vulputate aliquam dui. Nulla elementum dui ut augue. Aliquam vehicula mi at mauris. Maecenas placerat, nisl at consequat rhoncus, sem nunc gravida justo, quis eleifend arcu velit quis lacus. Morbi magna magna, tincidunt a, mattis non, imperdiet vitae, tellus. Sed odio est, auctor ac, sollicitudin in, consequat vitae, orci. Fusce id felis. Vivamus sollicitudin metus eget eros. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Nam cursus. Morbi ut mi. Nullam enim leo, egestas id, condimentum at, laoreet mattis, massa. Sed eleifend nonummy diam. Praesent mauris ante, elementum et, bibendum at, posuere sit amet, nibh. Duis tincidunt lectus quis dui viverra vestibulum. Suspendisse vulputate aliquam dui. Nulla elementum dui ut augue. Aliquam vehicula mi at mauris.</p>\r\n<h4 class="cms_heading">\r\n	Personally Identifiable Information</h4>\r\n<p>\r\n	Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Nam cursus. Morbi ut mi. Nullam enim leo, egestas id, condimentum at, laoreet mattis, massa. Sed eleifend nonummy diam. Praesent mauris ante, elementum et, bibendum at, posuere sit amet, nibh. Duis tincidunt lectus quis dui viverra vestibulum. Suspendisse vulputate aliquam dui. Nulla elementum dui ut augue. Aliquam vehicula mi at mauris.</p>\r\n', 'Privacy Policy', 'Privacy Policy', 'Privacy Policy', '1', '0', '1', '0', '2014-08-28 00:00:00', '2014-09-09 12:48:39'),
(6, 'Sitemap', 'Sitemap', 'sitemap', '<p>\r\n Sitemap</p>\r\n', 'Sitemap', 'Sitemap', 'Sitemap', '1', '0', '1', '1', '2014-08-28 00:00:00', '2014-09-08 18:32:52'),
(7, 'Contact Us', 'Contact Us', 'contact-us', '<ul class="contact_inner">\r\n	<li>\r\n		<figure><img alt="" src="http://dev.iworklab.com/promosol/images/contact_img1.jpg" /> </figure>\r\n		<div class="contact_detail">\r\n			<h3>\r\n				Customer Service &amp; Support:</h3>\r\n			<p>\r\n				Email us at <a class="mailto" href="mailto:support@xxxxxxx.com">support@xxxxxxx.com</a> or Call us at 07877321321 (Monday - Friday), 10am to 6pm</p>\r\n		</div>\r\n	</li>\r\n	<li>\r\n		<figure><img alt="" src="http://dev.iworklab.com/promosol/images/contact_img2.jpg" /> </figure>\r\n		<div class="contact_detail">\r\n			<h3>\r\n				Business Opportunities &amp; Sales Enquiries:</h3>\r\n			<p>\r\n				Do get in touch with us at <a class="mailto" href="mailto:support@xxxxxxx.com">sales@xxxxxxx.com</a> Our representatives will contact you shortly to help you through.</p>\r\n		</div>\r\n	</li>\r\n	<li class="last">\r\n		<figure><img alt="" src="http://dev.iworklab.com/promosol/images/contact_img3.jpg" /> </figure>\r\n		<div class="contact_detail">\r\n			<h3>\r\n				Our Official Coordinates:</h3>\r\n			<p>\r\n				Plot No. 426, Brokslow - Phase 3, Lagos, Nigeria</p>\r\n			<p>\r\n				Tel: XXXXXXXXXX</p>\r\n			<p>\r\n				E-mail : <a class="mailto" href="mailto:support@xxxxxxx.com">support@xxxxxxx.com</a></p>\r\n		</div>\r\n	</li>\r\n</ul>\r\n', 'Contact Us', 'Contact Us', 'Contact Us', '1', '0', '1', '0', '2014-08-28 00:00:00', '2014-09-09 12:48:29'),
(8, 'Search Page', 'Search Page', 'search', 'Fashion industry is always looking for the latest trend to absorb it and then spread it to the rest of the world. This behaviour is also common in web design. So, when the worlds of fashion and Internet collide, we can expect to see websites that blend together the latest visual and technological trends. ', 'Search Page', 'Search Page', 'Search Page', '1', '1', '0', '1', '2014-08-29 00:00:00', '2014-09-08 18:32:52');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_configurations`
--

CREATE TABLE IF NOT EXISTS `tbl_configurations` (
  `pkConfigurationID` int(11) NOT NULL AUTO_INCREMENT,
  `configurationLicense` varchar(100) NOT NULL,
  `configurationContact` varchar(30) NOT NULL,
  `configurationEmail` varchar(255) NOT NULL,
  `configurationSocialLink1` varchar(255) NOT NULL COMMENT 'Facebook Link',
  `configurationSocialLink2` varchar(255) NOT NULL COMMENT 'Twitter Link',
  `configurationSocialLink3` varchar(255) NOT NULL COMMENT 'Linkedin Link',
  `configurationSocialLink4` varchar(255) NOT NULL COMMENT 'Google+ Link',
  `configurationSocialLink5` varchar(255) NOT NULL COMMENT 'Pinterest Link',
  `configurationSocialLink6` varchar(255) NOT NULL COMMENT 'Skype Link',
  `configurationPageLimit` int(11) NOT NULL COMMENT 'Admin Paging Limit',
  `configurationDateModified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pkConfigurationID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbl_configurations`
--

INSERT INTO `tbl_configurations` (`pkConfigurationID`, `configurationLicense`, `configurationContact`, `configurationEmail`, `configurationSocialLink1`, `configurationSocialLink2`, `configurationSocialLink3`, `configurationSocialLink4`, `configurationSocialLink5`, `configurationSocialLink6`, `configurationPageLimit`, `configurationDateModified`) VALUES
(1, '111/RT/43434', '+01 888 (000) 1234', 'awoofde@gmail.com', 'http://www.facebook.com', 'http://www.twitter.com', 'http://www.linkedin.com', 'http://plus.google.com', 'http://www.pinterest.com', 'http://skype.com', 5, '2014-09-09 13:00:39');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_country`
--

CREATE TABLE IF NOT EXISTS `tbl_country` (
  `pkCountryID` int(11) NOT NULL AUTO_INCREMENT,
  `countryName` varchar(255) NOT NULL,
  `countryStatus` enum('0','1','2') NOT NULL COMMENT '0=>Inactive,1=>active,2=>deleted',
  `countryDateAdded` datetime NOT NULL,
  `countryDateModified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pkCountryID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `tbl_country`
--

INSERT INTO `tbl_country` (`pkCountryID`, `countryName`, `countryStatus`, `countryDateAdded`, `countryDateModified`) VALUES
(1, 'India', '1', '0000-00-00 00:00:00', '2014-10-08 14:53:05'),
(2, 'America', '1', '0000-00-00 00:00:00', '2014-10-08 14:53:05'),
(3, 'Nepal', '1', '0000-00-00 00:00:00', '2014-10-08 14:53:05'),
(4, 'Japan', '1', '0000-00-00 00:00:00', '2014-10-08 14:53:05'),
(5, 'trrwere', '1', '0000-00-00 00:00:00', '2014-10-08 15:04:14'),
(6, 'ggggg', '1', '0000-00-00 00:00:00', '2014-10-08 15:06:29'),
(7, 'India2', '1', '0000-00-00 00:00:00', '2014-10-08 16:17:02'),
(8, 'India1', '1', '0000-00-00 00:00:00', '2014-10-08 16:18:43'),
(9, 'America1', '1', '0000-00-00 00:00:00', '2014-10-08 16:21:19');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_coupons`
--

CREATE TABLE IF NOT EXISTS `tbl_coupons` (
  `pkCouponID` bigint(20) NOT NULL AUTO_INCREMENT,
  `couponName` varchar(255) NOT NULL,
  `couponCode` varchar(255) NOT NULL,
  `couponType` enum('Flat','Percentage') NOT NULL,
  `couponDiscountVariable` decimal(10,2) NOT NULL,
  `couponMinimumPurchaseAmount` decimal(10,2) NOT NULL,
  `couponStartDate` date NOT NULL,
  `couponEndDate` date NOT NULL,
  `couponStatus` enum('0','1') NOT NULL,
  `couponAddDate` int(20) NOT NULL,
  `couponModifyDate` int(20) NOT NULL,
  PRIMARY KEY (`pkCouponID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `tbl_coupons`
--

INSERT INTO `tbl_coupons` (`pkCouponID`, `couponName`, `couponCode`, `couponType`, `couponDiscountVariable`, `couponMinimumPurchaseAmount`, `couponStartDate`, `couponEndDate`, `couponStatus`, `couponAddDate`, `couponModifyDate`) VALUES
(2, 'discount of 50', '121', 'Flat', '50.00', '0.00', '2014-10-01', '2014-11-06', '1', 1414752271, 1414756391);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_deals`
--

CREATE TABLE IF NOT EXISTS `tbl_deals` (
  `pkDealID` bigint(20) NOT NULL AUTO_INCREMENT,
  `dealName` varchar(255) NOT NULL,
  `dealID` varchar(255) NOT NULL,
  `fkUserID` int(11) NOT NULL,
  `fkCategoryID` int(11) NOT NULL,
  `dealAddress` varchar(255) NOT NULL,
  `dealCity` int(11) NOT NULL,
  `dealState` int(11) NOT NULL,
  `dealCountry` int(11) NOT NULL,
  `dealZip` int(8) NOT NULL,
  `dealUsageTimings` varchar(255) NOT NULL,
  `dealDescription` text NOT NULL,
  `dealHighlights` text NOT NULL,
  `dealFineprints` text NOT NULL,
  `dealAvailability` tinyint(1) NOT NULL,
  `dealQuantity` int(11) NOT NULL,
  `dealOriginalPrice` decimal(10,2) NOT NULL,
  `dealDiscount` int(3) NOT NULL,
  `dealPrice` decimal(10,2) NOT NULL,
  `dealSubject` varchar(255) NOT NULL,
  `dealStartDate` int(11) NOT NULL,
  `dealEndDate` int(11) NOT NULL,
  `dealStatus` enum('0','1') NOT NULL COMMENT '''0''=>Deactive, ''1''=> Active',
  `dealFeatured` enum('0','1') NOT NULL,
  `dealPopularity` int(11) NOT NULL,
  `dealOnMegaMenu` enum('0','1') NOT NULL,
  `dealAddDate` datetime NOT NULL,
  `dealModifiedDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pkDealID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=30 ;

--
-- Dumping data for table `tbl_deals`
--

INSERT INTO `tbl_deals` (`pkDealID`, `dealName`, `dealID`, `fkUserID`, `fkCategoryID`, `dealAddress`, `dealCity`, `dealState`, `dealCountry`, `dealZip`, `dealUsageTimings`, `dealDescription`, `dealHighlights`, `dealFineprints`, `dealAvailability`, `dealQuantity`, `dealOriginalPrice`, `dealDiscount`, `dealPrice`, `dealSubject`, `dealStartDate`, `dealEndDate`, `dealStatus`, `dealFeatured`, `dealPopularity`, `dealOnMegaMenu`, `dealAddDate`, `dealModifiedDate`) VALUES
(19, 'vcvc', 'deal_cnUOfLYhq1', 1, 13, 'F-2, Udhyog Nagar, New Delhi, Near Peeragarhi Metro Station', 6, 0, 0, 0, 'sdsd', 'sdsd', 'sdsd', 'sdsd', 1, 10, '22.00', 20, '17.60', '2', 1411324200, 1412101799, '1', '1', 0, '1', '2014-09-09 16:41:20', '2014-09-22 10:29:59'),
(21, 'asas', 'deal_rV599Z69UJ', 1, 14, 'gdfgf', 2, 0, 0, 0, 'dfgdfg', 'dfgdfg', 'gdfg', 'dfgfdg', 1, 5, '50.00', 25, '37.50', '3', 1411324200, 1417804199, '1', '1', 0, '0', '2014-09-09 16:59:15', '2014-10-08 17:51:34'),
(22, 'latest deal', 'deal_7zBTh1v3rv', 1, 14, 'gdfgdfg', 1, 0, 0, 0, 'dfgdfg', 'dfgdfg', 'dfgdfg', 'dfgdfg', 1, 3, '100.00', 35, '65.00', '3', 1413311400, 1417112999, '1', '1', 0, '0', '2014-09-10 16:38:29', '2014-10-20 11:21:14'),
(23, 'gfgfdg', 'deal_rqQ6XdD948', 1, 13, 'gfhgfh', 1, 0, 0, 0, 'gh', 'gh', 'hg', 'ghgh', 1, 5, '55.00', 15, '46.75', '2', 1411324200, 1416335399, '1', '0', 0, '0', '2014-09-10 16:39:22', '2014-10-20 11:21:27'),
(25, 'sdsd123', 'deal_66pP4Wc5lY', 1, 14, 'dsds', 6, 0, 0, 0, 'sdsd', 'sds', 'sdsd', 'sds', 1, 4, '444.00', 15, '377.40', '6', 1413397800, 1417026599, '1', '1', 0, '0', '2014-09-11 12:06:55', '2014-10-20 11:22:03'),
(26, 'sdsd123', 'deal_Qy775TjLs4', 1, 14, 'dsds', 6, 0, 0, 0, 'sdsd', 'sds', 'sdsd', 'sds', 1, 4, '444.00', 15, '377.40', '6', 1411324200, 1412015399, '1', '1', 0, '0', '2014-09-11 12:07:12', '2014-09-22 10:30:46'),
(27, 'test1234', 'deal_3TI70vWp9z', 1, 22, 'fdfdfdf', 9, 0, 0, 0, '6-10', 'fdfdf', 'dfdfd', 'fdf', 1, 44, '100.00', 20, '80.00', '3', 1411324200, 1411842599, '1', '1', 0, '0', '2014-09-11 12:09:19', '2014-09-22 10:30:34'),
(28, 'sdsdsd', 'deal_e85xG2srDA', 1, 15, 'dsdsd', 6, 0, 0, 0, 'sdsd', 'sdsd', 'sds', 'sdsd', 1, 23, '33.00', 30, '23.10', '6', 1411324200, 1412101799, '1', '1', 0, '1', '2014-09-11 12:17:23', '2014-09-22 10:30:22'),
(29, 'fdfdf', 'deal_u7CC7wGq2H', 1, 22, 'dfdf', 9, 0, 0, 0, 'dfdf', 'dfd', 'dfdf', 'dfdf', 1, 343, '44.00', 30, '30.80', '7', 1411324200, 1412101799, '1', '1', 0, '1', '2014-09-11 12:18:24', '2014-09-22 10:30:11');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_deals_images`
--

CREATE TABLE IF NOT EXISTS `tbl_deals_images` (
  `pkImageID` bigint(20) NOT NULL AUTO_INCREMENT,
  `fkDealID` bigint(20) NOT NULL,
  `dealImagePath` varchar(255) NOT NULL,
  `dealImageAlt` varchar(255) NOT NULL,
  `dealImageAddDate` datetime NOT NULL,
  `dealImageModifyDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pkImageID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

--
-- Dumping data for table `tbl_deals_images`
--

INSERT INTO `tbl_deals_images` (`pkImageID`, `fkDealID`, `dealImagePath`, `dealImageAlt`, `dealImageAddDate`, `dealImageModifyDate`) VALUES
(1, 1, 'feature-img-1.png', 'sdsd', '2014-08-27 11:59:51', '0000-00-00 00:00:00'),
(2, 2, 'feature-img-3.png', 'test', '2014-08-27 12:09:20', '0000-00-00 00:00:00'),
(3, 3, 'banner.jpg', 'Testing', '2014-08-27 19:41:11', '0000-00-00 00:00:00'),
(4, 4, 'banner-1.jpg', 'dfdsf', '2014-08-28 18:59:01', '0000-00-00 00:00:00'),
(6, 4, 'banner.jpg', 'dfdf', '2014-08-28 19:00:31', '0000-00-00 00:00:00'),
(8, 3, 'feature-img-5.png', 'testing2', '2014-09-02 15:38:09', '0000-00-00 00:00:00'),
(9, 3, 'feature-img-3.png', 'testing3', '2014-09-02 15:38:09', '0000-00-00 00:00:00'),
(10, 5, 'rays.png', 'asas', '2014-09-04 12:18:41', '0000-00-00 00:00:00'),
(11, 6, 'feature-img-2.png', 'xcxcfgf', '2014-09-04 12:19:49', '0000-00-00 00:00:00'),
(12, 7, 'feature-img-4.png', 'fgfg', '2014-09-04 12:20:36', '0000-00-00 00:00:00'),
(13, 8, 'feature-img-4.png', 'vcbvbv', '2014-09-09 15:49:55', '0000-00-00 00:00:00'),
(14, 19, 'BET-HIP-HOP-2012-HypeGirls-285x280.jpg', 'fgfg', '2014-09-09 16:41:20', '0000-00-00 00:00:00'),
(21, 21, 'BET-HIP-HOP-2012-HypeGirls-285x280.jpg', 'vxcvcv', '2014-09-10 14:15:21', '0000-00-00 00:00:00'),
(26, 21, 'Key-arrow-hotel001f-285x280.jpeg', 'fdfd', '2014-09-10 16:30:44', '0000-00-00 00:00:00'),
(17, 20, '46.png', 'fdsfds', '2014-09-09 17:31:36', '0000-00-00 00:00:00'),
(28, 23, 'Key-arrow-hotel001f-285x280.jpeg', 'hgfhgf', '2014-09-10 16:39:22', '0000-00-00 00:00:00'),
(27, 22, 'Key-arrow-hotel001f-285x280.jpeg', 'gfdgdfg', '2014-09-10 16:38:29', '0000-00-00 00:00:00'),
(29, 24, '1-a-walking-t10049-285x280.jpg', 'fdfdfdf', '2014-09-10 17:46:28', '0000-00-00 00:00:00'),
(30, 24, 'Key-arrow-hotel001f-285x280.jpeg', 'dfdf', '2014-09-10 17:46:28', '0000-00-00 00:00:00'),
(31, 24, '1-a-walking-t10049-285x280.jpg', 'cvcvc', '2014-09-10 17:47:02', '0000-00-00 00:00:00'),
(32, 26, 'BET-HIP-HOP-2012-HypeGirls-285x280.jpg', 'sdsds', '2014-09-11 12:07:12', '0000-00-00 00:00:00'),
(33, 27, 'Key-arrow-hotel001f-285x280.jpeg', 'fdfd', '2014-09-11 12:09:19', '0000-00-00 00:00:00'),
(34, 28, 'Key-arrow-hotel001f-285x280.jpeg', 'dsd', '2014-09-11 12:17:23', '0000-00-00 00:00:00'),
(35, 29, 'BET-HIP-HOP-2012-HypeGirls-285x280.jpg', 'dfdf', '2014-09-11 12:18:24', '0000-00-00 00:00:00'),
(36, 25, 'Key-arrow-hotel001f-285x280.jpeg', 'test', '2014-09-22 10:32:49', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_email_templates`
--

CREATE TABLE IF NOT EXISTS `tbl_email_templates` (
  `pkEmailID` int(11) NOT NULL AUTO_INCREMENT,
  `emailTitle` varchar(225) NOT NULL,
  `emailFromName` varchar(225) NOT NULL,
  `emailFromEmail` varchar(100) NOT NULL,
  `emailSubject` varchar(225) NOT NULL,
  `emailContent` text NOT NULL,
  `emailDateAdded` datetime NOT NULL,
  `emailDateUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pkEmailID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `tbl_email_templates`
--

INSERT INTO `tbl_email_templates` (`pkEmailID`, `emailTitle`, `emailFromName`, `emailFromEmail`, `emailSubject`, `emailContent`, `emailDateAdded`, `emailDateUpdated`) VALUES
(1, 'Forget password', 'Admin', 'admin@promosol.com', 'Password retrival mail', '<p>\r\nDear {to_name},<br />\r\nPlease click on below link to reset your password:<br />\r\n<a href="{password_reset_link}" target="_blank">{password_reset_link}</a><br />\r\n<br />\r\nRegards<br />\r\n', '2014-02-04 18:58:40', '2014-07-11 10:20:39'),
(2, 'Reset forget password', 'Admin', 'admin@promosol.com', 'updated password mail', '<p>\r\nDear {to_name},<br />\r\nYour Password has been changed successfully.<br />\r\nYour new password is: {new_password}<br />\r\n<br />\r\nRegards<br />\r\n', '2014-02-04 18:58:40', '2014-07-11 10:20:50'),
(3, 'Account Activation', 'Admin', 'admin@promosol.com', 'Account Activation from Promosol', '<p>\r\nDear {to_name},<br />\r\nTo activating your account please click on the below link.<br />\r\n<a href="{account_activation_link}" target="_blank">{account_activation_link}</a><br />\r\n<br />\r\nRegards<br />\r\n', '0000-00-00 00:00:00', '2014-09-17 10:07:03'),
(4, 'Welcome to Promosol', 'Promosol', 'admin@promosol.com', 'Welcome to Promosol', 'Dear {to_name},<br />\r\nYour account has been activated successfully.<br />\r\nWebsite Link: <a href=''{site_url}''>{site_url}</a><br/>\r\n<br />\r\nRegards<br />\r\nPromosol', '2014-09-17 10:53:34', '2014-09-17 10:58:22'),
(5, 'Customer Account Created By Admin', 'Admin', 'admin@admin.com', 'Your account created successfully.', 'Dear {to_name},<br /> Your account has been created successfully.<br /> Website Link: <a href=''{site_url}''>{site_url}</a><br/> Your login email address: {login_email}<br/> Your login password: {login_password}<br/> <br /> Regards<br /> Promosol', '2014-10-06 12:06:16', '2014-10-07 16:35:50');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_locations`
--

CREATE TABLE IF NOT EXISTS `tbl_locations` (
  `pklocationID` bigint(20) NOT NULL AUTO_INCREMENT,
  `fkParentLocationID` bigint(20) NOT NULL,
  `locationName` varchar(255) NOT NULL,
  `locationType` enum('Country','State','City') NOT NULL,
  `locationAddDate` datetime NOT NULL,
  PRIMARY KEY (`pklocationID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `tbl_locations`
--


-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE IF NOT EXISTS `tbl_order` (
  `pkOrderID` int(11) NOT NULL AUTO_INCREMENT,
  `orderTransactionID` varchar(255) NOT NULL COMMENT 'payment transaction id',
  `orderTransactionAmount` decimal(15,4) NOT NULL,
  `fkCustomerID` int(11) NOT NULL,
  `orderCustomerFirstName` varchar(255) NOT NULL,
  `orderCustomerLastName` varchar(255) NOT NULL,
  `orderCustomerEmail` varchar(255) NOT NULL,
  `orderCustomerPhone` varchar(50) NOT NULL,
  `orderBillingAddress1` varchar(256) NOT NULL,
  `orderBillingAddress2` varchar(256) NOT NULL,
  `orderBillingCountry` int(11) NOT NULL,
  `orderBillingState` int(11) NOT NULL,
  `orderBillingCity` int(11) NOT NULL,
  `orderBillingZipcode` varchar(8) NOT NULL,
  `orderBillingPhone` varchar(256) NOT NULL,
  `orderShippingAddress1` varchar(256) NOT NULL,
  `orderShippingAddress2` varchar(256) NOT NULL,
  `orderShippingCountry` int(11) NOT NULL,
  `orderShippingState` int(11) NOT NULL,
  `orderShippingCity` int(11) NOT NULL,
  `orderShippingZipcode` varchar(8) NOT NULL,
  `orderShippingPhone` varchar(256) NOT NULL,
  `orderCustomerComment` text NOT NULL,
  `orderStatus` enum('Canceled','Completed','Disputed','Pending','Posted') NOT NULL DEFAULT 'Pending',
  `orderDateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `orderDateUpdated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`pkOrderID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='order details' AUTO_INCREMENT=8 ;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`pkOrderID`, `orderTransactionID`, `orderTransactionAmount`, `fkCustomerID`, `orderCustomerFirstName`, `orderCustomerLastName`, `orderCustomerEmail`, `orderCustomerPhone`, `orderBillingAddress1`, `orderBillingAddress2`, `orderBillingCountry`, `orderBillingState`, `orderBillingCity`, `orderBillingZipcode`, `orderBillingPhone`, `orderShippingAddress1`, `orderShippingAddress2`, `orderShippingCountry`, `orderShippingState`, `orderShippingCity`, `orderShippingZipcode`, `orderShippingPhone`, `orderCustomerComment`, `orderStatus`, `orderDateAdded`, `orderDateUpdated`) VALUES
(7, '', '0.0000', 28, 'Vipin', 'Tomar', 'vipin.tomar@mail.vinove.com', '987654321', 'A-364(B)', 'New Ashokanagar', 1, 2, 1, '325465', '9876543221', 'A-162', 'New Delhi', 1, 3, 3, '6576887', '9876543456', '', 'Completed', '2014-10-27 16:28:48', '2014-10-27 16:28:48'),
(4, '', '0.0000', 28, 'Vipin', 'Tomar', 'vipin.tomar@mail.vinove.com', '987654321', 'A-364(B)', 'New Ashokanagar', 2, 5, 6, '325465', '9876543221', 'A-162', 'New Delhi', 1, 3, 3, '6576887', '9876543456', '', 'Pending', '2014-10-20 12:51:34', '2014-10-20 12:51:34'),
(5, '', '0.0000', 28, 'Vipin', 'Tomar', 'vipin.tomar@mail.vinove.com', '987654321', 'A-364(B)', 'New Ashokanagar', 2, 5, 6, '325465', '9876543221', 'A-162', 'New Delhi', 1, 3, 3, '6576887', '9876543456', '', 'Pending', '2014-10-20 14:29:52', '2014-10-20 14:29:52'),
(6, '', '0.0000', 28, 'Vipin', 'Tomar', 'vipin.tomar@mail.vinove.com', '987654321', 'A-364(B)', 'New Ashokanagar', 2, 5, 6, '325465', '9876543221', 'A-162', 'New Delhi', 1, 3, 3, '6576887', '9876543456', '', 'Pending', '2014-10-20 16:03:38', '2014-10-20 16:03:38');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order_item`
--

CREATE TABLE IF NOT EXISTS `tbl_order_item` (
  `pkOrderItemID` int(11) NOT NULL AUTO_INCREMENT,
  `fkOrderID` int(11) NOT NULL,
  `fkDealID` int(11) NOT NULL,
  `orderItemName` varchar(255) NOT NULL,
  `orderItemPrice` decimal(15,4) NOT NULL,
  `orderItemQuantity` int(11) NOT NULL,
  `orderItemTotalPrice` decimal(15,4) NOT NULL,
  `orderItemStatus` enum('Canceled','Completed','Pending','Posted') NOT NULL,
  `orderItemDateAdded` datetime NOT NULL,
  PRIMARY KEY (`pkOrderItemID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `tbl_order_item`
--

INSERT INTO `tbl_order_item` (`pkOrderItemID`, `fkOrderID`, `fkDealID`, `orderItemName`, `orderItemPrice`, `orderItemQuantity`, `orderItemTotalPrice`, `orderItemStatus`, `orderItemDateAdded`) VALUES
(1, 1, 21, 'asas', '37.5000', 1, '37.5000', 'Pending', '2014-10-20 12:12:15'),
(2, 1, 25, 'sdsd123', '377.4000', 1, '377.4000', 'Pending', '2014-10-20 12:12:15'),
(3, 2, 21, 'asas', '37.5000', 2, '75.0000', 'Pending', '2014-10-20 12:13:34'),
(4, 2, 25, 'sdsd123', '377.4000', 3, '1132.2000', 'Pending', '2014-10-20 12:13:34'),
(5, 3, 23, 'gfgfdg', '46.7500', 1, '46.7500', 'Pending', '2014-10-20 12:44:11'),
(6, 4, 21, 'asas', '37.5000', 1, '37.5000', 'Pending', '2014-10-20 12:51:34'),
(7, 4, 22, 'latest deal', '65.0000', 1, '65.0000', 'Pending', '2014-10-20 12:51:34'),
(8, 5, 21, 'asas', '37.5000', 4, '150.0000', 'Pending', '2014-10-20 14:29:52'),
(9, 5, 22, 'latest deal', '65.0000', 2, '130.0000', 'Pending', '2014-10-20 14:29:52'),
(10, 6, 21, 'asas', '37.5000', 1, '37.5000', 'Pending', '2014-10-20 16:03:38'),
(13, 7, 21, 'asas', '37.5000', 1, '37.5000', 'Pending', '2014-10-27 16:28:48'),
(12, 6, 25, 'sdsd123', '377.4000', 3, '1132.2000', 'Pending', '2014-10-20 16:03:57');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_password_reset`
--

CREATE TABLE IF NOT EXISTS `tbl_password_reset` (
  `pkPassResetID` int(11) NOT NULL AUTO_INCREMENT,
  `fkUserID` int(11) NOT NULL,
  `passResetToken` varchar(100) NOT NULL,
  `passResetCreated` int(20) NOT NULL,
  `passResetExpires` int(20) NOT NULL,
  `passResetStatus` enum('0','1') NOT NULL,
  `passResetDateAdded` datetime NOT NULL,
  PRIMARY KEY (`pkPassResetID`),
  KEY `fkUserID` (`fkUserID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `tbl_password_reset`
--


-- --------------------------------------------------------

--
-- Table structure for table `tbl_reviews`
--

CREATE TABLE IF NOT EXISTS `tbl_reviews` (
  `pkReviewID` bigint(20) NOT NULL AUTO_INCREMENT,
  `fkDealID` bigint(20) NOT NULL,
  `fkUserID` bigint(20) NOT NULL,
  `nickname` varchar(255) NOT NULL,
  `reviewSubject` varchar(255) NOT NULL,
  `reviewContent` text NOT NULL,
  `reviewStatus` enum('0','1') NOT NULL COMMENT '0=>Approved, 1=>Unapproved',
  `reviewAddDate` int(20) NOT NULL,
  `reviewActionDate` int(20) NOT NULL,
  PRIMARY KEY (`pkReviewID`),
  KEY `fkDealID` (`fkDealID`),
  KEY `fkUserID` (`fkUserID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tbl_reviews`
--

INSERT INTO `tbl_reviews` (`pkReviewID`, `fkDealID`, `fkUserID`, `nickname`, `reviewSubject`, `reviewContent`, `reviewStatus`, `reviewAddDate`, `reviewActionDate`) VALUES
(4, 21, 28, 'Vipy', 'Good Deal', 'Fantastic Deal', '0', 1412862470, 2014);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_settings`
--

CREATE TABLE IF NOT EXISTS `tbl_settings` (
  `settingID` int(11) NOT NULL,
  `settingParameter` varchar(255) NOT NULL,
  `settingValue` varchar(255) NOT NULL,
  `settingModifyDate` int(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_settings`
--

INSERT INTO `tbl_settings` (`settingID`, `settingParameter`, `settingValue`, `settingModifyDate`) VALUES
(1, 'Number of Pages', '10', 0),
(2, 'Notification Email', 'swati.dubey@mail.vinove.com', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_state`
--

CREATE TABLE IF NOT EXISTS `tbl_state` (
  `pkStateID` int(11) NOT NULL AUTO_INCREMENT,
  `stateName` varchar(255) NOT NULL,
  `fkCountryID` int(11) NOT NULL,
  `stateStatus` enum('0','1','2') NOT NULL COMMENT '0=>Inactive, 1=>Active,2=>Deleted',
  `stateDateAdded` datetime NOT NULL,
  `stateDateModified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pkStateID`),
  KEY `fkCountryID` (`fkCountryID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `tbl_state`
--

INSERT INTO `tbl_state` (`pkStateID`, `stateName`, `fkCountryID`, `stateStatus`, `stateDateAdded`, `stateDateModified`) VALUES
(2, 'Uttarakhand', 1, '1', '0000-00-00 00:00:00', '2014-10-08 17:16:02'),
(3, 'Uttar Pradesh', 1, '1', '0000-00-00 00:00:00', '2014-10-08 17:29:37'),
(4, 'Bihar', 1, '0', '0000-00-00 00:00:00', '2014-10-08 17:31:07'),
(5, 'Washington', 2, '1', '0000-00-00 00:00:00', '2014-10-08 18:14:28');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE IF NOT EXISTS `tbl_users` (
  `pkUserID` bigint(20) NOT NULL AUTO_INCREMENT,
  `fkUserLoginID` int(11) NOT NULL,
  `userFirstName` varchar(255) NOT NULL,
  `userLastName` varchar(255) NOT NULL,
  `userEmail` varchar(255) NOT NULL,
  `userPhone` varchar(255) NOT NULL,
  `userGender` enum('Male','Female') NOT NULL,
  `userDateOfBirth` datetime NOT NULL,
  `userStatus` enum('0','1') NOT NULL,
  `userBillingAddress1` varchar(255) NOT NULL,
  `userBillingAddress2` varchar(255) NOT NULL,
  `userBillingCity` int(11) NOT NULL,
  `userBillingState` int(11) NOT NULL,
  `userBillingCountry` int(11) NOT NULL,
  `userBillingZip` int(8) NOT NULL,
  `userShippingAddress1` varchar(255) NOT NULL,
  `userShippingAddress2` varchar(255) NOT NULL,
  `userShippingCity` int(11) NOT NULL,
  `userShippingState` int(11) NOT NULL,
  `userShippingCountry` int(11) NOT NULL,
  `userShippingZip` int(8) NOT NULL,
  `userBillingPhone` varchar(255) NOT NULL,
  `userShippingPhone` varchar(255) NOT NULL,
  `userAccountActivationToken` varchar(255) NOT NULL,
  `userDateAdded` datetime NOT NULL,
  `userDateModified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pkUserID`),
  KEY `fkUserLoginID` (`fkUserLoginID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=33 ;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`pkUserID`, `fkUserLoginID`, `userFirstName`, `userLastName`, `userEmail`, `userPhone`, `userGender`, `userDateOfBirth`, `userStatus`, `userBillingAddress1`, `userBillingAddress2`, `userBillingCity`, `userBillingState`, `userBillingCountry`, `userBillingZip`, `userShippingAddress1`, `userShippingAddress2`, `userShippingCity`, `userShippingState`, `userShippingCountry`, `userShippingZip`, `userBillingPhone`, `userShippingPhone`, `userAccountActivationToken`, `userDateAdded`, `userDateModified`) VALUES
(28, 3, 'Vipin', 'Tomar', 'vipin.tomar@mail.vinove.com', '987654321', 'Male', '1988-04-08 00:00:00', '1', 'A-364(B)', 'New Ashokanagar', 6, 5, 2, 325465, 'A-162', 'New Delhi', 3, 3, 1, 6576887, '9876543221', '9876543456', '', '2014-10-07 17:10:52', '2014-10-27 16:37:22'),
(29, 4, 'fdsfd', 'dfdsf', 'test@test.com', 'dsfds', 'Male', '2000-01-06 00:00:00', '1', 'New Delhi', 'New Delhi', 6, 5, 2, 34324324, 'New Delhi', 'New Delhi', 7, 5, 2, 32432432, '9876554321', '1234567890', '', '2014-10-09 10:55:53', '2014-10-09 18:21:14'),
(31, 6, 'akhilesh', 'kumar', 'sandeep.sharma@mail.vinove.com', '2121212121212', 'Male', '0000-00-00 00:00:00', '0', '', '', 0, 0, 0, 0, '', '', 0, 0, 0, 0, '', '', 'MC42NDUxMjgwMCAxNDEzNTQzNTg3NTQ0MGY2YTM5ZDg1MA==', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 7, 'Vipin', 'Tomar', 'vipin.tomar1@mail.vinove.com', '', 'Male', '0000-00-00 00:00:00', '0', '', '', 0, 0, 0, 0, '', '', 0, 0, 0, 0, '', '', 'MC43MjA0MzcwMCAxNDEzNTQzNzYzNTQ0MGY3NTNhZmU4ZA==', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users_login`
--

CREATE TABLE IF NOT EXISTS `tbl_users_login` (
  `pkUserLoginID` int(11) NOT NULL AUTO_INCREMENT,
  `userEmail` varchar(255) NOT NULL,
  `userPassword` varchar(255) NOT NULL,
  `userType` enum('A','C','M') NOT NULL COMMENT 'A=Admin C=Customer M=Merchant',
  `userDateModified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pkUserLoginID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `tbl_users_login`
--

INSERT INTO `tbl_users_login` (`pkUserLoginID`, `userEmail`, `userPassword`, `userType`, `userDateModified`) VALUES
(1, 'vipin.tomar@mail.vinove.com', 'e10adc3949ba59abbe56e057f20f883e', 'A', '2014-10-07 16:53:03'),
(3, 'vipin.tomar@mail.vinove.com', 'e10adc3949ba59abbe56e057f20f883e', 'C', '2014-10-07 17:10:52'),
(4, 'test@test.com', '81dc9bdb52d04dc20036dbd8313ed055', 'C', '2014-10-09 10:55:53'),
(5, 'akhilesh.jha@mail.vinove.com', '827ccb0eea8a706c4c34a16891f84e7b', 'C', '2014-10-17 16:04:13'),
(6, 'sandeep.sharma@mail.vinove.com', 'e10adc3949ba59abbe56e057f20f883e', 'C', '2014-10-17 16:29:47'),
(7, 'vipin.tomar1@mail.vinove.com', '827ccb0eea8a706c4c34a16891f84e7b', 'C', '2014-10-17 16:32:43');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_admin_access_log`
--
ALTER TABLE `tbl_admin_access_log`
  ADD CONSTRAINT `tbl_admin_access_log_ibfk_1` FOREIGN KEY (`fkAdminID`) REFERENCES `tbl_users_login` (`pkUserLoginID`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_cities`
--
ALTER TABLE `tbl_cities`
  ADD CONSTRAINT `tbl_cities_ibfk_1` FOREIGN KEY (`fkStateID`) REFERENCES `tbl_state` (`pkStateID`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_password_reset`
--
ALTER TABLE `tbl_password_reset`
  ADD CONSTRAINT `tbl_password_reset_ibfk_1` FOREIGN KEY (`fkUserID`) REFERENCES `tbl_users_login` (`pkUserLoginID`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_reviews`
--
ALTER TABLE `tbl_reviews`
  ADD CONSTRAINT `tbl_reviews_ibfk_1` FOREIGN KEY (`fkUserID`) REFERENCES `tbl_users` (`pkUserID`) ON DELETE CASCADE,
  ADD CONSTRAINT `tbl_reviews_ibfk_2` FOREIGN KEY (`fkDealID`) REFERENCES `tbl_deals` (`pkDealID`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_state`
--
ALTER TABLE `tbl_state`
  ADD CONSTRAINT `tbl_state_ibfk_1` FOREIGN KEY (`fkCountryID`) REFERENCES `tbl_country` (`pkCountryID`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD CONSTRAINT `tbl_users_ibfk_1` FOREIGN KEY (`fkUserLoginID`) REFERENCES `tbl_users_login` (`pkUserLoginID`) ON DELETE CASCADE;
