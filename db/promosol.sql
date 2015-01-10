-- phpMyAdmin SQL Dump
-- version 3.3.2deb1ubuntu1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 12, 2014 at 12:29 PM
-- Server version: 5.1.69
-- PHP Version: 5.3.2-1ubuntu4.24

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
-- Table structure for table `tbl_admin`
--

CREATE TABLE IF NOT EXISTS `tbl_admin` (
  `pkUserID` int(11) NOT NULL AUTO_INCREMENT,
  `adminUserName` varchar(255) NOT NULL,
  `adminEmail` varchar(255) NOT NULL,
  `adminPassword` varchar(255) NOT NULL,
  `adminStatus` enum('0','1') NOT NULL COMMENT '0=Inactive 1=Active',
  `adminDateAdded` datetime NOT NULL,
  `adminDateModified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pkUserID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`pkUserID`, `adminUserName`, `adminEmail`, `adminPassword`, `adminStatus`, `adminDateAdded`, `adminDateModified`) VALUES
(1, 'admin', 'vipin.tomar@mail.vinove.com', 'e10adc3949ba59abbe56e057f20f883e', '1', '2014-04-28 12:56:23', '2014-08-11 16:56:07');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `tbl_admin_access_log`
--


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
  `bannerStatus` enum('0','1') NOT NULL,
  `bannerDateAdded` datetime NOT NULL,
  `bannerDateModified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pkBannerID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tbl_banner_slider`
--

INSERT INTO `tbl_banner_slider` (`pkBannerID`, `bannerTitle`, `bannerTagLine`, `bannerImage`, `bannerAltTag`, `bannerOrder`, `bannerStatus`, `bannerDateAdded`, `bannerDateModified`) VALUES
(3, 'Test banner', '', 'psg-200x110.png', 'Test banner', 3, '1', '2014-06-13 17:51:47', '2014-06-13 17:52:03');

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
  `categoryDescription` text NOT NULL,
  `categoryStatus` enum('0','1','2') NOT NULL COMMENT '0=InActive 1=Active 2=Delete',
  `categoryDateAdded` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `categoryDateModified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pkCategoryID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tbl_categories`
--

INSERT INTO `tbl_categories` (`pkCategoryID`, `fkParentCategoryID`, `categoryLevel`, `categoryHierarchy`, `categoryName`, `categoryDescription`, `categoryStatus`, `categoryDateAdded`, `categoryDateModified`) VALUES
(1, 0, 0, '1', 'Cat-1', 'Test Category', '1', '2014-08-12 10:06:22', '2014-08-12 10:06:30'),
(2, 1, 1, '1,2', 'Cate-2', 'Test Category', '1', '2014-08-12 10:07:22', '2014-08-12 10:07:22');

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
  `cmsStatus` enum('0','1') NOT NULL COMMENT '0=Inactive | 1=Active',
  `cmsDateAdded` datetime NOT NULL,
  `cmsDateModified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pkCmsID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `tbl_cms`
--

INSERT INTO `tbl_cms` (`pkCmsID`, `cmsDisplayTitle`, `cmsPageTitle`, `cmsSlug`, `cmsContent`, `cmsMetaTitle`, `cmsMetaKeywords`, `cmsMetaDescription`, `cmsStatus`, `cmsDateAdded`, `cmsDateModified`) VALUES
(3, 'About Us', 'About Us Title', 'about-us', '<h3 style="color:blue;">\r\n	<strong>Vipin Tomar About Us<br />\r\n	</strong></h3>\r\n', 'Test Meta Title', 'Test Meta Keyword', 'Test Meta Description', '1', '2014-06-10 17:42:40', '2014-08-11 16:54:59'),
(4, 'asas', 'asasa', 'asas', '<p>\r\n	asasas</p>\r\n', 'asas', 'asas', 'asas', '1', '2014-06-11 15:33:46', '2014-08-11 16:54:59'),
(5, 'sdsdsd', 'sdsdsd', 'sdsdsds', '<p>\r\n	sdsdsdsdsd</p>\r\n', 'sdsd', 'sdsds', 'sdsdsdsd', '1', '2014-06-11 17:59:58', '2014-08-11 16:54:59'),
(6, 'asas', 'asas', 'asasa', '<p>\r\n	asas</p>\r\n', 'asas', 'asas', 'asas', '1', '2014-06-11 18:02:50', '2014-08-11 16:54:59');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_configurations`
--

CREATE TABLE IF NOT EXISTS `tbl_configurations` (
  `pkConfigurationID` int(11) NOT NULL AUTO_INCREMENT,
  `configurationLicense` varchar(100) NOT NULL,
  `configurationContact` varchar(30) NOT NULL,
  `configurationSocialLink1` varchar(255) NOT NULL,
  `configurationSocialImage1` varchar(255) NOT NULL,
  `configurationSocialLinkStatus1` enum('0','1') NOT NULL COMMENT '0=>Inactive,1=>Active',
  `configurationSocialLink2` varchar(255) NOT NULL,
  `configurationSocialImage2` varchar(255) NOT NULL,
  `configurationSocialLinkStatus2` enum('0','1') NOT NULL COMMENT '0=>Inactive,1=>Active',
  `configurationSocialLink3` varchar(255) NOT NULL,
  `configurationSocialImage3` varchar(255) NOT NULL,
  `configurationSocialLinkStatus3` enum('0','1') NOT NULL COMMENT '0=>Inactive,1=>Active',
  `configurationDateModified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pkConfigurationID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbl_configurations`
--

INSERT INTO `tbl_configurations` (`pkConfigurationID`, `configurationLicense`, `configurationContact`, `configurationSocialLink1`, `configurationSocialImage1`, `configurationSocialLinkStatus1`, `configurationSocialLink2`, `configurationSocialImage2`, `configurationSocialLinkStatus2`, `configurationSocialLink3`, `configurationSocialImage3`, `configurationSocialLinkStatus3`, `configurationDateModified`) VALUES
(1, '3131/RWP/2011', '+92(51)4454178', '', '', '0', '', '', '0', '', '', '0', '2014-05-01 15:48:36');

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
  `couponStartDate` int(20) NOT NULL,
  `couponEndDate` int(20) NOT NULL,
  `couponStatus` enum('0','1') NOT NULL,
  `couponAddDate` int(20) NOT NULL,
  `couponModifyDate` int(20) NOT NULL,
  PRIMARY KEY (`pkCouponID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `tbl_coupons`
--


-- --------------------------------------------------------

--
-- Table structure for table `tbl_deals`
--

CREATE TABLE IF NOT EXISTS `tbl_deals` (
  `pkDealID` bigint(20) NOT NULL AUTO_INCREMENT,
  `dealName` varchar(255) NOT NULL,
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
  `dealDiscount` decimal(5,2) NOT NULL,
  `dealPrice` decimal(10,2) NOT NULL,
  `dealSubject` varchar(255) NOT NULL,
  `dealStartDate` int(20) NOT NULL,
  `dealEndDate` int(20) NOT NULL,
  `dealStatus` enum('0','1') NOT NULL,
  `dealFeatured` enum('0','1') NOT NULL,
  `dealPopularity` int(11) NOT NULL,
  `dealOnMegaMenu` enum('0','1') NOT NULL,
  `dealAddDate` int(20) NOT NULL,
  `dealModifiedDate` int(20) NOT NULL,
  PRIMARY KEY (`pkDealID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `tbl_deals`
--


-- --------------------------------------------------------

--
-- Table structure for table `tbl_deals_images`
--

CREATE TABLE IF NOT EXISTS `tbl_deals_images` (
  `pkImageID` bigint(20) NOT NULL AUTO_INCREMENT,
  `fkDealID` bigint(20) NOT NULL,
  `dealImagePath` varchar(255) NOT NULL,
  `dealImageAlt` varchar(255) NOT NULL,
  `dealImageAddDate` int(20) NOT NULL,
  `dealImageModifyDate` int(20) NOT NULL,
  PRIMARY KEY (`pkImageID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `tbl_deals_images`
--


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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tbl_email_templates`
--

INSERT INTO `tbl_email_templates` (`pkEmailID`, `emailTitle`, `emailFromName`, `emailFromEmail`, `emailSubject`, `emailContent`, `emailDateAdded`, `emailDateUpdated`) VALUES
(1, 'Forget password', 'Admin', 'admin@promosol.com', 'Password retrival mail', '<p>\r\nDear {to_name},<br />\r\nPlease click on below link to reset your password:<br />\r\n<a href="{password_reset_link}" target="_blank">{password_reset_link}</a><br />\r\n<br />\r\nRegards<br />\r\n', '2014-02-04 18:58:40', '2014-07-11 10:20:39'),
(2, 'Reset forget password', 'Admin', 'admin@promosol.com', 'updated password mail', '<p>\r\nDear {to_name},<br />\r\nYour Password has been changed successfully.<br />\r\nYour new password is: {new_password}<br />\r\n<br />\r\nRegards<br />\r\n', '2014-02-04 18:58:40', '2014-07-11 10:20:50'),
(3, 'Assignment Published Successfully', 'Admin', 'admin@promosol.com', 'Successfull Publish of an assignment', '<p>\r\nDear {to_name},<br />\r\nYour Password has been changed successfully.<br />\r\nYou cna check this Assignment at following URL: <br/>{assignment_link}<br />\r\n<br />\r\nRegards<br />\r\n', '2014-05-28 13:21:29', '2014-07-11 10:20:56');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `tbl_password_reset`
--

INSERT INTO `tbl_password_reset` (`pkPassResetID`, `fkUserID`, `passResetToken`, `passResetCreated`, `passResetExpires`, `passResetStatus`, `passResetDateAdded`) VALUES
(1, 1, '5U5POAVA3N1402391775', 1402391775, 1402392615, '0', '2014-06-10 14:46:15'),
(2, 1, 'BT157FR0M11402391847', 1402391847, 1402392615, '0', '2014-06-10 14:47:27'),
(3, 1, '2HNI33UVZK1402391988', 1402391988, 1402392615, '0', '2014-06-10 14:49:48'),
(4, 1, 'QSILSY3EFZ1402393274', 1402393274, 1402393305, '0', '2014-06-10 15:11:14'),
(5, 1, '4OW5YBEOUB1402393511', 1402393511, 1402393523, '0', '2014-06-10 15:15:11'),
(6, 1, 'Z9LPHQO8FU1402563877', 1402563877, 1402563896, '0', '2014-06-12 14:34:37'),
(7, 1, 'Q834YUKG591405054100', 1405054100, 1405402005, '0', '2014-07-11 10:18:20'),
(8, 1, '2FUSJFGYSJ1405332412', 1405332412, 1405402005, '0', '2014-07-14 15:36:52'),
(9, 1, '5MI39ZAER21405401992', 1405401992, 1405402005, '0', '2014-07-15 10:56:32'),
(10, 1, 'G7I077A7ER1407756346', 1407756346, 1407756367, '0', '2014-08-11 16:55:46'),
(11, 1, 'IB5O0SZ3F11407756430', 1407756430, 0, '1', '2014-08-11 16:57:10');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_reviews`
--

CREATE TABLE IF NOT EXISTS `tbl_reviews` (
  `pkReviewID` bigint(20) NOT NULL AUTO_INCREMENT,
  `fkDealID` bigint(20) NOT NULL,
  `fkUserID` bigint(20) NOT NULL,
  `reviewContent` text NOT NULL,
  `reviewStatus` enum('0','1','2') NOT NULL,
  `reviewAddDate` int(20) NOT NULL,
  `reviewActionDate` int(20) NOT NULL,
  PRIMARY KEY (`pkReviewID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `tbl_reviews`
--


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
-- Table structure for table `tbl_users`
--

CREATE TABLE IF NOT EXISTS `tbl_users` (
  `pkUserID` bigint(20) NOT NULL AUTO_INCREMENT,
  `userFirstName` varchar(255) NOT NULL,
  `userLastName` varchar(255) NOT NULL,
  `userEmail` varchar(255) NOT NULL,
  `userPassword` varchar(255) NOT NULL,
  `userPhone` varchar(255) NOT NULL,
  `userGender` enum('Male','Female') NOT NULL,
  `userDateOfBirth` int(20) NOT NULL,
  `userStatus` enum('0','1') NOT NULL,
  `userAddDate` int(20) NOT NULL,
  `userModifyDate` int(20) NOT NULL,
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
  PRIMARY KEY (`pkUserID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `tbl_users`
--


--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_admin_access_log`
--
ALTER TABLE `tbl_admin_access_log`
  ADD CONSTRAINT `tbl_admin_access_log_ibfk_1` FOREIGN KEY (`fkAdminID`) REFERENCES `tbl_admin` (`pkUserID`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_password_reset`
--
ALTER TABLE `tbl_password_reset`
  ADD CONSTRAINT `tbl_password_reset_ibfk_1` FOREIGN KEY (`fkUserID`) REFERENCES `tbl_admin` (`pkUserID`) ON DELETE CASCADE;
