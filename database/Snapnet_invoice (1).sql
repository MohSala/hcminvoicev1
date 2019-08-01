-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 01, 2019 at 05:24 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.2.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Snapnet_invoice`
--

-- --------------------------------------------------------

--
-- Table structure for table `invoice_reviews`
--

CREATE TABLE `invoice_reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `stage_id` int(11) NOT NULL DEFAULT '0',
  `invoice_id` int(11) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8mb4_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoice_reviews`
--

INSERT INTO `invoice_reviews` (`id`, `stage_id`, `invoice_id`, `comment`, `status`, `created_at`, `updated_at`) VALUES
(64, 5, 139, NULL, 1, '2019-02-18 23:00:00', '2019-02-19 06:44:02'),
(65, 0, 0, NULL, 0, '2019-02-19 06:41:26', '2019-02-19 06:41:26');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(10) NOT NULL,
  `rate` int(40) DEFAULT '1',
  `currency` varchar(100) DEFAULT 'naira',
  `productName` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `quantity` int(40) NOT NULL,
  `unitcost` decimal(11,2) NOT NULL,
  `discount` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `total` decimal(40,0) NOT NULL,
  `dtotal` decimal(11,2) DEFAULT '0.00',
  `subtotal` decimal(40,0) DEFAULT '0',
  `servicetotal` decimal(40,0) NOT NULL DEFAULT '0',
  `vattotal` decimal(40,0) NOT NULL DEFAULT '0',
  `gtotal` decimal(40,0) NOT NULL DEFAULT '0',
  `org_id` int(10) DEFAULT NULL,
  `invoice_id` int(10) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `rate`, `currency`, `productName`, `description`, `quantity`, `unitcost`, `discount`, `total`, `dtotal`, `subtotal`, `servicetotal`, `vattotal`, `gtotal`, `org_id`, `invoice_id`, `created_at`, `updated_at`) VALUES
(373, 1, 'naira', 'Microsoft Magic', 'Office magic for Produce', 2, '50000.00', '0.0000', '0', '0.00', '0', '0', '0', '0', 0, 0, '2019-02-12 16:11:20', '2019-02-12 16:11:20'),
(374, 1, 'naira', 'Microsoft Office ', 'NAV system for microsoft Dynamics', 2, '400000.00', '0.0000', '0', '0.00', '0', '0', '0', '0', 0, 0, '2019-02-12 16:11:20', '2019-02-12 16:11:20'),
(375, 1, 'naira', 'Microsoft Magic', 'NAV system for microsoft Dynamics', 1, '5000.00', '0.0000', '5000', '0.00', '0', '0', '0', '0', NULL, NULL, '2019-02-14 11:36:33', '2019-02-14 11:36:33'),
(376, 1, 'naira', 'Microsoft Magic', 'Office magic for Produce', 1, '4000.00', '0.0000', '4000', '0.00', '0', '0', '0', '0', NULL, NULL, '2019-02-14 11:36:49', '2019-02-14 11:36:49'),
(377, 1, 'naira', 'Microsoft Office', 'Office magic for Produce', 1, '500.00', '0.0000', '500', '0.00', '0', '0', '0', '0', NULL, NULL, '2019-02-14 11:45:13', '2019-02-14 11:45:13'),
(378, 1, 'naira', 'Microsoft Office', 'NAV system for microsoft Dynamics', 1, '2000.00', '0.0000', '2000', '0.00', '0', '0', '0', '0', NULL, NULL, '2019-02-14 11:46:21', '2019-02-14 11:46:21'),
(379, 1, 'naira', 'Microsoft Magic', 'Office magic for Produce', 2, '5000.00', '0.0000', '10000', '0.00', '0', '0', '0', '0', NULL, 139, '2019-02-14 11:52:56', '2019-02-14 11:52:56'),
(380, 1, 'naira', 'Microsoft Magic', 'Office magic for Produce', 6, '3444.00', '0.0000', '20664', '0.00', '0', '0', '0', '0', NULL, 139, '2019-02-14 11:55:42', '2019-02-14 11:55:42'),
(381, 1, 'naira', 'Microsoft Magic', 'Office magic for Produce', 6, '3444.00', '0.0000', '20664', '0.00', '0', '0', '0', '0', NULL, 139, '2019-02-14 11:56:08', '2019-02-14 11:56:08'),
(382, 1, 'naira', 'Microsoft Magic', 'Office magic for Produce', 6, '3444.00', '0.0000', '20664', '0.00', '0', '0', '0', '0', NULL, 139, '2019-02-14 11:56:23', '2019-02-14 11:56:23'),
(383, 1, 'naira', 'Microsoft Magic', 'NAV system for microsoft Dynamics', 1, '30000.00', '0.0000', '30000', '0.00', '0', '0', '0', '0', NULL, 139, '2019-02-14 12:40:45', '2019-02-14 12:40:45'),
(384, 1, 'naira', 'Microsoft Office', 'Dynamics Nav for All Platforms', 1, '12000.00', '0.0000', '12000', '0.00', '0', '0', '0', '0', NULL, 139, '2019-02-14 12:41:23', '2019-02-14 12:41:23'),
(385, 1, 'naira', 'Microsoft NAV', 'Office magic for Produce', 2, '5000.00', '0.0000', '10000', '0.00', '0', '0', '0', '0', NULL, 139, '2019-02-14 13:59:17', '2019-02-14 13:59:17'),
(386, 1, 'naira', 'Microsoft Magic', 'Office magic for Produce', 1, '5000.00', '0.0000', '5000', '0.00', '0', '0', '0', '0', NULL, 136, '2019-02-14 15:46:22', '2019-02-14 15:46:22'),
(387, 1, 'naira', 'Microsoft Office', 'NAV system for microsoft Dynamics', 1, '5000.00', '0.0000', '5000', '0.00', '0', '0', '0', '0', NULL, NULL, '2019-02-14 15:47:14', '2019-02-15 07:52:43'),
(388, 1, 'naira', 'Microsoft Magic', 'Office magic for Produce', 2, '30000.00', '0.0000', '60000', '0.00', '0', '0', '0', '0', NULL, 140, '2019-02-14 18:57:05', '2019-02-14 18:57:05'),
(389, 1, 'naira', 'Microsoft Magic', 'Office magic for Produce', 2, '30000.00', '0.0000', '60000', '0.00', '0', '0', '0', '0', NULL, 140, '2019-02-14 18:58:13', '2019-02-14 18:58:13'),
(390, 1, 'naira', 'Microsoft Magic', 'Office magic for Produce', 3, '3000.00', '20.0000', '9000', '0.00', '0', '0', '0', '0', NULL, 140, '2019-02-18 06:44:55', '2019-02-18 06:44:55'),
(391, 1, 'naira', 'Microsoft Office', 'Office magic for Produce', 3, '3000.00', '20.0000', '9000', '0.00', '0', '0', '0', '0', NULL, 140, '2019-02-18 06:46:13', '2019-02-18 06:46:13'),
(392, 1, 'naira', 'Microsoft Magic', 'NAV system for microsoft Dynamics', 2, '4000.00', '10.0000', '8000', '0.00', '0', '0', '0', '0', NULL, 140, '2019-02-18 06:48:52', '2019-02-18 06:48:52'),
(393, 1, 'naira', 'Microsoft Magic', 'Office magic for Produce', 1, '4000.00', '10.0000', '4000', '0.00', '0', '0', '0', '0', NULL, 145, '2019-02-22 06:18:05', '2019-02-22 06:18:05'),
(394, 1, 'naira', 'Microsoft Office', 'NAV system for microsoft Dynamics', 2, '40000.00', '20.0000', '80000', '0.00', '0', '0', '0', '0', NULL, 145, '2019-02-22 06:18:19', '2019-02-22 06:18:19'),
(395, 1, 'naira', 'Microsoft Magic', 'Office magic for Produce', 1, '5000.00', '2.0000', '5000', '0.00', '0', '0', '0', '0', NULL, 144, '2019-02-22 10:07:14', '2019-02-22 10:07:14'),
(396, 1, 'naira', 'Microsoft Magic', 'NAV system for microsoft Dynamics', 3, '2300.00', '2.0000', '6900', '0.00', '0', '0', '0', '0', NULL, 144, '2019-02-22 10:07:37', '2019-02-22 10:07:37'),
(397, 1, 'naira', 'Microsoft Magic', 'Office magic for Produce', 1, '2000.00', '10.0000', '2000', '0.00', '0', '0', '0', '0', NULL, 146, '2019-02-22 10:16:52', '2019-02-22 10:16:52'),
(398, 1, 'naira', 'Microsoft Office', 'Office magic for Produce', 1, '2000.00', '10.0000', '2000', '0.00', '0', '0', '0', '0', NULL, 146, '2019-02-22 11:08:04', '2019-02-22 11:08:04'),
(399, 1, 'naira', 'Microsoft Magic', 'Office magic for Produce', 1, '5000.00', '10.0000', '5000', '0.00', '0', '0', '0', '0', NULL, 149, '2019-02-22 11:14:03', '2019-02-22 11:14:03'),
(400, 1, 'naira', 'Microsoft Magic', 'Dynamics Nav for All Platforms', 1, '4000.00', '2.0000', '4000', '0.00', '0', '0', '0', '0', NULL, 140, '2019-02-22 12:31:57', '2019-02-22 12:31:57'),
(401, 1, 'naira', 'Microsoft Office', 'Office magic for Produce', 2, '4000.00', '10.0000', '8000', '0.00', '0', '0', '0', '0', NULL, 149, '2019-02-26 15:38:40', '2019-02-26 15:38:40'),
(402, 1, 'naira', 'Microsoft NAV', 'NAV system for microsoft Dynamics', 3, '3000.00', '0.0000', '9000', '0.00', '0', '0', '0', '0', NULL, 149, '2019-02-26 15:39:03', '2019-02-26 15:39:03'),
(403, 1, 'naira', 'Microsoft Magic', 'Office magic for Produce', 1, '5000.00', '10.0000', '5000', '0.00', '0', '0', '0', '0', NULL, 150, '2019-03-04 07:24:40', '2019-03-04 07:24:40'),
(404, 1, 'naira', 'Microsoft Office', 'Office magic for Produce', 3, '30000.00', '2.0000', '90000', '0.00', '0', '0', '0', '0', NULL, 150, '2019-03-04 07:28:10', '2019-03-04 07:28:10'),
(405, 1, 'naira', 'Implementation of Finance Module', 'Implementation of Finance Module', 1, '2500000.00', '0.0000', '2500000', '0.00', '0', '0', '0', '0', NULL, 151, '2019-03-04 22:56:10', '2019-03-04 22:56:10'),
(406, 1, 'naira', 'Server Setup', 'Server Setup', 1, '350000.00', '0.0000', '350000', '0.00', '0', '0', '0', '0', NULL, 151, '2019-03-04 22:56:48', '2019-03-04 22:56:48'),
(407, 1, 'naira', 'HCMatrix', 'Hcmatrix', 1, '3460.00', '5.0000', '3460', '0.00', '0', '0', '0', '0', NULL, 153, '2019-03-08 22:49:24', '2019-03-08 22:49:24'),
(408, 1, 'naira', 'SIMatrix', 'SIMatrix', 1, '5000.00', '3.0000', '5000', '0.00', '0', '0', '0', '0', NULL, 153, '2019-03-08 22:50:42', '2019-03-08 22:50:42'),
(409, 1, 'naira', 'Microsoft Magic', 'Dynamics Nav for All Platforms', 2, '12000.00', '0.0000', '24000', '0.00', '0', '0', '0', '0', NULL, 156, '2019-03-14 22:10:15', '2019-03-14 22:10:15'),
(410, 1, 'naira', 'Azure Services', 'Azure Services', 1, '4000.00', '0.0000', '4000', '0.00', '0', '0', '0', '0', NULL, 158, '2019-03-14 22:20:49', '2019-03-14 22:20:49'),
(411, 1, 'naira', 'Cloud Onboarding', 'Cloud Onboarding', 2, '2000.00', '2.0000', '4000', '0.00', '0', '0', '0', '0', NULL, 158, '2019-03-14 22:21:22', '2019-03-14 22:21:22'),
(412, 1, 'naira', 'Azure  microservice', 'Azure Services', 1, '3200.00', '5.0000', '3200', '0.00', '0', '0', '0', '0', NULL, 158, '2019-03-14 22:21:45', '2019-03-14 22:21:45'),
(413, 1, 'naira', 'Office', 'Office magic for Produce', 1, '2000.00', '1.0000', '2000', '0.00', '0', '0', '0', '0', NULL, NULL, '2019-03-14 23:12:11', '2019-03-22 19:16:10'),
(414, NULL, NULL, 'Business Premium', 'Business Prem', 1, '3000.00', '0.0000', '3000', '0.00', '0', '0', '0', '0', NULL, 160, '2019-03-15 14:56:42', '2019-05-17 14:28:33'),
(415, 1, 'naira', 'Microsoft Office', 'Azure Services', 1, '2300.00', '2.0000', '2300', '0.00', '0', '0', '0', '0', NULL, 160, '2019-03-15 14:57:23', '2019-03-15 14:57:23'),
(416, 1, 'naira', '00O365 E3 - Microsoft O365 Enterprise Plan', 'Microsoft O365 Enterprise Plan', 5, '32120.00', '13.7000', '160600', '0.00', '0', '0', '0', '0', NULL, NULL, '2019-03-15 16:44:48', '2019-03-15 16:56:39'),
(417, 1, 'naira', '00O365 E3 - Microsoft O365 Enterprise Plan', 'Microsoft O365 Enterprise Plan', 5, '32120.00', '13.7000', '160600', '0.00', '0', '0', '0', '0', NULL, 161, '2019-03-15 16:58:53', '2019-03-15 16:58:53'),
(418, 1, 'naira', 'O365 BES - Microsoft O365 Business Essentials', 'O365 BES - Microsoft O365 Business Essentials (Email Plan)', 5, '31680.00', '13.9000', '158400', '0.00', '0', '0', '0', '0', NULL, NULL, '2019-03-15 17:24:07', '2019-03-15 17:25:17'),
(419, 1, 'naira', 'O365 BES - Microsoft O365 Business Essentials', 'O365 BES - Microsoft O365 Business Essentials (Email Plan)', 5, '31680.00', '13.9000', '158400', '0.00', '0', '0', '0', '0', NULL, 161, '2019-03-15 17:26:46', '2019-03-15 17:26:46'),
(420, 1, 'naira', '00EMS - Enterprise Mobility + Sec E3', '00EMS - Enterprise Mobility + Sec E3', 5, '11880.00', '13.7000', '59400', '0.00', '0', '0', '0', '0', NULL, 161, '2019-03-15 17:34:37', '2019-03-15 17:34:37'),
(422, 1, 'naira', 'O365 BES - Microsoft O365 Business Essentials', 'Microsoft O365 Business Essentials (5 Months)', 1, '9000.00', '0.0000', '9000', '0.00', '0', '0', '0', '0', NULL, NULL, '2019-03-19 17:53:29', '2019-03-19 17:54:09'),
(423, 1, 'naira', 'O365 BES - Microsoft O365 Business Essentials', 'O365 BES - Microsoft O365 Business Essentials', 1, '9000.00', '0.0000', '9000', '0.00', '0', '0', '0', '0', NULL, 163, '2019-03-19 17:55:06', '2019-03-19 17:55:06'),
(424, 1, 'naira', 'UBIQUITI UAP -AC-PRO AP', 'UBIQUITI UAP -AC-PRO AP', 10, '72000.00', '0.0000', '720000', '0.00', '0', '0', '0', '0', NULL, 164, '2019-03-19 18:07:49', '2019-03-19 18:07:49'),
(425, 1, 'naira', 'MIKroTIK RB2011UiAS-RM', 'MIKroTIK RB2011UiAS-RM', 1, '54000.00', '0.0000', '54000', '0.00', '0', '0', '0', '0', NULL, 164, '2019-03-19 18:14:14', '2019-03-19 18:14:14'),
(426, 1, 'naira', 'Cost of Delivery', 'Cost of Delivery - Warri', 1, '12000.00', '0.0000', '12000', '0.00', '0', '0', '0', '0', NULL, NULL, '2019-03-20 17:12:39', '2019-03-21 17:33:02'),
(427, 1, 'naira', 'Cost of Delivery', 'Cost of Delivery - Warri', 1, '12000.00', '0.0000', '12000', '0.00', '0', '0', '0', '0', NULL, NULL, '2019-03-20 17:14:26', '2019-03-21 17:33:50'),
(428, 1, 'naira', 'Optiplex 3050 Small Factor,WIN 10,Pro 4', 'Optiplex 3050 Small Factor,WIN 10,Pro 4', 1, '288000.00', '288000.0000', '288000', '0.00', '0', '0', '0', '0', NULL, NULL, '2019-03-21 17:23:36', '2019-03-21 17:31:34'),
(429, 1, 'naira', 'Cost of Delivery', 'Cost of Delivery - Warri', 1, '18000.00', '0.0000', '18000', '0.00', '0', '0', '0', '0', NULL, NULL, '2019-03-21 17:34:30', '2019-03-22 16:08:23'),
(430, 1, 'naira', 'Dell 18.5’’ monitor', 'Dell 18.5’’ monitor', 1, '42000.00', '0.0000', '42000', '0.00', '0', '0', '0', '0', NULL, NULL, '2019-03-21 17:34:31', '2019-03-21 17:35:13'),
(431, 1, 'naira', 'Optiplex 3050 Small Factor,WIN 10,Pro 4', 'Optiplex 3050 small factor  Windows 10 Pro 4GB Ram 500GB HDD i5', 1, '288000.00', '0.0000', '288000', '0.00', '0', '0', '0', '0', NULL, 165, '2019-03-21 17:35:59', '2019-03-21 17:35:59'),
(432, 1, 'naira', 'Dell 18.5’’ monitor', 'Dell 18.5’’ monitor', 1, '42000.00', '0.0000', '42000', '0.00', '0', '0', '0', '0', NULL, 165, '2019-03-21 17:36:27', '2019-03-21 17:36:27'),
(433, 1, 'naira', 'HCMatrix Time Manager Subscription - Admin Users', 'HCMatrix Time Manager Subscription - Admin Users', 3, '300.00', '0.0000', '900', '0.00', '0', '0', '0', '0', NULL, NULL, '2019-03-21 22:28:30', '2019-03-22 19:03:40'),
(434, 1, 'naira', 'Office 365', 'Enterprise E3 Licenses per Annum (12 Months)', 200, '20.00', '10.0000', '4000', '0.00', '0', '0', '0', '0', NULL, NULL, '2019-03-22 15:44:05', '2019-03-22 15:50:42'),
(435, 1, 'naira', 'Office 365', 'Enterprise E3 Licenses per Annum (12 Months)', 200, '88320.00', '10.0000', '17664000', '0.00', '0', '0', '0', '0', NULL, NULL, '2019-03-22 15:53:40', '2019-03-22 16:13:00'),
(436, 1, 'naira', 'Office 365', 'Enterprise E3 Licenses per Annum (12 Months)', 200, '88320.00', '10.0000', '17664000', '0.00', '0', '0', '0', '0', NULL, NULL, '2019-03-22 16:13:30', '2019-03-22 16:21:01'),
(437, 1, 'naira', 'Office 365', 'Enterprise E3 Licenses per Annum (12 Months)', 200, '88320.00', '10.0000', '17664000', '0.00', '0', '0', '0', '0', NULL, NULL, '2019-03-22 16:13:33', '2019-03-22 16:20:43'),
(438, 1, 'naira', 'Cost of Delivery', 'Cost of Delivery - Warri', 1, '18000.00', '0.0000', '18000', '0.00', '0', '0', '0', '0', NULL, 165, '2019-03-22 16:17:33', '2019-03-22 16:17:33'),
(439, 1, 'naira', 'Office 365', 'Enterprise E3 Licenses per Annum (12 Months)', 200, '88320.00', '10.0000', '17664000', '0.00', '0', '0', '0', '0', NULL, 168, '2019-03-22 16:21:26', '2019-03-22 16:21:26'),
(440, 1, 'naira', 'Office 365', 'Enterprise E1 Licenses per Annum (12 Months)', 50, '35328.00', '10.0000', '1766400', '0.00', '0', '0', '0', '0', NULL, 168, '2019-03-22 16:22:59', '2019-03-22 16:22:59'),
(441, 1, 'naira', 'Office 365', 'Implementation, Configuration and support', 1, '2000000.00', '0.0000', '2000000', '0.00', '0', '0', '0', '0', NULL, 168, '2019-03-22 16:31:07', '2019-03-22 16:31:07'),
(442, 1, 'naira', 'Sharepoint', 'Sharepoint online Implementation', 1, '2500000.00', '0.0000', '2500000', '0.00', '0', '0', '0', '0', NULL, 168, '2019-03-22 18:40:16', '2019-03-22 18:40:16'),
(444, 1, 'naira', 'mofofifjsidninwijncrifjncesijdjmkn(())))cfvnjkc ned x', 'sefpdcmrofmrinrtofmexlwdmxcefn()))))jkvtnlsd mxlenmrcgokfmeeocdmfronmrfewjkldenjoweodnqw', 1, '1222.00', '1.0000', '1222', '0.00', '0', '0', '0', '0', NULL, NULL, '2019-03-22 19:11:31', '2019-03-22 19:12:17'),
(445, 1, 'naira', 'HCMatrix Time Manager-Admin Users', 'HCMatrix Time Manager-dmin Users(#1800/User/Month)', 3, '21600.00', '0.0000', '64800', '0.00', '0', '0', '0', '0', NULL, NULL, '2019-03-22 19:14:36', '2019-03-22 19:15:10'),
(446, 1, 'naira', 'HCMatrix Time Manager Subscription For Admin Users', 'HCMatrix Time Manager Annual Subscription For Admin Users(#1,800/user/month)', 3, '21600.00', '0.0000', '64800', '0.00', '0', '0', '0', '0', NULL, NULL, '2019-03-22 19:20:27', '2019-03-22 19:28:32'),
(447, 1, 'naira', 'HCMatrix Time Manager Subscription For Admin Users', 'HCMatrix Time Manager Annual Subscription For Admin Users(#1,800/user/month)', 3, '21600.00', '0.0000', '64800', '0.00', '0', '0', '0', '0', NULL, 166, '2019-03-22 19:28:48', '2019-03-22 22:27:35'),
(448, 1, 'naira', 'HCMatrix Time Manager Subscription For Lite Users', 'HCMatrix Time Manager Annual Subscription For Lite Users(#200/user/month)', 40, '2400.00', '0.0000', '96000', '0.00', '0', '0', '0', '0', NULL, 166, '2019-03-22 19:29:40', '2019-03-22 22:27:45'),
(449, 1, 'naira', 'HCMatrix Auto-Payroll Bank Charge Subscription for Users', 'HCMatrix Auto-Payroll Bank Charge Subscription for Users(#55/user/month)', 143, '660.00', '0.0000', '94380', '0.00', '0', '0', '0', '0', NULL, 166, '2019-03-22 19:31:04', '2019-03-22 19:31:04'),
(450, 1, 'naira', 'Customization, Setup and Migration of Legacy Information', 'Customization, Setup and Migration of Legacy Information', 1, '100000.00', '0.0000', '100000', '0.00', '0', '0', '0', '0', NULL, 166, '2019-03-22 19:31:37', '2019-03-22 22:28:05'),
(451, 1, 'naira', 'GT-200 Fingerprint Biometric Device', 'GT-200 Fingerprint Biometric Device', 5, '100000.00', '0.0000', '500000', '0.00', '0', '0', '0', '0', NULL, 166, '2019-03-22 19:34:38', '2019-03-22 22:34:02'),
(453, 1, 'naira', 'HCMatrix Annual Subscription For Admin Users', 'HCMatrix Annual Subscription For Admin Users(#2880/user/month)', 3, '34650.00', '0.0000', '103950', '0.00', '0', '0', '0', '0', NULL, 169, '2019-03-22 19:37:48', '2019-03-22 19:37:48'),
(455, 1, 'naira', 'HCMatrix Annual Subscription For Lite Users', 'HCMatrix Annual Subscription For Lite Users(#700/user/month)', 40, '8400.00', '0.0000', '336000', '0.00', '0', '0', '0', '0', NULL, 169, '2019-03-22 19:38:27', '2019-03-22 19:38:27'),
(456, 1, 'naira', 'HCMatrix Auto-Payroll Bank Charge Subscription for Users', 'HCMatrix Auto-Payroll Bank Charge Subscription for Users(#55/user/month)', 143, '660.00', '0.0000', '94380', '0.00', '0', '0', '0', '0', NULL, 169, '2019-03-22 19:40:04', '2019-03-22 19:40:04'),
(457, 1, 'naira', 'Customization, Setup and Migration of Legacy Information', 'Customization, Setup and Migration of Legacy Information', 1, '213624.00', '0.0000', '213624', '0.00', '0', '0', '0', '0', NULL, 169, '2019-03-22 19:40:56', '2019-03-22 19:44:12'),
(458, 1, 'naira', 'Annual Support', 'Annual Support (15%)', 1, '80109.00', '0.0000', '80109', '0.00', '0', '0', '0', '0', NULL, 169, '2019-03-22 19:41:57', '2019-03-22 19:44:28'),
(459, 1, 'naira', 'Training for Admin Users(Optional)', 'Training for Admin Users (Optional)', 1, '150000.00', '0.0000', '150000', '0.00', '0', '0', '0', '0', NULL, 169, '2019-03-22 19:42:52', '2019-03-22 19:42:52'),
(460, 1, 'naira', 'Snapnet\'s Office365 Support and Service Offerings', 'Project Management  | Three (3) Months Post Deployment support | Skills Transfer and Training | Automation of 5 Business Processes for Etranzact using Power-apps & Flows | Adoption training for Champions and team leads |', 1, '0.00', '0.0000', '0', '0.00', '0', '0', '0', '0', NULL, 168, '2019-03-22 23:32:12', '2019-03-22 23:32:12'),
(461, 1, 'naira', 'Office 365', 'Office 365 Business Premium/User/Annum', 22, '54450.00', '10.0000', '1197900', '0.00', '0', '0', '0', '0', NULL, 170, '2019-03-25 19:07:40', '2019-03-27 23:09:43'),
(462, 1, 'naira', 'Office 365', 'Office 365 Enterprise E3/User/Annum', 22, '87120.00', '10.0000', '1916640', '0.00', '0', '0', '0', '0', NULL, 170, '2019-03-25 19:09:17', '2019-03-27 23:09:53'),
(463, 1, 'naira', 'HCMatrix', 'HCMatrix Annual Subscription For Admin Users (#2880/user/month)', 3, '34560.00', '0.0000', '103680', '0.00', '0', '0', '0', '0', NULL, 171, '2019-03-25 22:10:34', '2019-03-25 22:18:17'),
(464, 1, 'naira', 'HCMatrix', 'HCMatrix Annual Subscription For Lite Users (#700/user/month)', 150, '8400.00', '0.0000', '1260000', '0.00', '0', '0', '0', '0', NULL, 171, '2019-03-25 22:13:21', '2019-03-25 22:28:04'),
(465, 1, 'naira', 'HCMatrix', 'HCMatrix Recruit (1- 2000 applicants)(#25920/month)', 1, '311040.00', '0.0000', '311040', '0.00', '0', '0', '0', '0', NULL, 171, '2019-03-25 22:16:23', '2019-03-25 22:21:10'),
(466, 1, 'naira', 'Customization', 'Customization, Setup and Migration of Legacy Information', 1, '669888.00', '0.0000', '669888', '0.00', '0', '0', '0', '0', NULL, 171, '2019-03-25 22:24:15', '2019-03-25 22:29:25'),
(467, 1, 'naira', 'Support', 'Annual Support', 1, '251208.00', '0.0000', '251208', '0.00', '0', '0', '0', '0', NULL, 171, '2019-03-25 22:26:25', '2019-03-25 22:30:21'),
(468, 1, 'naira', 'Training', 'HCmatrix Training for a maximum of three (3) Admins', 1, '150000.00', '0.0000', '150000', '0.00', '0', '0', '0', '0', NULL, 171, '2019-03-25 22:45:26', '2019-03-25 22:45:26'),
(469, 1, 'naira', 'HCMATRIX', 'HCMatrix ELITE Annual Subscription for Super Users/User/Annum (12 months). Recurring', 4, '35040.00', '0.0000', '140160', '0.00', '0', '0', '0', '0', NULL, 172, '2019-03-26 14:20:02', '2019-03-26 14:20:02'),
(470, 1, 'naira', 'HCMATRIX', 'HCMatrix ELITE Annual Subscription for Lite users/User/Annum (12 Months), Recurring', 34, '21900.00', '0.0000', '744600', '0.00', '0', '0', '0', '0', NULL, 172, '2019-03-26 14:21:13', '2019-03-27 15:05:10'),
(471, 1, 'naira', 'HCMATRIX', 'HcMATRIX Auto Payroll Bank charge for dormant users', 74, '720.00', '0.0000', '53280', '0.00', '0', '0', '0', '0', NULL, 172, '2019-03-27 15:01:12', '2019-03-27 15:01:45'),
(472, 1, 'naira', 'HCMATRIX', 'Customization, Setup and Migration of data & Legacy inofrmation', 1, '146910.00', '0.0000', '146910', '0.00', '0', '0', '0', '0', NULL, 172, '2019-03-27 15:03:14', '2019-03-27 15:03:14'),
(473, 1, 'naira', 'HCMATRIX', 'Annual Support', 1, '90000.00', '0.0000', '90000', '0.00', '0', '0', '0', '0', NULL, 172, '2019-03-27 15:03:54', '2019-03-27 15:03:54'),
(474, 1, 'naira', 'Microsoft Power BI', 'Microsoft Power BI Licenses Annual  Renewal/User/Month/Annum', 11, '43800.00', '10.0000', '481800', '0.00', '0', '0', '0', '0', NULL, 173, '2019-03-27 22:24:49', '2019-03-27 22:32:02'),
(475, 1, 'naira', 'Azure Site Recovery', 'Virtual Machines - 2 D8 v3 (8 vCPU(s), 32 GB RAM) x 15 Days; Windows – (OS Only); Pay as you go; 2 managed OS disks – S15, 10,000 transaction units', 2, '1382400.00', '0.0000', '2764800', '0.00', '0', '0', '0', '0', NULL, 174, '2019-03-28 22:44:06', '2019-03-29 22:06:44'),
(476, 1, 'naira', 'Azure Site Recovery', '2 Customer instances, 2 Azure instances', 1, '354240.00', '0.0000', '354240', '0.00', '0', '0', '0', '0', NULL, 174, '2019-03-29 19:37:11', '2019-03-29 22:07:26'),
(477, 1, 'naira', 'Storage', 'Storage - Block Blob Storage, 1,000 GB Data Retrieval, 1,000 GB Data Write, 1000 GB Geo-replication data transfer', 1, '201744.00', '0.0000', '201744', '0.00', '0', '0', '0', '0', NULL, 174, '2019-03-29 19:45:30', '2019-03-29 22:08:02'),
(478, 1, 'naira', 'VPN', 'VPN Gateways type, VpnGw1 tier, 24 gateway hour(s), 500 GB, VPN outbound VPN gateway type', 1, '205762.00', '0.0000', '205762', '0.00', '0', '0', '0', '0', NULL, 174, '2019-03-29 22:09:46', '2019-03-29 22:11:30'),
(479, 1, 'naira', 'Implementation', 'Implementation', 1, '881637.00', '0.0000', '881637', '0.00', '0', '0', '0', '0', NULL, 174, '2019-03-29 22:13:07', '2019-03-29 22:13:07'),
(480, 1, 'naira', 'Azure Site Recovery', '4 D8 v3 (8 vCPU(s), 32 GB RAM) x 15 Days; Windows – (OS Only); Pay as you go; 4 managed OS disks – S60, 10,000 transaction units', 4, '2739787.00', '0.0000', '10959148', '0.00', '0', '0', '0', '0', NULL, 175, '2019-03-29 22:22:55', '2019-03-29 22:22:55'),
(481, 1, 'naira', 'Azure Site Recovery', '4 Customer instances, 4 Azure instances', 1, '708480.00', '0.0000', '708480', '0.00', '0', '0', '0', '0', NULL, 175, '2019-03-29 22:24:38', '2019-03-29 22:24:38'),
(482, 1, 'naira', 'Storage', 'Block Blob Storage, General Purpose V2, RA-GRS Redundancy, Hot Access Tier, 11 TB Capacity, 100,000 Write operations, 100,000', 1, '2480285.00', '0.0000', '2480285', '0.00', '0', '0', '0', '0', NULL, 175, '2019-03-29 22:28:08', '2019-03-29 22:28:08'),
(483, 1, 'naira', 'VPN Gateway', 'VPN Gateways type, VpnGw1 tier, 24 gateway hour(s), 11 TB, VPN outbound VPN gateway type', 1, '4233600.00', '0.0000', '4233600', '0.00', '0', '0', '0', '0', NULL, 175, '2019-03-29 22:29:55', '2019-03-29 22:29:55'),
(484, 1, 'naira', 'Implementation', 'Implementation', 1, '4595378.00', '0.0000', '4595378', '0.00', '0', '0', '0', '0', NULL, 175, '2019-03-29 22:31:07', '2019-03-29 22:31:07'),
(485, 1, 'naira', 'Snapnet Support', 'Annual Support fee for UBA Unified Process Manager (UPM)', 1, '4685200.00', '0.0000', '4685200', '0.00', '0', '0', '0', '0', NULL, 176, '2019-04-01 19:59:28', '2019-04-01 22:32:28'),
(486, 1, 'naira', 'Office 365', 'Office 365 Business Premium/User/Annum', 3, '54750.00', '10.0000', '164250', '0.00', '0', '0', '0', '0', NULL, 177, '2019-04-02 22:52:55', '2019-04-03 17:01:28'),
(487, 1, 'naira', 'Dynamics Business Central', 'Dynamics Business Central  Admin User License Annual Subscription', 1, '302400.00', '0.0000', '302400', '0.00', '0', '0', '0', '0', NULL, 178, '2019-04-02 23:52:09', '2019-04-02 23:54:00'),
(488, 1, 'naira', 'Dynamics Business Central', 'Dynamics Business Central Team User license Annual Subscription', 4, '34848.00', '0.0000', '139392', '0.00', '0', '0', '0', '0', NULL, 178, '2019-04-02 23:53:40', '2019-04-02 23:56:35'),
(489, 1, 'naira', 'HCMatrix Subscription', 'Third Party HR and Payroll Software - Annual Subscription', 38, '6139.00', '0.0000', '233282', '0.00', '0', '0', '0', '0', NULL, 178, '2019-04-03 00:35:24', '2019-04-03 00:35:24'),
(490, 1, 'naira', 'Professional Services', 'Implementation  and Customization/integration of Four (4) Modules -  Finance, Sales, CRM, Hr and Payroll', 1, '7500000.00', '0.0000', '7500000', '0.00', '0', '0', '0', '0', NULL, 178, '2019-04-03 00:38:01', '2019-04-03 00:41:28'),
(491, 1, 'naira', 'Azure', 'Azure Subscription Annual Subscription', 1, '2178000.00', '0.0000', '2178000', '0.00', '0', '0', '0', '0', NULL, 178, '2019-04-03 00:40:04', '2019-04-03 00:40:27'),
(492, 1, 'naira', 'Support', 'Annual Support Services', 1, '1125000.00', '0.0000', '1125000', '0.00', '0', '0', '0', '0', NULL, 178, '2019-04-03 00:43:29', '2019-04-03 00:44:00'),
(493, 1, 'naira', 'Power BI', 'Annual Power BI Pro Subscription', 20, '43200.00', '0.0000', '864000', '0.00', '0', '0', '0', '0', NULL, 179, '2019-04-04 15:12:28', '2019-04-04 15:12:28'),
(494, 1, 'naira', 'Implementation', 'Implementation of Enterprise Report', 1, '2000000.00', '0.0000', '2000000', '0.00', '0', '0', '0', '0', NULL, 179, '2019-04-04 15:16:48', '2019-04-04 15:16:48'),
(495, 1, 'naira', 'Training', 'Power BI Training One(1) Attendee', 1, '500000.00', '0.0000', '500000', '0.00', '0', '0', '0', '0', NULL, 179, '2019-04-04 15:17:50', '2019-04-04 15:20:41'),
(496, 1, 'naira', 'Support', 'Post Deployment Support(One Month)', 1, '500000.00', '0.0000', '500000', '0.00', '0', '0', '0', '0', NULL, 179, '2019-04-04 15:19:18', '2019-04-04 15:19:18'),
(497, 1, 'naira', 'Premium Support', 'Expert support service for the month of March 2019 (95 hours)', 95, '12500.00', '0.0000', '1187500', '0.00', '0', '0', '0', '0', NULL, 181, '2019-04-05 16:54:19', '2019-04-05 16:55:22'),
(498, 1, 'naira', 'Engenius Access Point', 'EnGenius ENS620EXT 11ac Wave 2 Outdoor Dual-Band Wireless Access Point', 1, '100000.00', '0.0000', '100000', '0.00', '0', '0', '0', '0', NULL, 182, '2019-04-05 19:04:38', '2019-04-05 19:04:58'),
(499, 1, 'naira', 'CAT 5 cable', 'Outdoor Shielded Cat5e FTP Cable(1000\')', 1, '120000.00', '0.0000', '120000', '0.00', '0', '0', '0', '0', NULL, 182, '2019-04-05 19:06:28', '2019-04-05 19:06:28'),
(500, 1, 'naira', 'Shipping', 'Shipping', 1, '28500.00', '0.0000', '28500', '0.00', '0', '0', '0', '0', NULL, 182, '2019-04-05 19:07:06', '2019-04-05 19:07:06'),
(501, 1, 'naira', 'Business Central', 'Dynamics 365 Business Central Essential (Annual Subscription)', 5, '302400.00', '0.0000', '1512000', '0.00', '0', '0', '0', '0', NULL, 183, '2019-04-09 16:12:43', '2019-04-09 16:14:47'),
(502, 1, 'naira', 'Business Central', 'Dynamics 365 Business Central Team Member (Annual Subscription)', 5, '34560.00', '0.0000', '172800', '0.00', '0', '0', '0', '0', NULL, 183, '2019-04-09 16:14:23', '2019-04-09 16:14:23'),
(503, 1, 'naira', 'HCMatrix', 'HCMatrix Payroll for Admin Users (Annual Subscription)', 5, '21600.00', '0.0000', '108000', '0.00', '0', '0', '0', '0', NULL, 183, '2019-04-09 16:16:33', '2019-04-09 16:16:33'),
(504, 1, 'naira', 'HCMatrix', 'HCMatrix Payroll for Lite Users (Annual Subscription)', 150, '1800.00', '0.0000', '270000', '0.00', '0', '0', '0', '0', NULL, 183, '2019-04-09 16:17:39', '2019-04-09 16:17:39'),
(505, 1, 'naira', 'Implementation', 'HCMatrix Payroll Integration with Business Central', 1, '350000.00', '0.0000', '350000', '0.00', '0', '0', '0', '0', NULL, 183, '2019-04-09 16:18:25', '2019-04-09 17:08:18'),
(506, 1, 'naira', 'Exchange Online', 'Exchange Online Plan 2/ User/ Month/ Annum', 9, '52900.00', '0.0000', '476100', '0.00', '0', '0', '0', '0', NULL, 184, '2019-04-09 16:21:18', '2019-04-15 14:16:30'),
(507, 1, 'naira', 'Azure', 'Azure Subscription', 1, '2160000.00', '0.0000', '2160000', '0.00', '0', '0', '0', '0', NULL, 183, '2019-04-09 17:10:29', '2019-04-09 17:10:29'),
(508, 1, 'naira', 'Office 365', 'Office 365 Enterprise E3/ User/5 Months', 10, '36200.00', '10.0000', '362000', '0.00', '0', '0', '0', '0', NULL, 185, '2019-04-09 17:23:26', '2019-04-09 17:23:26'),
(509, 1, 'naira', 'Enterprise Mobility + Security', 'Enterprise Mobility + Security E3/ User/ 5 Months', 10, '15837.00', '10.0000', '158370', '0.00', '0', '0', '0', '0', NULL, 185, '2019-04-09 17:25:09', '2019-04-09 17:25:48'),
(510, 1, 'naira', 'HCMatrix Subscription For Admin Users', 'HCMatrix Annual Subscription For Admin Users(#2,000/user/month)', 33, '24000.00', '0.0000', '792000', '0.00', '0', '0', '0', '0', NULL, 186, '2019-04-09 22:14:17', '2019-04-09 22:14:17'),
(511, 1, 'naira', 'HCMatrix Subscription For Lite Users', 'HCMatrix Annual Subscription For Lite Users(#400/user/month)', 316, '4800.00', '0.0000', '1516800', '0.00', '0', '0', '0', '0', NULL, 186, '2019-04-09 22:16:31', '2019-04-09 22:16:31'),
(512, 1, 'naira', 'HCMatrix Auto-Payroll Bank Charge Subscription for Users', 'HCMatrix Auto-Payroll Bank Charge Subscription for Users(#55/user/month)', 2361, '660.00', '0.0000', '1558260', '0.00', '0', '0', '0', '0', NULL, 186, '2019-04-09 22:25:34', '2019-04-09 22:25:34'),
(513, 1, 'naira', 'Customization, Setup and Migration of Legacy Information', 'Customization, Setup and Migration of Legacy Information', 1, '577200.00', '0.0000', '577200', '0.00', '0', '0', '0', '0', NULL, 186, '2019-04-09 22:27:14', '2019-04-09 22:27:14'),
(514, 1, 'naira', 'Annual Support', 'Annual Support (15%)', 1, '346320.00', '0.0000', '346320', '0.00', '0', '0', '0', '0', NULL, 186, '2019-04-09 22:39:32', '2019-04-09 22:39:32'),
(515, 1, 'naira', 'GT-200 Fingerprint Biometric Device', 'GT-200 Fingerprint Biometric Device', 1, '90000.00', '0.0000', '90000', '0.00', '0', '0', '0', '0', NULL, 186, '2019-04-09 22:40:15', '2019-04-09 22:40:15'),
(516, 1, 'naira', 'HCMatrix Subscription For Admin Users', 'HCMatrix Annual Subscription For Admin Users(#2,000/user/month)', 33, '24000.00', '0.0000', '792000', '0.00', '0', '0', '0', '0', NULL, 187, '2019-04-10 18:44:58', '2019-04-10 18:44:58'),
(517, 1, 'naira', 'HCMatrix Subscription For Lite Users', 'HCMatrix Annual Subscription For Lite Users(#400/user/month)', 316, '4800.00', '0.0000', '1516800', '0.00', '0', '0', '0', '0', NULL, 187, '2019-04-10 18:46:32', '2019-04-10 18:46:32'),
(518, 1, 'naira', 'Customization, Setup and Migration of Legacy Information', 'Customization, Setup and Migration of Legacy Information', 1, '577200.00', '0.0000', '577200', '0.00', '0', '0', '0', '0', NULL, 187, '2019-04-10 18:49:39', '2019-04-10 18:49:39'),
(519, 1, 'naira', 'Annual Support', 'Annual Support (15%)', 1, '346320.00', '0.0000', '346320', '0.00', '0', '0', '0', '0', NULL, 187, '2019-04-10 18:50:12', '2019-04-10 18:50:12'),
(520, 1, 'naira', 'GT-200 Fingerprint Biometric Device', 'GT-200 Fingerprint Biometric Device', 1, '90000.00', '0.0000', '90000', '0.00', '0', '0', '0', '0', NULL, 187, '2019-04-10 18:50:32', '2019-04-10 18:50:32'),
(521, 1, 'naira', 'SOPHOS CR35ING License', 'Full guard license for CR35iNG  (1 year)', 5, '164997.00', '0.0000', '824985', '0.00', '0', '0', '0', '0', NULL, 188, '2019-04-11 15:07:46', '2019-04-11 15:11:06'),
(522, 1, 'naira', 'Office 365 Enterprise E3', 'O365PE3 - O365PE3 Open ShrdSvr SNGL SubsVL OLP NL  with standard Annual support', 120, '86400.00', '0.0000', '10368000', '0.00', '0', '0', '0', '0', NULL, 189, '2019-04-11 16:48:19', '2019-04-15 20:53:59'),
(523, 1, 'naira', 'MPO', 'MPO - Microsoft Project Online-Annual Subscription', 5, '129600.00', '0.0000', '648000', '0.00', '0', '0', '0', '0', NULL, 189, '2019-04-11 16:50:31', '2019-04-11 16:50:31'),
(524, 1, 'naira', 'MV1', 'MV1 - Microsoft Visio (Plan 1)-Annual Subscription', 5, '21600.00', '0.0000', '108000', '0.00', '0', '0', '0', '0', NULL, 189, '2019-04-11 16:51:35', '2019-04-11 16:51:35'),
(525, 1, 'naira', 'Premium Support (Free)', 'Premium Support (Free)', 1, '0.00', '0.0000', '0', '0.00', '0', '0', '0', '0', NULL, 189, '2019-04-11 16:52:33', '2019-04-11 16:52:33'),
(527, 1, 'naira', 'Implementation', 'Exchange online implementation, Configure Active Directory Connect,  Configure Exchange Online, Configure MX Records and DNS,  Configure E-mail coexistence, Migrate mailbox data,  Skype for Business Configuration', 1, '512730.00', '0.0000', '512730', '0.00', '0', '0', '0', '0', NULL, 190, '2019-04-15 17:56:30', '2019-04-15 18:45:39'),
(529, 1, 'naira', 'Office 365 Business Premium', 'Office 365 Business Premium(Annual Subscription)', 40, '54000.00', '5.0000', '2160000', '0.00', '0', '0', '0', '0', NULL, 190, '2019-04-15 20:57:18', '2019-04-15 20:57:18'),
(530, 1, 'dollar', 'Microsoft Magic', 'Office magic for Produce', 2, '12344.00', '0.0000', '24688', '0.00', '0', '0', '0', '0', NULL, 159, '2019-04-15 21:58:42', '2019-04-15 21:58:42'),
(531, 1, 'dollar', 'Office 365 Enterprise E3', 'O365PE3 Open ShrdSvr SNGL SubsVL OLP NL  with standard Annual support', 120, '240.00', '0.0000', '28800', '0.00', '0', '0', '0', '0', NULL, 191, '2019-04-16 14:10:32', '2019-04-16 14:10:32'),
(532, 1, 'dollar', 'MPO', 'Microsoft Project Online-Annual Subscription', 5, '360.00', '0.0000', '1800', '0.00', '0', '0', '0', '0', NULL, 191, '2019-04-16 14:11:59', '2019-04-16 14:11:59'),
(533, 1, 'dollar', 'MV1', 'Microsoft Visio (Plan 1)-Annual Subscription', 5, '60.00', '0.0000', '300', '0.00', '0', '0', '0', '0', NULL, 191, '2019-04-16 14:12:59', '2019-04-16 14:12:59'),
(534, NULL, NULL, 'Support', 'Premium Support (Free)', 0, '0.00', '0.0000', '0', '0.00', '0', '0', '0', '0', NULL, 191, '2019-04-16 14:14:47', '2019-04-18 15:07:24'),
(540, NULL, NULL, 'App Service', 'App Service - Standard Tier; 3 S3 (4 Core(s), 7 GB RAM, 50 GB Storage) x 730 Hours; Windows and Linux OS (Annual Subscription)', 1, '3889728.00', '0.0000', '3889728', '0.00', '0', '0', '0', '0', NULL, 192, '2019-04-17 17:44:25', '2019-04-23 18:01:15'),
(541, NULL, NULL, 'App Service', 'Azure SQL Database - Managed Instance, vCore Purchase Model, General Purpose Tier, Gen 5, 3 8 vCore instance(s) x 730 Hours, 960 GB Storage 9(Annual Subscription)', 1, '20787548.00', '0.0000', '20787548', '0.00', '0', '0', '0', '0', NULL, 192, '2019-04-17 17:45:33', '2019-04-23 18:02:02'),
(542, 1, 'naira', 'Zebra Barcode Label Printer', 'Zebra Zebra Barcode Label Printer ZD620 DT 203DPI USB SER ETH 802.11 BT', 1, '415000.00', '0.0000', '415000', '0.00', '0', '0', '0', '0', NULL, 193, '2019-04-18 14:35:19', '2019-04-18 14:35:19'),
(543, NULL, NULL, 'Samsung galaxy tablet', 'Samsung Galaxy Tab A,  T595N TAB A 10.5', 1, '265000.00', '0.0000', '265000', '0.00', '0', '0', '0', '0', NULL, 194, '2019-04-18 18:33:40', '2019-04-25 22:45:49'),
(544, NULL, NULL, 'Shipping', 'Shipping', 1, '1000.00', '0.0000', '1000', '0.00', '0', '0', '0', '0', NULL, 194, '2019-04-18 18:34:37', '2019-04-25 22:34:22'),
(545, 1, 'naira', 'Microsoft 365', 'Microsoft 365 for Business', 25, '86400.00', '0.0000', '2160000', '0.00', '0', '0', '0', '0', NULL, 195, '2019-04-18 18:41:16', '2019-04-18 18:41:16'),
(546, 1, 'naira', 'Implementation', 'Implementation', 1, '500000.00', '0.0000', '500000', '0.00', '0', '0', '0', '0', NULL, 195, '2019-04-18 18:42:00', '2019-04-18 18:42:00'),
(548, 1, 'dollar', 'Microsoft Magic', 'NAV system for microsoft Dynamics', 9, '9000.00', '0.0000', '81000', '0.00', '0', '0', '0', '0', NULL, 128, '2019-04-23 14:09:23', '2019-04-23 14:09:23'),
(549, NULL, NULL, 'SharePoint Online', 'SharePoint Online Enhancement', 1, '6256000.00', '10.0000', '6256000', '0.00', '0', '0', '0', '0', NULL, 196, '2019-04-23 16:17:13', '2019-04-23 16:30:24'),
(550, NULL, NULL, 'SharePonit Online', 'SharePonit Online Annual Maintenance Support', 1, '5500000.00', '10.0000', '5500000', '0.00', '0', '0', '0', '0', NULL, 196, '2019-04-23 16:28:52', '2019-04-23 16:30:06'),
(551, 1, 'naira', 'SharePoint Online', 'SharePoint training - Ten Attendees', 1, '3500000.00', '10.0000', '3500000', '0.00', '0', '0', '0', '0', NULL, 196, '2019-04-23 16:31:23', '2019-04-23 16:31:23'),
(554, 1, 'naira', 'Laptop', 'Hp Elitebook 1020 G2  x360 intel core i7 16gb ram 512gb ssd,windows 10 Professional', 1, '550000.00', '0.0000', '550000', '0.00', '0', '0', '0', '0', NULL, 198, '2019-04-25 16:49:07', '2019-04-25 16:49:07'),
(556, NULL, NULL, 'Office 365', 'Office 365 Business Essentials Renewal', 26, '21900.00', '5.0000', '569400', '0.00', '0', '0', '0', '0', NULL, 199, '2019-04-26 15:33:03', '2019-04-26 15:48:33'),
(557, 1, 'naira', 'Office 365', 'Office 365 Essential', 1, '7300.00', '5.0000', '7300', '0.00', '0', '0', '0', '0', NULL, 200, '2019-04-26 15:51:42', '2019-04-26 15:51:42'),
(558, 1, 'naira', 'Office 365 Business Essentials', 'Office 365 Business Essentials (Annual Subscription)', 15, '21600.00', '0.0000', '324000', '0.00', '0', '0', '0', '0', NULL, 201, '2019-04-26 16:08:48', '2019-04-26 16:08:48'),
(559, NULL, NULL, 'Implementation', 'Implementation (Configuration of Exchange Online, Verification of Domain, Configuration of Email Coexistence, Assign licenses to users, Migration of mailbox data, Configuration of MX Records and DNS)', 1, '300000.00', '0.0000', '300000', '0.00', '0', '0', '0', '0', NULL, 201, '2019-04-26 16:22:02', '2019-04-26 16:28:07'),
(560, 1, 'naira', 'HCMatrix', 'HCMatrix Annual Subscription For Admin Users (#2880/user/month)', 2, '34560.00', '0.0000', '69120', '0.00', '0', '0', '0', '0', NULL, 202, '2019-04-26 16:36:16', '2019-04-26 16:36:16'),
(561, 1, 'naira', 'HCMatrix', 'HCMatrix Annual Subscription For Lite Users (#700/user/month)', 40, '8400.00', '0.0000', '336000', '0.00', '0', '0', '0', '0', NULL, 202, '2019-04-26 16:37:42', '2019-04-26 16:37:42'),
(562, 1, 'naira', 'Implementation', 'Customization and Deployment', 1, '500000.00', '0.0000', '500000', '0.00', '0', '0', '0', '0', NULL, 202, '2019-04-26 16:38:45', '2019-04-26 16:38:45'),
(563, 1, 'naira', 'Microsoft Office', 'Office magic for Produce', 2, '12345.00', '0.0000', '24690', '0.00', '0', '0', '0', '0', NULL, 135, '2019-04-26 17:45:58', '2019-04-26 17:45:58'),
(564, NULL, NULL, 'Office 365 Business Essentials', 'Office 365 Business Essentials (Monthly Subscription)', 16, '2160.00', '0.0000', '34560', '0.00', '0', '0', '0', '0', NULL, 203, '2019-04-30 16:54:57', '2019-05-03 16:38:31'),
(566, 1, 'naira', 'HP Laptop', 'Hp core i3 4gb ram 500gb hdd,windows 10 Professional', 6, '163157.00', '0.0000', '978942', '0.00', '0', '0', '0', '0', NULL, 204, '2019-04-30 17:44:35', '2019-04-30 17:44:35'),
(567, 1, 'naira', 'HP Laptop', 'Hp core i5 8gb ram 500gb hdd window 10 professional', 2, '205000.00', '0.0000', '410000', '0.00', '0', '0', '0', '0', NULL, 204, '2019-04-30 17:46:32', '2019-04-30 17:46:32'),
(570, NULL, NULL, 'HCMatrix', 'HCMatrix Annual User Subscription (#360/user/month)', 1500, '4320.00', '10.0000', '6480000', '0.00', '0', '0', '0', '0', NULL, 205, '2019-05-02 22:18:24', '2019-05-03 16:23:05'),
(572, 1, 'naira', 'Implementation', 'Implementation (Configuration of Exchange Online, Verification of Domain, Configuration of Email Coexistence, Assign licenses to users, Migration of mailbox data, Configuration of MX Records and DNS)', 1, '300000.00', '0.0000', '300000', '0.00', '0', '0', '0', '0', NULL, 203, '2019-05-02 22:21:09', '2019-05-02 22:21:09'),
(573, NULL, NULL, 'HCMatrix', 'Out of the box implementation and customization', 1, '4500000.00', '0.0000', '4500000', '0.00', '0', '0', '0', '0', NULL, 205, '2019-05-02 22:23:55', '2019-05-03 16:23:42'),
(574, 1, 'naira', 'Training', 'Training - Four (4) admins (Optional)', 4, '150000.00', '0.0000', '600000', '0.00', '0', '0', '0', '0', NULL, 205, '2019-05-03 16:24:35', '2019-05-03 16:24:35'),
(575, 1, 'naira', 'Bio metric Reader', 'Fingerprint Bio metric Device', 1, '90000.00', '0.0000', '90000', '0.00', '0', '0', '0', '0', NULL, 205, '2019-05-03 16:25:44', '2019-05-03 16:25:44'),
(576, NULL, NULL, 'Support', 'Annual Support', 1, '2000000.00', '0.0000', '2000000', '0.00', '0', '0', '0', '0', NULL, 205, '2019-05-03 16:26:25', '2019-05-03 16:26:32'),
(577, NULL, NULL, 'Travel, Lodging & Expense', 'Travel, Lodging  and Expense', 1, '1500000.00', '0.0000', '1500000', '0.00', '0', '0', '0', '0', NULL, 205, '2019-05-03 16:27:53', '2019-05-03 16:28:03'),
(578, NULL, NULL, 'Screw Driver set', '28 Piece Multifunctional S2 Screwdriver Household Hardware Tool Set', 2, '25000.00', '0.0000', '50000', '0.00', '0', '0', '0', '0', NULL, 206, '2019-05-03 17:14:11', '2019-05-17 19:03:08'),
(579, 1, 'naira', 'Shipping', 'Shipping', 1, '15000.00', '0.0000', '15000', '0.00', '0', '0', '0', '0', NULL, 206, '2019-05-03 17:16:50', '2019-05-03 17:16:50'),
(581, 1, 'naira', 'HCMatrix', 'HCMatrix Annual User Subscription', 75, '4800.00', '0.0000', '360000', '0.00', '0', '0', '0', '0', NULL, 207, '2019-05-03 23:07:08', '2019-05-03 23:07:08'),
(582, 1, 'naira', 'HCMatrix', 'Out of the box implementation and customization', 1, '600000.00', '0.0000', '600000', '0.00', '0', '0', '0', '0', NULL, 207, '2019-05-03 23:13:59', '2019-05-03 23:13:59'),
(583, 1, 'naira', 'HCMatrix', 'Annual Support', 1, '200000.00', '0.0000', '200000', '0.00', '0', '0', '0', '0', NULL, 207, '2019-05-03 23:17:08', '2019-05-03 23:17:08'),
(584, NULL, NULL, 'Office 365 Enterprise E3', 'O365PE3 Open ShrdSvr SNGL SubsVL OLP NL with standard Annual support', 120, '240.00', '10.0000', '28800', '0.00', '0', '0', '0', '0', NULL, 208, '2019-05-06 21:21:09', '2019-05-06 21:50:12'),
(585, NULL, NULL, 'MPO', 'Microsoft Project Online-Annual Subscription', 5, '360.00', '10.0000', '1800', '0.00', '0', '0', '0', '0', NULL, 208, '2019-05-06 21:22:47', '2019-05-06 21:56:03'),
(586, NULL, NULL, 'MVP', 'Microsoft Visio (Plan 1)-Annual Subscription', 5, '60.00', '10.0000', '300', '0.00', '0', '0', '0', '0', NULL, 208, '2019-05-06 21:24:08', '2019-05-06 21:52:30'),
(587, 1, 'dollar', 'Support', 'Premium Support (Free)', 0, '0.00', '0.0000', '0', '0.00', '0', '0', '0', '0', NULL, 208, '2019-05-06 21:24:55', '2019-05-06 21:24:55'),
(588, 1, 'naira', 'Sophos Central Endpoint', 'CENTRAL INTERCEPT X ADV - NEW - 25-49 USER BAND - 12 MOS', 1, '430680.00', '0.0000', '430680', '0.00', '0', '0', '0', '0', NULL, 209, '2019-05-07 14:13:26', '2019-05-07 14:13:26'),
(589, NULL, NULL, 'HCMATRIX Time Manager', 'HCMatrix Time and Atendance System, per user Annual Subscription', 400, '1200.00', '0.0000', '480000', '0.00', '0', '0', '0', '0', NULL, 210, '2019-05-07 16:10:46', '2019-05-07 16:50:21'),
(590, 1, 'naira', 'HCMATRIX Biometric Clock-in Device', 'HCMatrix Biometric Clock-in Devices GT-200 Fingerprint', 2, '100000.00', '0.0000', '200000', '0.00', '0', '0', '0', '0', NULL, 210, '2019-05-07 16:12:10', '2019-05-07 16:12:10'),
(591, NULL, NULL, 'HCMATRIX Time Manager', 'Professional Services (Setup and Customization)', 2, '250000.00', '0.0000', '500000', '0.00', '0', '0', '0', '0', NULL, 210, '2019-05-07 16:12:50', '2019-05-07 16:50:43'),
(592, NULL, NULL, 'Exchange Online Plan 1', 'Exchange Online Plan 1', 7, '17328.00', '5.0000', '121296', '0.00', '0', '0', '0', '0', NULL, 211, '2019-05-07 18:15:31', '2019-05-08 18:06:54'),
(593, NULL, NULL, 'Lenovo ThinkPad x280', 'Lenovo Thinkpad X280, Intel Core i5-8250U (1.60GHz, 6MB) 12.5 inch 1920x1080, Windows 10Pro 64 Bit, 8.0 GB Memory, 1x256GB SSD PCIe, Intel UHD 620, Intel 8265 ac, 720p Camera, 6 Cell Li-Polymer, 3 Year on-Site', 1, '520000.00', '0.0000', '520000', '0.00', '0', '0', '0', '0', NULL, 212, '2019-05-08 17:56:45', '2019-05-08 17:59:08'),
(594, 1, 'naira', 'Shipping', 'Shipping', 1, '10000.00', '0.0000', '10000', '0.00', '0', '0', '0', '0', NULL, 212, '2019-05-08 17:59:46', '2019-05-08 17:59:46'),
(595, 1, 'naira', 'Exchange Online', 'Exchange Online Kiosk Plan', 15, '8664.00', '0.0000', '129960', '0.00', '0', '0', '0', '0', NULL, 211, '2019-05-08 18:08:33', '2019-05-08 18:08:33'),
(596, NULL, NULL, 'Zebra', 'Zebra Cable (CBL-DC-388A1-01)', 5, '3155.00', '0.0000', '15775', '0.00', '0', '0', '0', '0', NULL, 213, '2019-05-08 18:25:50', '2019-05-08 19:22:29'),
(597, NULL, NULL, 'Zebra', 'Power Supply Adaptor (PWR-BGA12V50W0WW)', 5, '17172.00', '0.0000', '85860', '0.00', '0', '0', '0', '0', NULL, 213, '2019-05-08 18:29:20', '2019-05-08 19:23:38'),
(598, NULL, NULL, 'Zebra', 'Slot Battery Charger (SAC-TC7X-4BTYPP-01)', 25, '70089.00', '0.0000', '1752225', '0.00', '0', '0', '0', '0', NULL, 213, '2019-05-08 18:32:21', '2019-05-08 19:25:04'),
(599, NULL, NULL, 'Zebra', 'A6 Mobile Computer (TC75FK-2MB22AD-A6)', 25, '645785.00', '0.0000', '16144625', '0.00', '0', '0', '0', '0', NULL, 213, '2019-05-08 18:35:36', '2019-05-08 19:26:15'),
(600, NULL, NULL, 'Zebra', 'Zebra One Care Essential', 25, '127261.00', '0.0000', '3181525', '0.00', '0', '0', '0', '0', NULL, 213, '2019-05-08 18:39:27', '2019-05-08 19:28:34'),
(601, 1, 'naira', 'Microsoft 365', 'Microsoft 365 E5 (Annual Subscription)', 260, '223560.00', '0.0000', '58125600', '0.00', '0', '0', '0', '0', NULL, 215, '2019-05-09 22:19:11', '2019-05-09 22:19:11'),
(602, 1, 'naira', 'Implementation', 'Implementation', 1, '7128000.00', '0.0000', '7128000', '0.00', '0', '0', '0', '0', NULL, 215, '2019-05-09 22:31:15', '2019-05-09 22:31:15'),
(603, NULL, NULL, 'HCMatrix Subscription For Admin Users', 'HCMatrix Premium Annual Subscription For Admin Users', 3, '43200.00', '20.0000', '129600', '0.00', '0', '0', '0', '0', NULL, 214, '2019-05-10 16:57:54', '2019-05-10 17:42:46'),
(604, NULL, NULL, 'HCMatrix Annual Subscription For Lite Users', 'HCMatrix Premium Annual Subscription for Lite Users', 200, '5400.00', '20.0000', '1080000', '0.00', '0', '0', '0', '0', NULL, 214, '2019-05-10 17:22:53', '2019-05-10 17:43:40'),
(605, NULL, NULL, 'Customization, Setup and Migration of Legacy Information', 'Basic Implementation, Setup and Migration of Legacy Information', 1, '1330560.00', '20.0000', '1330560', '0.00', '0', '0', '0', '0', NULL, 214, '2019-05-10 17:22:58', '2019-05-10 19:11:38'),
(606, 1, 'naira', 'HP Pavillon', 'HP Pavilion 24-b030 23.8\" All-in-one Desktop (intel Core I5-6400t - 4GB Ram, 1TB HDD - Win 10', 1, '395000.00', '0.0000', '395000', '0.00', '0', '0', '0', '0', NULL, 216, '2019-05-10 17:31:07', '2019-05-10 17:31:07'),
(607, NULL, NULL, 'GT-200 Fingerprint Biometric Device', 'GT-200 Fingerprint Biometric Device', 2, '100000.00', '0.0000', '200000', '0.00', '0', '0', '0', '0', NULL, 214, '2019-05-10 17:46:14', '2019-05-10 18:04:51'),
(608, NULL, NULL, 'Training for Admin Users(Optional)', 'Training for 3 Admin Users', 1, '500000.00', '0.0000', '500000', '0.00', '0', '0', '0', '0', NULL, 214, '2019-05-10 17:47:40', '2019-05-10 18:08:16'),
(609, NULL, NULL, 'Annual Support', 'Annual Support (15%)', 1, '145152.00', '0.0000', '145152', '0.00', '0', '0', '0', '0', NULL, 214, '2019-05-10 17:49:27', '2019-05-10 18:06:33'),
(610, 1, 'naira', 'HCMatrix', 'HCMatrix Payroll with Time and Attendance System', 50, '4320.00', '0.0000', '216000', '0.00', '0', '0', '0', '0', NULL, 217, '2019-05-10 19:19:46', '2019-05-10 19:19:46'),
(611, 1, 'naira', 'HCMatrix', 'HCMatrix Payroll with Time and Attendance Bio-metric Device', 2, '100000.00', '0.0000', '200000', '0.00', '0', '0', '0', '0', NULL, 217, '2019-05-10 19:22:28', '2019-05-10 19:22:28'),
(613, 1, 'naira', 'HCMatrix', 'Out of the box implementation and customization with annual support', 1, '150000.00', '0.0000', '150000', '0.00', '0', '0', '0', '0', NULL, 217, '2019-05-10 19:33:30', '2019-05-10 19:33:30'),
(614, 1, 'naira', 'Azure Backup', 'On-premises Servers/Clients Type, 1 Instance(s) x 2 TB, GRS Redundancy, Low Average Daily Churn, 30 Daily RPs, 6 Weekly RPs, 12 Monthly RPs, 1 Yearly RPs, After first year Duration, 5652 Total Storage', 12, '110680.00', '0.0000', '1328160', '0.00', '0', '0', '0', '0', NULL, 218, '2019-05-13 18:05:14', '2019-05-13 18:05:14'),
(615, 1, 'naira', 'Snapnet', 'Snapnet Implementation and support', 1, '1200000.00', '0.0000', '1200000', '0.00', '0', '0', '0', '0', NULL, 218, '2019-05-13 18:09:54', '2019-05-13 18:09:54'),
(616, 1, 'naira', 'Azure Backup', 'On-premises Servers/Clients Type, 1 Instance(s) x 1 TB, GRS Redundancy, Low Average Daily Churn, 30 Daily RPs, 6 Weekly RPs, 12 Monthly RPs, 1 Yearly RPs, After first year Duration, 2826 Total Storage', 12, '57165.00', '0.0000', '685980', '0.00', '0', '0', '0', '0', NULL, 219, '2019-05-13 18:13:08', '2019-05-13 18:13:08'),
(617, 1, 'naira', 'Snapnet', 'Snapnet Implementation and support', 1, '1000000.00', '0.0000', '1000000', '0.00', '0', '0', '0', '0', NULL, 219, '2019-05-13 18:13:30', '2019-05-13 18:13:30'),
(618, 1, 'naira', 'Zebra', 'TC7X UK COMPLETE SHARECRADLE KIT', 3, '284479.00', '0.0000', '853437', '0.00', '0', '0', '0', '0', NULL, 220, '2019-05-13 19:34:44', '2019-05-13 19:34:44'),
(619, 1, 'naira', 'Zebra', 'TC7X SNAP-ON TRIGGER HANDLE', 25, '98663.00', '0.0000', '2466575', '0.00', '0', '0', '0', '0', NULL, 220, '2019-05-13 19:36:14', '2019-05-13 19:36:14'),
(620, 1, 'naira', 'Zebra', 'TC7X SNAP-ON MSR', 25, '87154.00', '0.0000', '2178850', '0.00', '0', '0', '0', '0', NULL, 220, '2019-05-13 19:37:58', '2019-05-13 19:37:58'),
(621, 1, 'naira', 'Zebra', 'TC7X SNAP-ON USB/CHARGE CABLE', 25, '39465.00', '0.0000', '986625', '0.00', '0', '0', '0', '0', NULL, 220, '2019-05-13 19:39:16', '2019-05-13 19:39:16'),
(622, 1, 'naira', 'Zebra', 'TC7X SNAP-ON SERIAL/ CHARGE CABLE', 2, '32888.00', '0.0000', '65776', '0.00', '0', '0', '0', '0', NULL, 220, '2019-05-13 19:40:26', '2019-05-13 19:40:26'),
(623, 1, 'naira', 'Zebra', 'LVL VI AC/DC PWRS AC INPUT 100-240V .6A', 20, '12498.00', '0.0000', '249960', '0.00', '0', '0', '0', '0', NULL, 220, '2019-05-13 19:41:43', '2019-05-13 19:41:43'),
(624, 1, 'naira', 'Zebra', 'DC CABLE FOR PWRBUA5V16W0WW', 20, '2629.00', '0.0000', '52580', '0.00', '0', '0', '0', '0', NULL, 220, '2019-05-13 19:42:51', '2019-05-13 19:42:51'),
(625, 1, 'naira', 'Zebra', 'TC7X SOFT HOLSTER', 20, '31244.00', '0.0000', '624880', '0.00', '0', '0', '0', '0', NULL, 220, '2019-05-13 19:43:59', '2019-05-13 19:43:59'),
(626, 1, 'naira', 'Freight and Customs Fare', 'Freight and Customs', 1, '230000.00', '0.0000', '230000', '0.00', '0', '0', '0', '0', NULL, 220, '2019-05-13 22:43:49', '2019-05-13 22:43:49'),
(627, NULL, NULL, 'Office 365 Enterprise E3', 'Upgrade of Business Premium License to E3 License (7 month)', 4, '18900.00', '0.0000', '75600', '0.00', '0', '0', '0', '0', NULL, 221, '2019-05-13 23:16:12', '2019-05-17 15:31:14'),
(628, NULL, NULL, 'Microsoft Windows 10 Pro Volume License', 'Microsoft Windows 10 Pro Volume License: 320 licenses, 12 months', 320, '66132.00', '0.0000', '21162240', '0.00', '0', '0', '0', '0', NULL, 222, '2019-05-14 00:21:28', '2019-05-14 00:30:31');
INSERT INTO `items` (`id`, `rate`, `currency`, `productName`, `description`, `quantity`, `unitcost`, `discount`, `total`, `dtotal`, `subtotal`, `servicetotal`, `vattotal`, `gtotal`, `org_id`, `invoice_id`, `created_at`, `updated_at`) VALUES
(629, 1, 'naira', 'Microsoft Office Proplus 2019. Part Number: 79P-05729', 'OfficeProPlus 2019 SNGL OLP NL', 3532, '208210.00', '0.0000', '735397720', '0.00', '0', '0', '0', '0', NULL, 223, '2019-05-14 16:08:58', '2019-05-14 16:08:58'),
(630, 1, 'naira', 'Microsoft Project Professional. Part Number: H30-05830', 'PrjctPro 2019 SNGL OLP NL w1PrjctSvrCAL', 12, '385184.00', '0.0000', '4622208', '0.00', '0', '0', '0', '0', NULL, 223, '2019-05-14 16:11:05', '2019-05-14 16:11:05'),
(631, NULL, NULL, 'Microsoft Visio Standard. Part Number: D86-05868', 'VisioStd 2019 SNGL OLP NL', 12, '104439.00', '0.0000', '1253268', '0.00', '0', '0', '0', '0', NULL, 223, '2019-05-14 16:13:06', '2019-05-14 16:13:58'),
(632, 1, 'naira', 'Microsoft Visio Professional. Part Number: D87-07499', 'VisioPro 2019 SNGL OLP NL', 12, '183372.00', '0.0000', '2200464', '0.00', '0', '0', '0', '0', NULL, 223, '2019-05-14 16:15:28', '2019-05-14 16:15:28'),
(633, NULL, NULL, 'Microsoft Visual Studio Professional. Part Number: C5E-01307', 'VSPro 2017 SNGL OLP NL', 39, '185493.00', '0.0000', '7234227', '0.00', '0', '0', '0', '0', NULL, 223, '2019-05-14 16:17:26', '2019-05-14 16:27:05'),
(634, 1, 'naira', 'Microsoft SharePoint Server. Part Number: 76P-02031', 'SharePointSvr 2019 SNGL OLP NL', 1, '2839719.00', '0.0000', '2839719', '0.00', '0', '0', '0', '0', NULL, 223, '2019-05-14 16:18:36', '2019-05-14 16:18:36'),
(635, 1, 'naira', 'Microsoft SharePoint Standard CAL License. Part Number: 76M-01689', 'SharePointStdCAL 2019 SNGL OLP NL UsrCAL', 16, '51256.00', '0.0000', '820096', '0.00', '0', '0', '0', '0', NULL, 223, '2019-05-14 16:20:43', '2019-05-14 16:20:43'),
(636, 1, 'naira', 'Microsoft Skype for business server. Part Number: 5HU-00410', 'SfBSvr 2019 SNGL OLP NL', 1, '1523146.00', '0.0000', '1523146', '0.00', '0', '0', '0', '0', NULL, 223, '2019-05-14 16:21:58', '2019-05-14 16:21:58'),
(637, 1, 'naira', 'Microsoft Skype for Business standard server CAL License. Part Number: 6ZH-00732', 'SfBSvrStdCAL 2019 SNGL OLP NL UsrCAL', 7, '17106.00', '0.0000', '119742', '0.00', '0', '0', '0', '0', NULL, 223, '2019-05-14 16:23:37', '2019-05-14 16:23:37'),
(644, NULL, NULL, '19 Inch Momnitor Screen Protector', '19 Inch Monitor Screen Protector', 5, '20500.00', '0.0000', '102500', '0.00', '0', '0', '0', '0', NULL, 224, '2019-05-14 16:51:11', '2019-05-14 16:54:28'),
(645, NULL, NULL, 'Freight and Shipping', 'Freight and Shipping', 1, '5000.00', '0.0000', '5000', '0.00', '0', '0', '0', '0', NULL, 224, '2019-05-14 16:52:20', '2019-05-15 14:43:11'),
(646, 1, 'naira', 'Sophos', 'Sophos Central Intercept X advanced - 1 year (10-24 user band)', 20, '23756.00', '0.0000', '475120', '0.00', '0', '0', '0', '0', NULL, 226, '2019-05-14 20:48:33', '2019-05-14 20:48:33'),
(647, NULL, NULL, 'Rave Tracker', 'Rave temperature sensor with GPS location tracker + 2G /3G SIM port (one-off payment) - Exterior Installation ONLY', 30000, '36000.00', '0.0000', '1080000000', '0.00', '0', '0', '0', '0', NULL, 225, '2019-05-14 21:42:08', '2019-05-21 01:30:37'),
(648, 1, 'naira', 'Synology', 'QNAP DISC STATION DS218 PLAY STORAGE SYSTEM TS-251A Plus TWO 4TB HDD', 1, '310500.00', '0.0000', '310500', '0.00', '0', '0', '0', '0', NULL, 226, '2019-05-14 21:44:21', '2019-05-14 21:44:21'),
(649, 1, 'naira', 'Implementation', 'Implementation', 1, '196405.00', '0.0000', '196405', '0.00', '0', '0', '0', '0', NULL, 226, '2019-05-14 21:45:32', '2019-05-14 21:45:32'),
(650, NULL, NULL, 'Rave Cloud Subscription', 'Rave web application for control, monitoring and analysis (1 year)', 1, '6000000.00', '0.0000', '6000000', '0.00', '0', '0', '0', '0', NULL, 225, '2019-05-15 01:22:47', '2019-05-21 01:23:00'),
(651, NULL, NULL, 'IOT data plan', 'Internet data plan subscription for API calls to Rave Cloud Application (Annual recurring )', 30000, '1500.00', '0.0000', '45000000', '0.00', '0', '0', '0', '0', NULL, 225, '2019-05-15 01:46:18', '2019-05-18 00:36:12'),
(652, NULL, NULL, 'Rave Tracker', 'Professional charge for setup and customization (one-off payment)', 30000, '5000.00', '0.0000', '150000000', '0.00', '0', '0', '0', '0', NULL, 225, '2019-05-15 02:18:14', '2019-05-21 01:27:31'),
(653, NULL, NULL, 'Cloud Hosting', 'Cloud Hosting (Annual recurring)', 1, '18000000.00', '0.0000', '18000000', '0.00', '0', '0', '0', '0', NULL, 225, '2019-05-16 00:58:32', '2019-05-21 01:24:43'),
(655, 1, 'naira', 'HCMATRIX', 'HCMatrix ELITE Annual Subscription for Super Users/User/Annum (12 months). Recurring', 4, '35040.00', '0.0000', '140160', '0.00', '0', '0', '0', '0', NULL, 228, '2019-05-16 21:35:35', '2019-05-16 21:35:35'),
(656, 1, 'naira', 'HCMATRIX', 'HCMatrix ELITE Annual Subscription for Lite users/User/Annum (12 Months), Recurring', 34, '21900.00', '0.0000', '744600', '0.00', '0', '0', '0', '0', NULL, 228, '2019-05-16 21:36:00', '2019-05-16 21:36:00'),
(657, NULL, NULL, 'HCMATRIX', 'HcMATRIX Auto Payroll Bank charge for dormant users. 50naira/user/12 Months (Recurring)', 74, '600.00', '0.0000', '44400', '0.00', '0', '0', '0', '0', NULL, 228, '2019-05-16 21:37:33', '2019-05-16 21:38:27'),
(658, NULL, NULL, 'HCMATRIX', 'Implementation, Setup and Migration of data & Legacy information', 1, '700000.00', '0.0000', '700000', '0.00', '0', '0', '0', '0', NULL, 228, '2019-05-16 21:39:22', '2019-05-17 15:25:53'),
(659, 1, 'naira', 'HCMATRIX', 'Annual Support', 1, '90000.00', '0.0000', '90000', '0.00', '0', '0', '0', '0', NULL, 228, '2019-05-16 21:39:50', '2019-05-16 21:39:50'),
(662, 1, 'naira', 'SI-Matrix', 'SI-Matrix inventory Web Application + hosting fee(1 year recurring subscription)', 1, '500000.00', '0.0000', '500000', '0.00', '0', '0', '0', '0', NULL, 229, '2019-05-17 03:16:39', '2019-05-17 03:16:39'),
(663, NULL, NULL, 'SI-Matrix', 'Professional charge for setup and customization', 1, '2025000.00', '0.0000', '2025000', '0.00', '0', '0', '0', '0', NULL, 229, '2019-05-17 03:20:41', '2019-05-17 16:58:24'),
(666, 1, 'naira', 'test', 'test', 1, '1000.00', '0.0000', '1000', '0.00', '0', '0', '0', '0', NULL, 162, '2019-05-17 14:32:09', '2019-05-17 14:32:09'),
(667, NULL, NULL, 'test', 'test', 2, '2000.00', '0.0000', '4000', '0.00', '0', '0', '0', '0', NULL, 159, '2019-05-17 14:35:06', '2019-05-17 14:35:32'),
(668, NULL, NULL, 'IMPERVA', 'FlexProtect Plus for Data Security, 8 Server Base Plan, Annual Enhanced Subsription', 1, '100980.00', '0.0000', '100980', '0.00', '0', '0', '0', '0', NULL, 230, '2019-05-17 18:33:15', '2019-05-17 18:36:49'),
(670, 1, 'dollar', 'IMPERVA', 'Professional Services Tier 2 - Sr. Consultant or Business Assurance Manager, Per Hour', 160, '389.00', '0.0000', '62240', '0.00', '0', '0', '0', '0', NULL, 230, '2019-05-17 18:45:16', '2019-05-17 18:45:16'),
(672, 1, 'dollar', 'IMPERVA', 'Training units, for 2 student', 8, '802.00', '0.0000', '6416', '0.00', '0', '0', '0', '0', NULL, 230, '2019-05-17 18:48:10', '2019-05-17 18:48:10'),
(673, 1, 'dollar', 'IMPERVA', 'FlexProtect Plus for Application Security, 50Mbps Base Plan, Annual Enhanced Subscription', 1, '51300.00', '0.0000', '51300', '0.00', '0', '0', '0', '0', NULL, 231, '2019-05-17 18:54:37', '2019-05-17 18:54:37'),
(674, 1, 'dollar', 'IMPERVA', 'Add 1 to 4 applications to FlexProtect Plus for Application Security, Annual Enhanced Subscription (per app)', 4, '770.00', '0.0000', '3080', '0.00', '0', '0', '0', '0', NULL, 231, '2019-05-17 18:56:04', '2019-05-17 18:56:04'),
(675, 1, 'dollar', 'IMPERVA', 'WAF Quick Start Deployment Package, 2 Weeks', 1, '36552.00', '0.0000', '36552', '0.00', '0', '0', '0', '0', NULL, 231, '2019-05-17 18:57:18', '2019-05-17 18:57:18'),
(676, NULL, NULL, 'Office 365', 'Office 365 Business Premium/User/1 Month', 2, '9125.00', '5.0000', '18250', '0.00', '0', '0', '0', '0', NULL, 232, '2019-05-17 19:08:20', '2019-05-17 19:10:13'),
(677, NULL, NULL, 'HCMatrix Employee Appraisal and Nomination (Additional Module ) - Unlimited Users', 'HCMatrix Employee Appraisal and Nomination (Additional Module )', 1, '5651000.00', '0.0000', '5651000', '0.00', '0', '0', '0', '0', NULL, 233, '2019-05-20 17:24:18', '2019-05-20 17:27:07'),
(678, NULL, NULL, 'Administrator Training for Ten  (10) Administrators - FREE', 'Administrator Training for Ten  (10) Administrators - FREE', 1, '0.00', '0.0000', '0', '0.00', '0', '0', '0', '0', NULL, 233, '2019-05-20 17:26:06', '2019-05-20 17:26:45'),
(679, NULL, NULL, 'Explainer Videos - FREE', 'Explainer Videos - FREE', 1, '1.00', '0.0000', '1', '0.00', '0', '0', '0', '0', NULL, 233, '2019-05-20 17:27:49', '2019-05-20 17:28:31'),
(680, 1, 'naira', 'DC Rectifiers', 'DC Rectifiers', 30000, '10000.00', '0.0000', '300000000', '0.00', '0', '0', '0', '0', NULL, 225, '2019-05-21 01:25:37', '2019-05-21 01:25:37'),
(681, NULL, NULL, 'HCMatrix', 'HCMatrix Annual User Subscription ($2.5 user/month)', 50, '10800.00', '0.0000', '540000', '0.00', '0', '0', '0', '0', NULL, 235, '2019-05-22 18:00:48', '2019-05-30 23:40:23'),
(682, NULL, NULL, 'HCMatrix', 'Out of the Box Implementation (one-off payment)', 1, '500000.00', '0.0000', '500000', '0.00', '0', '0', '0', '0', NULL, 235, '2019-05-22 18:07:47', '2019-05-30 20:12:58'),
(684, 1, 'naira', 'HCMatrix', 'Annual System Support', 1, '162000.00', '0.0000', '162000', '0.00', '0', '0', '0', '0', NULL, 235, '2019-05-22 18:11:04', '2019-05-22 18:11:04'),
(685, NULL, NULL, 'HCMatrix', 'Training', 3, '72000.00', '0.0000', '216000', '0.00', '0', '0', '0', '0', NULL, 235, '2019-05-22 18:13:06', '2019-05-30 20:09:18'),
(686, 1, 'naira', 'Microsoft Azure Backup (Virtual machines)', '1 E32s v3 (32 vCPU(s), 256 GB RAM) x 730 Hours; Windows – SQL Server; Pay as you go; 1 managed OS disks – E30, 100 transaction units', 1, '4299832.00', '0.0000', '4299832', '0.00', '0', '0', '0', '0', NULL, 236, '2019-05-22 19:49:21', '2019-05-22 19:49:21'),
(687, 1, 'naira', 'Storage accounts/Annum', 'Block Blob Storage, General Purpose V2, LRS Redundancy, Hot Access Tier, 1,000 GB Capacity, 100,000 Write operations, 100,000 List and Create Container operations, 100,000 Read operations, 1 Other operations. 1,000 GB Data Retrieval, 1,000 GB Data Write', 12, '7800.00', '0.0000', '93600', '0.00', '0', '0', '0', '0', NULL, 236, '2019-05-22 19:51:28', '2019-05-22 19:51:28'),
(688, 1, 'naira', 'App service', 'Standard Tier; 25 S2 (2 Core(s), 3.5 GB RAM, 50 GB Storage) x 730 Hours; Windows OS', 1, '1332250.00', '0.0000', '1332250', '0.00', '0', '0', '0', '0', NULL, 236, '2019-05-22 19:57:08', '2019-05-22 19:57:08'),
(689, 1, 'naira', 'Microsoft Azure Backup', 'Snapnet Implementation and support', 1, '1973878.00', '0.0000', '1973878', '0.00', '0', '0', '0', '0', NULL, 236, '2019-05-22 20:03:23', '2019-05-22 20:03:23'),
(690, NULL, NULL, 'HCMatrix Premium Plan Annual Subscription (Per/User/Year)', 'HCMatrix Premium Plan Annual Subscription (Per/User/Year)', 100, '13140.00', '0.0000', '1314000', '0.00', '0', '0', '0', '0', NULL, 237, '2019-05-23 00:54:08', '2019-05-23 01:09:00'),
(691, 1, 'naira', 'HCMatrix Implementation and Customization - (One Time Payment )', 'HCMatrix Implementation and Customization - (One Time Payment)', 1, '3000000.00', '0.0000', '3000000', '0.00', '0', '0', '0', '0', NULL, 238, '2019-05-23 01:14:28', '2019-05-23 01:14:28'),
(692, NULL, NULL, 'HCMatrix Training x3 Administration', 'HCMatrix Training x3 Administrators', 3, '200000.00', '0.0000', '600000', '0.00', '0', '0', '0', '0', NULL, 238, '2019-05-23 01:16:19', '2019-05-23 01:16:38'),
(693, 1, 'naira', 'Annual Software Assurance  and Support - (OPTIONAL)', 'Annual Software Assurance  and Support - (OPTIONAL)', 1, '328500.00', '0.0000', '328500', '0.00', '0', '0', '0', '0', NULL, 237, '2019-05-23 01:20:23', '2019-05-23 01:20:23'),
(694, 1, 'naira', 'Office 365 Business Essentials', 'Office 365 Business Essentials (Annual Subscription)', 23, '21600.00', '0.0000', '496800', '0.00', '0', '0', '0', '0', NULL, 239, '2019-05-23 14:56:58', '2019-05-23 14:56:58'),
(695, NULL, NULL, 'RAM', '4GB DDR3 RAM', 50, '11000.00', '0.0000', '550000', '0.00', '0', '0', '0', '0', NULL, 227, '2019-05-23 20:24:45', '2019-06-03 17:09:35'),
(696, NULL, NULL, 'FlexProtect Premier for Data Security, 8 Server Base Plan, Annual Enhanced Subscription', 'FlexProtect Premier for Data Security, 8 Server Base Plan, Annual Enhanced Subscription', 1, '64750000.00', '0.0000', '64750000', '0.00', '0', '0', '0', '0', NULL, 242, '2019-05-24 19:57:52', '2019-06-01 18:40:15'),
(697, NULL, NULL, 'Training Units for 2 Students', 'Training Units for 2 Students', 8, '323750.00', '0.0000', '2590000', '0.00', '0', '0', '0', '0', NULL, 242, '2019-05-24 20:04:46', '2019-06-01 18:44:49'),
(700, NULL, NULL, 'Professional Services Tier 2- Sr. Consultant or Business Assurance Manager; Per Hour', 'Professional Services Tier 2- Sr. Consultant or Business Assurance Manager; Per Hour', 200, '149110.00', '0.0000', '29822000', '0.00', '0', '0', '0', '0', NULL, 242, '2019-05-24 20:08:24', '2019-06-01 18:46:22'),
(701, NULL, NULL, 'Travel and Expenses, Per Engagement, Per Week', 'Travel and Expenses, Per Engagement, Per Week', 5, '1354000.00', '0.0000', '6770000', '0.00', '0', '0', '0', '0', NULL, 242, '2019-05-24 20:12:12', '2019-06-01 18:54:52'),
(702, 1, 'naira', 'Application Development-Unlimited number of Users', 'Application Development-Unlimited number of Users', 1, '38850000.00', '0.0000', '38850000', '0.00', '0', '0', '0', '0', NULL, 241, '2019-05-24 20:19:30', '2019-05-24 20:19:30'),
(703, NULL, NULL, 'Training Offshore', 'Training Offshore  x10', 1, '22200000.00', '0.0000', '22200000', '0.00', '0', '0', '0', '0', NULL, 241, '2019-05-24 20:20:18', '2019-05-24 20:25:27'),
(704, 1, 'naira', 'Training for Operators', 'Training for Operators', 1, '5550000.00', '0.0000', '5550000', '0.00', '0', '0', '0', '0', NULL, 241, '2019-05-24 20:21:08', '2019-05-24 20:21:08'),
(705, 1, 'naira', 'Annual Maintenance Support', 'Annual Maintenance Support', 1, '5827500.00', '0.0000', '5827500', '0.00', '0', '0', '0', '0', NULL, 241, '2019-05-24 20:22:03', '2019-05-24 20:22:03'),
(706, NULL, NULL, 'Office 365', 'Office 365 Enterprise E3', 2, '28960.00', '10.0000', '57920', '0.00', '0', '0', '0', '0', NULL, 243, '2019-05-28 15:30:32', '2019-05-28 15:38:12'),
(707, NULL, NULL, 'Office 365 Business Essentials', 'Office 365 Business Essentials (12months)', 5, '22680.00', '0.0000', '113400', '0.00', '0', '0', '0', '0', NULL, 244, '2019-05-28 23:05:04', '2019-05-28 23:05:50'),
(708, NULL, NULL, 'Microsoft Offcie 365', 'Office 365 Business Premium/User/Annum', 37, '54300.00', '10.0000', '2009100', '0.00', '0', '0', '0', '0', NULL, 245, '2019-05-30 17:27:48', '2019-05-31 14:27:22'),
(709, 1, 'naira', 'Microsoft Exchange Online', 'Exchange Online Plan 1', 4, '17376.00', '5.0000', '69504', '0.00', '0', '0', '0', '0', NULL, 245, '2019-05-30 17:30:29', '2019-05-30 17:30:29'),
(710, 1, 'naira', 'office 365', 'Office 365 Business Premium/User/Annum', 1, '54300.00', '5.0000', '54300', '0.00', '0', '0', '0', '0', NULL, 246, '2019-06-03 14:49:32', '2019-06-03 14:49:32'),
(713, NULL, NULL, 'Microsoft Office 365', 'Business essentials', 5, '21720.00', '5.0000', '108600', '0.00', '0', '0', '0', '0', NULL, 245, '2019-06-03 16:45:40', '2019-06-03 18:27:15'),
(714, NULL, NULL, 'Microsoft Power BI License', 'Microsoft Power BI License Annual Subscription $120/user/Year', 1000, '43560.00', '0.0000', '43560000', '0.00', '0', '0', '0', '0', NULL, 247, '2019-06-03 18:10:25', '2019-06-03 18:12:06'),
(717, NULL, NULL, 'Mentoring Application', 'Admin Mentors Licenses + Azure Hosting/Annum', 5, '48000.00', '0.0000', '240000', '0.00', '0', '0', '0', '0', NULL, 248, '2019-06-03 20:27:25', '2019-06-03 21:32:44'),
(718, NULL, NULL, 'Mentoring Application', 'Mentors Licenses + Azure Hosting/Annum', 50, '30000.00', '0.0000', '1500000', '0.00', '0', '0', '0', '0', NULL, 248, '2019-06-03 20:27:50', '2019-06-03 21:33:00'),
(719, NULL, NULL, 'Mentoring Application', 'Mentees Licenses + Azure Hosting/Annum', 1000, '3000.00', '0.0000', '3000000', '0.00', '0', '0', '0', '0', NULL, 248, '2019-06-03 20:28:48', '2019-06-03 21:35:41'),
(720, 1, 'naira', 'Annual Support', 'Annual Support', 1, '0.00', '0.0000', '0', '0.00', '0', '0', '0', '0', NULL, 248, '2019-06-03 20:36:11', '2019-06-03 20:36:11'),
(721, NULL, NULL, 'Cisco WS-C2960X-24PS-L', 'Catalyst 2960-X 24 GigE PoE 370W, 4 x 1G SFP, LAN Base', 1, '430495.00', '0.0000', '430495', '0.00', '0', '0', '0', '0', NULL, 249, '2019-06-06 19:17:34', '2019-06-06 19:20:38'),
(722, 1, 'naira', 'Cisco CON-SNT-WSC224SL', '1 Year  smartnet SNTC-8X5XNBD Catalyst 2960-X 24 G', 1, '0.00', '0.0000', '0', '0.00', '0', '0', '0', '0', NULL, 249, '2019-06-06 19:18:26', '2019-06-06 19:18:26'),
(723, 1, 'naira', 'Cisco CAB-ACU', 'AC Power Cord (UK), C13, BS 1363, 2.5m', 1, '12950.00', '0.0000', '12950', '0.00', '0', '0', '0', '0', NULL, 249, '2019-06-06 19:19:51', '2019-06-06 19:19:51'),
(724, 1, 'naira', 'HP 250 G6 Laptop', 'HP 250 G6 Core i3, 4gb RAM, 500gb HDD Windows 10 Pro', 1, '186000.00', '0.0000', '186000', '0.00', '0', '0', '0', '0', NULL, 250, '2019-06-06 20:41:55', '2019-06-06 20:41:55'),
(725, NULL, NULL, 'Microsoft SQL Server', 'SQLSvrStdCore 2017 SNGL OLP 2Lic NL CoreLic Qlfd (Perpetual License)', 14, '1216258.00', '0.0000', '17027612', '0.00', '0', '0', '0', '0', NULL, 251, '2019-06-07 20:31:14', '2019-06-11 16:01:01'),
(726, 1, 'naira', 'SQL Server 2017', 'SQL Server 2017 Standard Core (1 Year Subscription)', 14, '541597.00', '0.0000', '7582358', '0.00', '0', '0', '0', '0', NULL, 252, '2019-06-07 20:39:22', '2019-06-07 20:39:22'),
(727, NULL, NULL, 'HCMatrix', 'HCMatrix Annual User Standard Subscription (#1095/user/month)', 20, '13140.00', '0.0000', '262800', '0.00', '0', '0', '0', '0', NULL, 253, '2019-06-07 21:46:47', '2019-06-07 21:50:53'),
(728, NULL, NULL, 'HCMatrix', 'Out of the box implementation', 1, '800000.00', '0.0000', '800000', '0.00', '0', '0', '0', '0', NULL, 253, '2019-06-07 21:49:50', '2019-06-07 21:51:29'),
(730, NULL, NULL, 'HCMatrix', 'Biometric Capture Device for Time and Attendance', 1, '100000.00', '0.0000', '100000', '0.00', '0', '0', '0', '0', NULL, 253, '2019-06-07 21:53:16', '2019-06-07 21:53:37'),
(731, 1, 'naira', 'HCMatrix', 'HCMatrix Admin training for 2 users', 2, '100000.00', '0.0000', '200000', '0.00', '0', '0', '0', '0', NULL, 253, '2019-06-07 21:54:42', '2019-06-07 21:54:42'),
(732, 1, 'naira', 'HCMatrix', 'HCMatrix Annual Support', 1, '160000.00', '0.0000', '160000', '0.00', '0', '0', '0', '0', NULL, 253, '2019-06-07 21:55:58', '2019-06-07 21:55:58'),
(733, NULL, NULL, 'HCMatrix Time and Attendance Management System', 'Time and Attendance Annual Subscription fee', 20, '8760.00', '0.0000', '175200', '0.00', '0', '0', '0', '0', NULL, 254, '2019-06-07 22:00:48', '2019-06-11 00:27:07'),
(735, NULL, NULL, 'Time and Attendance Management System', 'GT200 HCMatrix Biometric Capture Device', 1, '100000.00', '0.0000', '100000', '0.00', '0', '0', '0', '0', NULL, 254, '2019-06-07 22:04:25', '2019-06-11 00:50:45'),
(737, NULL, NULL, 'T&A out of the box implementation', 'Out of the box Implementation Charge (within Lagos State)', 1, '60000.00', '0.0000', '60000', '0.00', '0', '0', '0', '0', NULL, 254, '2019-06-07 22:07:48', '2019-06-11 00:51:18'),
(738, 1, 'naira', 'Microsoft Exchange Online', 'Kiosk Plan', 10, '8664.00', '0.0000', '86640', '0.00', '0', '0', '0', '0', NULL, 255, '2019-06-10 17:17:00', '2019-06-10 17:17:00'),
(739, NULL, NULL, 'T&A Technical Annual Support', 'Annual recurrent support', 1, '41280.00', '0.0000', '41280', '0.00', '0', '0', '0', '0', NULL, 254, '2019-06-11 00:31:18', '2019-06-11 00:45:11'),
(740, NULL, NULL, 'HP Entry Level server', 'Hpe Proliant ML 30 Gen 9 E3-1220v6(3.0ghz Quad Core 1p 32gb Ram 2tb Hdd B140i 4lff Nhp 350w Ps Entry Server', 2, '815948.00', '0.0000', '1631896', '0.00', '0', '0', '0', '0', NULL, 256, '2019-06-11 13:14:52', '2019-06-11 13:16:08'),
(741, NULL, NULL, 'Dynamics 365', 'Dynamics 365 Unified Operations (Finance & Operations, Retail, Talent - Annual Subscription)', 20, '820800.00', '0.0000', '16416000', '0.00', '0', '0', '0', '0', NULL, 257, '2019-06-11 14:10:11', '2019-06-11 14:56:41'),
(742, 1, 'naira', 'Implementation', 'Implementation (Data Migration, Customization, Training)', 1, '4104000.00', '0.0000', '4104000', '0.00', '0', '0', '0', '0', NULL, 257, '2019-06-11 14:57:43', '2019-06-11 14:57:43'),
(743, NULL, NULL, 'HCMATRIX', 'HCMatrix Premium Plan for Admin users Licenses/user/Month/Annum (Recurring)', 4, '21900.00', '0.0000', '87600', '0.00', '0', '0', '0', '0', NULL, 258, '2019-06-11 15:44:43', '2019-06-11 15:46:54'),
(744, NULL, NULL, 'HCMATRIX', 'HCMatrix Standard Plan for Normal users licenses/user/Month/Annum (Recurring)', 66, '9000.00', '0.0000', '594000', '0.00', '0', '0', '0', '0', NULL, 258, '2019-06-11 15:45:29', '2019-06-11 15:47:04'),
(745, 1, 'naira', 'HCMATRIX', 'Implementation, Setup and Migration of Legacy Information and Data (One-Time payment)', 1, '900000.00', '0.0000', '900000', '0.00', '0', '0', '0', '0', NULL, 258, '2019-06-11 15:46:23', '2019-06-11 15:46:23'),
(746, 1, 'naira', 'HCMATRIX', 'Annual Support (Optional) (Recurring)', 1, '90000.00', '0.0000', '90000', '0.00', '0', '0', '0', '0', NULL, 258, '2019-06-11 15:48:46', '2019-06-11 15:48:46'),
(747, NULL, NULL, 'SQL Server Standard Core 2-Pack - Annual Subscription', 'SQL Server Standard Core 2-Pack - Annual Subscription', 8, '569035.00', '0.0000', '4552280', '0.00', '0', '0', '0', '0', NULL, 260, '2019-06-11 17:42:01', '2019-06-11 20:21:29'),
(748, NULL, NULL, 'SQL Server Enterprise Core 2-Pack - Annual Subscription', 'SQL Server Enterprise Core 2-Pack - Annual Subscription', 4, '2181605.00', '0.0000', '8726420', '0.00', '0', '0', '0', '0', NULL, 260, '2019-06-11 17:46:12', '2019-06-11 20:21:51'),
(750, NULL, NULL, 'CISSteStdCore SNGL LicSAPk OLP 2Lic NL woWinSvrLic CoreLic Qlfd', 'CISSteStdCore SNGL LicSAPk OLP 2Lic NL woWinSvrLic CoreLic Qlfd', 2, '640559.00', '0.0000', '1281118', '0.00', '0', '0', '0', '0', NULL, 260, '2019-06-11 19:46:18', '2019-06-11 21:16:22'),
(751, NULL, NULL, 'CISSteStdCore SNGL LicSAPk OLP 2Lic NL CoreLic Qlfd', 'CISSteStdCore SNGL LicSAPk OLP 2Lic NL CoreLic Qlfd', 1, '985938.00', '0.0000', '985938', '0.00', '0', '0', '0', '0', NULL, 260, '2019-06-11 19:47:15', '2019-06-11 21:13:03'),
(752, 1, 'naira', 'CISSteDCCore SNGL LicSAPk OLP 2Lic NL CoreLic Qlfd', 'CISSteDCCore SNGL LicSAPk OLP 2Lic NL CoreLic Qlfd', 12, '579343.00', '0.0000', '6952116', '0.00', '0', '0', '0', '0', NULL, 260, '2019-06-11 19:48:05', '2019-06-11 19:48:05'),
(753, NULL, NULL, 'Dynamics 365 Unified Operations - Sandbox Tier 5: Premier Performance Testing', 'Dynamics 365 Unified Operations - Sandbox Tier 5: Premier Performance Testing  - 12 months Subscription', 1, '53280000.00', '0.0000', '53280000', '0.00', '0', '0', '0', '0', NULL, 261, '2019-06-14 17:53:12', '2019-06-14 21:02:22'),
(754, NULL, NULL, 'IBM', 'IBM Power System LC922 plus Red Hat Enterprise Linux 7 for Power Little Endian (5639-RLE)', 1, '83681.00', '0.0000', '83681', '0.00', '0', '0', '0', '0', NULL, 262, '2019-06-18 17:21:45', '2019-06-18 17:23:26'),
(755, 1, 'dollar', 'IBM', 'IBM Power System LC922 plus Red Hat Enterprise Linux 7 for Power Little Endian (5639-RLE)', 1, '48981.00', '0.0000', '48981', '0.00', '0', '0', '0', '0', NULL, 262, '2019-06-18 17:24:58', '2019-06-18 17:24:58'),
(756, 1, 'dollar', 'IBM', 'IBM Power System LC922 plus Red Hat Enterprise Linux 7 for Power Little Endian (5639-RLE)', 1, '52791.00', '0.0000', '52791', '0.00', '0', '0', '0', '0', NULL, 262, '2019-06-18 17:26:17', '2019-06-18 17:26:17'),
(757, 1, 'dollar', 'IBM', 'IBM Power System LC922 plus Red Hat Enterprise Linux 7 for Power Little Endian (5639-RLE)', 1, '65000.00', '0.0000', '65000', '0.00', '0', '0', '0', '0', NULL, 262, '2019-06-18 17:28:21', '2019-06-18 17:28:21'),
(758, NULL, NULL, 'Microsoft Power Bi', 'Power Bi license/User/Month(8 Months)', 1, '32580.00', '5.0000', '32580', '0.00', '0', '0', '0', '0', NULL, 263, '2019-06-19 21:52:01', '2019-06-20 14:12:26'),
(759, 1, 'naira', 'Microsoft Office', 'test', 1, '2222.00', '0.0000', '2222', '0.00', '0', '0', '0', '0', NULL, 264, '2019-08-01 08:04:58', '2019-08-01 08:04:58');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `newinvoice`
--

CREATE TABLE `newinvoice` (
  `id` int(10) NOT NULL,
  `orgid` int(10) NOT NULL,
  `invoiceName` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `type` varchar(100) NOT NULL DEFAULT 'normal',
  `hasvat` int(10) DEFAULT '1',
  `workflow_id` int(11) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `newinvoice`
--

INSERT INTO `newinvoice` (`id`, `orgid`, `invoiceName`, `status`, `type`, `hasvat`, `workflow_id`, `created_by`, `created_at`, `updated_at`) VALUES
(124, 9, 'Prime Atlantic Onboarding', 0, 'normal', 1, 0, 0, '2019-02-14 08:42:13', '2019-02-14 08:42:13'),
(128, 10, 'Prime Water View', 1, 'normal', 1, 0, 0, '2019-02-14 09:18:06', '2019-04-23 14:09:40'),
(135, 11, 'Prime Atlantic Office365', 1, 'normal', 1, 5, 0, '2019-02-14 10:54:21', '2019-04-26 17:46:02'),
(136, 11, 'Prime Atlantic Office365', 0, 'normal', 1, 0, 0, '2019-02-14 11:04:47', '2019-02-14 11:04:47'),
(137, 10, 'Prime Atlantic Office365', 0, 'normal', 1, 0, 0, '2019-02-14 11:08:07', '2019-02-14 11:08:07'),
(138, 7, 'Prime Atlantic Onboarding', 0, 'normal', 1, 0, 0, '2019-02-14 11:10:21', '2019-02-14 11:10:21'),
(139, 9, 'Prime Atlantic Office365', 1, 'normal', 1, 5, 0, '2019-02-14 11:18:37', '2019-02-20 06:54:06'),
(140, 12, 'Mobil Invoice for 365', 1, 'normal', 1, 5, 0, '2019-02-14 15:45:32', '2019-02-19 06:55:39'),
(141, 11, 'Falck Prime Invoice', 0, 'normal', 1, 0, 0, '2019-02-22 06:11:21', '2019-02-22 06:11:21'),
(142, 11, 'Falck Prime Invoice', 0, 'normal', 1, 0, 0, '2019-02-22 06:12:24', '2019-02-22 06:12:24'),
(143, 11, 'Falck Prime Invoice', 0, 'normal', 1, 0, 0, '2019-02-22 06:12:53', '2019-02-22 06:12:53'),
(144, 11, 'New  for Falck', 0, 'normal', 1, 0, 0, '2019-02-22 06:16:18', '2019-02-22 06:16:18'),
(145, 8, 'Test Inv', 1, 'normal', 1, 0, 0, '2019-02-22 06:17:45', '2019-02-22 09:03:05'),
(146, 13, 'Prime Atlantic Onboarding', 0, 'normal', 1, 0, 0, '2019-02-22 10:15:45', '2019-02-22 10:15:45'),
(147, 10, 'Test Flash', 0, 'normal', 1, 0, 0, '2019-02-22 11:08:37', '2019-02-22 11:08:37'),
(148, 11, 'Test flash 2', 0, 'normal', 1, 0, 0, '2019-02-22 11:09:25', '2019-02-22 11:09:25'),
(149, 9, 'Test Flash 3', 1, 'normal', 1, 0, 0, '2019-02-22 11:10:23', '2019-02-26 03:39:08'),
(150, 14, 'Final Invoice', 1, 'normal', 1, 0, 0, '2019-03-04 07:23:09', '2019-03-04 07:28:33'),
(151, 13, 'Business Central Consolidation', 0, 'normal', 1, 0, 0, '2019-03-04 22:54:17', '2019-03-04 22:54:17'),
(152, 13, 'Business Central Onboard', 0, 'normal', 1, 0, 0, '2019-03-04 23:09:36', '2019-03-04 23:09:36'),
(153, 14, 'HCMatrix', 0, 'normal', 1, 0, 0, '2019-03-08 22:47:56', '2019-03-08 22:47:56'),
(154, 15, 'Office 365 Proposal', 0, 'normal', 1, 0, 0, '2019-03-14 02:30:49', '2019-03-14 02:30:49'),
(155, 15, 'Prime Atlantic Office365', 0, 'normal', 1, 0, 0, '2019-03-14 17:00:54', '2019-03-14 17:00:54'),
(156, 15, 'Etranzact Consolidation', 0, 'normal', 1, 0, 5, '2019-03-14 21:19:38', '2019-03-14 21:19:38'),
(157, 7, 'Cloud Service for DPR', 0, 'normal', 1, 0, 5, '2019-03-14 22:19:40', '2019-03-14 22:19:40'),
(158, 14, 'Cloud Service for DPR', 1, 'normal', 1, 0, 5, '2019-03-14 22:20:17', '2019-03-14 10:41:03'),
(159, 14, 'Newark Invoice', 0, 'normal', 1, 0, 5, '2019-03-14 23:11:46', '2019-03-14 23:11:46'),
(160, 17, 'ABc Microsoft License', 1, 'normal', 1, 0, 1, '2019-03-15 14:54:56', '2019-03-15 15:05:18'),
(161, 18, 'Micosoft  O365 Renewal-March 2019', 0, 'normal', 1, 0, 9, '2019-03-15 15:59:24', '2019-03-15 15:59:24'),
(162, 19, 'Micosoft  O365 Business Essentials', 0, 'normal', 1, 0, 9, '2019-03-19 15:37:20', '2019-03-19 15:37:20'),
(163, 19, 'Micosoft  O365 Business Essentials', 1, 'normal', 1, 0, 9, '2019-03-19 17:50:30', '2019-03-19 09:11:17'),
(164, 13, 'Quotation for Falck Prime Atlantic', 1, 'normal', 1, 0, 9, '2019-03-19 17:57:47', '2019-03-19 09:17:19'),
(165, 13, 'Quotation for Optiplex 3050 & Dell Monitor', 1, 'normal', 1, 0, 9, '2019-03-20 16:56:21', '2019-03-25 16:30:02'),
(166, 20, 'HCMatrix Time Manager', 0, 'normal', 1, 0, 5, '2019-03-21 22:26:33', '2019-03-21 22:26:33'),
(168, 15, 'Office 365 implementation (Option 2; 200 Enterprise E3 and 50 Enterprise E1) and Sharepoint Online Implementation', 1, 'normal', 1, 0, 12, '2019-03-22 15:41:38', '2019-03-22 11:04:27'),
(169, 20, 'HCMatrix', 0, 'normal', 1, 0, 5, '2019-03-22 19:36:52', '2019-03-22 19:36:52'),
(170, 21, 'Office 365 License renewal', 1, 'normal', 1, 0, 12, '2019-03-25 19:05:46', '2019-03-27 11:10:01'),
(171, 22, 'HCMatrix', 1, 'normal', 1, 0, 8, '2019-03-25 22:05:14', '2019-03-25 10:45:46'),
(172, 21, 'HCMATRIX', 1, 'normal', 1, 0, 12, '2019-03-26 14:18:07', '2019-03-27 11:11:53'),
(173, 24, 'Microsoft Power BI Licenses', 1, 'normal', 1, 0, 12, '2019-03-27 22:21:39', '2019-03-27 11:12:24'),
(174, 25, 'Azure Site Recovery & Storage', 0, 'normal', 1, 0, 8, '2019-03-28 22:20:14', '2019-03-28 22:20:14'),
(175, 25, 'Azure Site Recovery & Storage 4VMs', 0, 'normal', 1, 0, 8, '2019-03-29 22:21:30', '2019-03-29 22:21:30'),
(176, 26, 'Annual Support fees for UBA Unifed Process Manager', 1, 'normal', 1, 0, 12, '2019-04-01 19:58:06', '2019-04-01 10:33:50'),
(177, 27, 'Office 365 Business premium Licenses purchase', 1, 'normal', 1, 0, 12, '2019-04-02 22:52:04', '2019-04-02 11:41:12'),
(178, 28, 'Dynamics Business Central Implementation', 1, 'normal', 1, 0, 13, '2019-04-02 23:49:19', '2019-04-02 12:44:45'),
(179, 29, 'Enterprise Reporting', 0, 'normal', 1, 0, 8, '2019-04-04 15:10:37', '2019-04-04 15:10:37'),
(180, 29, 'Social Media Sentiment Analysis', 0, 'normal', 1, 0, 8, '2019-04-04 15:21:48', '2019-04-04 15:21:48'),
(181, 30, 'Premium Support', 1, 'normal', 1, 0, 14, '2019-04-05 16:51:18', '2019-04-05 17:37:17'),
(182, 31, 'Quotation for Access Point and CAT 5 Cable', 1, 'normal', 1, 0, 12, '2019-04-05 19:01:21', '2019-04-05 09:48:28'),
(183, 33, 'Dynamics Business Central and HCMatrix Payroll', 1, 'normal', 1, 0, 8, '2019-04-09 16:10:10', '2019-04-09 17:14:29'),
(184, 32, 'Exchange online', 0, 'normal', 1, 0, 12, '2019-04-09 16:19:40', '2019-04-09 16:19:40'),
(185, 34, 'Office 365 License Renewal', 1, 'normal', 1, 0, 14, '2019-04-09 17:12:44', '2019-04-09 08:33:42'),
(186, 35, 'HCMatrix', 0, 'normal', 1, 0, 5, '2019-04-09 22:09:37', '2019-04-09 22:09:37'),
(187, 35, 'HCMatrix', 0, 'normal', 1, 0, 5, '2019-04-10 18:00:47', '2019-04-10 18:00:47'),
(188, 36, 'SOPHOS  License', 1, 'normal', 1, 0, 14, '2019-04-11 15:05:44', '2019-04-26 18:09:01'),
(189, 29, 'Office 365 Renewal', 1, 'normal', 1, 0, 8, '2019-04-11 16:44:02', '2019-04-23 18:13:55'),
(190, 37, 'Office 365 Business Premium', 1, 'normal', 1, 0, 8, '2019-04-15 17:43:19', '2019-04-26 18:09:58'),
(191, 29, 'Office 365 Renewal', 1, 'normal', 1, 0, 8, '2019-04-16 14:05:14', '2019-04-18 15:11:46'),
(192, 38, 'Azure Subscription', 1, 'normal', 1, 0, 8, '2019-04-16 21:20:29', '2019-04-26 18:09:43'),
(193, 39, 'Zebra Barcode label printer', 1, 'normal', 1, 0, 12, '2019-04-18 13:57:33', '2019-04-26 17:41:29'),
(194, 31, 'Samsung Tablet', 1, 'normal', 1, 0, 12, '2019-04-18 18:31:51', '2019-04-26 17:41:49'),
(195, 37, 'Microsoft 365', 1, 'normal', 1, 0, 8, '2019-04-18 18:37:22', '2019-04-26 17:43:44'),
(196, 40, 'SharePoint Online Enhancement', 1, 'normal', 1, 0, 14, '2019-04-23 16:13:02', '2019-04-23 16:36:44'),
(198, 41, 'Quote for Business Machines', 1, 'normal', 1, 0, 12, '2019-04-25 16:38:17', '2019-04-26 17:57:16'),
(199, 42, 'Office 365 License Renewal', 1, 'normal', 1, 0, 14, '2019-04-26 15:26:31', '2019-04-26 17:41:05'),
(200, 42, 'Office 365 License', 1, 'normal', 1, 0, 14, '2019-04-26 15:49:27', '2019-04-26 17:37:41'),
(201, 43, 'Office 365 Business Essentials', 1, 'normal', 1, 0, 8, '2019-04-26 16:07:48', '2019-04-26 17:30:12'),
(202, 44, 'HCMatrix', 1, 'normal', 1, 0, 8, '2019-04-26 16:34:42', '2019-04-26 17:43:18'),
(203, 43, 'Office 365 Business Essentials', 0, 'normal', 1, 0, 8, '2019-04-29 22:38:56', '2019-04-29 22:38:56'),
(204, 41, 'HP Business Machines', 1, 'normal', 1, 0, 12, '2019-04-30 17:43:39', '2019-05-08 13:41:15'),
(205, 45, 'HCMatrix', 0, 'normal', 1, 0, 17, '2019-05-02 21:38:34', '2019-05-02 21:38:34'),
(206, 31, 'Quote for Screw Driver set', 0, 'normal', 1, 0, 12, '2019-05-03 17:12:06', '2019-05-03 17:12:06'),
(207, 46, 'HCMatrix Standard Subscription', 0, 'normal', 1, 0, 17, '2019-05-03 22:51:43', '2019-05-03 22:51:43'),
(208, 29, 'Office 365 E3 Renewal', 0, 'normal', 1, 0, 8, '2019-05-06 21:18:44', '2019-05-06 21:18:44'),
(209, 47, 'Sophos Central Endpoint', 0, 'normal', 1, 0, 14, '2019-05-07 14:11:41', '2019-05-07 14:11:41'),
(210, 48, 'HCMATRIX Time manager', 1, 'normal', 1, 0, 12, '2019-05-07 16:09:59', '2019-05-08 13:38:32'),
(211, 27, 'Exchange online', 1, 'normal', 1, 0, 12, '2019-05-07 18:14:43', '2019-05-08 13:38:07'),
(212, 31, 'Quote for Laptop', 0, 'normal', 1, 0, 12, '2019-05-08 17:53:58', '2019-05-08 17:53:58'),
(213, 49, 'Zebra', 1, 'normal', 1, 0, 8, '2019-05-08 18:22:34', '2019-05-08 13:39:34'),
(214, 50, 'HCMatrix', 0, 'normal', 1, 0, 5, '2019-05-09 20:17:49', '2019-05-09 20:17:49'),
(215, 52, 'Microsoft 365', 0, 'normal', 1, 0, 8, '2019-05-09 22:17:32', '2019-05-09 22:17:32'),
(216, 41, 'All-in-One Desktop', 0, 'normal', 1, 0, 12, '2019-05-10 17:30:33', '2019-05-10 17:30:33'),
(217, 51, 'HCMatrix Payroll with Time and Attendance Monitoring System', 0, 'normal', 1, 0, 17, '2019-05-10 19:15:12', '2019-05-10 19:15:12'),
(218, 53, 'Azure Backup', 0, 'normal', 1, 0, 12, '2019-05-13 18:04:12', '2019-05-13 18:04:12'),
(219, 53, 'Azure Backup 1TB', 0, 'normal', 1, 0, 12, '2019-05-13 18:12:16', '2019-05-13 18:12:16'),
(220, 49, 'Zebra Accessories', 1, 'normal', 1, 0, 8, '2019-05-13 19:28:02', '2019-05-13 10:44:39'),
(221, 54, 'Licenses upgrade - E3 Licenses', 0, 'normal', 1, 0, 14, '2019-05-13 20:11:37', '2019-05-13 20:11:37'),
(222, 55, 'Microsoft Windows 10 Pro Volume License', 1, 'normal', 1, 0, 14, '2019-05-14 00:17:09', '2019-05-13 13:04:39'),
(223, 26, 'Quote for Microsoft software\'s and servers', 0, 'normal', 1, 0, 12, '2019-05-14 16:06:31', '2019-05-14 16:06:31'),
(224, 31, 'Quote for HP Printer items', 0, 'normal', 1, 0, 12, '2019-05-14 16:39:13', '2019-05-14 16:39:13'),
(225, 56, 'RAVE Asset Tracker', 0, 'normal', 1, 0, 17, '2019-05-14 20:42:35', '2019-05-14 20:42:35'),
(226, 57, 'Sophos', 0, 'normal', 1, 0, 8, '2019-05-14 20:47:07', '2019-05-14 20:47:07'),
(227, 58, 'Quote for 4GB DDR3 RAM', 0, 'normal', 1, 0, 12, '2019-05-16 18:52:28', '2019-05-16 18:52:28'),
(228, 23, 'HCMATRIX', 0, 'normal', 1, 0, 12, '2019-05-16 21:34:42', '2019-05-16 21:34:42'),
(229, 59, 'SI-Matrix', 0, 'normal', 1, 0, 17, '2019-05-17 03:09:01', '2019-05-17 03:09:01'),
(230, 43, 'Imperva', 1, 'normal', 1, 0, 8, '2019-05-17 18:31:52', '2019-05-20 08:10:52'),
(231, 43, 'Imperva Flex App', 1, 'normal', 1, 0, 8, '2019-05-17 18:49:56', '2019-05-20 19:49:37'),
(232, 60, 'Office 365', 0, 'normal', 1, 0, 12, '2019-05-17 19:07:21', '2019-05-17 19:07:21'),
(233, 61, 'HCMatrix Employee Appraisal and Nomination (Additional Module )', 1, 'normal', 1, 0, 16, '2019-05-20 17:23:32', '2019-05-20 10:25:22'),
(234, 62, 'HCMatrix Payroll', 0, 'normal', 1, 0, 14, '2019-05-21 16:45:59', '2019-05-21 16:45:59'),
(235, 63, 'HCMatrix', 0, 'normal', 1, 0, 14, '2019-05-22 17:58:01', '2019-05-22 17:58:01'),
(236, 64, 'Microsoft Azure Backup', 0, 'normal', 1, 0, 12, '2019-05-22 19:46:38', '2019-05-22 19:46:38'),
(237, 65, 'HCMatrix Proposal', 0, 'normal', 1, 0, 16, '2019-05-23 00:50:30', '2019-05-23 00:50:30'),
(238, 65, 'HCMatrix Proposal - Implementation and Customization', 0, 'normal', 1, 0, 16, '2019-05-23 01:10:58', '2019-05-23 01:10:58'),
(239, 43, 'Office 365 Business Essentials', 1, 'normal', 1, 0, 8, '2019-05-23 14:54:56', '2019-05-23 15:07:51'),
(240, 9, 'DDX', 0, 'normal', 1, 0, 16, '2019-05-24 19:15:31', '2019-05-24 19:15:31'),
(241, 9, 'DDX', 1, 'normal', 1, 0, 16, '2019-05-24 19:15:32', '2019-05-26 19:46:55'),
(242, 9, 'Imperva', 1, 'normal', 1, 0, 18, '2019-05-24 19:40:27', '2019-05-26 19:33:50'),
(243, 24, 'Office 365', 0, 'normal', 1, 0, 12, '2019-05-28 14:54:13', '2019-05-28 14:54:13'),
(244, 43, 'Office 365 Business Essentials (5 Users)', 0, 'normal', 1, 0, 8, '2019-05-28 23:03:01', '2019-05-28 23:03:01'),
(245, 60, 'Microsoft Office 365 Renewal', 0, 'normal', 1, 0, 12, '2019-05-30 17:26:05', '2019-05-30 17:26:05'),
(246, 27, 'office 365', 0, 'normal', 1, 0, 12, '2019-06-03 14:48:46', '2019-06-03 14:48:46'),
(247, 67, 'Microsoft Power BI Licenses Annual Subscription', 0, 'normal', 1, 0, 16, '2019-06-03 18:08:28', '2019-06-03 18:08:28'),
(248, 68, 'Mentoring Application', 0, 'normal', 1, 0, 12, '2019-06-03 20:24:27', '2019-06-03 20:24:27'),
(249, 69, 'Cisco Catalyst switch', 0, 'normal', 1, 0, 12, '2019-06-06 19:16:20', '2019-06-06 19:16:20'),
(250, 70, 'HP 250 G6 Quote', 0, 'normal', 1, 0, 14, '2019-06-06 20:34:35', '2019-06-06 20:34:35'),
(251, 71, 'SQL Server 2017', 0, 'normal', 1, 0, 8, '2019-06-07 20:27:51', '2019-06-07 20:27:51'),
(252, 71, 'SQL Server 2017 (Subscription)', 0, 'normal', 1, 0, 8, '2019-06-07 20:36:42', '2019-06-07 20:36:42'),
(253, 72, 'HCMatrix Standard Subscription', 0, 'normal', 1, 0, 17, '2019-06-07 21:44:37', '2019-06-07 21:44:37'),
(254, 72, 'HCMatrix', 0, 'normal', 1, 0, 17, '2019-06-07 21:59:11', '2019-06-07 21:59:11'),
(255, 27, 'Microsoft Exchange Online Plan 1', 0, 'normal', 1, 0, 12, '2019-06-10 17:14:48', '2019-06-10 17:14:48'),
(256, 73, 'HP Servers', 0, 'normal', 1, 0, 12, '2019-06-11 13:13:38', '2019-06-11 13:13:38'),
(257, 59, 'Dynamics 365 Unified Operations', 0, 'normal', 1, 0, 8, '2019-06-11 14:05:31', '2019-06-11 14:05:31'),
(258, 48, 'HCMATRIX QUOTE', 0, 'normal', 1, 0, 12, '2019-06-11 15:43:46', '2019-06-11 15:43:46'),
(259, 75, 'Windows Server and SQL Quote', 0, 'normal', 1, 0, 19, '2019-06-11 17:39:03', '2019-06-11 17:39:03'),
(260, 75, 'Windows Server and SQL Quote', 1, 'normal', 1, 0, 19, '2019-06-11 17:39:19', '2019-06-11 19:55:16'),
(261, 75, 'Dynamics 365 Unified Operations Sandbox', 0, 'normal', 1, 0, 19, '2019-06-14 17:50:19', '2019-06-14 17:50:19'),
(262, 43, 'IBM Hyper Converged Server', 0, 'normal', 1, 0, 8, '2019-06-18 16:23:22', '2019-06-18 16:23:22'),
(263, 24, 'Power BI License', 0, 'normal', 1, 0, 12, '2019-06-19 21:46:59', '2019-06-19 21:46:59'),
(264, 78, 'newQuote', 1, 'normal', 0, 0, 1, '2019-08-01 07:56:30', '2019-08-01 09:25:35');

-- --------------------------------------------------------

--
-- Table structure for table `organs`
--

CREATE TABLE `organs` (
  `id` int(10) NOT NULL,
  `orgName` varchar(100) NOT NULL,
  `orgAddress` varchar(250) NOT NULL,
  `orgEmail` varchar(100) NOT NULL,
  `country` varchar(250) DEFAULT 'Nigeria',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `organs`
--

INSERT INTO `organs` (`id`, `orgName`, `orgAddress`, `orgEmail`, `country`, `created_at`, `updated_at`) VALUES
(6, 'Soona Ltd', 'lekki Phase I', 'primeatl@gmail.com.ng', 'Nigeria', '2019-02-12 13:19:16', '2019-02-12 14:12:46'),
(7, 'Department of Petroleum Resources', 'Km22 off Lekki Epe Expressway Victoria Island Lagos', 'primeatl@gmail.com.ng', 'Nigeria', '2019-02-12 13:19:16', NULL),
(8, 'Snapnet Nigeria', '1b Abayomi Shonuga Crescent Lekki phase 1 lagos', 'admin@snapnet.com.ng', 'Nigeria', '2019-02-12 13:19:16', NULL),
(9, 'Department of Petroleum Resources', '7 Kofo Abayomi St, Victoria Island, Lagos', 'info@dpr.gov.ng', 'Nigeria', '2019-02-12 12:19:24', '2019-05-24 20:54:22'),
(10, 'Mobil Producing Limited', 'Road 3 House J1/B5 vgc ajah lagos', 'primeatl@gmail.com.ng', 'Nigeria', '2019-02-13 11:42:00', '2019-02-13 11:42:00'),
(11, 'Prime Atlantic Limited', '1b Abayomi Shonuga Crescent Lekki phase 1 lekki, lagos', 'primeatl@gmail.com.ng', 'Nigeria', '2019-02-14 07:31:31', '2019-02-14 07:31:31'),
(12, 'Mobil Producing Limited', 'Road 3 House J1/B5 vgc ajah lagos', 'mobil@gmail.com', 'Nigeria', '2019-02-14 15:45:05', '2019-02-14 15:45:05'),
(13, 'Falck Prime Atlantic', 'Km22 off Lekki Epe Expressway Victoria Island Lagos', 'info@falck.com', 'Nigeria', '2019-02-22 10:15:26', '2019-02-22 10:15:26'),
(14, 'Fitello Nigeria', '1b Abayomi Shonuga Crescent Lekki phase 1 lagos', 'sanusi@snapnet.com.ng', 'Nigeria', '2019-02-22 13:05:16', '2019-03-08 18:06:13'),
(15, 'Etranzact', '5th Floor Fortune Towers, 27/29 Adeyemo Alakija Street. Victoria Island. Lagos', 'henry.david@etranzact.com', 'Nigeria', '2019-03-14 02:30:04', '2019-03-14 02:30:04'),
(16, 'Biznet Solutions', '82 Allen Avenue Ikeja Lagos', 'stpl@gmail.com', 'Nigeria', '2019-03-14 16:54:58', '2019-03-14 16:54:58'),
(17, 'ABC Consulting', '1b Abayomi Shonuga Crescent Lekki phase 1 lekki, lagos, Nigeria', 'abc@xyz.com', 'Nigeria', '2019-03-15 14:54:08', '2019-03-15 14:54:08'),
(18, 'Nova Merchant Bank', '23 Kofo Abayomi St, Victoria Island, Lagos', 'whistleblowing@novambl.com', 'Nigeria', '2019-03-15 15:58:19', '2019-03-15 15:58:19'),
(19, 'Medbury Medical Services', '7B Admiralty Rd, Lekki Phase I, Lekki', 'info@medburymedicals.com', 'Nigeria', '2019-03-19 15:34:03', '2019-03-19 15:34:03'),
(20, 'Krispy Kreme Nigeria', '33, Bishop Aboyade Cole Street, Victoria Island, Lagos, Nigeria', 'lc@qfafrica.com', 'Nigeria', '2019-03-21 22:24:12', '2019-03-21 22:24:12'),
(21, 'Grace Lake Partners', '17B Bishop Aboyade Cole street, VI', 'emmanuel.adebayo@grace-lake.com', 'Nigeria', '2019-03-25 19:05:15', '2019-03-25 19:05:15'),
(22, 'NSIA Insurance', '3 Elsie Femi Pearse St, Victoria Island, Lagos', 'enquiry@nsiainsurance.com', 'Nigeria', '2019-03-25 22:04:37', '2019-03-25 22:04:37'),
(23, 'Grace Lake Partners', '17B Bishop Aboyade Cole, Street, Victoria Island, Lagos', 'ehitueme.inegbenebor@grace-lake.com', 'Nigeria', '2019-03-26 14:15:49', '2019-03-26 14:15:49'),
(24, 'Custodian and allied Insurance', '16A commercial Avenue Sabo Yaba Lagos', 'CAnerobi@custodianinsurance.com', 'Nigeria', '2019-03-27 22:20:57', '2019-03-27 22:20:57'),
(25, 'Amazon Energy', 'Plot 94, Block 24A Lekki-Epe Expressway, Lekki Phase 1, Lekki, Lagos, Nigeria', 'owen.ugiagbe@amazon-energy.com', 'Nigeria', '2019-03-28 22:16:14', '2019-03-28 22:16:14'),
(26, 'United Bank of Africa UBA', 'UBA HQ Marina Lagos', 'habib.jubril@ubagroup.com', 'Nigeria', '2019-04-01 19:57:16', '2019-04-01 19:57:16'),
(27, 'Cardinal Stone partners', '5 Okotie Road Ikoyi, Lagos', 'cedar.chinwuba@cardinalstone.com', 'Nigeria', '2019-04-02 22:51:28', '2019-04-02 22:51:28'),
(28, 'Kudi Inc', 'Plot 8 Block 12c, Worldwide Court, Admiralty Road, Lekki Phase 1, Lagos', 'tolani@kudi.co', 'Nigeria', '2019-04-02 23:48:42', '2019-04-02 23:48:42'),
(29, 'Eterna PLC', '5A Oba Adeyinka Oyekan Ave, Ikoyi, Lagos', 'bosun.olabintan@eternaplc.com', 'Nigeria', '2019-04-04 15:10:04', '2019-04-04 15:10:04'),
(30, 'Capital Alliance', '11th Floor, Alliance Place, 33A Alfred Rewane Rd, Ikoyi, Lagos', 'emeka.ogbechie@acagp.com', 'Nigeria', '2019-04-05 16:45:38', '2019-04-05 16:45:38'),
(31, 'Vallourec', 'PLOT 293, AKIN OLUGBADE STREET VICTORIA ISLAND, LAGOS Nigeria', 'chukwuma.udemezue@vallourec.com', 'Nigeria', '2019-04-05 19:00:30', '2019-04-05 19:00:30'),
(32, 'Executive Development Centre (EDC)', 'Plot 207A Muri Okunola Street, Victoria Island, Lagos', 't.olorunda@edcprofessionals.net', 'Nigeria', '2019-04-09 16:06:20', '2019-04-09 16:06:20'),
(33, 'Value Impacts Consulting', '46, Isaac John, G.R.A, Ikeja', 'kunleadenuga@live.com', 'Nigeria', '2019-04-09 16:09:28', '2019-04-09 17:31:39'),
(34, 'NOVA Merchant Bank', '23 Kofo Abayomi Street Victoria Island Lagos Nigeria', 'hamid.suleiman-garba@novambl.com', 'Nigeria', '2019-04-09 17:12:07', '2019-04-09 17:12:07'),
(35, 'Kano Electricity Distribution Company (KEDCO)', '1, Niger Street/Post Office Road, P.M.B 3089, Kano, Nigeria.', 'aminu.rufai@kedco.ng', 'Nigeria', '2019-04-09 21:17:09', '2019-04-09 21:17:09'),
(36, 'Pal Pension Plc', '25 Ajose Adeogun Street Victoria Island, Lagos', 'ahmed.alliu@palpensions.com', 'Nigeria', '2019-04-11 15:03:58', '2019-04-11 15:03:58'),
(37, 'Feminik Logistics', 'Round About, Allen Avenue, 28 Aromire Ave, off, Ikeja', 'oluwaseun.adeniyi@feminikng.com', 'Nigeria', '2019-04-15 17:42:39', '2019-04-15 17:42:39'),
(38, 'Terragon Group', '2, Ahmed Onibudo Street, Victoria Island', 'ediagboya@terragonltd.com', 'Nigeria', '2019-04-16 21:20:04', '2019-04-16 21:20:04'),
(39, 'Nigeria Brewries Plc', 'Abebe Village, Iganmu Lagos', 'tola.otuneye@heineken.com', 'Nigeria', '2019-04-17 20:27:59', '2019-04-17 20:27:59'),
(40, 'Flour Mill Nigeria', '1, Golden Penny place, Wharf road, Apapa Lagos', 'moghale@fmnplc.com', 'Nigeria', '2019-04-23 16:11:14', '2019-04-23 16:11:14'),
(41, 'Globus Bank', 'Head Office at 6, Adeyemo Alakija Street, Victoria Island, Lagos State', 'eniitan.akinola@gmail.com', 'Nigeria', '2019-04-25 16:37:49', '2019-04-25 16:37:49'),
(42, 'Medbury Medical Services', '7B Admiralty Road Lekki Phase 1', 'vivian.thomas@medburymedicals.com', 'Nigeria', '2019-04-26 15:18:42', '2019-04-26 15:18:42'),
(43, 'Rhino Networks', 'Ikoyi', 'ioseni@rhino-networks.com', 'Nigeria', '2019-04-26 16:04:15', '2019-04-26 16:04:15'),
(44, 'Brooks & Blake', 'Adeniyi Jones Avenue, 7 Talabi St, Ogba, Ikeja', 'sokoeka@brooksandblake.com', 'Nigeria', '2019-04-26 16:33:11', '2019-04-26 16:33:11'),
(45, 'XYZ', 'Abuja', 'abc@xyz.com', 'Nigeria', '2019-05-02 21:37:57', '2019-05-02 21:37:57'),
(46, 'SBA-GROUP', '24A, Isaac John Street, GRA Ikeja, Lagos', 'alochukwu.nwagu@sba-group.org', 'Nigeria', '2019-05-03 22:49:30', '2019-05-03 22:49:30'),
(47, 'Compact Manifold & Energy Services Limited', '1 Engineering Close Off Idowu Taylor Street, Victoria Island Lagos State', 'oEniorishagbe@cmes-engineers.com', 'Nigeria', '2019-05-07 14:10:30', '2019-05-07 14:10:30'),
(48, 'Business contracting Limited (BCL Engineering and construction)', '207B Muri Okunola, Victoria Island, Lagos', 'ikechukwu.ajaegbu@bclnig.com', 'Nigeria', '2019-05-07 16:09:34', '2019-05-07 16:09:34'),
(49, 'TOTAL UPSTREAM NIGERIA LIMITED', 'Plot 1415E Adetokunbo Ademola Street Victoria Island Lagos, Nigeria', 'ayodeji.agunbiade@external.total.com', 'Nigeria', '2019-05-08 18:22:10', '2019-05-13 19:27:26'),
(50, 'Northfield Health Services', 'Kano State', 'aminu.rufai@kedco.ng', 'Nigeria', '2019-05-09 20:16:51', '2019-05-09 20:16:51'),
(51, 'Reds & Greens', '43 Rasheed Alaba Williams Street Lekki Phase1', 'info@redsandgreens.ng', 'Nigeria', '2019-05-09 20:52:07', '2019-05-09 20:52:07'),
(52, 'Oando Plc', 'The Wings Complex 17a Ozumba Mbadiwe, Victoria Island, Lagos, Nigeria', 'rfq@oandoplc.com', 'Nigeria', '2019-05-09 22:16:51', '2019-05-09 22:16:51'),
(53, 'Gremoore', 'Plot 12, Block 109, Henry Ojogho Crescent, Ikate Lekki, Lagos.', 'segun.ganiu@gremoore.com', 'Nigeria', '2019-05-13 18:03:00', '2019-05-13 18:03:00'),
(54, 'West Atlantic Energy Nigeria Limited.', '9, Younis Bashorun Street, Victoria Island, Lagos, NIGERIA', 'olawale.ibironke@waelng.com', 'Nigeria', '2019-05-13 20:06:44', '2019-05-21 17:11:15'),
(55, 'Technical Services and Equipment Solutions Company', 'Nigeria', 'bensultd@yahoo.com', 'Nigeria', '2019-05-14 00:16:04', '2019-05-14 00:16:04'),
(56, 'Diageo Nigeria', 'Cocoa Industries Rd, Ogba, Ikeja', 'olugbenga.senbore@diageo.com', 'Nigeria', '2019-05-14 20:39:43', '2019-05-14 20:39:43'),
(57, 'Sharemind Lagos', '1, EBUN STREET, OFF GBAGADA EXPRESSWAY, GBAGADA PHASE 1, LAGOS', 'info@sharemindlagos.com', 'Nigeria', '2019-05-14 20:46:11', '2019-05-14 20:46:11'),
(58, 'NigerStar  7', 'NigerStar 7, 3, Walter Carrington Crescent, Victoria Island, Lagos, Nigeria', 'ademola.babatunde@subsea7.com', 'Nigeria', '2019-05-16 18:52:03', '2019-05-16 18:52:03'),
(59, 'FoodCo', 'By Jericho Nursing home, All Saints Road, Jericho Ibadan.', 'info@foodcoonline.com', 'Nigeria', '2019-05-17 03:06:21', '2019-05-17 03:06:21'),
(60, 'Growth and development asset management limited', 'GDL HQ Ilupeju, Lagos', 'yadekoya@gdl.com.ng', 'Nigeria', '2019-05-17 19:06:30', '2019-05-17 19:06:30'),
(61, 'Federal Roads Maintenance Agency (FERMA)', '163, Aminu Kano Crescent,. Wuse II, Abuja', 'info@ferma.gov.ng', 'Nigeria', '2019-05-20 17:22:21', '2019-05-20 17:22:21'),
(62, 'Providus Bank', 'Plot 724, Adetokunbo Ademola Street Victoria Island, Lagos', 'oajetunmobi@providusbank.com', 'Nigeria', '2019-05-21 16:42:54', '2019-05-21 16:42:54'),
(63, 'Zamam Offshore', 'Block 1, Plot 72, Abiodun Ikomi Street, Lekki Phase1, Lagos, Nigeria', 'dobhiojeifoh@Zamamng.com', 'Nigeria', '2019-05-22 17:43:28', '2019-05-22 17:43:28'),
(64, 'Hygeia HMO', '214, Broad Street, Lagos Island, Lagos, Nigeria.', 'oosuji@hygeiahmo.com', 'Nigeria', '2019-05-22 19:45:37', '2019-05-22 19:45:37'),
(65, 'Projet Dorsale Nord/North Core Project', 'Projet Dorsale Nord/North Core Project', 'ma.abayomi@wappnorthcore.org', 'Nigeria', '2019-05-23 00:49:46', '2019-05-23 00:49:46'),
(66, 'Department of Petroleum', '7, Kofo Abayomi Street, Victoria Island, Lagos, Nigeria', 'info@dpr.gov.ng', 'Nigeria', '2019-05-24 19:14:38', '2019-05-24 19:14:38'),
(67, 'United Bank For Africa Plc  (UBA)', '57 Marina Rd, Lagos Island, Lagos', 'info@ubagroup.com', 'Nigeria', '2019-06-03 18:05:35', '2019-06-03 18:05:35'),
(68, 'Chattered Institute of bankers', 'Bankers house Adeola Hopewell street Victoria island Lagos', 'olanipekunawe@cibng.org', 'Nigeria', '2019-06-03 20:23:57', '2019-06-03 20:23:57'),
(69, 'Central Securities clearing systems', '12th Floor, Stock Exchange House: 2/4 Customs Street', 'mjegede@cscs.ng', 'Nigeria', '2019-06-06 19:14:48', '2019-06-06 19:14:48'),
(70, 'Prime Atlantic Global Instruments', '9, Younis Bashorun Str. Victoria Island Lagos', 'Olubukola.Giwa@primeatlanticnigeria.com', 'Nigeria', '2019-06-06 20:28:41', '2019-06-06 20:29:31'),
(71, 'Taj Bank Limited', '50 Ebitu Ukiwe Street, Jabi, Abuja', 'talk2mrbali@gmail.com', 'Nigeria', '2019-06-07 20:27:17', '2019-06-11 14:00:26'),
(72, 'ITSCOPESOLUTIONS', 'Lagos', 'yinka.afolabi@itscopesolutions.com', 'Nigeria', '2019-06-07 21:44:15', '2019-06-07 21:44:15'),
(73, 'SUNU ASSURANCE', 'Plot 1196, Bishop Oluwole Street  Victoria Island', 'aashubiojo@equityassuranceplc.com', 'Nigeria', '2019-06-11 13:13:04', '2019-06-11 13:13:04'),
(74, 'FoodCo', 'By Jericho Nursing home, All Saints Road, Jericho Ibadan.', 'info@foodcoonline.com', 'Nigeria', '2019-06-11 14:04:07', '2019-06-11 14:04:07'),
(75, 'IHS Towers', 'Plot 934 Idejo Street, Off Adeola Street, Victoria Island, Lagos', 'omobolaji.kujembola@ihstowers.com>', 'Nigeria', '2019-06-11 17:37:39', '2019-06-11 17:37:39'),
(76, 'IHS Towers', 'Plot 934 Idejo Street, Off Adeola Street, Victoria Island, Lagos', 'omobolaji.kujembola@ihstowers.com>', 'Nigeria', '2019-06-11 17:37:44', '2019-06-11 17:37:44'),
(77, 'Test Organization', 'TestAddress', 'test@test.co', 'Nigeria', '2019-08-01 07:37:54', '2019-08-01 07:37:54'),
(78, 'NewTest', 'Testino', 'test@www.co', 'Liberia', '2019-08-01 07:53:46', '2019-08-01 07:53:46');

-- --------------------------------------------------------

--
-- Table structure for table `players`
--

CREATE TABLE `players` (
  `id` int(5) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `number` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `user_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `players`
--

INSERT INTO `players` (`id`, `first_name`, `last_name`, `position`, `number`, `image`, `user_name`) VALUES
(1, 'MOH', 'SANUSI', 'Goalkeeper', 1, 'MohSala.png', 'MohSala');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_items`
--

CREATE TABLE `purchase_items` (
  `id` int(12) NOT NULL,
  `description` varchar(250) NOT NULL,
  `unitcost` decimal(11,2) NOT NULL,
  `quantity` int(20) NOT NULL,
  `total` decimal(11,2) NOT NULL,
  `dtotal` decimal(11,2) DEFAULT NULL,
  `poid` int(12) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase_items`
--

INSERT INTO `purchase_items` (`id`, `description`, `unitcost`, `quantity`, `total`, `dtotal`, `poid`, `created_at`, `updated_at`) VALUES
(6, 'This is a test product description', '1234.00', 12, '14808.00', NULL, 1, '2019-06-21 10:06:52', '2019-06-21 10:06:52'),
(8, 'test2', '1234.00', 10, '12340.00', NULL, 2, '2019-06-21 12:03:30', '2019-06-21 12:52:55'),
(9, 'test3', '1300.00', 2, '2600.00', NULL, 2, '2019-06-21 12:13:14', '2019-06-21 12:13:14'),
(10, 'test', '1000.00', 1, '1000.00', NULL, 3, '2019-06-25 09:00:49', '2019-06-25 09:00:49');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_orders`
--

CREATE TABLE `purchase_orders` (
  `id` int(12) NOT NULL,
  `name` varchar(200) NOT NULL,
  `orgid` int(12) NOT NULL,
  `number` varchar(100) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase_orders`
--

INSERT INTO `purchase_orders` (`id`, `name`, `orgid`, `number`, `status`, `created_at`, `updated_at`) VALUES
(1, 'FirstPO', 68, NULL, 0, '2019-06-20 13:32:00', '2019-06-20 13:32:00'),
(2, 'Test', 17, NULL, 0, '2019-06-20 13:42:10', '2019-06-20 13:42:10'),
(3, 'Test3', 17, '123450', 0, '2019-06-25 08:44:02', '2019-06-25 08:44:02');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `value` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `value`, `created_at`, `updated_at`) VALUES
(1, 'workflow_id', '5', '2019-02-26 23:00:00', '2019-02-26 23:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `stages`
--

CREATE TABLE `stages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `workflow_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stages`
--

INSERT INTO `stages` (`id`, `name`, `workflow_id`, `user_id`, `position`, `created_at`, `updated_at`) VALUES
(1, 'Stage1', 2, 1, 3, '2018-03-07 11:42:08', '2018-03-08 12:18:39'),
(2, 'Stage3', 2, 1, 1, '2018-03-07 11:42:08', '2018-03-08 12:18:39'),
(3, 'Stage2', 2, 1, 2, '2018-03-08 12:09:38', '2018-03-08 12:18:39'),
(4, 'Stage4', 2, 1, 0, '2018-03-08 12:18:39', '2018-03-08 12:18:39'),
(5, 'Head of Department', 3, 7, 0, '2018-03-08 13:35:43', '2018-03-15 13:40:08'),
(6, 'Deputy Director', 3, 1, 1, '2018-03-08 13:35:43', '2018-03-08 13:42:41'),
(7, 'Executive Director', 3, 1, 2, '2018-03-08 13:35:43', '2018-03-08 13:42:41'),
(8, 'Managing Director', 3, 1, 3, '2018-03-08 13:35:43', '2018-03-08 13:42:41'),
(9, 'Stage1', 1, 1, 0, '2018-03-08 14:03:40', '2018-03-08 14:03:40'),
(10, 'Submit to supervisor', 4, 8, 0, '2018-03-15 14:27:44', '2018-03-15 14:27:44'),
(11, 'Head of Department', 4, 7, 1, '2018-03-15 14:27:44', '2018-03-15 14:27:44'),
(12, 'Divisional Head', 4, 1, 2, '2018-03-15 14:27:44', '2018-03-15 14:27:44'),
(13, 'First Stage', 5, 1, 0, '2019-02-18 08:43:32', '2019-02-18 08:43:32'),
(14, 'Second Stage', 5, 1, 1, '2019-02-18 08:43:32', '2019-02-18 08:43:32');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'normal_user',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `type`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Mohammed Sanusi', 'muhammeds90@yahoo.com', 'admin_user', NULL, '$2y$10$UDywo6d3M3LboecVd5BBlOw9yNh2eBvj.t41lDXfolIzOB7VPBOma', '5UOWGYKFhc5SbWh3v5fXDc9VOdu7p7namBOkASf7V4VIhQY0mjzyVcX40w1n', '2019-02-14 19:10:46', '2019-02-22 09:12:43'),
(2, 'Administrator', 'admin@snapnet.com.ng', 'admin_user', NULL, '$2y$10$8zIV/EwWgLGGfQ/ic5Vq7ObX6cvSCHh0UnC9IUovGAulGoTNRg34G', 'dMxQzXVHlLGtg0TsIKfiZxGcHaDnXcULJrKHlNZp3cZS06y74GrOEfmBCvu3', '2019-02-18 14:08:04', '2019-02-18 14:08:04'),
(3, 'Dodo Mayana', 'dodomayana@snapnet.com.ng', 'normal_user', NULL, '$2y$10$/bV4.0pmCbw2jlSqwnMnOuQ8dAhkrfM.ydc3UpjPnRIp.2o64N4yq', 'YUj3JPk2ycGQ5HxkYFrJbcJhW5bJLO92HkPxaZygIR79Yk65vbLCzpYyfcoa', '2019-02-22 09:19:31', '2019-02-22 09:19:31'),
(5, 'Emmanuel Adjah', 'adjah@snapnet.com.ng', 'normal_user', NULL, '$2y$10$mSiKcS2Z.qufaMZ8QegaWuIJ8HP7bQ07siq4Tk.IZqtJHv6MJMRn6', 'w2biz8AaxNPZY96aW7mvhvfwQmnRgVELa0gjTGXbVPZIEQSTBuARlEjJXyPs', '2019-03-08 22:46:31', '2019-03-08 22:46:31'),
(6, 'Admin', 'kelvin@snapnet.com.ng', 'admin_user', NULL, '$2y$10$mxkoUCFI32VeheqEopMN8.qG/ARsCRZSOlnQ0sFXxaxjuE08JxZ5u', NULL, NULL, NULL),
(8, 'Chuks Anyah', 'chuks@snapnet.com.ng', 'normal_user', NULL, '$2y$10$mSiKcS2Z.qufaMZ8QegaWuIJ8HP7bQ07siq4Tk.IZqtJHv6MJMRn6', '7W6fG6xNn4Ok5fgljVzPzu8h5hRninYJLThmSyPsvsSvAvoipIzSRhQSmEQ1', NULL, NULL),
(10, 'Noermal', 'normal@snapnet.com.ng', 'normal_user', NULL, '$2y$10$b9nXzHeNbThl0jKpOuS6euYNEMg.hEgX42AALLEdSBz.BbFaLk5sy', 'jWBxgxYdya4hJImHPjUmyzPqmEfjHOkCDZt3lrR6qoWCmgSK7BJtp7SD4KAp', '2019-03-15 15:26:22', '2019-03-15 15:26:22'),
(11, 'Ozioma Ajaraonye', 'ozioma@snapnet.com.ng', 'admin_user', NULL, '$2y$10$7FbO3SBAOqKstzNv2WOWjeq2eOTUHCXnWSKGnSkGEDsrgQYdvz1ru', NULL, '2019-03-15 15:28:03', '2019-03-15 15:28:03'),
(12, 'Emeka Uchenna', 'uchenna@snapnet.com.ng', 'normal_user', NULL, '$2y$10$sYG1tSsgfMHQyrwex4hEBuKP7guqVytgvp85r4lzlL6RlYzFsZ2oK', 'umJdW32G3orcArCDsAx94SL5oiwAkh5qd7M1Kx1MH2FWCPmb1B2TY0LvD8Db', '2019-03-19 15:49:02', '2019-03-19 15:49:02'),
(14, 'Christian Chami', 'chami@snapnet.com.ng', 'normal_user', NULL, '$2y$10$nT2bb452avb19BzHIB7cQeKiDC0UMJ/3M4LVC7ySJNyU0jauMcCcW', 'FB0e4XWKEHwZUMCFoItIVmEjbmSVj6jFqf4aw8uFyS7A1xcLU28o4hcTCMQi', '2019-04-05 16:38:35', '2019-04-05 16:38:35'),
(15, 'testuser', 'testuser@snapnet.com.ng', 'normal_user', NULL, '$2y$10$5p7WjW0BIkE1AgGsXozciO7vOSMU0SZdTS2oHOfZqra7tLngLbSi6', 'YhyPxme7Gk4l5YutJkBVXzeRVwfXg6oBerFmLiTl4lne3Rl92Pkp2BKxQe0c', '2019-04-09 16:47:29', '2019-04-09 16:47:29'),
(16, 'Chuma Ukeagu', 'chuma@snapnet.com.ng', 'admin_user', NULL, '$2y$10$ipB84lekvdpLk.Nk1GBZJOyH3jg9weg/ZhphMb.NDc/6YaUegA2MC', 'DjrI9HSUsod2jccrwXrEZP5cBd3SQNs3FB3XRe8HL9EiddmUvHM411wLJaYr', '2019-04-09 16:57:15', '2019-04-09 16:57:15'),
(17, 'EMEKA ISIGUZO', 'emeka@snapnet.com.ng', 'normal_user', NULL, '$2y$10$DKIL7OD/DobEZ2.DbKnzDuTf5bc8YnR8GSKCJv/D246edJVCvjYBW', 'uR4u7KYWosXMi27MhoNDe8URzJP58WHTY36baAHPgjO9DAS8NJrU3OvKd0v4', '2019-04-24 23:01:28', '2019-04-24 23:01:28'),
(18, 'Bisola Ogunsola', 'abisola@snapnet.com.ng', 'normal_user', NULL, '$2y$10$WfGTf4swzSEnFJ84GdilieAV85cS/yXEhGLjxUuaQg4UMhF.HLRni', 'YP6umWSAQj3TRfhF5vWnGpHj0R36Sr9vVEEEFXh1XyUOrIcWYixNdW7WcqLH', '2019-05-24 19:14:20', '2019-05-24 19:14:20'),
(19, 'Oluwole Olajide', 'oluwole@snapnet.com.ng', 'normal_user', NULL, '$2y$10$3lEpXorUlftXByMfp0G5weszBdaW7w1QQGaUQ.GBa8/R.04gmrbTy', 'V8x8hI581eJ27GbfgGC8JiphyWxhuQHNxUXAAaqmFcJfAU6CKjaEZI9dBcPI', '2019-06-11 17:35:23', '2019-06-11 17:35:23');

-- --------------------------------------------------------

--
-- Table structure for table `workflows`
--

CREATE TABLE `workflows` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `workflows`
--

INSERT INTO `workflows` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Workflow1', 1, '2018-03-07 11:41:28', '2019-02-18 11:17:02'),
(2, 'Workflow1', 1, '2018-03-07 11:42:08', '2018-03-26 07:53:34'),
(3, 'Notification for Admission', 1, '2018-03-08 13:35:43', '2018-03-15 13:16:07'),
(4, 'Leave Request', 1, '2018-03-15 14:27:44', '2018-03-26 07:55:05'),
(5, 'Invoice Approval', 1, '2019-02-18 08:43:32', '2019-02-18 08:43:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `invoice_reviews`
--
ALTER TABLE `invoice_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newinvoice`
--
ALTER TABLE `newinvoice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `organs`
--
ALTER TABLE `organs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_items`
--
ALTER TABLE `purchase_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_orders`
--
ALTER TABLE `purchase_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stages`
--
ALTER TABLE `stages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `workflows`
--
ALTER TABLE `workflows`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `invoice_reviews`
--
ALTER TABLE `invoice_reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=760;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `newinvoice`
--
ALTER TABLE `newinvoice`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=265;

--
-- AUTO_INCREMENT for table `organs`
--
ALTER TABLE `organs`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `players`
--
ALTER TABLE `players`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `purchase_items`
--
ALTER TABLE `purchase_items`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `purchase_orders`
--
ALTER TABLE `purchase_orders`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `stages`
--
ALTER TABLE `stages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `workflows`
--
ALTER TABLE `workflows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
