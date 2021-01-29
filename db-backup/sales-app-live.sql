-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.24 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for sales-app-live
CREATE DATABASE IF NOT EXISTS `sales-app-live` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `sales-app-live`;

-- Dumping structure for table sales-app-live.aa1
CREATE TABLE IF NOT EXISTS `aa1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aa1_key` varchar(191) DEFAULT NULL,
  `aa1_v1` varchar(191) DEFAULT NULL,
  `aa1_v2` varchar(191) DEFAULT NULL,
  `aa1_v3` varchar(191) DEFAULT NULL,
  `fund_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

-- Dumping data for table sales-app-live.aa1: ~25 rows (approximately)
/*!40000 ALTER TABLE `aa1` DISABLE KEYS */;
REPLACE INTO `aa1` (`id`, `aa1_key`, `aa1_v1`, `aa1_v2`, `aa1_v3`, `fund_id`, `created_at`, `updated_at`) VALUES
	(1, 'Equity Funds', '10.38%', '45.16%', '40.55%', 23, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(2, 'Fixed Income Funds', '40.41%', '54.10%', '57.47%', 23, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(3, 'Cash', '48.90%', '0.58%', '1.93%', 23, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(4, 'Others Including Receivables', '0.31%', '0.16%', '0.05%', 23, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(5, 'Equity Funds', '20.39%', '47.01%', '-', 24, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(6, 'Fixed Income Funds', '77.27%', '48.60%', '-', 24, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(7, 'Cash', '1.14%', '2.92%', '-', 24, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(8, 'Others including receivables', '1.20%', '1.47%', '-', 24, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(9, 'T-Bills', '57.32%', '56.93%', '-', 25, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(10, 'Cash', '38.77%', '9.45%', '10.01%', 25, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(12, 'Commercial Paper', '3.44%', '-', '-', 25, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(13, 'PIBs', '-', '16.41%', '-', 25, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(14, 'TFCs/ Sukuks', '-', '16.33%', '-', 25, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(16, 'Stock / Equities', '-', '-', '89.00%', 25, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(17, 'Others Including Receivables', '0.47%', '0.88%', '0.99%', 25, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(19, 'Cash', '95.03%', '76.01%', '10.19%', 26, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(21, 'TFCs/ Sukuks', '-', '22.66%', '-', 26, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(23, 'Commercial Paper', '3.86%', '-', '-', 26, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(24, 'Stock / Equities', '-', '-', '89.34%', 26, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(25, 'Others including Receivables', '1.11%', '1.33%', '0.47%', 26, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(27, 'Placement with Banks & DFIs', '-', '-', '-', 26, NULL, NULL);
/*!40000 ALTER TABLE `aa1` ENABLE KEYS */;

-- Dumping structure for table sales-app-live.asset_allocation
CREATE TABLE IF NOT EXISTS `asset_allocation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aa_keys` varchar(191) DEFAULT NULL,
  `aa_values` varchar(191) DEFAULT NULL,
  `fund_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=latin1;

-- Dumping data for table sales-app-live.asset_allocation: ~52 rows (approximately)
/*!40000 ALTER TABLE `asset_allocation` DISABLE KEYS */;
REPLACE INTO `asset_allocation` (`id`, `aa_keys`, `aa_values`, `fund_id`, `created_at`, `updated_at`) VALUES
	(2, 'Placements with Banks & DFIs', '0.00%', 10, '2018-07-10 11:20:59', '2018-07-10 11:20:59'),
	(3, 'T-Bills', '42.02%', 10, '2018-07-10 11:20:59', '2018-07-10 11:20:59'),
	(4, 'Commercial Paper', '2.89%', 10, '2018-07-10 11:20:59', '2018-07-10 11:20:59'),
	(5, 'Others Including receivables', '0.57%', 10, '2018-07-10 11:20:59', '2018-07-10 11:20:59'),
	(6, 'Cash', '88.84%', 11, '2018-07-10 11:20:59', '2018-07-10 11:20:59'),
	(8, 'Commercial paper', '10.07%', 11, '2018-07-10 11:20:59', '2018-07-10 11:20:59'),
	(9, 'Others Including receivables', '1.09%', 11, '2018-07-10 11:20:59', '2018-07-10 11:20:59'),
	(12, 'TFCs / Sukuks', '23.48%', 12, '2018-07-10 11:20:59', '2018-07-10 11:20:59'),
	(14, 'Others Including receivables', '2.81%', 12, '2018-07-10 11:20:59', '2018-07-10 11:20:59'),
	(15, 'Commercial Papers', '0.00%', 12, '2018-07-10 11:20:59', '2018-07-10 11:20:59'),
	(16, 'Cash', '65.18%', 13, '2018-07-10 11:20:59', '2018-07-10 11:20:59'),
	(18, 'Commercial Paper', '1.34%', 13, '2018-07-10 11:20:59', '2018-07-10 11:20:59'),
	(21, 'Others Including receivables', '0.76%', 13, '2018-07-10 11:20:59', '2018-07-10 11:20:59'),
	(22, 'Cash', '43.60%', 14, '2018-07-10 11:20:59', '2018-07-10 11:20:59'),
	(24, 'TFCs/Sukuks', '27.52%', 14, '2018-07-10 11:20:59', '2018-07-10 11:20:59'),
	(29, 'PIBs', '14.65%', 14, '2018-07-10 11:20:59', '2018-07-10 11:20:59'),
	(30, 'Cash', '19.50%', 15, '2018-07-10 11:20:59', '2018-07-10 11:20:59'),
	(37, 'Cash', '9.75%', 16, '2018-07-10 11:20:59', '2018-07-10 11:20:59'),
	(38, 'Stock/Equities', '88.64%', 16, '2018-07-10 11:20:59', '2018-07-10 11:20:59'),
	(40, 'Others including receivables', '1.61%', 16, '2018-07-10 11:20:59', '2018-07-10 11:20:59'),
	(41, 'Cash', '11.81%', 17, '2018-07-10 11:20:59', '2018-07-10 11:20:59'),
	(42, 'Stock/Equities', '85.67%', 17, '2018-07-10 11:20:59', '2018-07-10 11:20:59'),
	(43, 'Others including receivables', '2.52%', 17, '2018-07-10 11:20:59', '2018-07-10 11:20:59'),
	(44, 'Cash', '11.53%', 18, '2018-07-10 11:20:59', '2018-07-10 11:20:59'),
	(45, 'Stock/Equities', '86.81%', 18, '2018-07-10 11:20:59', '2018-07-10 11:20:59'),
	(46, 'Others including receivables', '1.66%', 18, '2018-07-10 11:20:59', '2018-07-10 11:20:59'),
	(47, 'Cash%', '10.83%', 19, '2018-07-10 11:20:59', '2018-07-10 11:20:59'),
	(48, 'Stock/Equities', '87.82%', 19, '2018-07-10 11:20:59', '2018-07-10 11:20:59'),
	(49, 'Others including receivables', '1.35%', 19, '2018-07-10 11:20:59', '2018-07-10 11:20:59'),
	(50, 'Cash', '14.83%', 20, '2018-07-10 11:20:59', '2018-07-10 11:20:59'),
	(51, 'Stock/Equities', '83.90%', 20, '2018-07-10 11:20:59', '2018-07-10 11:20:59'),
	(52, 'Others including receivables', '1.27%', 20, '2018-07-10 11:20:59', '2018-07-10 11:20:59'),
	(53, 'Cash', '59.10%', 21, '2018-07-10 11:20:59', '2018-07-10 11:20:59'),
	(55, 'TFC/ Sukuks', '14.90%', 21, '2018-07-10 11:20:59', '2018-07-10 11:20:59'),
	(56, 'Stock/Equities', '22.79%', 21, '2018-07-10 11:20:59', '2018-07-10 11:20:59'),
	(57, 'Commercial Paper', '0.00%', 21, '2018-07-10 11:20:59', '2018-07-10 11:20:59'),
	(58, 'Cash', '35.55%', 22, '2018-07-10 11:20:59', '2018-07-10 11:20:59'),
	(60, 'TFCs/Sukuks', '10.12%', 22, '2018-07-10 11:20:59', '2018-07-10 11:20:59'),
	(63, 'Stock / Equities', '51.03%', 22, '2018-07-10 11:20:59', '2018-07-10 11:20:59'),
	(64, 'Others including receivables', '3.51%', 22, '2018-07-10 11:20:59', '2018-07-10 11:20:59'),
	(66, 'Cash', '73.71%', 12, '2018-07-20 16:24:39', '2018-07-20 16:24:39'),
	(68, 'Commercial Paper', '0.00%', 15, '2018-10-15 16:19:39', '2018-10-15 16:19:39'),
	(69, 'Placements with Banks & DFIs', '0.00%', 13, '2018-11-20 14:51:34', '2018-11-20 14:51:34'),
	(71, 'Others Including Receivables', '3.21%', 21, '2018-11-22 12:32:45', '2018-11-22 12:32:45'),
	(72, 'Commercial Paper', '2.80%', 14, '2019-02-12 10:31:12', '2019-02-12 10:31:12'),
	(74, 'Others Including Receivables', '3.44%', 14, '2019-03-11 10:12:05', '2019-03-11 10:12:05'),
	(75, 'PIBs', '63.10%', 15, '2019-03-11 10:16:25', '2019-03-11 10:16:25'),
	(76, 'TFCs / Sukuks', '2.09%', 15, '2019-03-11 10:16:44', '2019-03-11 10:16:44'),
	(78, 'T-Bills', '32.72%', 13, '2019-05-16 10:04:27', '2019-05-16 10:04:27'),
	(79, 'T-Bills', '13.93%', 15, '2019-05-16 10:13:50', '2019-05-16 10:13:50'),
	(81, 'Cash', '54.52%', 10, '2019-07-17 14:36:24', '2019-07-17 14:36:24'),
	(82, 'TFCs / Sukuks', '0.00%', 10, '2019-08-26 10:04:38', '2019-08-26 10:04:38'),
	(83, 'Others including receivables', '1.38%', 15, '2019-08-26 10:51:12', '2019-08-26 10:51:12'),
	(84, 'Spread Transaction', '7.99%', 14, '2019-11-15 11:57:56', '2019-11-15 11:57:56'),
	(85, 'Placement with Banks & DFI', '0.00%', 21, '2019-11-15 12:33:55', '2019-11-15 12:33:55'),
	(86, 'T-Bills', '0.00%', 16, '2019-12-12 13:20:57', '2019-12-12 13:20:57');
/*!40000 ALTER TABLE `asset_allocation` ENABLE KEYS */;

-- Dumping structure for table sales-app-live.aums1
CREATE TABLE IF NOT EXISTS `aums1` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f1` varchar(3000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sales-app-live.aums1: ~0 rows (approximately)
/*!40000 ALTER TABLE `aums1` DISABLE KEYS */;
REPLACE INTO `aums1` (`id`, `title`, `f1`, `created_at`, `updated_at`) VALUES
	(1, 'Assets Under Management (AUMs).', 'During the past 10 years, HBL AMC Assets Under Management has shown a CAGR of 24.38%. AUMs grew from Rs. 5.2 billion in 2010 to Rs. 46.07 billion in March 2020. This illustrates the HBL AMC commitment to becoming one of the leading asset management company.', NULL, NULL);
/*!40000 ALTER TABLE `aums1` ENABLE KEYS */;

-- Dumping structure for table sales-app-live.aums2
CREATE TABLE IF NOT EXISTS `aums2` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f1` varchar(3000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sales-app-live.aums2: ~0 rows (approximately)
/*!40000 ALTER TABLE `aums2` DISABLE KEYS */;
REPLACE INTO `aums2` (`id`, `title`, `f1`, `created_at`, `updated_at`) VALUES
	(1, 'Assets Under Management (AUMs)', 'As of March 2020, 24.38% of our assets under management consists of Equity Schemes which offer high returns. Followed by Money Market and Fixed Income (72.66% cumulative) Schemes for those who are willing to opt for consistent returns.', NULL, NULL);
/*!40000 ALTER TABLE `aums2` ENABLE KEYS */;

-- Dumping structure for table sales-app-live.aums_1_chart
CREATE TABLE IF NOT EXISTS `aums_1_chart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aums_1_key` varchar(191) NOT NULL,
  `aums_1_value` varchar(191) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Dumping data for table sales-app-live.aums_1_chart: ~5 rows (approximately)
/*!40000 ALTER TABLE `aums_1_chart` DISABLE KEYS */;
REPLACE INTO `aums_1_chart` (`id`, `aums_1_key`, `aums_1_value`) VALUES
	(1, 'Mar 20', '46068'),
	(2, 'Dec 19', '46910'),
	(3, 'Dec 18', '51806'),
	(4, 'Dec 17', '55693'),
	(5, 'Dec 16', '52406');
/*!40000 ALTER TABLE `aums_1_chart` ENABLE KEYS */;

-- Dumping structure for table sales-app-live.aums_2_chart
CREATE TABLE IF NOT EXISTS `aums_2_chart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aums_2_key` varchar(191) NOT NULL,
  `aums_2_value` varchar(191) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Dumping data for table sales-app-live.aums_2_chart: ~6 rows (approximately)
/*!40000 ALTER TABLE `aums_2_chart` DISABLE KEYS */;
REPLACE INTO `aums_2_chart` (`id`, `aums_2_key`, `aums_2_value`) VALUES
	(1, 'Equity Schemes', '10,634'),
	(2, 'Fixed Income Schemes', '7,102'),
	(3, 'Money Market Schemes', '26,373'),
	(4, 'Balanced Schemes', '529'),
	(5, 'Pension Schemes', '721'),
	(6, 'Funds of Funds Schemes', '709');
/*!40000 ALTER TABLE `aums_2_chart` ENABLE KEYS */;

-- Dumping structure for table sales-app-live.awards
CREATE TABLE IF NOT EXISTS `awards` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f1_bold` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f1_normal` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f2_bold` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f2_normal` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f3_bold` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f3_normal` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f4_bold` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f4_normal` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f5_bold` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f5_normal` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f6_bold` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f6_normal` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f7_bold` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f7_normal` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f8_bold` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f8_normal` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f9_bold` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f9_normal` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f10_bold` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f10_normal` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sales-app-live.awards: ~0 rows (approximately)
/*!40000 ALTER TABLE `awards` DISABLE KEYS */;
REPLACE INTO `awards` (`id`, `title`, `f1_bold`, `f1_normal`, `f2_bold`, `f2_normal`, `f3_bold`, `f3_normal`, `f4_bold`, `f4_normal`, `f5_bold`, `f5_normal`, `f6_bold`, `f6_normal`, `f7_bold`, `f7_normal`, `f8_bold`, `f8_normal`, `f9_bold`, `f9_normal`, `f10_bold`, `f10_normal`, `created_at`, `updated_at`) VALUES
	(1, 'Awards – Habib Bank Limited', 'Bank of the Year', 'in Pakistan (The Banker)', 'Safest Bank', 'in Pakistan (Global Finance)', 'Best Domestic Bank', '- Pakistan (Asiamoney)', 'Brand of the Year, Banking', '- Pakistan (World Branding Awards)', 'Best Investment Bank', 'in Pakistan (Global Finance)', 'Best Retail Bank', 'in Pakistan (Asian Banker)', 'Best Trade Finance Bank', 'in Pakistan (Global Finance)', 'Best Bank for Small Business & Agriculture', '(Institute of Bankers Pakistan IBP Awards)', 'Best Environmental, Social and Governance Bank', '(Institute of Bankers Pakistan IBP Awards)', 'The Innovators of Transaction Services', '(Global Finance, Digital Bank Awards)', NULL, NULL);
/*!40000 ALTER TABLE `awards` ENABLE KEYS */;

-- Dumping structure for table sales-app-live.banks
CREATE TABLE IF NOT EXISTS `banks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bank` varchar(191) DEFAULT NULL,
  `bank_color` varchar(191) NOT NULL,
  `chart_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- Dumping data for table sales-app-live.banks: ~10 rows (approximately)
/*!40000 ALTER TABLE `banks` DISABLE KEYS */;
REPLACE INTO `banks` (`id`, `bank`, `bank_color`, `chart_id`) VALUES
	(1, 'HBL', '#01a896', 1),
	(2, 'UBL', '#004b92', 1),
	(3, 'MCB', '#50b748', 1),
	(4, 'NBP', '#FC0', 1),
	(5, 'ABL', '#fe652c', 1),
	(6, 'HBL', '#01a896', 2),
	(7, 'UBL', '#004b92', 2),
	(8, 'MCB', '#50b748', 2),
	(9, 'NBP', '#FC0', 2),
	(10, 'ABL', '#fe652c', 2);
/*!40000 ALTER TABLE `banks` ENABLE KEYS */;

-- Dumping structure for table sales-app-live.bank_details
CREATE TABLE IF NOT EXISTS `bank_details` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `bank_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `branch_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `iban_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sales-app-live.bank_details: 33 rows
/*!40000 ALTER TABLE `bank_details` DISABLE KEYS */;
REPLACE INTO `bank_details` (`id`, `bank_name`, `branch_name`, `account_title`, `iban_number`, `customer_id`, `created_at`, `updated_at`) VALUES
	(1, 'HBL / Konnect', 'TEST BRANCH', 'TEST ACCOUNT TITLE', '498464847764884776488844', 1, '2019-12-04 12:31:54', '2019-12-04 12:31:54'),
	(2, 'ABL', 'BUKHARI', 'QAISER', '454544454545456486844548', 2, '2019-12-04 13:07:02', '2019-12-04 13:07:02'),
	(3, 'ABL', 'BUKHARI', 'QAIS', '546415464425424242454444', 3, '2019-12-04 13:10:47', '2019-12-04 13:10:47'),
	(4, 'HBL / Konnect', 'FDS', 'SFDS', 'FDFDDD113123131311313152', 4, '2019-12-04 13:22:47', '2019-12-04 13:22:47'),
	(5, 'HBL / Konnect', 'TST', 'TSEING', '858585885885885888585858', 5, '2019-12-04 13:26:39', '2019-12-04 13:26:39'),
	(6, 'HBL / Konnect', 'TESTING', 'TETING', '488488484848484848488888', 6, '2019-12-04 13:40:29', '2019-12-04 13:40:29'),
	(7, 'ABL', 'BUKHARI', 'QAIS', '151151514184645211514412', 7, '2019-12-04 15:16:44', '2019-12-04 15:16:44'),
	(8, 'HBL / Konnect', 'TESTER', 'TESTER', '434654654654654654664444', 8, '2019-12-09 13:09:44', '2019-12-09 13:09:44'),
	(9, 'ABL', 'BUKHARI', 'QAIS', '646454874845641545454444', 9, '2019-12-09 15:28:40', '2019-12-09 15:28:40'),
	(10, 'ABL', 'BUKHARI', 'QAIS', '154454545545464854848488', 10, '2019-12-09 15:35:08', '2019-12-09 15:35:08'),
	(11, 'ALFALAH', 'HGHGHGHJ', 'FGHFGFG', 'YUYUY5565659595685656565', 11, '2019-12-09 16:56:50', '2019-12-09 16:56:50'),
	(12, 'ABL', 'HKJHKHKJHK', 'JGGJGJGJGJ', 'GJGJ45454654544445454445', 12, '2019-12-11 09:03:51', '2019-12-11 09:03:51'),
	(13, 'HBL / Konnect', 'FDFDFDFD', 'OMAIR', 'PK00HBL00000000011100022', 13, '2019-12-11 14:42:12', '2019-12-11 14:42:12'),
	(14, 'HBL / Konnect', 'AD', 'TEST USER', '324324324324324235433232', 14, '2019-12-12 17:26:44', '2019-12-12 17:26:44'),
	(15, 'HBL / Konnect', 'TEST USER', 'TEST USER', '151561561185418848441444', 15, '2019-12-12 17:31:45', '2019-12-12 17:31:45'),
	(16, 'HBL / Konnect', 'DSA', 'TEST USER', '556546546546565656565555', 16, '2019-12-12 17:35:13', '2019-12-12 17:35:13'),
	(17, 'ALFALAH', 'DAS', 'ASDAS', '346346654564564654564464', 17, '2019-12-12 19:57:31', '2019-12-12 19:57:31'),
	(18, 'ABL', 'TET', 'QAIS', '456678765437654357777788', 18, '2019-12-13 12:21:43', '2019-12-13 12:21:43'),
	(19, 'ADVANS PAK MIRCOFINANCE', 'TET', 'TET', '568543278980998976657654', 19, '2019-12-13 12:30:20', '2019-12-13 12:30:20'),
	(20, 'HBL / Konnect', 'KAL KAL KAL', 'OMAIR', 'PK00HBL00000001111111222', 20, '2019-12-13 12:31:09', '2019-12-13 12:31:09'),
	(21, 'ABL', 'HFHFHFH', 'DSDSDSDS', 'PK00HBL00000000000000000', 22, '2019-12-16 12:06:31', '2019-12-16 12:06:31'),
	(22, 'HBL / Konnect', 'TSEING', 'SITNIOG', '958588509RNF8894H999F999', 23, '2019-12-16 12:19:37', '2019-12-16 12:19:37'),
	(23, 'HBL / Konnect', 'HGHGHGH', 'HGHGHGHG', 'HGHGHGHGHGHGHGHGHGHGHGHG', 24, '2019-12-19 10:04:28', '2019-12-19 10:04:28'),
	(24, 'ALBARAKA', 'SHAHRA E FAISAL', 'MUHAMMAD ARIF', '123456789123456789123456', 25, '2019-12-19 11:53:24', '2019-12-19 11:53:24'),
	(25, 'ABL', 'DGDGDG', 'DFGDGDFGFDG', 'GDFGDFGDFGDFGDFGDFGDFGDG', 26, '2019-12-19 12:24:17', '2019-12-19 12:24:17'),
	(26, 'SCB', 'CENT', 'ALI JAMAL', '123412341234123412341234', 27, '2019-12-23 11:54:22', '2019-12-23 11:54:22'),
	(27, 'ABL', 'DSDSDSD', 'DSDSDSDSD', 'DSDSDSDSDSDSDSDSDSDSDSDD', 28, '2019-12-23 12:26:07', '2019-12-23 12:26:07'),
	(28, 'HBL / Konnect', 'A', 'AA', '123412341234123412341234', 29, '2019-12-27 12:15:39', '2019-12-27 12:15:39'),
	(29, 'HBL / Konnect', 'BILAWAL CHOWRANGI BRANCH', 'MUHAMMAD MOIZ AHMED JUDDI', 'PKHB00521552323256548654', 30, '2019-12-30 12:35:50', '2019-12-30 12:35:50'),
	(30, 'HBL / Konnect', 'BILAWAL CHOWRANGI', 'MUHAMMAD MOIZ AHMED JUDDI', 'PKHBB0245885458545552245', 32, '2019-12-30 17:37:49', '2019-12-30 17:37:49'),
	(31, 'HBL / Konnect', 'HAHA', 'ABABA', 'PK0012345678901233456789', 33, '2020-02-20 16:24:50', '2020-02-20 16:24:50'),
	(32, 'HBL / Konnect', 'SDSDSD', 'DSDSDSDS', 'DSDSDSDSDSDSDSDSDSDSDSDS', 40, '2020-04-02 15:02:32', '2020-04-02 15:02:32'),
	(33, 'HBL / Konnect', 'TESTING', 'TESTING', '888848883888388838838888', 42, '2020-04-03 14:28:08', '2020-04-03 14:28:08');
/*!40000 ALTER TABLE `bank_details` ENABLE KEYS */;

-- Dumping structure for table sales-app-live.charts
CREATE TABLE IF NOT EXISTS `charts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `year` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `val` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ret` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `plan` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fund_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sales-app-live.charts: ~75 rows (approximately)
/*!40000 ALTER TABLE `charts` DISABLE KEYS */;
REPLACE INTO `charts` (`id`, `year`, `val`, `ret`, `plan`, `fund_id`, `created_at`, `updated_at`) VALUES
	(7, '1 year', '11192', '11.92', NULL, 11, NULL, NULL),
	(8, '3 year', '12436', '8.12', NULL, 11, NULL, NULL),
	(9, '1 year', '11116', '11.16', NULL, 12, NULL, NULL),
	(10, '3 year', '12538', '8.46', NULL, 12, NULL, NULL),
	(11, '1 year', '11237', '12.37', NULL, 13, NULL, NULL),
	(12, '3 year', '12727', '9.09', NULL, 13, NULL, NULL),
	(13, '1 year', '11302', '13.02', NULL, 14, NULL, NULL),
	(14, '3 year', '12730', '9.10', NULL, 14, NULL, NULL),
	(15, '1 year', '11444', '14.44', NULL, 15, NULL, NULL),
	(16, '3 year', '12961', '9.87', NULL, 15, NULL, NULL),
	(17, '1 year', '7432', '-25.68', NULL, 16, NULL, NULL),
	(18, '3 year', '6144', '-38.56', NULL, 16, NULL, NULL),
	(19, '1 year', '7905', '-20.95', NULL, 17, NULL, NULL),
	(20, '3 year', '6616', '-33.84', NULL, 17, NULL, NULL),
	(21, '1 year', '7468', '-25.32', NULL, 18, NULL, NULL),
	(22, '3 year', '6053', '-39.47', NULL, 18, NULL, NULL),
	(23, '1 Year', '7468', '-25.32', NULL, 19, NULL, NULL),
	(24, '3 Year', '5930', '-40.70', NULL, 19, NULL, NULL),
	(25, '1 year', '6289', '-37.11', NULL, 20, NULL, NULL),
	(26, '3 year', '5119', '-48.81', NULL, 20, NULL, NULL),
	(27, '1 year', '9871', '-1.29%', NULL, 21, NULL, NULL),
	(28, '3 year', '9946', '-0.54%', NULL, 21, NULL, NULL),
	(29, '1 year', '8695', '-13.05', NULL, 22, NULL, NULL),
	(30, '3 year', '7983', '-20.17', NULL, 22, NULL, NULL),
	(33, '5 year', '13552', '7.10', NULL, 11, NULL, NULL),
	(34, '5 year', '13922', '7.84', NULL, 12, NULL, NULL),
	(35, '5 year', '14362', '8.72', NULL, 13, NULL, NULL),
	(36, '5 year', '14322', '8.64', NULL, 14, NULL, NULL),
	(37, '5 year', '14793', '9.58', NULL, 15, NULL, NULL),
	(38, '5 year', '8856', '-11.44', NULL, 16, NULL, NULL),
	(39, '5 year', '10019', '0.19', NULL, 17, NULL, NULL),
	(40, '5 year', '9438', '-5.62', NULL, 18, NULL, NULL),
	(41, '5 Year', '8474', '-15.26', NULL, 19, NULL, NULL),
	(42, '5 year', '7439', '-25.61', NULL, 20, NULL, NULL),
	(43, '5 year', '10000', '0.00%', NULL, 21, NULL, NULL),
	(44, '5 year', '10919', '9.19', NULL, 22, NULL, NULL),
	(45, '1 year', '11283', '12.83', NULL, 10, NULL, NULL),
	(46, '3 year', '12985', '9.95', NULL, 10, NULL, NULL),
	(47, '5 year', '14843', '9.68', NULL, 10, NULL, NULL),
	(48, '1 year', '11186', '11.86', 'mmsf', 25, NULL, NULL),
	(49, '3 year', '12430', '8.10', 'mmsf', 25, NULL, NULL),
	(50, '5 year', '13572', '7.14', 'mmsf', 25, NULL, NULL),
	(51, '1 year', '11790', '17.90', 'dsf', 25, NULL, NULL),
	(52, '3 year', '13030', '10.10', 'dsf', 25, NULL, NULL),
	(53, '5 year', '14758', '9.51', 'dsf', 25, NULL, NULL),
	(54, '1 year', '7876', '-21.24', 'esf', 25, NULL, NULL),
	(55, '3 year4', '6834', '-31.66', 'esf', 25, NULL, NULL),
	(56, '5 year', '10983', '9.83', 'esf', 25, NULL, NULL),
	(57, '1 year', '10843', '8.43', 'mmsf', 26, NULL, NULL),
	(58, '3 year', '11842', '6.14', 'mmsf', 26, NULL, NULL),
	(59, '5 year', '12777', '5.55', 'mmsf', 26, NULL, NULL),
	(60, '1 year', '11021', '10.21', 'dsf', 26, NULL, NULL),
	(61, '3 year', '11959', '6.53', 'dsf', 26, NULL, NULL),
	(62, '5 year', '13002', '6.00', 'dsf', 26, NULL, NULL),
	(63, '1 year', '7727', '-22.73', 'esf', 26, NULL, NULL),
	(64, '3 year', '6351', '-36.49', 'esf', 26, NULL, NULL),
	(65, '5 year', '9840', '-1.60', 'esf', 26, NULL, NULL),
	(66, '90 Days', '9540', '-4.60', 'cap', 23, NULL, NULL),
	(67, '180 Days', '10219', '2.19', 'cap', 23, NULL, NULL),
	(68, '1 Year', '10288', '2.88', 'cap', 23, NULL, NULL),
	(69, '90 Days', '8539', '-14.61', 'aap', 23, NULL, NULL),
	(70, '180 Days', '9722', '-2.78', 'aap', 23, NULL, NULL),
	(71, '1 Year', '9246', '-7.54', 'aap', 23, NULL, NULL),
	(72, '90 Days', '8690', '-13.10', 'sap', 23, NULL, NULL),
	(73, '180 Days', '9848', '-1.52', 'sap', 23, NULL, NULL),
	(74, '1 Year', '10235', '2.35', 'sap', 23, NULL, NULL),
	(75, '90 Days', '9666', '-3.34', 'cap', 24, NULL, NULL),
	(76, '180 Days', '10354', '3.54', 'cap', 24, NULL, NULL),
	(77, '1 Year', '10441', '4.41', 'cap', 24, NULL, NULL),
	(78, '90 Days', '8483', '-15.17', 'aap', 24, NULL, NULL),
	(79, '180 Days', '9621', '-3.79', 'aap', 24, NULL, NULL),
	(80, '1 Year', '9236', '-7.64', 'aap', 24, NULL, NULL),
	(81, '90 Days', '-', '-', 'sap', 24, NULL, NULL),
	(82, '180 Days', '-', '-', 'sap', 24, NULL, NULL),
	(83, '1 Year', '-', '-', 'sap', 24, NULL, NULL);
/*!40000 ALTER TABLE `charts` ENABLE KEYS */;

-- Dumping structure for table sales-app-live.customers
CREATE TABLE IF NOT EXISTS `customers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `qq` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `father_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mother_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cnic` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cnic_attachment` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cnic_issue_date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pob_city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pob_country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cell` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `occupation` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `occ_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `org_emp_bes_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `working_experience` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `age_of_business` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `education` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `marital_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_of_dependants` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `public_figure` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `average_annual_income` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `refused_account_by_institute` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `high_value_item` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `soi` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `soi_attachment` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zakat` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zakat_options` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zakat_certificate` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sales-app-live.customers: 45 rows
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
REPLACE INTO `customers` (`id`, `qq`, `name`, `father_name`, `mother_name`, `dob`, `cnic`, `cnic_attachment`, `cnic_issue_date`, `pob_city`, `pob_country`, `email`, `cell`, `occupation`, `occ_name`, `designation`, `department`, `org_emp_bes_name`, `working_experience`, `age_of_business`, `education`, `marital_status`, `no_of_dependants`, `public_figure`, `average_annual_income`, `refused_account_by_institute`, `high_value_item`, `soi`, `soi_attachment`, `address`, `city1`, `country1`, `zakat`, `zakat_options`, `zakat_certificate`, `created_at`, `updated_at`) VALUES
	(1, 'pk', 'DEV', 'DEV', 'DEV', '2019-12-04', '42101-4079068-5', 'sample-bg.jpg', '2019-12-04', 'Karachi', 'pakistan', 'FRANCISGILL1000@GMAIL.COM', '923108559858', 'Private Service', 'TESTING from sales man', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Salary', 'sample-bg.jpg', 'THIS', 'Karachi', 'pakistan', 'yes', NULL, 'no_image.png', '2019-12-04 12:31:53', '2019-12-04 12:31:53'),
	(2, 'pk', 'TEST USER', 'TEST USER', 'TEST USER', '1990-11-25', '42401-8287413-1', '350x150.png', '2015-02-11', 'Karachi', 'pakistan', 'QAISERINFOLIVE@GMAIL.COM', '923330253172', 'Private Service', 'SQS', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Salary', '350x150.png', 'H #179\nORANGI', 'Karachi', 'pakistan', 'no', 'file', '350x150.png', '2019-12-04 13:07:02', '2019-12-04 13:07:02'),
	(3, 'pk', 'TEST USER', 'TEST USER', 'TEST USER', '2019-12-04', '42410-1145515-4', '350x150.png', '2000-05-10', 'Karachi', 'pakistan', 'QAISERINFOLIVE@GMAIL.COM', '923330253172', 'Private Service', 'SQS', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Salary', '350x150.png', 'H #179\nORANGI', 'Karachi', 'pakistan', 'yes', NULL, 'no_image.png', '2019-12-04 13:10:47', '2019-12-04 13:10:47'),
	(4, 'pk', 'USER TEST', 'USER TEST', 'USER TEST', '2017-02-03', '42102-7787687-7', 'Phonebook.jpg', '2019-12-04', 'Karachi', 'pakistan', 'SHAHEEDKHAN333@GMAIL.COM', '923124556465', 'Private Service', 'ASAS', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Inheritance', 'Phonebook.jpg', 'DSASDSADSADS', 'Karachi', 'pakistan', 'yes', NULL, 'no_image.png', '2019-12-04 13:22:47', '2019-12-04 13:22:47'),
	(5, 'pk', 'TESTINGINGINGIN', 'TESTINGINGINGIN', 'TESTINGINGINGIN', '2019-12-04', '48848-8488884-8', '350x150.png', '2019-12-04', 'Karachi', 'pakistan', 'FRANCISGILL1000@GMAIL.COM', '923108559858', 'Private Service', 'TESINGINGING', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Salary', '350x150.png', 'TESTING', 'Karachi', 'pakistan', 'yes', NULL, 'no_image.png', '2019-12-04 13:26:39', '2019-12-04 13:26:39'),
	(6, 'pk', 'DEV', 'DEV', 'DEV', '2019-12-04', '48484-8484848-4', '350x150.png', '2019-12-04', 'Karachi', 'pakistan', 'FRANCISGILL1000@GMAIL.COM', '923108559858', 'Private Service', 'SDTETING', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Self-Owned', '350x150.png', 'THIS', 'Karachi', 'pakistan', 'yes', NULL, 'no_image.png', '2019-12-04 13:40:29', '2019-12-04 13:40:29'),
	(7, 'pk', 'QAISER', 'Ali Sherazi', 'TEST USER', '2019-12-04', '41515-151515415', '350x150.png', '2019-05-08', 'Karachi', 'pakistan', 'QAISERINFOLIVE@GMAIL.COM', '923330253172', 'Private Service', 'SQS', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Salary', '350x150.png', 'H #179\nORANGI', 'Karachi', 'pakistan', 'yes', NULL, 'no_image.png', '2019-12-04 15:16:43', '2019-12-04 15:16:43'),
	(8, 'pk', 'TESTER', 'TESTER', 'TESTER`', '2018-05-09', '1113131313131-3', 'download (1).jpg', '2015-05-20', 'Karachi', 'pakistan', 'SQASASAS@G', '921231313131', 'Private Service', 'TESTER', 'TESTER', 'TESTER', 'TESTER', 'TESTER', 'TESTER', 'Undergraduade', 'Single', '12', 'yes', '250-500k', 'TESTER', 'TESTER', 'Stock/Investment', 'download (1).jpg', 'TESTER', 'TESTER', 'pakistan', 'yes', NULL, 'no_image.png', '2019-12-09 13:09:44', '2019-12-09 13:09:44'),
	(9, 'pk', 'QAISER', 'SHEIKH', 'TEST USER', '2019-05-08', '42401-8287413-1', '350x150.png', '2014-05-07', 'Karachi', 'pakistan', 'QAISERINFOLIVE@GMAIL.COM', '923330253172', 'Private Service', 'SQS', 'DEV', 'IT', 'SQS', '10', '15', 'Graduade', 'Single', '5', 'no', 'Less than 250k', 'no', 'no', 'Salary', '350x150.png', 'H 45', 'Karachi', 'pakistan', 'yes', NULL, 'no_image.png', '2019-12-09 15:28:40', '2019-12-09 15:28:40'),
	(10, 'pk', 'QAISER SHERAZI', 'SHERAZI', 'TEST', '2019-02-06', '45454-564154854', '350x150.png', '2017-05-10', 'Karachi', 'pakistan', 'QAISERINFOLIVE@GMAIL.COM', '923330253172', 'Private Service', 'SQS', 'DEVELOPER', 'IT', 'SQS', '10', 'SQS', 'Graduade', 'Single', '5', 'no', 'Less than 250k', 'no', 'no', 'Salary', '350x150.png', 'H #179', 'Karachi', 'pakistan', 'no', 'file', '350x150.png', '2019-12-09 15:35:07', '2019-12-09 15:35:07'),
	(11, 'pk', 'FSFSFSF', 'FSFSFSFSFS', 'FSFSFSFSFS', '1985-01-02', '42501-7785884-4', 'Picture1.png', '2019-02-05', 'Quetta', 'pakistan', 'OMAIRF05@GMAIL.COM', '923653653653', 'Retired', 'IMPORT', 'MANAN', 'EXPORT', 'PEN DEW ENTERPRISES', '25', '10', 'Undergraduade', 'Single', '0', 'no', '10mn-100mn', 'no', 'no', 'Inheritance', 'Picture3.jpg', 'STREET 3', 'Lahore', 'pakistan', 'no', 'email', 'no_image.png', '2019-12-09 16:56:50', '2019-12-09 16:56:50'),
	(12, 'pk', 'HGHGHG', 'HGHGHG', 'HGHGHG', '1972-05-10', '56565-6565655-5', 'Picture2.png', '2019-02-05', 'Karachi', 'pakistan', 'HGHGHG@LIVE.COM', '923653653653', 'Govt. Employee', 'DIRECTOR', 'DIRECTOR', 'AUDIT', 'NICL', '25', '0', 'Graduade', 'Married', '3', 'no', '1-10mn', 'no', 'no', 'Salary', 'Picture2.png', 'STREET 3', 'Lahore', 'pakistan', 'no', 'email', 'no_image.png', '2019-12-11 09:03:50', '2019-12-11 09:03:50'),
	(13, 'pk', 'OMAIR', 'FAROOQ', 'HIRA', '1984-02-02', '56565-6565656-5', 'Picture2.png', '2008-02-06', 'Karachi', 'pakistan', 'OMAIR.FAROOQ@HBLASSET.COM', '923223563566', 'Private Service', 'FINANCIAL', 'MANAGER', 'MARKETING', 'HBL', '2', 'N/A', 'Graduade', 'Single', '0', 'no', '500k-1mn', 'no', 'no', 'Salary', 'Picture1.png', 'STREET 3', 'Karachi', 'pakistan', 'yes', NULL, 'no_image.png', '2019-12-11 14:42:11', '2019-12-11 14:42:11'),
	(14, 'pk', 'QAISER WEB', 'TEST USER', 'TEST USER', '2019-12-05', '54564-5454154-8', '350x150.png', '2019-02-06', 'Lahore', 'pakistan', 'QS@GMAIL.COM', '923332545451', 'Businessman', 'TEST USER', 'TEST USER', 'TEST USER', 'SQS', '15', 'SQS', 'Graduade', 'Single', '5', 'no', '250-500k', 'no', 'no', 'Inheritance', '350x150.png', '79\nOR', 'Peshawar', 'pakistan', 'yes', NULL, 'no_image.png', '2019-12-12 17:26:44', '2019-12-12 17:26:44'),
	(15, 'pk', 'QAISER USER', 'TEST USER', 'TEST USER', '2019-12-04', '4544545484848-4', '350x150.png', '2019-02-06', 'Lahore', 'pakistan', 'QAISERINFOLIVE@GMAIL.COM', '923330253172', 'Private Service', 'SQS', 'TEST USER', 'TEST USER', 'TEST USER', '15', '15', 'Undergraduade', 'Single', '5', 'no', '250-500k', 'no', 'no', 'Home Remittance', '350x150.png', '2322', 'Karachi', 'pakistan', 'yes', NULL, 'no_image.png', '2019-12-12 17:31:45', '2019-12-12 17:31:45'),
	(16, 'pk', 'QAISER WEB', 'TEST USER', 'TEST USER', '2019-05-08', '14485-4545468-5', '350x150.png', '2019-12-03', 'Lahore', 'pakistan', 'QAISERINFOLIVE@GMAIL.COM', '923330253172', 'Businessman', 'SQS', 'TEST USER', 'TEST USER', 'TEST USER', '14', '15', 'Undergraduade', 'Single', '54', 'no', '10mn-100mn', 'no', 'no', 'Inheritance', '350x150.png', 'DF', 'Lahore', 'pakistan', 'yes', NULL, 'no_image.png', '2019-12-12 17:35:12', '2019-12-12 17:35:12'),
	(17, 'pk', 'SHAHEED', 'HAMEED', 'ADASD', '2019-12-12', '4564646465464-6', '350x150.png', '2019-12-04', 'Peshawar', 'pakistan', 'ADA@AL', '922332664646', 'Govt. Employee', 'DASDS', 'SDSD', 'SDS', 'SDSD', 'SDDS', 'SDD', 'Undergraduade', 'Single', '45', 'yes', '250-500k', 'no', 'no', 'Stock/Investment', '350x150.png', 'FHJGJHGJ', 'Karachi', 'pakistan', 'yes', NULL, 'no_image.png', '2019-12-12 19:57:31', '2019-12-12 19:57:31'),
	(18, 'pk', 'QAIS WB', 'TES', 'TES', '2019-12-12', '65677-6567777-6', 'Screenshot_2018-05-16-16-50-58.png', '2019-12-12', 'Islamabad', 'pakistan', 'QS@GMAIL.COM', '928542354552', 'Businessman', 'TEST', 'TET', 'TE', 'IT', '6', '5', 'Graduade', 'Single', '5', 'no', 'Less than 250k', 'no', 'no', 'Home Remittance', 'Screenshot_2018-05-16-16-50-58.png', '34', 'Karachi', 'pakistan', 'yes', NULL, 'no_image.png', '2019-12-13 12:21:43', '2019-12-13 12:21:43'),
	(19, 'pk', 'QAIS APP', 'TEST', 'TET', '2019-05-23', '63535-6353535-6', 'Screenshot_2018-05-16-16-50-58.png', '2019-12-13', 'Karachi', 'pakistan', 'QAISERINFOLIVE@GMAIL.COM', '925245252255', 'Businessman', 'TEST', 'TET', 'TET', 'TE', '5', '6', 'Graduade', 'Single', '5', 'no', '250-500k', 'no', 'no', 'Home Remittance', 'Screenshot_2018-05-16-16-50-58.png', '555 H', 'Islamabad', 'pakistan', 'yes', NULL, 'no_image.png', '2019-12-13 12:30:19', '2019-12-13 12:30:19'),
	(20, 'pk', 'OMAIR FAROOQ', 'FAROOQ', 'HIRA', '1979-02-07', '45454-5454545-4', 'Picture2.png', '2019-02-06', 'Lahore', 'pakistan', 'OMAIR.FAROOQ@HBLASSET.COM', '923232323232', 'Private Service', 'FINANCIAL', 'MANAGER', 'MARKETING', 'HBL AMC', '8', '0', 'Undergraduade', 'Single', '0', 'no', '500k-1mn', 'no', 'no', 'Salary', 'Picture2.png', 'STREET 3', 'Karachi', 'pakistan', 'yes', NULL, 'no_image.png', '2019-12-13 12:31:09', '2019-12-13 12:31:09'),
	(21, 'us', 'HGHGHGH', 'HGHGHG', 'HGHGHG', '1979-05-03', '55555-5555555-5', 'PHOTO-2019-04-09-17-45-19 (1).jpg', '2019-02-06', 'NEW YORK', 'us', 'OMAIR.FAROOQ@HBLASSET.COM', '+15656565656', 'Businessman', 'FINANCIAL CONSULTANT', 'ANALYST', 'FINANCE', 'ABC PVT LTD', '20', '0', 'Post Graduade', 'Married', '4', 'no', '1-10mn', 'no', 'no', 'Salary', 'PHOTO-2019-04-09-17-45-19 (1).jpg', 'STREET 3', 'NEW YORK', 'us', 'yes', NULL, 'no_image.png', '2019-12-16 09:11:35', '2019-12-16 09:11:35'),
	(22, 'pk', 'GFGFGFG', 'GFGFGFG', 'GFGFGFG', '1976-04-06', '56565-6565656-5', 'Picture2.png', '2019-02-06', 'Karachi', 'pakistan', 'OMAIR.FAROOQ@HBLASSET.COM', '923232323232', 'Private Service', 'FINANCIAL', 'AM', 'AUDIT', 'ABC', '5', '0', 'Undergraduade', 'Single', '0', 'no', '500k-1mn', 'no', 'no', 'Salary', 'Picture2.png', 'SDSDSDSDSD', 'Lahore', 'pakistan', 'yes', NULL, 'no_image.png', '2019-12-16 12:06:30', '2019-12-16 12:06:30'),
	(23, 'pk', 'TESTINGIGN', 'TESTINGIGN', 'TESTINGIGN', '2019-12-16', '49494-9494949-4', 'Astor_Loose_Round_Blue_01.jpg', '2019-12-16', 'Karachi', 'pakistan', 'FRANICSGILL1000@GMAIL.COM', '923108559858', 'Govt. Employee', 'TEING', 'TESING', 'TESTING', 'TSING', 'TESING', 'TESETIN', 'Graduade', 'Single', '5', 'no', 'Less than 250k', 'no', 'no', 'Salary', 'Astor_Loose_Round_Blue_01.jpg', 'TESING', 'Karachi', 'pakistan', 'yes', NULL, 'no_image.png', '2019-12-16 12:19:37', '2019-12-16 12:19:37'),
	(24, 'pk', 'GFGFDG', 'GFGFGD', 'GFGFDGD', '1984-04-03', '56565-6565656-5', 'Picture2.png', '2019-02-06', 'Lahore', 'pakistan', 'OMAIR.FAROOQ@HBLASSET.COM', '923232323232', 'Private Service', 'HGHGHG', 'HGHGHGH', 'HGHGHG', 'HGHGHGH', '6', '-', 'Post Graduade', 'Single', '-', 'no', '500k-1mn', 'no', 'no', 'Salary', 'pic 1.png', 'STREET 3', 'Karachi', 'pakistan', 'yes', NULL, 'no_image.png', '2019-12-19 10:04:28', '2019-12-19 10:04:28'),
	(25, 'pk', 'MUHAMMAD ARIF', 'SHABBIR AHMED KHAN', 'FARHAT SULTANA', '1982-07-30', '42201-0691124-3', 'hajjdetails.jpg', '2017-07-31', 'Karachi', 'pakistan', 'M_ARIFS71@HOTMAIL.COM', '923223501516', 'Private Service', 'FINANCE', 'DEPUTY MANAGER', 'FINANCE', 'CDC', '14', '2', 'Proffesional', 'Married', '4', 'no', '1-10mn', 'no', 'no', 'Salary', 'hajjdetails.jpg', 'HOUSE NO. D-3 ALMUJEEB GARDEN MODEL COLONY', 'Karachi', 'pakistan', 'yes', NULL, 'no_image.png', '2019-12-19 11:53:23', '2019-12-19 11:53:23'),
	(26, 'pk', 'FDFDF', 'FDFDFD', 'FDFDFD', '1971-05-04', '56566-5665656-5', '112.jpg', '2019-02-06', 'Lahore', 'pakistan', 'OMAIR.FAROOQ@HBLASSET.COM', '922662626262', 'Private Service', 'FINANCIAL', 'MANAGER', 'FDFDFD', 'FDFDFDFDF', '5', '-', 'Graduade', 'Single', '-', 'no', '500k-1mn', 'no', 'no', 'Salary', 'Lilly-takes-to-continuous-manufacturing-with-40m-Irish-investment.jpg', 'STREET 3', 'Karachi', 'pakistan', 'yes', NULL, 'no_image.png', '2019-12-19 12:24:17', '2019-12-19 12:24:17'),
	(27, 'pk', 'ALI JAMAL', 'MUHAMMAD RAFIQ AHMED', 'FARZANA RAFIQ', '2019-12-01', '42201-4199160-5', 'ALI JAMAL.jpg', '2019-12-01', 'Karachi', 'pakistan', 'ALI_JAMAL@CDCPAK.COM', '923463300772', 'Private Service', 'FINANCE', 'AM', 'FINANCE', 'CDC', '5', '5', 'Graduade', 'Married', '3', 'no', '500k-1mn', 'no', 'no', 'Salary', 'ALI JAMAL.jpg', 'ABC', 'Karachi', 'pakistan', 'yes', NULL, 'no_image.png', '2019-12-23 11:54:22', '2019-12-23 11:54:22'),
	(28, 'pk', 'DSDSDDS', 'DSDSDSD', 'DSDSDS', '2019-12-23', '55555-5555555-5', 'Picture2.png', '2019-12-16', 'Lahore', 'pakistan', 'OMAIR.FAROOQ@HBLASSET.COM', '923232323232', 'Private Service', 'PRIVATE', 'MANAGER', 'OPS', 'AAA', '4', '0', 'Undergraduade', 'Single', '0', 'no', '1-10mn', 'no', 'no', 'Salary', 'Pic 3.png', 'STREET 3', 'Lahore', 'pakistan', 'no', 'email', 'no_image.png', '2019-12-23 12:26:07', '2019-12-23 12:26:07'),
	(29, 'pk', 'A', 'A', 'A', '2019-12-01', '111111111111111', 'ALI JAMAL.jpg', '2019-12-01', 'Karachi', 'pakistan', 'ALI_JAMAL@CDCPAK.COM', '921231234567', 'Professional', '5', 'A', 'F', 'CDC', '5', '5', 'Proffesional', 'Single', '5', 'no', '500k-1mn', 'no', 'no', 'Salary', 'ALI JAMAL.jpg', 'ABC', 'Karachi', 'pakistan', 'yes', NULL, 'no_image.png', '2019-12-27 12:15:39', '2019-12-27 12:15:39'),
	(30, 'pk', 'MUHAMMAD MOIZ AHMED JUDDI', 'M.G.M JUDDI', 'SYEDA SAMIUNNISA', '1984-04-07', '42101-1788311-5', '2.png', '2015-01-01', 'Karachi', 'pakistan', 'MOIZ.JUDDI@GMAIL.COM', '923458207558', 'Professional', 'MARKETING', 'HEAD OF MARKETING', 'MARKETING', 'HBL ASSET MANAGEMENT LTD.', '14 YEARS', 'N/A', 'Proffesional', 'Married', '2', 'no', '1-10mn', 'no', 'no', 'Salary', '2.png', 'PLOT 9C, MUSLIM COMMERCIAL, DHA PHASE VI KARACHI', 'Karachi', 'pakistan', 'yes', NULL, 'no_image.png', '2019-12-30 12:35:50', '2019-12-30 12:35:50'),
	(31, 'o', 'MUHAMMAD MOIZ AHMED JUDDI', 'MGM JUDDI', 'SYEDA SAMIUNNISA', '1984-04-07', '42101-1788311-5', '2.png', '2015-01-01', 'Karachi', 'pakistan', 'MOIZ.JUDDI@HBLASSET.COM', '923118448484', 'Private Service', 'MARKETING', 'HEAD OF MARKETING', 'MARKETING', 'HBL ASSET MANAGEMENT LTD', '14', '15', 'Proffesional', 'Married', '2', 'no', '1-10mn', 'no', 'no', 'Salary', 'Logo-01.jpg', 'PLOT 9C, MUSLIM COMMERCIAL, DHA PHASE VI', 'TORONTO', 'CANADA', 'no', 'email', 'no_image.png', '2019-12-30 12:39:58', '2019-12-30 12:39:58'),
	(32, 'pk', 'MUHAMMAD MOIZ AHMED JUDDI', 'MGM JUDDI', 'SAMI', '1984-04-07', '42101-1788311-5', 'CanadianChequeSample.png', '2015-01-01', 'Karachi', 'pakistan', 'MOIZ.JUDDI@HBLASSET.COM', '923458207558', 'Private Service', 'MARKETING', 'HEAD OF MARKETING', 'MARKETING', 'HBL ASSET MANAGEMENT LTD', '14', '15', 'Proffesional', 'Married', '2', 'no', '1-10mn', 'no', 'no', 'Salary', 'CanadianChequeSample.png', 'PLOT 9C APARTMENT 3', 'Karachi', 'pakistan', 'no', 'email', 'no_image.png', '2019-12-30 17:37:49', '2019-12-30 17:37:49'),
	(33, 'pk', 'DADA', 'DADA', 'DADAD', '1976-02-04', '56565-6565656-5', 'HBL 9X6 Window Envelope.jpg', '2020-01-05', 'Karachi', 'pakistan', 'HBH@GMAIL.COM', '923333333333', 'Private Service', 'ABC', 'ABC', 'FINANCE', 'ABC', '30', '20', 'Undergraduade', 'Single', '1', 'no', '500k-1mn', 'no', 'no', 'Salary', 'HBL 9X6 Window Envelope.jpg', 'STREET 3', 'Karachi', 'pakistan', 'no', 'email', 'no_image.png', '2020-02-20 16:24:49', '2020-02-20 16:24:49'),
	(34, 'pk', 'GHGHGH', 'JHJHJ', 'HJHJHJHJ', '2020-04-01', '55555-5555555-5', 'Footer.PNG', '2020-03-03', 'Karachi', 'pakistan', 'OMAIR.FAROOQ@HBLASSET.COM', '923223545454', 'Govt. Employee', 'GOVT EMPLOYEE', 'OFFICER', 'OPS', 'SRB', '5', NULL, 'Graduate', 'Single', '1', 'no', '500k-1mn', 'no', 'no', 'Salary', 'Footer.PNG', '44444', 'Karachi', 'pakistan', 'no', 'email', 'no_image.png', '2020-04-01 17:38:50', '2020-04-01 17:38:50'),
	(35, 'pk', 'GFGFGF', 'GFGFGFG', 'GFGFGFG', '1980-02-06', '55555-5555555-5', 'Footer.PNG', '2020-02-05', 'Karachi', 'pakistan', 'OMAIR.FAROOQ@HBLASSET.COM', '923232323232', 'Private Service', 'ASSISTANT', 'SDSDSDSD', 'DSDSDSDS', 'DSDSDSD', '6', NULL, 'Undergraduate', 'Single', '1', 'no', '500k-1mn', 'no', 'no', 'Salary', 'Footer.PNG', 'DSDSDSDS', 'Karachi', 'pakistan', 'no', 'email', 'no_image.png', '2020-04-01 17:43:22', '2020-04-01 17:43:22'),
	(36, 'pk', 'FRANCIS', 'EJAZ', 'MUMTAZ', '2020-04-02', '42101-4079068-5', 'e6e30693-9224-4c89-b003-6cc4b4348528-insta-noemoji-heart.jpg', '2020-04-02', 'Karachi', 'pakistan', 'FRANCISGILL1000@GMAIL.COM', '923108559858', 'Govt. Employee', 'TESTIGN', 'TESTING', 'TESTING', 'TESTING', '5', NULL, 'Undergraduate', 'Single', '5', 'no', 'Less than 250k', 'no', 'no', 'Salary', 'e6e30693-9224-4c89-b003-6cc4b4348528-insta-noemoji-heart.jpg', 'THIS', 'Karachi', 'pakistan', 'yes', NULL, 'no_image.png', '2020-04-02 11:25:28', '2020-04-02 11:25:28'),
	(37, 'pk', 'GHGHGHG', 'HGHGHGHGH', 'JHJHJHJH', '1989-02-02', '55555-5555555-5', 'Footer.PNG', '2018-02-07', 'Karachi', 'pakistan', 'HGHGH@GMAIL.COM', '923232323232', 'Govt. Employee', 'HGHGHGHGH', 'HGHJGJHGJHG', 'JHKJHKJHJKHJ', 'JHKJHKJHKJ', '6', NULL, 'Undergraduate', 'Single', '1', 'no', '500k-1mn', 'no', 'no', 'Salary', 'Footer.PNG', 'HGJHGJHGJH', 'Karachi', 'pakistan', 'no', 'email', 'no_image.png', '2020-04-02 11:37:25', '2020-04-02 11:37:25'),
	(38, 'pk', 'GFFDGFDGFD', 'GFGFDGFD', 'GFDGFDGFD', '1997-02-06', '55555-5555555-5', 'pexels-photo-256417.jpeg', '2020-03-04', 'Karachi', 'pakistan', 'OMAIR.FAROOQ@HBLASSET.COM', '923232323232', 'Govt. Employee', 'DFDFDFD', 'FDFDFDF', 'FDFDFDF', 'FDFDFDFDF', '6', NULL, 'Undergraduate', 'Single', '1', 'no', '500k-1mn', 'no', 'no', 'Salary', 'pexels-photo-256417.jpeg', 'STREET 3', 'Lahore', 'pakistan', 'no', 'email', 'no_image.png', '2020-04-02 11:42:48', '2020-04-02 11:42:48'),
	(39, 'pk', 'FDFDFD', 'FDFDFD', 'FDFDFD', '2001-02-07', '55555-5555555-5', 'Footer.PNG', '2017-02-09', 'Karachi', 'pakistan', 'OMAIR.FAROOQ@HBLASSET.COM', '923232323232', 'Private Service', 'PRIVATE', 'OFFICER', 'OPS', 'ABC', '6', NULL, 'Undergraduate', 'Single', '1', 'no', '500k-1mn', 'no', 'no', 'Salary', 'Footer.PNG', '22/1 KARACHI', 'Karachi', 'pakistan', 'no', 'email', 'no_image.png', '2020-04-02 11:50:45', '2020-04-02 11:50:45'),
	(40, 'pk', 'GFGFG', 'GFGFGF', 'GFGFGFG', '1996-02-07', '55555-5555555-5', 'Footer.PNG', '2020-03-03', 'Karachi', 'pakistan', 'OMAIR.FAROOQ@HBLASSET.COM', '923223333333', 'Govt. Employee', 'SDSDSDS', 'DSDSDSD', 'DSDSDS', 'SDSDS', '1', NULL, 'Undergraduate', 'Single', '1', 'no', 'Less than 250k', 'no', 'no', 'Salary', 'Footer.PNG', 'STREET 3', 'Karachi', 'pakistan', 'no', 'email', 'no_image.png', '2020-04-02 15:02:32', '2020-04-02 15:02:32'),
	(41, 'pk', 'TESTING', 'TESTING', 'TESTING', '2020-04-03', '42101-4089068-5', '8904456f-f3f9-43f9-94aa-65dbcedc6997.jpg', '2020-04-03', 'Karachi', 'pakistan', 'FRANCISGILL1000@GMAIL.COM', '923108559858', 'Govt. Employee', 'TESTIGN', 'TESTING', 'TESTING', 'TESTING', '5', NULL, 'Undergraduate', 'Single', '5', 'no', 'Less than 250k', 'no', 'no', 'Salary', '8904456f-f3f9-43f9-94aa-65dbcedc6997.jpg', 'TESING', 'Karachi', 'pakistan', 'yes', NULL, 'no_image.png', '2020-04-03 14:02:54', '2020-04-03 14:02:54'),
	(42, 'pk', 'TESTING', 'TESTING', 'TESTING', '1988-09-27', '42101-4079068-4', '8904456f-f3f9-43f9-94aa-65dbcedc6997.jpg', '2020-04-03', 'Karachi', 'pakistan', 'FRANCISGILL1000@GMAIL.COM', '923108559858', 'Govt. Employee', 'TESTING', 'TESTING', 'TESTING', 'TESTING', '5', NULL, 'Undergraduate', 'Single', '5', 'no', '250-500k', 'no', 'no', 'Salary', '8904456f-f3f9-43f9-94aa-65dbcedc6997.jpg', 'THIS', 'Karachi', 'pakistan', 'yes', NULL, 'no_image.png', '2020-04-03 14:28:07', '2020-04-03 14:28:07'),
	(43, 'pk', 'TESTING', 'TESTING', 'TESTING', '2020-04-03', '42101-407906857', 'access.png', '2020-04-02', 'Karachi', 'pakistan', 'FRANCISGILL1000@GMAIL.COM', '923108559858', 'Govt. Employee', 'TESTING', 'TESTING', 'TESTING', 'TESTING', '5', NULL, 'Undergraduate', 'Single', '5', 'no', 'Less than 250k', 'no', 'no', 'Salary', 'access.png', 'I HAVE SENT', 'Karachi', 'pakistan', 'yes', NULL, 'no_image.png', '2020-04-03 15:06:01', '2020-04-03 15:06:01'),
	(44, 'pk', 'TESTER', 'TESTER', 'TESTER1234567890-', '2020-04-02', '12345-6789011-1', 'customers2.png', '2020-04-02', 'TESTER', 'pakistan', 'TESTER@GMAIL.COM', '921234567890', 'Govt. Employee', 'TESTER', 'TESTER', 'TESTER', 'TESTER', '6', NULL, 'Professional', 'Single', '8', 'yes', 'Above 100mn', 'no', 'TESTER', 'Salary', 'customers2.png', 'TESTER', 'TESTER', 'TESTER', 'no', 'email', 'feedback1.png', '2020-04-03 17:36:35', '2020-04-03 17:36:35'),
	(45, 'pk', 'TESTER', 'TESTER', 'TESTER', '2020-04-02', '123346786856489', 'customers2.png', '2020-04-02', 'Peshawar', 'pakistan', 'TESTER@GMAIL.COM', '923947375894', 'Govt. Employee', 'TESTER', 'TESTER', 'TESTER', 'TESTER', '3', NULL, 'Graduate', 'Married', '3', 'yes', 'Less than 250k', 'no', 'no', 'Stock/Investment', 'image9.jpg', 'TESTER', 'TESTER', 'TESTER', 'yes', NULL, 'no_image.png', '2020-04-03 17:42:29', '2020-04-03 17:42:29');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;

-- Dumping structure for table sales-app-live.discussions
CREATE TABLE IF NOT EXISTS `discussions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `form_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `msg` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `receiver_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sales-app-live.discussions: ~11 rows (approximately)
/*!40000 ALTER TABLE `discussions` DISABLE KEYS */;
REPLACE INTO `discussions` (`id`, `form_id`, `msg`, `receiver_id`, `sender_id`, `created_at`, `updated_at`) VALUES
	(1, 'SA4716', 'tesing', '89', '90', '2019-12-04 12:36:50', '2019-12-04 12:36:50'),
	(2, 'SA4716', 'tesing', '89', '90', '2019-12-04 12:38:40', '2019-12-04 12:38:40'),
	(3, 'SA4716', 'check please', '90', '89', '2019-12-04 12:41:22', '2019-12-04 12:41:22'),
	(4, 'SA4716', 'completed', '76', '90', '2019-12-04 12:44:20', '2019-12-04 12:44:20'),
	(5, 'SA4605', 'check this', '89', '90', '2019-12-04 15:18:00', '2019-12-04 15:18:00'),
	(6, 'SA4605', 'done', '90', '89', '2019-12-04 15:20:18', '2019-12-04 15:20:18'),
	(7, 'SA4605', 'done', '76', '90', '2019-12-04 15:21:31', '2019-12-04 15:21:31'),
	(8, 'SA4605', 'done', '90', '89', '2019-12-04 15:41:07', '2019-12-04 15:41:07'),
	(9, 'SA4605', 'done', '90', '89', '2019-12-04 15:41:27', '2019-12-04 15:41:27'),
	(10, 'SA4605', 'done', '76', '90', '2019-12-04 15:49:22', '2019-12-04 15:49:22'),
	(11, 'Web7321', 'all done', '76', '90', '2019-12-09 15:30:05', '2019-12-09 15:30:05');
/*!40000 ALTER TABLE `discussions` ENABLE KEYS */;

-- Dumping structure for table sales-app-live.exp
CREATE TABLE IF NOT EXISTS `exp` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `shd` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fund_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sales-app-live.exp: ~17 rows (approximately)
/*!40000 ALTER TABLE `exp` DISABLE KEYS */;
REPLACE INTO `exp` (`id`, `shd`, `title`, `desc`, `fund_id`, `created_at`, `updated_at`) VALUES
	(1, 'As of March 31, 2020', 'Explanation:', 'If you would have invested Rs. 10,000/- each for three different tenures of 1 Year, 3 Years and 5 Years; the cumulative value of your investment would have been as per the above chart.', 10, NULL, NULL),
	(2, 'As of March 31, 2020', 'Explanation:', 'If you would have invested Rs. 10,000/- each for three different tenures of 1 Year, 3 Years and 5 Years; the cumulative value of your investment would have been as per the above chart.', 11, NULL, NULL),
	(3, 'As of March 31, 2020', 'Explanation:', 'If you would have invested Rs. 10,000/- each for three different tenures of 1 Year, 3 Years and 5 Years; the cumulative value of your investment would have been as per the above chart.', 12, '0000-00-00 00:00:00', NULL),
	(4, 'As of March 31, 2020', 'Explanation:', 'If you would have invested Rs. 10,000/- each for three different tenures of 1 Year, 3 Years and 5 Years; the cumulative value of your investment would have been as per the above chart.', 13, '0000-00-00 00:00:00', NULL),
	(5, 'As of March 31, 2020', 'Explanation:', 'If you would have invested Rs. 10,000/- each for three different tenures of 1 Year, 3 Years and 5 Years; the cumulative value of your investment would have been as per the above chart.', 14, NULL, NULL),
	(6, 'As of March 31, 2020', 'Explanation:', 'If you would have invested Rs. 10,000/- each for three different tenures of 1 Year, 3 Years and 5 Years; the cumulative value of your investment would have been as per the above chart.', 15, NULL, NULL),
	(7, 'As of March 31, 2020', 'Explanation:', 'If you would have invested Rs. 10,000/- each for three different tenures of 1 Year, 3 Years and 5 Years; the cumulative value of your investment would have been as per the above chart.', 16, NULL, NULL),
	(8, 'As of March 31, 2020', 'Explanation:', 'If you would have invested Rs. 10,000/- each for three different tenures of 1 Year, 3 Years and 5 Years; the cumulative value of your investment would have been as per the above chart.', 17, NULL, NULL),
	(9, 'As of March 31, 2020', 'Explanation:', 'If you would have invested Rs. 10,000/- each for three different tenures of 1 Year, 3 Years and 5 Years; the cumulative value of your investment would have been as per the above chart.', 18, NULL, NULL),
	(10, 'As of March 31, 2020', 'Explanation:', 'If you would have invested Rs. 10,000/- each for three different tenures of 1 Year, 3 Years and 5 Years; the cumulative value of your investment would have been as per the above chart.', 19, NULL, NULL),
	(11, 'As of March 31, 2020', 'Explanation:', 'If you would have invested Rs. 10,000/- each for three different tenures of 1 Year, 3 Years and 5 Years; the cumulative value of your investment would have been as per the above chart.', 20, NULL, NULL),
	(12, 'As of March 31, 2020', 'Explanation:', 'If you would have invested Rs. 10,000/- for one year; the cumulative value of your investment would have been as per the above chart.', 21, NULL, NULL),
	(13, 'As of March 31, 2020', 'Explanation:', 'If you would have invested Rs. 10,000/- each for three different tenures of 1 Year, 3 Years and 5 Years; the cumulative value of your investment would have been as per the above chart.', 22, NULL, NULL),
	(14, 'As of March 31, 2020', 'Explanation:', 'If you would have invested Rs. 10,000/- each for three different tenures of 1 Year, 3 Years and 5 Years; the cumulative value of your investment would have been as per the above chart.', 23, NULL, NULL),
	(15, 'As of March 31, 2020', 'Explanation:', 'If you would have invested Rs. 10,000/- each for three different tenures of 1 Year, 3 Years and 5 Years; the cumulative value of your investment would have been as per the above chart.', 24, NULL, NULL),
	(16, 'As of March 31, 2020', 'Explanation:', 'If you would have invested Rs. 10,000/- for one year; the cumulative value of your investment would have been as per the above chart.', 25, NULL, NULL),
	(17, 'As of March 31, 2020', 'Explanation:', 'If you would have invested Rs. 10,000/- each for three different tenures of 1 Year, 3 Years and 5 Years; the cumulative value of your investment would have been as per the above chart.', 26, NULL, NULL);
/*!40000 ALTER TABLE `exp` ENABLE KEYS */;

-- Dumping structure for table sales-app-live.fatca_details
CREATE TABLE IF NOT EXISTS `fatca_details` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `multiple_nat` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nats` longtext COLLATE utf8mb4_unicode_ci,
  `green_card` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_resi` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `for_citi` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `co_ma` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `co_mp` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attor` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attor_addr` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trans_fund` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `wf` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wform` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wform_options` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sales-app-live.fatca_details: 33 rows
/*!40000 ALTER TABLE `fatca_details` DISABLE KEYS */;
REPLACE INTO `fatca_details` (`id`, `multiple_nat`, `nats`, `green_card`, `tax_resi`, `for_citi`, `co_ma`, `co_mp`, `attor`, `attor_addr`, `trans_fund`, `wf`, `wform`, `wform_options`, `customer_id`, `created_at`, `updated_at`) VALUES
	(1, 'no', NULL, 'no', 'no', 'no', NULL, NULL, 'no', NULL, 'no', 'no', 'no_image.png', NULL, 1, '2019-12-04 12:31:56', '2019-12-04 12:31:56'),
	(2, 'no', NULL, 'no', 'no', 'no', NULL, NULL, 'no', NULL, 'no', 'no', 'no_image.png', NULL, 2, '2019-12-04 13:07:03', '2019-12-04 13:07:03'),
	(3, 'no', NULL, 'no', 'no', 'no', NULL, NULL, 'no', NULL, 'no', 'no', 'no_image.png', NULL, 3, '2019-12-04 13:10:48', '2019-12-04 13:10:48'),
	(4, 'no', NULL, 'no', 'no', 'no', NULL, NULL, 'no', NULL, 'no', 'no', 'no_image.png', NULL, 4, '2019-12-04 13:22:48', '2019-12-04 13:22:48'),
	(5, 'no', NULL, 'no', 'no', 'no', NULL, NULL, 'no', NULL, 'no', 'no', 'no_image.png', NULL, 5, '2019-12-04 13:26:40', '2019-12-04 13:26:40'),
	(6, 'no', NULL, 'no', 'no', 'no', NULL, NULL, 'no', NULL, 'no', 'no', 'no_image.png', NULL, 6, '2019-12-04 13:40:29', '2019-12-04 13:40:29'),
	(7, 'no', NULL, 'no', 'no', 'no', NULL, '03330253172', 'no', NULL, 'no', 'no', 'no_image.png', NULL, 7, '2019-12-04 15:16:44', '2019-12-04 15:16:44'),
	(8, 'no', NULL, 'no', 'no', 'no', NULL, NULL, 'no', NULL, 'no', 'no', 'no_image.png', NULL, 8, '2019-12-09 13:09:45', '2019-12-09 13:09:45'),
	(9, 'no', NULL, 'no', 'no', 'no', NULL, NULL, 'no', NULL, 'no', 'no', 'no_image.png', NULL, 9, '2019-12-09 15:28:40', '2019-12-09 15:28:40'),
	(10, 'no', NULL, 'no', 'no', 'no', NULL, NULL, 'no', NULL, 'no', 'no', 'no_image.png', NULL, 10, '2019-12-09 15:35:08', '2019-12-09 15:35:08'),
	(11, 'no', NULL, 'no', 'no', 'no', NULL, NULL, 'no', NULL, 'no', 'no', 'no_image.png', NULL, 11, '2019-12-09 16:56:51', '2019-12-09 16:56:51'),
	(12, 'no', NULL, 'no', 'no', 'no', NULL, NULL, 'no', NULL, 'no', 'no', 'no_image.png', NULL, 12, '2019-12-11 09:03:51', '2019-12-11 09:03:51'),
	(13, 'no', NULL, 'no', 'no', 'no', NULL, NULL, 'no', NULL, 'no', 'no', 'no_image.png', NULL, 13, '2019-12-11 14:42:12', '2019-12-11 14:42:12'),
	(14, 'no', NULL, 'no', 'no', 'no', NULL, NULL, 'no', NULL, 'no', 'no', 'no_image.png', NULL, 14, '2019-12-12 17:26:45', '2019-12-12 17:26:45'),
	(15, 'no', NULL, 'no', 'no', 'no', NULL, NULL, 'no', NULL, 'no', 'no', 'no_image.png', NULL, 15, '2019-12-12 17:31:46', '2019-12-12 17:31:46'),
	(16, 'no', NULL, 'no', 'no', 'no', NULL, NULL, 'no', NULL, 'no', 'no', 'no_image.png', NULL, 16, '2019-12-12 17:35:13', '2019-12-12 17:35:13'),
	(17, 'no', NULL, 'no', 'no', 'no', NULL, NULL, 'no', NULL, 'no', 'no', 'no_image.png', NULL, 17, '2019-12-12 19:57:32', '2019-12-12 19:57:32'),
	(18, 'no', NULL, 'no', 'no', 'no', NULL, NULL, 'no', NULL, 'no', 'no', 'no_image.png', NULL, 18, '2019-12-13 12:21:47', '2019-12-13 12:21:47'),
	(19, 'no', NULL, 'no', 'no', 'no', NULL, NULL, 'no', NULL, 'no', 'no', 'no_image.png', NULL, 19, '2019-12-13 12:30:31', '2019-12-13 12:30:31'),
	(20, 'no', NULL, 'no', 'no', 'no', NULL, NULL, 'no', NULL, 'no', 'no', 'no_image.png', NULL, 20, '2019-12-13 12:31:09', '2019-12-13 12:31:09'),
	(21, 'no', NULL, 'no', 'no', 'no', NULL, NULL, 'no', NULL, 'no', 'no', 'no_image.png', NULL, 22, '2019-12-16 12:06:32', '2019-12-16 12:06:32'),
	(22, 'no', NULL, 'no', 'no', 'no', NULL, NULL, 'no', NULL, 'no', 'no', 'no_image.png', NULL, 23, '2019-12-16 12:19:37', '2019-12-16 12:19:37'),
	(23, 'no', NULL, 'no', 'no', 'no', NULL, NULL, 'no', NULL, 'no', 'no', 'no_image.png', NULL, 24, '2019-12-19 10:04:28', '2019-12-19 10:04:28'),
	(24, 'no', NULL, 'no', 'no', 'no', NULL, NULL, 'no', NULL, 'no', 'no', 'no_image.png', NULL, 25, '2019-12-19 11:53:30', '2019-12-19 11:53:30'),
	(25, 'no', NULL, 'no', 'no', 'no', NULL, NULL, 'no', NULL, 'no', 'no', 'no_image.png', NULL, 26, '2019-12-19 12:24:17', '2019-12-19 12:24:17'),
	(26, 'no', NULL, 'no', 'no', 'no', NULL, NULL, 'no', NULL, 'no', 'no', 'no_image.png', NULL, 27, '2019-12-23 11:54:23', '2019-12-23 11:54:23'),
	(27, 'no', NULL, 'no', 'no', 'no', NULL, NULL, 'no', NULL, 'no', 'no', 'no_image.png', NULL, 28, '2019-12-23 12:26:07', '2019-12-23 12:26:07'),
	(28, 'no', NULL, 'no', 'no', 'no', 'AAA', NULL, 'no', NULL, 'no', 'no', 'no_image.png', NULL, 29, '2019-12-27 12:15:41', '2019-12-27 12:15:41'),
	(29, 'yes', 'Pakistan,Canada', 'no', 'no', 'no', NULL, NULL, 'no', NULL, 'no', 'no', 'no_image.png', NULL, 30, '2019-12-30 12:35:51', '2019-12-30 12:35:51'),
	(30, 'no', NULL, 'no', 'no', 'no', NULL, NULL, 'no', NULL, 'no', 'no', 'no_image.png', NULL, 32, '2019-12-30 17:37:49', '2019-12-30 17:37:49'),
	(31, 'no', NULL, 'no', 'no', 'no', NULL, NULL, 'no', NULL, 'no', 'no', 'no_image.png', NULL, 33, '2020-02-20 16:24:51', '2020-02-20 16:24:51'),
	(32, 'no', NULL, 'no', 'no', 'no', NULL, NULL, 'no', NULL, 'no', 'no', 'no_image.png', NULL, 40, '2020-04-02 15:02:33', '2020-04-02 15:02:33'),
	(33, 'no', NULL, 'no', 'no', 'yes', NULL, NULL, 'yes', 'ddd', 'no', 'yes', 'e6e30693-9224-4c89-b003-6cc4b4348528-insta-noemoji-heart.jpg', 'file', 42, '2020-04-03 14:28:19', '2020-04-03 14:28:19');
/*!40000 ALTER TABLE `fatca_details` ENABLE KEYS */;

-- Dumping structure for table sales-app-live.features_benefits
CREATE TABLE IF NOT EXISTS `features_benefits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fb_bullets_rt` varchar(300) DEFAULT NULL,
  `fb_bullets_lt` varchar(300) DEFAULT NULL,
  `fund_id` int(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=latin1;

-- Dumping data for table sales-app-live.features_benefits: ~58 rows (approximately)
/*!40000 ALTER TABLE `features_benefits` DISABLE KEYS */;
REPLACE INTO `features_benefits` (`id`, `fb_bullets_rt`, `fb_bullets_lt`, `fund_id`, `created_at`, `updated_at`) VALUES
	(1, 'Easy to Invest.', 'No back end load.', 10, '2018-07-07 11:47:22', '2018-07-07 11:47:22'),
	(2, 'Safe Investment.', 'Actively managed by experienced Fund Managers.', 10, '2018-07-07 11:47:22', '2018-07-07 11:47:22'),
	(3, 'Stable returns.', NULL, 10, '2018-07-07 11:47:22', '2018-07-07 11:47:22'),
	(4, 'Timely redeemable.', NULL, 10, '2018-07-07 11:47:22', '2018-07-07 11:47:22'),
	(7, 'Easy to Invest.', 'No back end load.', 11, '2018-07-07 11:47:22', '2018-07-07 11:47:22'),
	(8, 'Actively managed by experienced Fund Managers.', 'Safe Investment.', 11, '2018-07-07 11:47:22', '2018-07-07 11:47:22'),
	(9, 'Stable returns.', 'Actively managed by experienced Fund Managers.', 11, '2018-07-07 11:47:22', '2018-07-07 11:47:22'),
	(10, 'Timely redeemable.', NULL, 11, '2018-07-07 11:47:22', '2018-07-07 11:47:22'),
	(13, 'Easy to Invest.', 'No back end load.', 12, '2018-07-07 11:47:22', '2018-07-07 11:47:22'),
	(14, 'Safe Investment.', 'Actively managed by experienced Fund Managers.', 12, '2018-07-07 11:47:22', '2018-07-07 11:47:22'),
	(15, 'Stable returns.', NULL, 12, '2018-07-07 11:47:22', '2018-07-07 11:47:22'),
	(16, 'Timely redeemable.', NULL, 12, '2018-07-07 11:47:22', '2018-07-07 11:47:22'),
	(19, 'Easy to Invest.', 'No back end load.', 13, '2018-07-07 11:47:22', '2018-07-07 11:47:22'),
	(20, 'Safe Investment.', 'Actively managed by experienced Fund Managers.', 13, '2018-07-07 11:47:22', '2018-07-07 11:47:22'),
	(21, 'Stable returns.', NULL, 13, '2018-07-07 11:47:22', '2018-07-07 11:47:22'),
	(22, 'Timely redeemable.', NULL, 13, '2018-07-07 11:47:22', '2018-07-07 11:47:22'),
	(25, 'Easy to Invest.', 'No back end load.', 14, '2018-07-07 11:47:22', '2018-07-07 11:47:22'),
	(26, 'Safe Investment.', 'Actively managed by experienced Fund Managers.', 14, '2018-07-07 11:47:22', '2018-07-07 11:47:22'),
	(27, 'Stable returns.', NULL, 14, '2018-07-07 11:47:22', '2018-07-07 11:47:22'),
	(28, 'Timely redeemable.', NULL, 14, '2018-07-07 11:47:22', '2018-07-07 11:47:22'),
	(31, 'Easy to Invest.', 'No back end load.', 15, '2018-07-07 11:47:22', '2018-07-07 11:47:22'),
	(32, 'Safe Investment.', 'Actively managed by experienced Fund Managers.', 15, '2018-07-07 11:47:22', '2018-07-07 11:47:22'),
	(33, 'Stable returns.', NULL, 15, '2018-07-07 11:47:22', '2018-07-07 11:47:22'),
	(34, 'Timely redeemable.', NULL, 15, '2018-07-07 11:47:22', '2018-07-07 11:47:22'),
	(37, 'Easy to Invest.', 'Selective off-index allocations to generate alpha.\r\n', 16, '2018-07-09 21:08:55', '2018-07-09 21:08:55'),
	(38, 'Diversified portfolio with a focus on high-quality blue-chip stocks.\r\n', 'Actively managed by experienced Fund Managers.\r\n', 16, '2018-07-09 21:08:55', '2018-07-09 21:08:55'),
	(39, 'No back end load.', NULL, 16, '2018-07-07 11:47:22', '2018-07-07 11:47:22'),
	(42, 'Easy to Invest.', 'Selective off-index allocations to generate alpha.\r\n', 17, '2018-07-09 21:08:55', '2018-07-09 21:08:55'),
	(43, 'Diversified portfolio with a focus on high-quality blue-chip stocks.\r\n', 'Actively managed by experienced Fund Managers.\r\n', 17, '2018-07-09 21:08:55', '2018-07-09 21:08:55'),
	(44, 'No back end load.', NULL, 17, '2018-07-07 11:47:22', '2018-07-07 11:47:22'),
	(47, 'Easy to Invest.', 'Selective off-index allocations to generate alpha.\r\n', 18, '2018-07-09 21:08:55', '2018-07-09 21:08:55'),
	(48, 'Diversified portfolio with a focus on high-quality blue-chip stocks.\r\n', 'Actively managed by experienced Fund Managers.\r\n', 18, '2018-07-09 21:08:55', '2018-07-09 21:08:55'),
	(49, 'No back end load.', NULL, 18, '2018-07-07 11:47:22', '2018-07-07 11:47:22'),
	(52, 'Easy to Invest.', 'Selective off-index allocations to generate alpha.\r\n', 19, '2018-07-09 21:08:55', '2018-07-09 21:08:55'),
	(53, 'Diversified portfolio with a focus on high-quality blue-chip stocks.\r\n', 'Actively managed by experienced Fund Managers.\r\n', 19, '2018-07-09 21:08:55', '2018-07-09 21:08:55'),
	(54, 'No back end load.', NULL, 19, '2018-07-07 11:47:22', '2018-07-07 11:47:22'),
	(57, 'Easy to Invest.', 'Selective off-index allocations to generate alpha.\r\n', 20, '2018-07-09 21:08:55', '2018-07-09 21:08:55'),
	(58, 'Diversified portfolio with a focus on high-quality blue-chip stocks.\r\n', 'Actively managed by experienced Fund Managers.\r\n', 20, '2018-07-09 21:08:55', '2018-07-09 21:08:55'),
	(59, 'No back end load.', NULL, 20, '2018-07-07 11:47:22', '2018-07-07 11:47:22'),
	(62, 'Easy to Invest.', 'Up to 30% exposure in listed stocks.\r\n', 21, '2018-07-07 11:47:22', '2018-07-07 11:47:22'),
	(63, 'Up to 30% exposure in listed stocks', 'No back end load.', 21, '2018-07-09 21:08:55', '2018-07-09 21:08:55'),
	(64, 'Diversified into money market/fixed income and equities asset classes', 'Actively managed by experienced Fund Managers.', 21, '2018-07-09 21:08:55', '2018-07-09 21:08:55'),
	(68, 'Easy to Invest.', 'Time redeemable', 22, '2018-07-07 11:47:22', '2018-07-07 11:47:22'),
	(69, 'Safe Investment.', 'No back end load.\r\n', 22, '2018-07-09 21:08:55', '2018-07-09 21:08:55'),
	(70, 'Better Returns than Money Market & Fixed \r\nIncome Funds.', 'Up to 70% exposure in listed stocks.\r\n', 22, '2018-07-09 21:08:55', '2018-07-09 21:08:55'),
	(71, NULL, 'Actively managed by experienced Fund Managers.\r\n', 22, '2018-07-07 11:47:22', '2018-07-07 11:47:22'),
	(74, NULL, NULL, 23, '2018-07-07 11:47:22', '2018-07-07 11:47:22'),
	(75, 'Actively managed by experienced Fund Managers', NULL, 23, '2018-07-09 21:08:55', '2018-07-09 21:08:55'),
	(76, 'Easy to Invest.', 'Diversified into defensive (money market/fixed income) and aggressive (equities) assets classes.', 23, '2018-07-09 21:08:55', '2018-07-09 21:08:55'),
	(77, 'Easy to Invest.', 'Diversified into defensive (money market/fixed income) and aggressive (equities) assets classes.', 24, '2018-07-07 11:47:22', '2018-07-07 11:47:22'),
	(78, 'Actively managed by experienced Fund Managers.', NULL, 24, '2018-07-09 21:08:55', '2018-07-09 21:08:55'),
	(79, NULL, NULL, 24, '2018-07-09 21:08:55', '2018-07-09 21:08:55'),
	(80, 'Invest as per the investor’s risk appetite.', 'No Back End Load', 25, '2018-07-07 11:47:22', '2018-07-07 11:47:22'),
	(81, 'Competitive Returns.', 'Professional Management.\r\n', 25, '2018-07-09 21:08:55', '2018-07-09 21:08:55'),
	(82, 'Tax Credit.', 'Option to withdraw entire or partial amount 50% free of tax at retirement.\r\n', 25, '2018-07-09 21:08:55', '2018-07-09 21:08:55'),
	(83, 'Invest as per the investor’s risk appetite.', 'No Back End Load', 26, '2018-07-07 11:47:22', '2018-07-07 11:47:22'),
	(84, 'Competitive Returns.', 'Professional Management.\r\n', 26, '2018-07-09 21:08:55', '2018-07-09 21:08:55'),
	(85, 'Tax Credit.', 'Option to withdraw entire or partial amount 50% free of tax at retirement.', 26, '2018-07-09 21:08:55', '2018-07-09 21:08:55');
/*!40000 ALTER TABLE `features_benefits` ENABLE KEYS */;

-- Dumping structure for table sales-app-live.fi
CREATE TABLE IF NOT EXISTS `fi` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fi_k_1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fi_v_1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fi_k_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fi_v_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fi_k_3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fi_v_3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fi_k_4` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fi_v_4` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fi_k_5` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fi_v_5` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fund_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sales-app-live.fi: ~13 rows (approximately)
/*!40000 ALTER TABLE `fi` DISABLE KEYS */;
REPLACE INTO `fi` (`id`, `fi_k_1`, `fi_v_1`, `fi_k_2`, `fi_v_2`, `fi_k_3`, `fi_v_3`, `fi_k_4`, `fi_v_4`, `fi_k_5`, `fi_v_5`, `fund_id`, `created_at`, `updated_at`) VALUES
	(1, 'Fund Size (PKR Mn)', '14,798', 'Minimum Investment (PKR)', '1,000', 'Subsequent Investment (PKR)', '1,000', 'Front end Load', 'Up to 1.00% of NAV', 'Back end Load', 'Nil', 10, NULL, NULL),
	(2, 'Fund Size (PKR Mn)', '2,599', 'Minimum Investment (PKR)', '1,000', 'Subsequent Investment (PKR)', '1,000', 'Front end Load', 'Up to 1.00%', 'Back end Load', 'Nil', 11, NULL, NULL),
	(3, 'Fund Size (PKR Mn)', '1,646', 'Minimum Investment (PKR)', '1,000', 'Subsequent Investment (PKR)', '1,000', 'Front end Load', 'Up to 2.00%', 'Back end Load', 'Nil', 12, NULL, NULL),
	(4, 'Fund Size (PKR Mn)', '8,976', 'Minimum Investment (PKR)', '1,000', 'Subsequent Investment (PKR)', '1,000', 'Front end Load', 'Up to 1.00%', 'Back end Load', 'Nil', 13, NULL, NULL),
	(5, 'Fund Size (PKR Mn)', '1,636', 'Minimum Investment (PKR)', '1,000', 'Subsequent Investment (PKR)', '500', 'Front end Load', 'Up to 1.50%', 'Back end Load', 'Nil', 14, NULL, NULL),
	(6, 'Fund Size (PKR Mn)', '3,820', 'Minimum Investment (PKR)', '1,000', 'Subsequent Investment (PKR)', '1,000', 'Front end Load', 'Up to 2.00%', 'Back end Load', 'Nil', 15, NULL, NULL),
	(7, 'Fund Size (PKR Mn)', '1,510', 'Minimum Investment (PKR)', '1,000', 'Subsequent Investment (PKR)', '1,000', 'Front end Load', 'Up to 2.50%', 'Back end Load', 'Nil', 16, NULL, NULL),
	(8, 'Fund Size (PKR Mn)', '208', 'Minimum Investment (PKR)', '1,000', 'Subsequent Investment (PKR)', '1,000', 'Front end Load', 'Up to 2.00%', 'Back end Load', 'Nil', 17, NULL, NULL),
	(9, 'Fund Size (PKR Mn)', '249', 'Minimum Investment (PKR)', '1,000', 'Subsequent Investment (PKR)', '1,000', 'Front end Load', 'Up to 2.00%', 'Back end Load', 'Nil', 18, NULL, NULL),
	(10, 'Fund Size (PKR Mn)', '380', 'Minimum Investment (PKR)', '1,000', 'Subsequent Investment (PKR)', '1,000', 'Front end Load', 'Up to 2.00%', 'Back end Load', 'Nil', 19, NULL, NULL),
	(11, 'Fund Size (PKR Mn)', '484', 'Minimum Investment (PKR)', '1,000', 'Subsequent Investment (PKR)', '1,000', 'Front end Load', 'Up to 2.00%', 'Back end Load', 'Nil', 20, NULL, NULL),
	(12, 'Fund Size (PKR Mn)', '369', 'Minimum Investment (PKR)', '1,000', 'Subsequent Investment (PKR)', '1,000', 'Front end Load', 'Up to 2.00%', 'Back end Load', 'Nil', 21, NULL, NULL),
	(13, 'Fund Size (PKR Mn)', '160', 'Minimum Investment (PKR)', '1,000', 'Subsequent Investment (PKR)', '1,000', 'Front end Load', '2.00%', 'Back end Load', 'Nil', 22, NULL, NULL);
/*!40000 ALTER TABLE `fi` ENABLE KEYS */;

-- Dumping structure for table sales-app-live.fi1
CREATE TABLE IF NOT EXISTS `fi1` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fi_k1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fi_k1v1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fi_k1v2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fi_k1v3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fi_k2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fi_k2v1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fi_k2v2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fi_k2v3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fi_k3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fi_k3v1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fi_k3v2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fi_k3v3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fi_k4` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fi_k4v1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fi_k4v2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fi_k4v3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fi_k5` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fi_k5v1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fi_k5v2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fi_k5v3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fund_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sales-app-live.fi1: ~4 rows (approximately)
/*!40000 ALTER TABLE `fi1` DISABLE KEYS */;
REPLACE INTO `fi1` (`id`, `fi_k1`, `fi_k1v1`, `fi_k1v2`, `fi_k1v3`, `fi_k2`, `fi_k2v1`, `fi_k2v2`, `fi_k2v3`, `fi_k3`, `fi_k3v1`, `fi_k3v2`, `fi_k3v3`, `fi_k4`, `fi_k4v1`, `fi_k4v2`, `fi_k4v3`, `fi_k5`, `fi_k5v1`, `fi_k5v2`, `fi_k5v3`, `fund_id`, `created_at`, `updated_at`) VALUES
	(1, 'Fund Size (PKR Mn)', '12', '86', '26', 'Minimum Investment (PKR)', 'Rs. 10,000/-', 'Rs. 10,000/-', NULL, 'Subsequent Investment', NULL, 'Rs. 1000/-', NULL, 'Front end Load', 'Up to 2.00%', 'Up to 2.00%', 'Up to 2.00%', 'Back end Load', 'Nil', 'Nil', 'Nil', 23, NULL, NULL),
	(2, 'Fund Size (PKR Mn)', '53', '52', '-', 'Minimum Investment (PKR)', 'Rs. 10,000/-', 'Rs. 10,000/-', '-', 'Subsequent Investment', 'Rs. 1,000/-', 'Rs. 1,000/-', '-', 'Front end Load', 'Up to 2.00%', 'Up to 2.00%', '-', 'Back end Load', 'Nil', 'Nil', '-', 24, NULL, NULL),
	(3, 'Fund Size (PKR Mn)', '133', '189', '225', 'Minimum Investment (PKR)', 'Rs. 1,000/-', 'Rs. 1,000/-', 'Rs. 1,000/-', 'Subsequent Investment', 'Rs. 1,000/-', 'Rs. 1,000/-', 'Rs. 1,000/-', 'Front end Load', 'Up to 3.00%', 'Up to 3.00%', 'Up to 3.00%', 'Back end Load', 'Nil', 'Nil', 'Nil', 25, NULL, NULL),
	(4, 'Fund Size (PKR Mn)', '48', '69', '101', 'Minimum Investment (PKR)', 'Rs. 1,000/-', 'Rs. 1,000/-', 'Rs. 1,000/-', 'Subsequent Investment', 'Rs. 1,000/-', 'Rs. 1,000/-', 'Rs. 1,000/-', 'Front end Load', 'Up to 3.00%', 'Up to 3.00%', 'Up to 3.00%', 'Back end Load', 'Nil', 'Nil', 'Nil', 26, NULL, NULL);
/*!40000 ALTER TABLE `fi1` ENABLE KEYS */;

-- Dumping structure for table sales-app-live.fields
CREATE TABLE IF NOT EXISTS `fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `form_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_details` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_details` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `investment_details` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other_details` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fatca_details` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sales-app-live.fields: 2 rows
/*!40000 ALTER TABLE `fields` DISABLE KEYS */;
REPLACE INTO `fields` (`id`, `form_id`, `customer_details`, `bank_details`, `investment_details`, `other_details`, `fatca_details`, `user_id`, `status`, `created_at`, `updated_at`) VALUES
	(1, 'SA4716', '["cnic_attachment","occ_name","soi_attachment"]', 'null', 'null', '["asf","dpo","type_of_units"]', 'null', '89', 'checked', '2019-12-04 12:38:40', '2019-12-04 12:38:40'),
	(2, 'SA4605', '["father_name"]', 'null', 'null', 'null', 'null', '89', 'checked', '2019-12-04 15:18:00', '2019-12-04 15:18:00');
/*!40000 ALTER TABLE `fields` ENABLE KEYS */;

-- Dumping structure for table sales-app-live.forms
CREATE TABLE IF NOT EXISTS `forms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `form_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `channel` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `assigned_to` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sales-app-live.forms: 60 rows
/*!40000 ALTER TABLE `forms` DISABLE KEYS */;
REPLACE INTO `forms` (`id`, `form_id`, `channel`, `status`, `customer_id`, `user_id`, `assigned_to`, `created_at`, `updated_at`) VALUES
	(1, 'SA4716', 'SA', 3, 1, 89, 91, '2019-12-04 12:31:56', '2019-12-04 12:31:56'),
	(2, 'Web6824', 'Web', 0, 2, 0, 0, '2019-12-04 13:07:04', '2019-12-04 13:07:04'),
	(3, 'Web7049', 'Web', 0, 3, 0, 0, '2019-12-04 13:10:49', '2019-12-04 13:10:49'),
	(4, 'SA7768', 'SA', 0, 4, 89, 0, '2019-12-04 13:22:48', '2019-12-04 13:22:48'),
	(5, 'Web8000', 'Web', 0, 5, 0, 0, '2019-12-04 13:26:40', '2019-12-04 13:26:40'),
	(6, 'SA8830', 'SA', 0, 6, 89, 0, '2019-12-04 13:40:30', '2019-12-04 13:40:30'),
	(7, 'SA4605', 'SA', 3, 7, 89, 0, '2019-12-04 15:16:45', '2019-12-04 15:16:45'),
	(8, 'SA8985', 'SA', 0, 8, 89, 0, '2019-12-09 13:09:45', '2019-12-09 13:09:45'),
	(9, 'Web7321', 'Web', 3, 9, 0, 0, '2019-12-09 15:28:41', '2019-12-09 15:28:41'),
	(10, 'SA7708', 'SA', 0, 10, 89, 0, '2019-12-09 15:35:08', '2019-12-09 15:35:08'),
	(11, 'Web2611', 'Web', 0, 11, 0, 0, '2019-12-09 16:56:51', '2019-12-09 16:56:51'),
	(12, 'Web7031', 'Web', 0, 12, 0, 0, '2019-12-11 09:03:51', '2019-12-11 09:03:51'),
	(13, 'Web7332', 'Web', 0, 13, 0, 0, '2019-12-11 14:42:12', '2019-12-11 14:42:12'),
	(14, 'Web3605', 'Web', 0, 14, 0, 0, '2019-12-12 17:26:45', '2019-12-12 17:26:45'),
	(15, 'SA3906', 'SA', 0, 15, 89, 0, '2019-12-12 17:31:46', '2019-12-12 17:31:46'),
	(16, 'Web4114', 'Web', 0, 16, 0, 0, '2019-12-12 17:35:14', '2019-12-12 17:35:14'),
	(17, 'SA8651', 'SA', 0, 1, 89, 0, '2019-12-12 18:50:51', '2019-12-12 18:50:51'),
	(18, 'SA9126', 'SA', 0, 1, 89, 0, '2019-12-12 18:58:46', '2019-12-12 18:58:46'),
	(19, 'SA9166', 'SA', 0, 1, 89, 0, '2019-12-12 18:59:26', '2019-12-12 18:59:26'),
	(20, 'SA9307', 'SA', 0, 1, 89, 0, '2019-12-12 19:01:47', '2019-12-12 19:01:47'),
	(21, 'SA9318', 'SA', 0, 1, 89, 0, '2019-12-12 19:01:58', '2019-12-12 19:01:58'),
	(22, 'SA9419', 'SA', 0, 1, 89, 0, '2019-12-12 19:03:39', '2019-12-12 19:03:39'),
	(23, 'SA9511', 'SA', 0, 1, 89, 0, '2019-12-12 19:05:11', '2019-12-12 19:05:11'),
	(24, 'SA9712', 'SA', 0, 1, 89, 0, '2019-12-12 19:08:32', '2019-12-12 19:08:32'),
	(25, 'SA0128', 'SA', 0, 1, 89, 0, '2019-12-12 19:15:28', '2019-12-12 19:15:28'),
	(26, 'SA0427', 'SA', 0, 1, 89, 0, '2019-12-12 19:20:27', '2019-12-12 19:20:27'),
	(27, 'SA0568', 'SA', 0, 1, 89, 0, '2019-12-12 19:22:48', '2019-12-12 19:22:48'),
	(28, 'SA0915', 'SA', 0, 1, 89, 0, '2019-12-12 19:28:35', '2019-12-12 19:28:35'),
	(29, 'SA1025', 'SA', 0, 1, 89, 0, '2019-12-12 19:30:25', '2019-12-12 19:30:25'),
	(30, 'SA1373', 'SA', 0, 1, 89, 0, '2019-12-12 19:36:13', '2019-12-12 19:36:13'),
	(31, 'SA1404', 'SA', 0, 1, 89, 0, '2019-12-12 19:36:44', '2019-12-12 19:36:44'),
	(32, 'SA1434', 'SA', 0, 1, 89, 0, '2019-12-12 19:37:14', '2019-12-12 19:37:14'),
	(33, 'SA1456', 'SA', 0, 1, 89, 0, '2019-12-12 19:37:36', '2019-12-12 19:37:36'),
	(34, 'SA1472', 'SA', 0, 1, 89, 0, '2019-12-12 19:37:52', '2019-12-12 19:37:52'),
	(35, 'SA1492', 'SA', 0, 1, 89, 0, '2019-12-12 19:38:12', '2019-12-12 19:38:12'),
	(36, 'SA1547', 'SA', 0, 1, 89, 0, '2019-12-12 19:39:07', '2019-12-12 19:39:07'),
	(37, 'Web2652', 'Web', 0, 17, 0, 0, '2019-12-12 19:57:32', '2019-12-12 19:57:32'),
	(38, 'SA2802', 'SA', 0, 1, 89, 0, '2019-12-12 20:00:02', '2019-12-12 20:00:02'),
	(39, 'SA2826', 'SA', 0, 1, 89, 0, '2019-12-12 20:00:26', '2019-12-12 20:00:26'),
	(40, 'SA3815', 'SA', 0, 1, 89, 0, '2019-12-12 20:16:55', '2019-12-12 20:16:55'),
	(41, 'Web1707', 'Web', 0, 18, 0, 0, '2019-12-13 12:21:47', '2019-12-13 12:21:47'),
	(42, 'Web2231', 'Web', 0, 19, 0, 0, '2019-12-13 12:30:31', '2019-12-13 12:30:31'),
	(43, 'Web2269', 'Web', 0, 20, 0, 0, '2019-12-13 12:31:09', '2019-12-13 12:31:09'),
	(44, 'SA2948', 'SA', 0, 1, 89, 0, '2019-12-13 12:42:28', '2019-12-13 12:42:28'),
	(45, 'SA3073', 'SA', 0, 1, 89, 0, '2019-12-13 12:44:33', '2019-12-13 12:44:33'),
	(46, 'SA3144', 'SA', 0, 1, 89, 0, '2019-12-13 12:45:44', '2019-12-13 12:45:44'),
	(47, 'SA3206', 'SA', 0, 1, 89, 0, '2019-12-13 12:46:46', '2019-12-13 12:46:46'),
	(48, 'Web9992', 'Web', 0, 22, 0, 0, '2019-12-16 12:06:32', '2019-12-16 12:06:32'),
	(49, 'Web0778', 'Web', 0, 23, 0, 0, '2019-12-16 12:19:38', '2019-12-16 12:19:38'),
	(50, 'Web1868', 'Web', 0, 24, 0, 0, '2019-12-19 10:04:28', '2019-12-19 10:04:28'),
	(51, 'Web8410', 'Web', 0, 25, 0, 0, '2019-12-19 11:53:30', '2019-12-19 11:53:30'),
	(52, 'Web0257', 'Web', 0, 26, 0, 0, '2019-12-19 12:24:17', '2019-12-19 12:24:17'),
	(53, 'Web4063', 'Web', 0, 27, 0, 0, '2019-12-23 11:54:23', '2019-12-23 11:54:23'),
	(54, 'Web5968', 'Web', 0, 28, 0, 0, '2019-12-23 12:26:08', '2019-12-23 12:26:08'),
	(55, 'Web0941', 'Web', 0, 29, 0, 0, '2019-12-27 12:15:41', '2019-12-27 12:15:41'),
	(56, 'Web1351', 'Web', 0, 30, 0, 0, '2019-12-30 12:35:51', '2019-12-30 12:35:51'),
	(57, 'SA9470', 'SA', 0, 32, 89, 0, '2019-12-30 17:37:50', '2019-12-30 17:37:50'),
	(58, 'Web7892', 'Web', 0, 33, 0, 0, '2020-02-20 16:24:52', '2020-02-20 16:24:52'),
	(59, 'Web1753', 'Web', 0, 40, 0, 0, '2020-04-02 15:02:33', '2020-04-02 15:02:33'),
	(60, 'Web6100', 'Web', 0, 42, 0, 0, '2020-04-03 14:28:20', '2020-04-03 14:28:20');
/*!40000 ALTER TABLE `forms` ENABLE KEYS */;

-- Dumping structure for table sales-app-live.fr
CREATE TABLE IF NOT EXISTS `fr` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `k1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `k1v1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `k1v2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `k1v3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `k1v4` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `k2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `k2v1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `k2v2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `k2v3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `k2v4` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `k3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `k3v1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `k3v2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `k3v3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `k3v4` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fund_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sales-app-live.fr: ~15 rows (approximately)
/*!40000 ALTER TABLE `fr` DISABLE KEYS */;
REPLACE INTO `fr` (`id`, `k1`, `k1v1`, `k1v2`, `k1v3`, `k1v4`, `k2`, `k2v1`, `k2v2`, `k2v3`, `k2v4`, `k3`, `k3v1`, `k3v2`, `k3v3`, `k3v4`, `fund_id`, `created_at`, `updated_at`) VALUES
	(1, 'Tenure', '30 Days', '90 Days', '180 Days', 'CYTD*', 'Return %', '14.24', '13.24', '13.17', '13.24', 'Benchmark %', '12.04', '12.49', '12.61', '12.49', 10, NULL, NULL),
	(2, 'Tenure', '30 Days', '90 Days', '180 Days', 'CYTD*', 'Return %', '11.75', '11.97', '12.30', '11.97', 'Benchmark %', '5.58', '5.52', '5.54', '5.52', 11, NULL, NULL),
	(3, 'Tenure', '30 Days', '90 Days', '180 Days', 'CYTD*', 'Return %', '10.45', '11.61', '10.88', '11.61', 'Benchmark %', '6.58', '6.73', '6.62', '6.73', 12, NULL, NULL),
	(4, 'Tenure', '30 Days', '90 Days', '180 Days', 'CYTD*', 'Return %', '13.34', '12.81', '12.82', '12.81', 'Benchmark %', '12.04', '12.49', '12.61', '12.49', 13, NULL, NULL),
	(5, 'Tenure', '30 Days', '90 Days', '180 Days', 'CYTD*', 'Return %', '24.10', '17.56', '13.00', '17.56', 'Benchmark %', '12.36', '13.10', '13.32', '13.10', 14, NULL, NULL),
	(6, 'Tenure', '30 Days', '90 Days', '180 Days', 'CYTD*', 'Return %', '39.17', '19.55', '15.63', '19.55', 'Benchmark %', '12.21', '12.97', '13.17', '12.97', 15, NULL, NULL),
	(7, 'Tenure', '30 Days', '90 Days', '180 Days', 'CYTD*', 'Return %', '-25.23', '-29.36', '-11.26', '-29.36', 'Benchmark %', '-25.30', '-30.01', '-11.39', '-30.01', 16, NULL, NULL),
	(8, 'Tenure', '30 Days', '90 Days', '180 Days', 'CYTD*', 'Return %', '-22.90', '-25.94', '-6.19', '-25.94', 'Benchmark %', '-23.04', '-28.24', '-8.88', '-28.24', 17, NULL, NULL),
	(9, 'Tenure', '30 Days', '90 Days', '180 Days', 'CYTD*', 'Return %', '-23.73%', '-29.70%', '-10.43%', '-29.70%', 'Benchmark %', '-24.20%', '-31.77%', '-11.92%', '-31.77%', 18, NULL, NULL),
	(10, 'Tenure', '30 Days', '90 Days', '180 Days', 'CYTD*', 'Return %', '-23.31', '-29.04', '-8.55', '-29.04', 'Benchmark %', '-24.20', '-31.77', '-11.92', '-31.77', 19, NULL, NULL),
	(11, 'Tenure', '30 Days', '90 Days', '180 Days', 'CYTD*', 'Return %', '-29.66', '-38.94', '-22.18', '-38.94', 'Benchmark %', '-25.30', '-30.01', '-11.39', '-30.01', 20, NULL, NULL),
	(12, 'Tenure', '30 Days', '90 Days', '180 Days', 'CYTD*', 'Return %', '-6.45', '-7.58', '1.39', '-7.58', 'Benchmark %', '-5.96', '-8.22', '-0.37', '-8.22', 21, NULL, NULL),
	(13, 'Tenure', '30 Days', '90 Days', '180 Days', 'CYTD*', 'Return %', '-16.24', '-19.24', '-5.78', '-19.24', 'Benchmark %', '-13.48', '-16.73', '-3.19', '-16.73', 22, NULL, NULL),
	(16, 'Tenure', '30 Days', '90 Days', '180 Days', 'CYDT*', 'Return %', '1.30', '3.44', '2.64', '3.44', 'Benchmark %', '1.50', '3.49', '3.14', '3.49', 25, NULL, NULL),
	(17, 'Tenure', '30 Days', '90 Days', '180 Days', 'CYDT*', 'Return %', '3.38', '8.11', '5.77', '4.35', 'Benchmark %', '3.28', '7.71', '5.34', '7.71', 26, NULL, NULL);
/*!40000 ALTER TABLE `fr` ENABLE KEYS */;

-- Dumping structure for table sales-app-live.fr1
CREATE TABLE IF NOT EXISTS `fr1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fr1_v1` varchar(191) DEFAULT NULL,
  `fr1_v2` varchar(191) DEFAULT NULL,
  `fr1_v3` varchar(191) DEFAULT NULL,
  `fr1_v4` varchar(191) DEFAULT NULL,
  `fund_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- Dumping data for table sales-app-live.fr1: ~7 rows (approximately)
/*!40000 ALTER TABLE `fr1` DISABLE KEYS */;
REPLACE INTO `fr1` (`id`, `fr1_v1`, `fr1_v2`, `fr1_v3`, `fr1_v4`, `fund_id`) VALUES
	(1, '30 Days', '12.30%', '35.00%', '-23.33%', 25),
	(2, '90 Days', '11.82%', '18.60%', '-27.41%', 25),
	(3, '180 Days', '12.50%', '16.95%', '-6.92%', 25),
	(4, '30 Days', '6.63', '7.69', '-22.74', 26),
	(5, '90 Days', '7.92', '9.03', '-28.38', 26),
	(6, '180 Days', '8.39', '9.19', '-6.74', 26),
	(7, 'CYTD*', '7.92', '9.03', '-28.38', 26);
/*!40000 ALTER TABLE `fr1` ENABLE KEYS */;

-- Dumping structure for table sales-app-live.funds
CREATE TABLE IF NOT EXISTS `funds` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sales-app-live.funds: ~17 rows (approximately)
/*!40000 ALTER TABLE `funds` DISABLE KEYS */;
REPLACE INTO `funds` (`id`, `title`, `created_at`, `updated_at`) VALUES
	(10, 'HBL Cash Fund', NULL, NULL),
	(11, 'HBL Islamic Money Market Fund\r\n', NULL, NULL),
	(12, 'HBL Islamic Income Fund\r\n', NULL, NULL),
	(13, 'HBL Money Market Fund', NULL, NULL),
	(14, 'HBL Income Fund\r\n', NULL, NULL),
	(15, 'HBL Government Securities Fund\r\n', NULL, NULL),
	(16, 'HBL Stock Fund\r\n', NULL, NULL),
	(17, 'HBL Equity Fund', NULL, NULL),
	(18, 'HBL Islamic Equity Fund', NULL, NULL),
	(19, 'HBL Islamic Stock Fund', NULL, NULL),
	(20, 'HBL Energy Fund\r\n', NULL, NULL),
	(21, 'HBL Islamic Asset Allocation Fund', NULL, NULL),
	(22, 'HBL Multi Asset Fund', NULL, NULL),
	(23, 'HBL Islamic Financial Planning Fund\r\n', NULL, NULL),
	(24, 'HBL Financial Planning Fund', NULL, NULL),
	(25, 'HBL Pension Fund', NULL, NULL),
	(26, 'HBL Islamic Pension Fund\r\n', NULL, NULL);
/*!40000 ALTER TABLE `funds` ENABLE KEYS */;

-- Dumping structure for table sales-app-live.hamls
CREATE TABLE IF NOT EXISTS `hamls` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `b1` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `b2` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `b3` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `b4` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `b5` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `b6` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f1` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f2` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f3` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f4` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sales-app-live.hamls: ~0 rows (approximately)
/*!40000 ALTER TABLE `hamls` DISABLE KEYS */;
REPLACE INTO `hamls` (`id`, `title`, `b1`, `b2`, `b3`, `b4`, `b5`, `b6`, `f1`, `f2`, `f3`, `f4`, `created_at`, `updated_at`) VALUES
	(1, 'HBL Asset Management Limited', 'PKR. 10.63<br />\r\nBillion  <br />\r\nEquity AUM', '17 <br />\r\nOpen-end  <br />\r\nFunds', 'Total AUMs <br />\r\nPKR. 46.07<br />\r\nBillion', 'AM2+ <br />\r\nRating <br />\r\nby JCR-VIS', '2 VPS  <br />\r\nSchemes', '7th Largest <br />\r\n AMC <br />\r\nin  Pakistan', 'HBL Asset Management Limited (HBL AMC) is a wholly owned subsidiary of HBL, the largest commercial bank in Pakistan.', 'With a nationwide footprint of retail and corporate clients, HBL AMC is one of the largest private fund management company in the country. We offer both conventional and Shariah-compliant investment products.', 'During the year 2016, HBL AMC acquired PICIC Asset Management Company Limited which has subsequently merged into HBL AMC. The acquisition has increased our product suite to 19 mutual fund schemes and plans.', 'HBL Asset Management is rated AM2+ by JCR-VIS.', NULL, NULL);
/*!40000 ALTER TABLE `hamls` ENABLE KEYS */;

-- Dumping structure for table sales-app-live.iimf
CREATE TABLE IF NOT EXISTS `iimf` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sh` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sf` varchar(3000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f2` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f3` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f4` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f5` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f6` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f7` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sales-app-live.iimf: ~0 rows (approximately)
/*!40000 ALTER TABLE `iimf` DISABLE KEYS */;
REPLACE INTO `iimf` (`id`, `title`, `sh`, `sf`, `f1`, `f2`, `f3`, `f4`, `f5`, `f6`, `f7`, `created_at`, `updated_at`) VALUES
	(1, 'ADVANTAGES OF INVESTING IN MUTUAL FUNDS', 'ADVANTAGES OF INVESTING IN MUTUAL FUNDS', 'Mutual funds are an easy, convenient and affordable way of gaining access to capital markets. Each investor has a stake in the assets and earnings of the fund in proportion to the amount of their investments. The benefits of mutual funds include:', 'Professional Management', 'Tax Efficient Way to Save', 'Diversification', 'Liquidity', 'Reduction of transaction costs', 'Convenience', 'Time', NULL, NULL);
/*!40000 ALTER TABLE `iimf` ENABLE KEYS */;

-- Dumping structure for table sales-app-live.investment_avenues
CREATE TABLE IF NOT EXISTS `investment_avenues` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ai_key` varchar(191) DEFAULT NULL,
  `fund_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=latin1;

-- Dumping data for table sales-app-live.investment_avenues: ~83 rows (approximately)
/*!40000 ALTER TABLE `investment_avenues` DISABLE KEYS */;
REPLACE INTO `investment_avenues` (`id`, `ai_key`, `fund_id`, `created_at`, `updated_at`) VALUES
	(1, 'Cash', 10, '2018-07-15 09:29:33', '2018-07-15 09:29:33'),
	(2, 'Placements with Banks & DFIs', 10, '2018-07-15 09:29:33', '2018-07-15 09:29:33'),
	(3, 'T-Bills', 10, '2018-07-15 09:29:33', '2018-07-15 09:29:33'),
	(4, 'Commercial Paper', 10, '2018-07-15 09:29:33', '2018-07-15 09:29:33'),
	(5, 'Other including Receivables', 10, '2018-07-15 09:29:33', '2018-07-15 09:29:33'),
	(12, 'Cash	', 11, '2018-07-15 09:29:33', '2018-07-15 09:29:33'),
	(13, 'Commercial Paper', 11, '2018-07-15 09:29:33', '2018-07-15 09:29:33'),
	(14, 'Other including Receivables', 11, '2018-07-15 09:29:33', '2018-07-15 09:29:33'),
	(16, 'Cash	', 12, '2018-07-15 09:29:33', '2018-07-15 09:29:33'),
	(17, 'Commercial Paper', 12, '2018-07-15 09:29:33', '2018-07-15 09:29:33'),
	(18, 'Other including Receivables', 12, '2018-07-15 09:29:33', '2018-07-15 09:29:33'),
	(19, 'TFCs/ Sukuks', 12, '2018-07-15 09:29:33', '2018-07-15 09:29:33'),
	(21, 'Placement with Banks and DFI', 12, '2018-07-15 09:29:33', '2018-07-15 09:29:33'),
	(23, 'Cash	', 13, '2018-07-15 09:29:33', '2018-07-15 09:29:33'),
	(24, 'Placement with Banks and DFIs', 13, '2018-07-15 09:29:33', '2018-07-15 09:29:33'),
	(25, 'T-Bills', 13, '2018-07-15 09:29:33', '2018-07-15 09:29:33'),
	(28, 'Other including Receivables', 13, '2018-07-15 09:29:33', '2018-07-15 09:29:33'),
	(30, 'Cash', 14, '2018-07-15 09:29:33', '2018-07-15 09:29:33'),
	(33, 'Other including Receivables', 14, '2018-07-15 09:29:33', '2018-07-15 09:29:33'),
	(36, 'TFCs/ Sukuks', 14, '2018-07-15 09:29:33', '2018-07-15 09:29:33'),
	(37, 'Cash', 15, '2018-07-15 09:29:33', '2018-07-15 09:29:33'),
	(41, 'Other including Receivables', 15, '2018-07-15 09:29:33', '2018-07-15 09:29:33'),
	(42, 'PIBs', 15, '2018-07-15 09:29:33', '2018-07-15 09:29:33'),
	(44, 'Commercial Paper', 15, '2018-07-15 09:29:33', '2018-07-15 09:29:33'),
	(47, 'Cash', 16, '2018-07-15 09:29:33', '2018-07-15 09:29:33'),
	(49, 'Other including Receivables', 16, '2018-07-15 09:29:33', '2018-07-15 09:29:33'),
	(50, 'Stock/Equities', 16, '2018-07-15 09:29:33', '2018-07-15 09:29:33'),
	(51, 'Cash', 17, '2018-07-15 09:29:33', '2018-07-15 09:29:33'),
	(52, 'Other including receivables', 17, '2018-07-15 09:29:33', '2018-07-15 09:29:33'),
	(53, 'Stock/Equities', 17, '2018-07-15 09:29:33', '2018-07-15 09:29:33'),
	(54, 'Cash', 18, '2018-07-15 09:29:33', '2018-07-15 09:29:33'),
	(55, 'Other including Receivables', 18, '2018-07-15 09:29:33', '2018-07-15 09:29:33'),
	(56, 'Stock/Equities', 18, '2018-07-15 09:29:33', '2018-07-15 09:29:33'),
	(57, 'Cash', 19, '2018-07-15 09:29:33', '2018-07-15 09:29:33'),
	(58, 'Other including Receivables', 19, '2018-07-15 09:29:33', '2018-07-15 09:29:33'),
	(59, 'Stock/Equities', 19, '2018-07-15 09:29:33', '2018-07-15 09:29:33'),
	(60, 'Cash', 20, '2018-07-15 09:29:33', '2018-07-15 09:29:33'),
	(61, 'Other including Receivables', 20, '2018-07-15 09:29:33', '2018-07-15 09:29:33'),
	(62, 'Stock/Equities', 20, '2018-07-15 09:29:33', '2018-07-15 09:29:33'),
	(63, 'Cash	', 21, '2018-07-15 09:29:33', '2018-07-15 09:29:33'),
	(64, 'Other including Receivables', 21, '2018-07-15 09:29:33', '2018-07-15 09:29:33'),
	(65, 'Stock/Equities', 21, '2018-07-15 09:29:33', '2018-07-15 09:29:33'),
	(66, 'Commercial Paper', 21, '2018-07-15 09:29:33', '2018-07-15 09:29:33'),
	(67, 'TFCs/Sukuks', 21, '2018-07-15 09:29:33', '2018-07-15 09:29:33'),
	(68, 'Cash', 22, '2018-07-15 09:29:33', '2018-07-15 09:29:33'),
	(71, 'TFCs / Sukuks', 22, '2018-07-15 09:29:33', '2018-07-15 09:29:33'),
	(72, 'Other including Receivables', 22, '2018-07-15 09:29:33', '2018-07-15 09:29:33'),
	(74, 'Stock/Equities', 22, '2018-07-15 09:29:33', '2018-07-15 09:29:33'),
	(76, 'Cash', 23, '2018-07-15 09:29:33', '2018-07-15 09:29:33'),
	(77, 'Other including Receivables', 23, '2018-07-15 09:29:33', '2018-07-15 09:29:33'),
	(78, 'Equity Funds', 23, '2018-07-15 09:29:33', '2018-07-15 09:29:33'),
	(79, 'Fixed Income Funds', 23, '2018-07-15 09:29:33', '2018-07-15 09:29:33'),
	(81, 'Cash', 24, '2018-07-15 09:29:33', '2018-07-15 09:29:33'),
	(82, 'Equity Funds', 24, '2018-07-15 09:29:33', '2018-07-15 09:29:33'),
	(83, 'Cash', 25, '2018-07-15 09:29:33', '2018-07-15 09:29:33'),
	(85, 'T-Bills', 25, '2018-07-15 09:29:33', '2018-07-15 09:29:33'),
	(86, 'Commercial Paper', 25, '2018-07-15 09:29:33', '2018-07-15 09:29:33'),
	(87, 'PIBs', 25, '2018-07-15 09:29:33', '2018-07-15 09:29:33'),
	(88, 'Other including Receivables', 25, '2018-07-15 09:29:33', '2018-07-15 09:29:33'),
	(89, 'TFCs/ Sukuks', 25, '2018-07-15 09:29:33', '2018-07-15 09:29:33'),
	(90, 'Stock/Equities', 25, '2018-07-15 09:29:33', '2018-07-15 09:29:33'),
	(92, 'Cash', 26, '2018-07-15 09:29:33', '2018-07-15 09:29:33'),
	(93, 'Placement with Banks and DFIs', 26, '2018-07-15 09:29:33', '2018-07-15 09:29:33'),
	(94, 'Other including Receivables', 26, '2018-07-15 09:29:33', '2018-07-15 09:29:33'),
	(95, 'GoP Ijara Sukuks', 26, '2018-07-15 09:29:33', '2018-07-15 09:29:33'),
	(96, 'Cash', 26, '2018-07-15 09:29:33', '2018-07-15 09:29:33'),
	(97, 'Stock / Equities', 26, '2018-07-15 09:29:33', '2018-07-15 09:29:33'),
	(98, 'Fixed Income Funds', 24, '2018-07-20 16:02:56', '2018-07-20 16:02:56'),
	(99, 'Commercial Paper', 26, '2019-01-17 16:01:22', '2019-01-17 16:01:22'),
	(100, 'TFCs/ Sukuks', 26, '2019-01-17 16:01:47', '2019-01-17 16:01:47'),
	(101, 'Others Including Receivables', 24, '2019-01-17 16:21:37', '2019-01-17 16:21:37'),
	(102, 'Placement with Banks & DFI', 21, '2019-01-17 17:03:28', '2019-01-17 17:03:28'),
	(103, 'Commercial Paper', 14, '2019-02-12 10:33:40', '2019-02-12 10:33:40'),
	(104, 'T-Bills', 14, '2019-03-11 10:14:18', '2019-03-11 10:14:18'),
	(105, 'PIBs', 14, '2019-03-11 10:14:26', '2019-03-11 10:14:26'),
	(106, 'TFCs / Sukuks', 15, '2019-03-11 10:22:35', '2019-03-11 10:22:35'),
	(107, 'Placement with Banks & DFI', 25, '2019-03-11 11:40:02', '2019-03-11 11:40:02'),
	(108, 'T-Bills', 15, '2019-05-16 10:14:34', '2019-05-16 10:14:34');
/*!40000 ALTER TABLE `investment_avenues` ENABLE KEYS */;

-- Dumping structure for table sales-app-live.investment_details
CREATE TABLE IF NOT EXISTS `investment_details` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fund_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount_in_words` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `front_end_load` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_mode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attachment` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instrument_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sales-app-live.investment_details: 33 rows
/*!40000 ALTER TABLE `investment_details` DISABLE KEYS */;
REPLACE INTO `investment_details` (`id`, `fund_name`, `amount`, `amount_in_words`, `front_end_load`, `payment_mode`, `attachment`, `bank_name`, `instrument_number`, `customer_id`, `created_at`, `updated_at`) VALUES
	(1, 'HBL Cash Fund', '5000', 'Five Thousand only', NULL, 'IBFT', 'image1.png', 'HBL / Konnect', 'TESTING', 1, '2019-12-04 12:31:55', '2019-12-04 12:31:55'),
	(2, 'HBL Cash Fund', '10000', 'Ten Thousand only', NULL, 'Cheque', '350x150.png', 'ABL', '454544', 2, '2019-12-04 13:07:03', '2019-12-04 13:07:03'),
	(3, 'HBL Cash Fund', '5000', 'Five Thousand only', NULL, 'IBFT', '350x150.png', 'HBL / Konnect', '1485458485', 3, '2019-12-04 13:10:48', '2019-12-04 13:10:48'),
	(4, 'HBL Cash Fund', '2100', 'Two Thousand One Hundred only', NULL, 'Cheque', 'Phonebook.jpg', 'HBL / Konnect', 'SADASDDS', 4, '2019-12-04 13:22:48', '2019-12-04 13:22:48'),
	(5, 'HBL Cash Fund', '5000', 'Five Thousand only', NULL, 'Cheque', '350x150.png', 'HBL / Konnect', '69968886', 5, '2019-12-04 13:26:39', '2019-12-04 13:26:39'),
	(6, 'HBL Cash Fund', '5000', 'Five Thousand only', NULL, 'IBFT', '350x150.png', 'HBL / Konnect', '4588858885', 6, '2019-12-04 13:40:29', '2019-12-04 13:40:29'),
	(7, 'HBL Cash Fund', '5000', 'Five Thousand only', NULL, 'IBFT', '350x150.png', 'HBL / Konnect', '154165418541', 7, '2019-12-04 15:16:44', '2019-12-04 15:16:44'),
	(8, 'HBL Cash Fund', '1231', 'One Thousand Two Hundred Thirty One only', NULL, 'Demand Draft', 'download (1).jpg', 'HBL / Konnect', '4146646', 8, '2019-12-09 13:09:44', '2019-12-09 13:09:44'),
	(9, 'HBL Cash Fund', '5000', 'Five Thousand only', NULL, 'Cheque', '350x150.png', 'HBL / Konnect', '46545641855', 9, '2019-12-09 15:28:40', '2019-12-09 15:28:40'),
	(10, 'HBL Cash Fund', '5000', 'Five Thousand only', NULL, 'IBFT', '350x150.png', 'ABL', '4584546', 10, '2019-12-09 15:35:08', '2019-12-09 15:35:08'),
	(11, 'HBL Islamic Money Market Fund', '10000', 'Ten Thousand only', NULL, 'Cheque', 'Picture1.png', 'ADVANS PAK MIRCOFINANCE', '56565656', 11, '2019-12-09 16:56:51', '2019-12-09 16:56:51'),
	(12, 'HBL Money Market Fund', '5000', 'Five Thousand only', 'N/A', 'Cheque', 'Picture2.png', 'ABL', '56565656', 12, '2019-12-11 09:03:51', '2019-12-11 09:03:51'),
	(13, 'HBL Cash Fund', '20000', 'Twenty Thousand only', 'N/A', 'Cheque', 'Picture2.png', 'HBL / Konnect', '56565656', 13, '2019-12-11 14:42:12', '2019-12-11 14:42:12'),
	(14, 'HBL Cash Fund', '5000', 'Five Thousand only', 'N/A', 'Cheque', '350x150.png', 'HBL / Konnect', '32423432', 14, '2019-12-12 17:26:44', '2019-12-12 17:26:44'),
	(15, 'HBL Money Market Fund', '15100', 'Fifteen Thousand One Hundred only', 'N/A', 'Cheque', '350x150.png', 'ABL', '541515151', 15, '2019-12-12 17:31:45', '2019-12-12 17:31:45'),
	(16, 'HBL Income Fund', '4535', 'Four Thousand Five Hundred Thirty Five only', 'N/A', 'Pay Oder', '350x150.png', 'ABL', '45435345', 16, '2019-12-12 17:35:13', '2019-12-12 17:35:13'),
	(17, 'HBL Cash Fund', '2222', 'Two Thousand Two Hundred Twenty Two only', 'N/A', 'Real Time Gross Settlement (RTGS)', '350x150.png', 'ADVANS PAK MIRCOFINANCE', '4545', 17, '2019-12-12 19:57:31', '2019-12-12 19:57:31'),
	(18, 'HBL Cash Fund', '5000', 'Five Thousand only', 'N/A', 'Cheque', 'Screenshot_2018-05-16-16-50-58.png', 'ABL', '53636', 18, '2019-12-13 12:21:46', '2019-12-13 12:21:46'),
	(19, 'HBL Income Fund', '5000', 'Five Thousand only', 'N/A', 'IBFT', 'Screenshot_2018-05-16-16-50-58.png', 'ALBARAKA', '54787', 19, '2019-12-13 12:30:31', '2019-12-13 12:30:31'),
	(20, 'HBL Cash Fund', '10000', 'Ten Thousand only', 'N/A', 'Cheque', 'Picture1.png', 'ABL', '5656565', 20, '2019-12-13 12:31:09', '2019-12-13 12:31:09'),
	(21, 'HBL Cash Fund', '5,555', 'Five Thousand Five Hundred Fifty Five only', 'N/A', 'Cheque', 'Picture2.png', 'ABL', '56565656', 22, '2019-12-16 12:06:31', '2019-12-16 12:06:31'),
	(22, 'HBL Cash Fund', '5,000', 'Five Thousand only', 'N/A', 'IBFT', 'Astor_Loose_Round_Blue_01.jpg', 'HBL / Konnect', 'TESING', 23, '2019-12-16 12:19:37', '2019-12-16 12:19:37'),
	(23, 'HBL Money Market Fund', '5,655', 'Five Thousand Six Hundred Fifty Five only', 'N/A', 'Cheque', 'Pic 2.png', 'ABL', 'GHGHGHGHGHG', 24, '2019-12-19 10:04:28', '2019-12-19 10:04:28'),
	(24, 'HBL Cash Fund', '25,000', 'Twenty Five Thousand only', 'N/A', 'Cheque', 'hajjdetails.jpg', 'ALBARAKA', '123456', 25, '2019-12-19 11:53:29', '2019-12-19 11:53:29'),
	(25, 'HBL Money Market Fund', '6,500', 'Six Thousand Five Hundred only', 'N/A', 'Cheque', 'PHOTO-2019-06-11-06-55-29.jpg', 'ABL', '5656565656', 26, '2019-12-19 12:24:17', '2019-12-19 12:24:17'),
	(26, 'HBL Cash Fund', '5,000', 'Five Thousand only', 'N/A', 'Cheque', 'ALI JAMAL.jpg', 'SCB', '1234567', 27, '2019-12-23 11:54:22', '2019-12-23 11:54:22'),
	(27, 'HBL Money Market Fund', '6,555', 'Six Thousand Five Hundred Fifty Five only', 'N/A', 'Cheque', 'Picture2.png', 'ABL', '56565656', 28, '2019-12-23 12:26:07', '2019-12-23 12:26:07'),
	(28, 'HBL Cash Fund', '5,000', 'Five Thousand only', 'N/A', 'Cheque', 'ALI JAMAL.jpg', 'HBL / Konnect', '1234', 29, '2019-12-27 12:15:40', '2019-12-27 12:15:40'),
	(29, 'HBL Cash Fund', '10,000', 'Ten Thousand only', 'N/A', 'Cheque', 'Logo-01.jpg', 'HBL / Konnect', 'HB23155648', 30, '2019-12-30 12:35:51', '2019-12-30 12:35:51'),
	(30, 'HBL Cash Fund', '25,000', 'Twenty Five Thousand only', 'N/A', 'Cheque', 'CanadianChequeSample.png', 'HBL / Konnect', '265456152', 32, '2019-12-30 17:37:49', '2019-12-30 17:37:49'),
	(31, 'HBL Cash Fund', '5,000', 'Five Thousand only', 'N/A', 'Cheque', 'pic 1.png', 'HBL / Konnect', '56565656', 33, '2020-02-20 16:24:51', '2020-02-20 16:24:51'),
	(32, 'HBL Cash Fund', '3,000', 'Three Thousand only', 'N/A', 'Cheque', 'Footer.PNG', 'HBL / Konnect', 'FGFGFGFGFGFGF', 40, '2020-04-02 15:02:32', '2020-04-02 15:02:32'),
	(33, 'HBL Cash Fund', '5,000', 'Five Thousand only', 'N/A', 'Cheque', '8904456f-f3f9-43f9-94aa-65dbcedc6997.jpg', 'HBL / Konnect', '666666666', 42, '2020-04-03 14:28:17', '2020-04-03 14:28:17');
/*!40000 ALTER TABLE `investment_details` ENABLE KEYS */;

-- Dumping structure for table sales-app-live.lead
CREATE TABLE IF NOT EXISTS `lead` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `seller_email` varchar(191) NOT NULL,
  `client_name` varchar(191) DEFAULT NULL,
  `client_email` varchar(191) DEFAULT NULL,
  `client_number` varchar(191) DEFAULT NULL,
  `client_cnic` varchar(255) NOT NULL,
  `location` varchar(191) DEFAULT NULL,
  `fund` varchar(191) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table sales-app-live.lead: ~0 rows (approximately)
/*!40000 ALTER TABLE `lead` DISABLE KEYS */;
/*!40000 ALTER TABLE `lead` ENABLE KEYS */;

-- Dumping structure for table sales-app-live.mf
CREATE TABLE IF NOT EXISTS `mf` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f1` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f2` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f3` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f4` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sales-app-live.mf: ~0 rows (approximately)
/*!40000 ALTER TABLE `mf` DISABLE KEYS */;
REPLACE INTO `mf` (`id`, `title`, `f1`, `f2`, `f3`, `f4`, `created_at`, `updated_at`) VALUES
	(1, 'What Are Mutual Funds?', 'A mutual fund is an investment vehicle comprising a pool of funds collected from many investors for the purpose of investing in securities such as stocks, bonds, money market instruments, securities, treasury notes and other capital market instruments.', 'All assets of the mutual fund are held by an independent trustee (such as CDC) and the asset management company only serves as a portfolio manager for the mutual fund.', 'Investors who purchase units of a mutual fund are its unit‐holders.', 'Mutual funds distribute 90% of their realized income to its unit‐holders at the time of dividend pay‐out (once every quarter or at times, once a year).', NULL, NULL);
/*!40000 ALTER TABLE `mf` ENABLE KEYS */;

-- Dumping structure for table sales-app-live.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sales-app-live.migrations: 0 rows
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table sales-app-live.other_details
CREATE TABLE IF NOT EXISTS `other_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asf` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dpo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_of_units` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sales-app-live.other_details: 33 rows
/*!40000 ALTER TABLE `other_details` DISABLE KEYS */;
REPLACE INTO `other_details` (`id`, `asf`, `dpo`, `type_of_units`, `customer_id`, `created_at`, `updated_at`) VALUES
	(1, 'Do not send', 'Reinvestment', 'growth testing input', 1, '2019-12-04 12:31:56', '2019-12-04 12:31:56'),
	(2, 'Monthly', 'Cash', 'growth', 2, '2019-12-04 13:07:03', '2019-12-04 13:07:03'),
	(3, 'Monthly', 'Cash', 'growth', 3, '2019-12-04 13:10:48', '2019-12-04 13:10:48'),
	(4, 'Quarterly', 'Cash', 'growth', 4, '2019-12-04 13:22:48', '2019-12-04 13:22:48'),
	(5, 'Monthly', 'Cash', 'growth', 5, '2019-12-04 13:26:40', '2019-12-04 13:26:40'),
	(6, 'Monthly', 'Cash', 'growth', 6, '2019-12-04 13:40:30', '2019-12-04 13:40:30'),
	(7, 'Monthly', 'Cash', 'growth', 7, '2019-12-04 15:16:45', '2019-12-04 15:16:45'),
	(8, 'Annually', 'Cash', 'growth', 8, '2019-12-09 13:09:45', '2019-12-09 13:09:45'),
	(9, 'Monthly', 'Cash', 'growth', 9, '2019-12-09 15:28:40', '2019-12-09 15:28:40'),
	(10, 'Monthly', 'Cash', 'growth', 10, '2019-12-09 15:35:08', '2019-12-09 15:35:08'),
	(11, 'Quarterly', 'Cash', 'growth', 11, '2019-12-09 16:56:51', '2019-12-09 16:56:51'),
	(12, 'Monthly', 'Cash', 'growth', 12, '2019-12-11 09:03:51', '2019-12-11 09:03:51'),
	(13, 'Monthly', 'Cash', 'growth', 13, '2019-12-11 14:42:12', '2019-12-11 14:42:12'),
	(14, 'Monthly', 'Cash', 'growth', 14, '2019-12-12 17:26:45', '2019-12-12 17:26:45'),
	(15, 'Quarterly', 'Cash', 'growth', 15, '2019-12-12 17:31:46', '2019-12-12 17:31:46'),
	(16, 'Monthly', 'Cash', 'growth', 16, '2019-12-12 17:35:14', '2019-12-12 17:35:14'),
	(17, 'Do not send', 'Cash', 'growth', 17, '2019-12-12 19:57:32', '2019-12-12 19:57:32'),
	(18, 'Monthly', 'Cash', 'growth', 18, '2019-12-13 12:21:47', '2019-12-13 12:21:47'),
	(19, 'Monthly', 'Cash', 'growth', 19, '2019-12-13 12:30:31', '2019-12-13 12:30:31'),
	(20, 'Monthly', 'Cash', 'growth', 20, '2019-12-13 12:31:09', '2019-12-13 12:31:09'),
	(21, 'Monthly', 'Reinvestment (Net of applicable taxes)', 'growth', 22, '2019-12-16 12:06:32', '2019-12-16 12:06:32'),
	(22, 'Monthly', 'Cash', 'growth', 23, '2019-12-16 12:19:37', '2019-12-16 12:19:37'),
	(23, 'Quarterly', 'Cash', 'growth', 24, '2019-12-19 10:04:28', '2019-12-19 10:04:28'),
	(24, 'Monthly', 'Reinvestment (Net of applicable taxes)', 'growth', 25, '2019-12-19 11:53:30', '2019-12-19 11:53:30'),
	(25, 'Monthly', 'Cash', 'growth', 26, '2019-12-19 12:24:17', '2019-12-19 12:24:17'),
	(26, 'Monthly', 'Reinvestment (Net of applicable taxes)', 'growth', 27, '2019-12-23 11:54:23', '2019-12-23 11:54:23'),
	(27, 'Monthly', 'Cash', 'growth', 28, '2019-12-23 12:26:07', '2019-12-23 12:26:07'),
	(28, 'Monthly', 'Reinvestment (Net of applicable taxes)', 'growth', 29, '2019-12-27 12:15:41', '2019-12-27 12:15:41'),
	(29, 'Quarterly', 'Reinvestment (Net of applicable taxes)', 'growth', 30, '2019-12-30 12:35:51', '2019-12-30 12:35:51'),
	(30, 'Monthly', 'Reinvestment (Net of applicable taxes)', 'growth', 32, '2019-12-30 17:37:49', '2019-12-30 17:37:49'),
	(31, 'Monthly', 'Reinvestment (Net of applicable taxes)', 'growth', 33, '2020-02-20 16:24:51', '2020-02-20 16:24:51'),
	(32, 'Quarterly', 'Cash', 'growth', 40, '2020-04-02 15:02:33', '2020-04-02 15:02:33'),
	(33, 'Monthly', 'Cash', 'growth', 42, '2020-04-03 14:28:19', '2020-04-03 14:28:19');
/*!40000 ALTER TABLE `other_details` ENABLE KEYS */;

-- Dumping structure for table sales-app-live.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sales-app-live.password_resets: ~0 rows (approximately)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Dumping structure for table sales-app-live.returns
CREATE TABLE IF NOT EXISTS `returns` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sales-app-live.returns: ~0 rows (approximately)
/*!40000 ALTER TABLE `returns` DISABLE KEYS */;
/*!40000 ALTER TABLE `returns` ENABLE KEYS */;

-- Dumping structure for table sales-app-live.risks
CREATE TABLE IF NOT EXISTS `risks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_number` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `client_cnic` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'empty',
  `location` text COLLATE utf8mb4_unicode_ci,
  `choosen_fund` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `irf` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `crf` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `decision` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `pushed` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=153 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sales-app-live.risks: ~50 rows (approximately)
/*!40000 ALTER TABLE `risks` DISABLE KEYS */;
REPLACE INTO `risks` (`id`, `client_name`, `client_email`, `client_number`, `client_cnic`, `location`, `choosen_fund`, `irf`, `crf`, `decision`, `user_id`, `created_at`, `updated_at`, `pushed`) VALUES
	(6, 'Fatwasd shamim', 'fawadshamim94@gmail.com', '03088208576', '', NULL, NULL, 'Islamic Income Fund', 'Income Fund', 'I agree I will go with above recommended product', 25, NULL, NULL, 1),
	(7, 'Fatwasd shamim', 'fawadshamim94@gmail.com', '03088208576', '', NULL, NULL, 'Islamic Income Fund', 'Income Fund', 'I agree I will go with above recommended product', 25, NULL, NULL, 1),
	(8, 'Tahir bin yousuf', 'tahir.yousuf@hblasset.com', '03458221919', '', NULL, NULL, NULL, 'FPF Conservative Plan', 'I agree I will go with above recommended product', 22, NULL, NULL, 0),
	(13, 'Muhammad waleed Minhaj', 'waleed.minhaj@hblasset.com', '03452785148', '', NULL, NULL, 'Islamic Asset Allocation Fund', NULL, 'I agree I will go with above recommended product', 33, NULL, NULL, 1),
	(14, 'Muhib', 'muhib.khan@hblasset.com', '03212342269', '', NULL, NULL, 'Islamic Asset Allocation Fund', NULL, 'Or Choose Another Product at My Own Risk', 26, NULL, NULL, 0),
	(15, 'Farhan', 'm.farhan.khan@hotmail.com', '03452338525', '', NULL, NULL, NULL, 'FPF Conservative Plan', 'Or Choose Another Product at My Own Risk', 39, NULL, NULL, 0),
	(17, 'Shahiid ghaffar', 'shahidghaffar20@gmail.com', '03018202112', '', NULL, NULL, NULL, 'FPF Conservative Plan', 'Or Choose Another Product at My Own Risk', 22, NULL, NULL, 0),
	(23, 'Khurram farhan', 'khassan@ploycon.com.pk', '03008483377', '', NULL, NULL, 'Islamic Asset Allocation Fund', 'FPF Conservative Plan', 'I agree I will go with above recommended product', 51, NULL, NULL, 1),
	(29, 'Dr.amjad mamon', 'asmamon4@gmail.com', '03022431345', '', NULL, NULL, NULL, NULL, 'Or Choose Another Product at My Own Risk', 23, NULL, NULL, 0),
	(36, 'Shah sadeem ur rehman', 'sadeem_rehman@yahoo.com', '03463507466', '', NULL, NULL, NULL, NULL, 'Or Choose Another Product at My Own Risk', 56, NULL, NULL, 0),
	(37, 'Shah sadeem ur rehman', 'sadeem_rehman@yahoo.com', '03463507466', '', NULL, NULL, NULL, NULL, 'I agree I will go with above recommended product', 56, NULL, NULL, 0),
	(43, 'Danish Ali jaffri', 'danish3@gmail.com', '03452104995', '4210163706789', NULL, NULL, 'Islamic Asset Allocation Fund', 'Multi Asset Fund', 'I agree I will go with above recommended product', 56, NULL, NULL, 0),
	(58, 'Jamal zaidi', 'jamal.@jcrvis.com', '03001234567', '4230136934484', NULL, NULL, NULL, NULL, 'Or Choose Another Product at My Own Risk', 24, NULL, NULL, 0),
	(59, 'Jamal zaidi', 'jamal.@jcrvis.com', '03001234567', '4230136934484', NULL, NULL, NULL, NULL, 'Or Choose Another Product at My Own Risk', 24, NULL, NULL, 0),
	(60, 'Jamal zaidi', 'jamal.@jcrvis.com', '03001234567', '4230136934484', NULL, NULL, NULL, NULL, 'Or Choose Another Product at My Own Risk', 24, NULL, NULL, 0),
	(74, 'muhammad irfan', 'muhammad.irfan@hblasset.com', '923017181288', '3310422481573', NULL, NULL, NULL, NULL, 'I agree I will go with above recommended product', 62, '2019-02-13 15:39:43', '2019-02-13 15:39:43', 0),
	(114, 'zahoor ehali', 'zelahi2772@gmail.com', '0300-4588701', '352023-193973-1', NULL, NULL, NULL, NULL, 'Or Choose Another Product at My Own Risk', 34, '2019-08-06 11:06:56', '2019-08-06 11:06:56', 1),
	(115, 'saad zaman', 'saad.zaman73@gmail.com', '0344-7770875', '331028-826791-8', NULL, 'Islamic Asset Allocation Fund', 'Islamic Asset Allocation Fund, IFPF Conservative Plan,', 'Multi Asset Fund,', 'I agree I will go with above recommended product', 52, '2019-08-08 18:23:21', '2019-08-08 18:23:21', 1),
	(116, 'Muhammad Haroon Tanweer', 'haronrajpoot_db@gmail.com', '0333-4541659', '3520082008447-3', NULL, NULL, NULL, NULL, 'Or Choose Another Product at My Own Risk', 51, '2019-08-09 10:36:48', '2019-08-09 10:36:48', 1),
	(117, 'Muhammad Usman', 'uah@gmail.com', '0301-4494932', '352024-109740-9', NULL, NULL, NULL, NULL, 'Or Choose Another Product at My Own Risk', 51, '2019-08-09 10:43:54', '2019-08-09 10:43:54', 1),
	(118, 'Muhammad Usman', 'uah@gmail.com', '0301-4494932', '352024-109740-9', NULL, NULL, NULL, NULL, 'Or Choose Another Product at My Own Risk', 51, '2019-08-09 10:44:38', '2019-08-09 10:44:38', 1),
	(119, 'Waqas', 'waqas.hussain239@gmail.com', '0321-4454459', '352023-997865-9', NULL, 'IFPF Conservative Plan', 'Islamic Asset Allocation Fund, IFPF Conservative Plan,', 'Multi Asset Fund,', 'I agree I will go with above recommended product', 70, '2019-08-09 12:11:20', '2019-08-09 12:11:20', 1),
	(120, 'iqrar baig', 'iqrar.baig@hblasset.com', '0315-2353183', '421013-406234-5', NULL, NULL, NULL, NULL, 'Or Choose Another Product at My Own Risk', 69, '2019-08-09 19:08:23', '2019-08-09 19:08:23', 0),
	(121, 'sam', 'sam2@gmail.com', '0333-3333333', '412514-245555-5', NULL, NULL, NULL, NULL, 'Or Choose Another Product at My Own Risk', 71, '2019-08-09 21:10:18', '2019-08-09 21:10:18', 1),
	(122, 'Shasta shuja', 'shasta.shuja@gmail.com', '0320-0467171', '35202-3882262-0', NULL, 'Islamic Asset Allocation Fund', 'Islamic Asset Allocation Fund, IFPF Conservative Plan,', 'Multi Asset Fund,', 'I agree I will go with above recommended product', 34, '2019-08-16 16:54:47', '2019-08-16 16:54:47', 1),
	(123, 'usman kusar', 'usman.kusar@gmail.com', '0300-8472332', '35202--272516-7', NULL, 'IFPF Conservative Plan', 'Islamic Asset Allocation Fund, IFPF Conservative Plan,', 'Multi Asset Fund,', 'I agree I will go with above recommended product', 34, '2019-08-16 17:03:36', '2019-08-16 17:03:36', 0),
	(124, 'Sajjad Hussain', 'sajjadkhaira@gmail.com', '0300-5554494', '363036-350503-9', NULL, 'Government Securities Fund', 'Islamic Income Fund,', 'Income Fund, Government Securities Fund,', 'I agree I will go with above recommended product', 72, '2019-08-16 17:04:35', '2019-08-16 17:04:35', 0),
	(125, 'kishwar sultana', 'saadzaman73@gmail.com', '0344-7770875', '331000-814838-6', NULL, NULL, NULL, NULL, 'Or Choose Another Product at My Own Risk', 52, '2019-08-17 14:56:28', '2019-08-17 14:56:28', 1),
	(126, 'Inayat Hussain', 'inayat.hussain@hblasset.com', '0307-4949680', '425018-865179-7', NULL, 'Islamic Asset Allocation Fund', 'Islamic Asset Allocation Fund, IFPF Conservative Plan,', 'FPF Conservative Plan,', 'I agree I will go with above recommended product', 73, '2019-08-18 15:23:45', '2019-08-18 15:23:45', 0),
	(127, 'Shua hasnain naqvi', 'shoaa.hasnain@ccco.com', '0300-8490522', '363020-420816-5', 'Block D Shah Rukn-e-Alam Colony, Shah Rukn E Alam Housing Scheme, Multan, Multan, Punjab, Pakistan', 'Money Market Fund', 'Islamic Money Market Fund,', 'Money Market Fund, Cash Fund,', 'I agree I will go with above recommended product', 75, '2019-08-19 11:54:52', '2019-08-19 11:54:52', 0),
	(128, 'umer hiyat', 'umer@gmail.com', '0321-4378896', '352022-725164-7', NULL, NULL, NULL, NULL, 'Or Choose Another Product at My Own Risk', 34, '2019-08-20 21:05:49', '2019-08-20 21:05:49', 0),
	(129, 'saeed Ahmed Bajwa', 'saeedbajwa2000@yahoo.com', '0333-5103271', '374053-131345-3', NULL, NULL, NULL, NULL, 'Or Choose Another Product at My Own Risk', 51, '2019-08-22 09:02:33', '2019-08-22 09:02:33', 1),
	(130, 'saeed Ahmed Bajwa', 'saeedbajwa2000@yahoo.com', '0333-5103271', '374053-131345-3', NULL, NULL, NULL, NULL, 'Or Choose Another Product at My Own Risk', 51, '2019-08-22 09:03:46', '2019-08-22 09:03:46', 1),
	(131, 'Muhammad Arsalan Ashraf', 'marsalan.ashraf@hblasset.com', '0321-8944387', '42201--3296730-', NULL, NULL, NULL, NULL, 'Or Choose Another Product at My Own Risk', 33, '2019-08-25 19:54:45', '2019-08-25 19:54:45', 0),
	(133, 'Asad Jabbar', 'jabbar.asad@yahoo.com', '+966-5826114', '363025-940220-3', NULL, NULL, NULL, NULL, 'Or Choose Another Product at My Own Risk', 51, '2019-08-26 15:53:42', '2019-08-26 15:53:42', 1),
	(138, 'arslan', 'ranaarslan69@gmail.com', '0300-4694153', '331000-728998-5', '10, Circular Road, Faisalabad, Faisalabad, Punjab, Pakistan', 'FPF Conservative Plan', 'Islamic Asset Allocation Fund, IFPF Conservative Plan,', 'FPF Conservative Plan,', 'I agree I will go with above recommended product', 61, '2019-11-02 16:17:35', '2019-11-02 16:17:35', 0),
	(139, 'Jahanzeb', 'jahanzeb.shahbaz@sngpl.com.pk', '0333-6121149', '363023-144759-9', ', Shah Rukn E Alam Housing Scheme, Multan, Multan, Punjab, Pakistan', 'Government Securities Fund', 'Islamic Income Fund,', 'Income Fund, Government Securities Fund,', 'I agree I will go with above recommended product', 49, '2019-11-07 11:35:45', '2019-11-07 11:35:45', 0),
	(140, 'moiz', 'moiz.juddi@hblasset.com', '03458207558', '4210117883115', 'Plot FL 9/22 Block 16 Gulshan-e-Iqbal, Karachi Karachi East', NULL, NULL, 'Multi Asset Fund', 'Or Choose Another Product at My Own Risk', 89, NULL, NULL, 0),
	(141, 'moiz', 'moiz.juddi@hblasset.com', '03458207558', '4210117883115', 'Plot FL 9/22 Block 16 Gulshan-e-Iqbal, Karachi Karachi East', 'FPF Conservative Plan', NULL, 'FPF Conservative Plan', 'I agree I will go with above recommended product', 89, NULL, NULL, 0),
	(142, 'Moiz', 'moiz.juddi@hblasset.com', '03458207558', '4210117883115', '6 5th Zamzama Street Defence V, Defence Housing Authority Karachi', NULL, NULL, NULL, 'Or Choose Another Product at My Own Risk', 89, NULL, NULL, 0),
	(143, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Or Choose Another Product at My Own Risk', 11, NULL, NULL, 0),
	(144, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Or Choose Another Product at My Own Risk', 11, NULL, NULL, 0),
	(145, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Or Choose Another Product at My Own Risk', 11, NULL, NULL, 0),
	(146, 'Mir Adil', 'mir.adil@hblasset.com', '03333013010', '4230138981403', 'Plot No. G-19 Block 5 Clifton, Karachi Karachi South', NULL, NULL, NULL, 'Or Choose Another Product at My Own Risk', 60, NULL, NULL, 0),
	(147, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Or Choose Another Product at My Own Risk', 11, NULL, NULL, 0),
	(148, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Or Choose Another Product at My Own Risk', 11, NULL, NULL, 0),
	(149, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Or Choose Another Product at My Own Risk', 11, NULL, NULL, 0),
	(150, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Or Choose Another Product at My Own Risk', 11, NULL, NULL, 0),
	(151, 'test ord', 'test@ord.com', '7878-7878787', '878787-878787-8', NULL, 'Multi Asset Fund', 'Islamic Asset Allocation Fund, IFPF Conservative Plan,', 'Multi Asset Fund,', 'I agree I will go with above recommended product', 11, '2020-04-17 15:31:41', '2020-04-17 15:31:41', 0),
	(152, 'test ord', 'test@ord.com', '7878-7878787', '878787-878787-8', NULL, 'IFPF Active Allocation Plan', 'IFPF Active Allocation Plan, IFPF Conservative Plan,', 'FPF Multi Allocation Plan,', 'I agree I will go with above recommended product', 11, '2020-04-17 15:32:13', '2020-04-17 15:32:13', 0);
/*!40000 ALTER TABLE `risks` ENABLE KEYS */;

-- Dumping structure for table sales-app-live.roles
CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sales-app-live.roles: ~5 rows (approximately)
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
REPLACE INTO `roles` (`id`, `role`, `role_title`, `created_at`, `updated_at`) VALUES
	(0, 'admin', 'Admin', NULL, NULL),
	(1, 'user', 'Sales', NULL, NULL),
	(2, 'super_admin', 'Super Admin', NULL, NULL),
	(3, 'retail_admin', 'Retail Admin', NULL, NULL),
	(4, 'retail_user', 'Retail User', NULL, NULL),
	(5, 'cbc', 'cbc', NULL, NULL);
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;

-- Dumping structure for table sales-app-live.rp_count
CREATE TABLE IF NOT EXISTS `rp_count` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `counts` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table sales-app-live.rp_count: ~0 rows (approximately)
/*!40000 ALTER TABLE `rp_count` DISABLE KEYS */;
REPLACE INTO `rp_count` (`id`, `counts`) VALUES
	(1, 203);
/*!40000 ALTER TABLE `rp_count` ENABLE KEYS */;

-- Dumping structure for table sales-app-live.sc_yr
CREATE TABLE IF NOT EXISTS `sc_yr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `yr` varchar(191) DEFAULT NULL,
  `chart_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table sales-app-live.sc_yr: ~2 rows (approximately)
/*!40000 ALTER TABLE `sc_yr` DISABLE KEYS */;
REPLACE INTO `sc_yr` (`id`, `yr`, `chart_id`) VALUES
	(1, '2015', 1),
	(2, '2015', 2);
/*!40000 ALTER TABLE `sc_yr` ENABLE KEYS */;

-- Dumping structure for table sales-app-live.slides
CREATE TABLE IF NOT EXISTS `slides` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sales-app-live.slides: ~0 rows (approximately)
/*!40000 ALTER TABLE `slides` DISABLE KEYS */;
REPLACE INTO `slides` (`id`, `title`, `content`, `created_at`, `updated_at`) VALUES
	(1, 'Sponsers', '<p>HBL was the first commercial bank to be established in Pakistan in 1947.&nbsp;<br /><br />The Government of Pakistan privatized HBL in 2004 through which AKFED acquired 51% of the Bank\'s shareholding and the management control.&nbsp;<br /><br />Current network is over 1,600 branches and 1,700 ATMs globally and a customer base exceeding eight million relationships.<br />&nbsp;&nbsp;<br />HBL is the Largest bank by:<br />Deposits<br />Balance sheet<br />Capital<br />Profitability&nbsp;<br /><br />With a global presence in over 25 countries spanning across four continents,&nbsp;&nbsp;HBL is also the largest domestic multinational.&nbsp;<br /><br />HBL is rated AAA by JCR-VIS.&nbsp;</p>', NULL, NULL);
/*!40000 ALTER TABLE `slides` ENABLE KEYS */;

-- Dumping structure for table sales-app-live.sponsers
CREATE TABLE IF NOT EXISTS `sponsers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f1` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f2` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f3` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f4` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f5` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f6` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sales-app-live.sponsers: ~0 rows (approximately)
/*!40000 ALTER TABLE `sponsers` DISABLE KEYS */;
REPLACE INTO `sponsers` (`id`, `title`, `f1`, `f2`, `f3`, `f4`, `f5`, `f6`, `created_at`, `updated_at`) VALUES
	(1, 'Sponsor', 'HBL was the first commercial bank to be established in Pakistan in 1947.', 'The Government of Pakistan privatized HBL in 2004 through which AKFED acquired 51% of the Bank\'s shareholding and the management control.', 'Current network is over 1,600 branches and 1,700 ATMs globally and a customer base exceeding eight million relationships.', 'HBL is the Largest bank by: <br />\r\nDeposits <br />\r\nBalance sheet <br />\r\nCapital', 'With a global presence in over 25 countries spanning across four continents,  HBL is also the largest domestic multinational.', 'HBL is rated AAA by JCR-VIS.', NULL, NULL);
/*!40000 ALTER TABLE `sponsers` ENABLE KEYS */;

-- Dumping structure for table sales-app-live.sponsor_chart_1
CREATE TABLE IF NOT EXISTS `sponsor_chart_1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sc_1_nums` varchar(500) DEFAULT NULL,
  `bank_id` int(11) DEFAULT NULL,
  `sort_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=latin1;

-- Dumping data for table sales-app-live.sponsor_chart_1: ~50 rows (approximately)
/*!40000 ALTER TABLE `sponsor_chart_1` DISABLE KEYS */;
REPLACE INTO `sponsor_chart_1` (`id`, `sc_1_nums`, `bank_id`, `sort_id`) VALUES
	(23, '1634', 1, 1),
	(24, '1885', 1, 1),
	(25, '1998', 1, 1),
	(32, '2137', 1, 1),
	(33, '2437', 1, 1),
	(34, '1120', 2, 2),
	(35, '1246', 2, 2),
	(36, '1350', 2, 2),
	(37, '1448', 2, 2),
	(38, '1467', 2, 2),
	(39, '706', 3, 3),
	(40, '796', 3, 3),
	(41, '1001', 3, 3),
	(42, '1122', 3, 3),
	(43, '1144', 3, 3),
	(44, '1432', 4, 4),
	(45, '1657', 4, 4),
	(46, '1727', 4, 4),
	(47, '2011', 4, 4),
	(48, '2198', 4, 4),
	(49, '735', 5, 5),
	(50, '805', 5, 5),
	(51, '884', 5, 5),
	(52, '984', 5, 5),
	(53, '1049', 5, 5),
	(60, '35470', 6, 1),
	(61, '31820', 6, 1),
	(62, '7730', 6, 1),
	(63, '11789', 6, 1),
	(64, '15500', 6, 1),
	(65, '25727', 7, 2),
	(66, '27730', 7, 2),
	(67, '25179', 7, 2),
	(68, '15226', 7, 2),
	(69, '19134', 7, 2),
	(70, '25035', 8, 3),
	(71, '22174', 8, 3),
	(72, '22048', 8, 3),
	(73, '20415', 8, 3),
	(74, '23947', 8, 3),
	(75, '19219', 9, 4),
	(76, '22752', 9, 4),
	(77, '23028', 9, 4),
	(78, '20015', 9, 4),
	(79, '15810', 9, 4),
	(80, '15120', 10, 5),
	(81, '14427', 10, 5),
	(82, '12734', 10, 5),
	(83, '12880', 10, 5),
	(84, '14113', 10, 5);
/*!40000 ALTER TABLE `sponsor_chart_1` ENABLE KEYS */;

-- Dumping structure for table sales-app-live.tomf
CREATE TABLE IF NOT EXISTS `tomf` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sh1` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sh1f1` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sh1f2` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sh2` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sh2f1` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sh2f2` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sh2f3` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sh2f4` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sh2f5` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sh2f6` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sh3` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sh3f1` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sh3f2` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sh3f3` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sales-app-live.tomf: ~0 rows (approximately)
/*!40000 ALTER TABLE `tomf` DISABLE KEYS */;
REPLACE INTO `tomf` (`id`, `title`, `sh1`, `sh1f1`, `sh1f2`, `sh2`, `sh2f1`, `sh2f2`, `sh2f3`, `sh2f4`, `sh2f5`, `sh2f6`, `sh3`, `sh3f1`, `sh3f2`, `sh3f3`, `created_at`, `updated_at`) VALUES
	(1, 'Types Of Mutual Funds', 'By Structure', 'Open End Funds: These units are issued and redeemed by the Management Company', 'Closed End Funds: Only traded at the Stock Exchange and are not redeemable', 'By Investment Objective', 'Money Market Funds: Invest in most liquid securities e.g., Bank Deposits, Treasury bills etc.', 'Growth Funds – Equity Funds: Invest in Equity Securities', 'Income Funds / Debt Funds: Invest in longer term Government & Corporate Bonds.', 'Balanced Funds: Invest in both Fixed Income and Equity Securities', 'Asset Allocation Funds: Usually specifies the percentage of investment in equity and Fixed Income Securities.', 'Capital Protected Funds: Guarantees the protection of capital through different methodologies.', 'Special Funds', 'Shariah Compliant Funds:All assets are Shariah Compliant with the approval of Shariah Advisor', 'Sector Specific Funds: Invest only in the sector that is described in offering document', 'Govt. Securities Funds: Invest in Government bonds both short term and long term.', NULL, NULL);
/*!40000 ALTER TABLE `tomf` ENABLE KEYS */;

-- Dumping structure for table sales-app-live.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sales-app-live.users: ~63 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
REPLACE INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `role_id`) VALUES
	(11, 'Ahsan Hassan', 'Ahsan.Hassan@hblasset.com', '$2y$10$URd/mAwgY4Q3pfZL7dlkteGx1U.sFWW//8gKcAx9n7z4FBudoLXlK', '9933BQYkiXBsU8o0mqfOJh7iWuXlgweEhN6ZZnlLDatLvM3SZfQl3nfMFI8a', '2018-07-09 07:50:44', '2018-07-09 07:50:44', 0),
	(15, 'MUstafa Subhani', 'mustafa.subhani@hblasset.com', '$2y$10$GcoEeqmRiftYTCy7nTUxL.tZN4NOXgqkqBCiIE6nJLRiBbHiJwNi6', NULL, '2018-07-23 21:35:08', '2018-07-23 21:35:08', 1),
	(16, 'Mohammad Noman', 'muhammad.noman@hblasset.com', '$2y$10$9kZaz2.kHAXWvrqz6VnI0.LfJfPyIlyyrEB.NqemAgmao8dicRLqO', NULL, '2018-07-23 21:38:15', '2018-07-23 21:38:15', 1),
	(18, 'Tayyab Javed', 'tayyab.javed@hblasset.com', '$2y$10$AY6hL065QmlcgnAH2G/vEu00fRuSwWRe3x6QtzDw7RMLDAtCcEPwq', NULL, '2018-07-23 21:40:15', '2018-07-23 21:40:15', 1),
	(19, 'Sarmad Iqbal', 'sarmad.iqbal@hblasset.com', '$2y$10$Ot5LwxWYUV3hxv4SZXtdBejYTpDquH3OboWzw7JVQbneOq4bz5B5y', NULL, '2018-07-23 21:41:38', '2018-07-23 21:41:38', 1),
	(21, 'Gohar Ayub', 'gohar.ayub@hblasset.com', '$2y$10$cjNzHjSN1bdBTjAJpPKBXOafNkZsbTLKBrlNbEcroh6m3j5rrjrgq', NULL, '2018-07-23 21:42:41', '2018-07-23 21:42:41', 1),
	(22, 'Tahir Bin Yousuf', 'tahir.yousuf@hblasset.com', '$2y$10$.OJKbmrReNJ0FXWbhJdufuxbbpCs./HrhfZbCa1GMuIN4VFg30mmC', NULL, '2018-07-23 21:43:16', '2018-07-23 21:43:16', 1),
	(23, 'Ali Babar Syed', 'babar.syed@hblasset.com', '$2y$10$/jIeV6lrP3.NBCeQVPL0jOsM0KSYXHYOQv/yqpxJV/tRf7LRJMhna', 'HijzFSB7gHZkrIj5N53B4Y9xjns7FpiIGiCjPJATRgQWYdATN172iO0SVNIs', '2018-07-23 21:44:41', '2018-07-23 21:44:41', 1),
	(25, 'Muhib Khan', 'Muhib.khan@hblasset.com', '$2y$10$UTkm7YtE.eF3pRXx4lbox.bhA9UMI624vT3zzb0SA75tqT0fKKfUW', 'FlQ3tKsyYsXxQmZxEQbxwjNWGrQ2GpKzpMPl2krajOU8JIHKzasjoHl9jVpJ', '2018-07-23 21:45:58', '2018-07-23 21:45:58', 1),
	(26, 'Murtaza Jafri', 'murtuza.jafri@hblasset.com', '$2y$10$mfqbIRf7woG7J6q9kh9WT.099vXnUj4kbdvn7KQXSgPbtiIlGKpEm', NULL, '2018-07-23 21:47:03', '2018-07-23 21:47:03', 1),
	(29, 'Meheboob Ali Solangi', 'mehboob.solangi@hblasset.com', '$2y$10$mXS/BclRKgzT/LdsT8PNEebf1S9ymk5.H/3zB8GkJLIiGqG4b3yn2', NULL, '2018-07-23 21:48:48', '2018-07-23 21:48:48', 1),
	(30, 'Raheel Khawer', 'raheel.khawer@hblasset.com', '$2y$10$joM8WfVT1pMfHsbUjIqDjuxo15IqODpt4nxnYDKQK1d3EXPezPKbm', 'KATksVPkSNde0ePmOCpzJaSSKxCtjHAgRlE2CbzazuYt9Ez20sTFw5ai2gWu', '2018-07-23 21:49:43', '2018-07-23 21:49:43', 1),
	(31, 'Mubashir Azhar', 'mubashir.azhar@hblasset.com', '$2y$10$VznDXEQv0RGUAvtbc16qZeTvKHTjiBF67emlaKM3GgRQj880MnpNq', 'WXvmd1TOHrQZAhLKYSy1KHSJCQGjWU3NJogoFAGd3m55nXQmRNjQVg7ylwVg', '2018-07-23 21:50:18', '2018-07-23 21:50:18', 1),
	(33, 'Arsalan Ashraf', 'marsalan.ashraf@hblasset.com', '$2y$10$BP4xFwumcZ2u/6ALRo1UBOhY5lXVCW0uRh/BjtliufVMf6pfhzX1i', 'JECZwrR2AyBGEsCFy0YMrur6wMBCyTzS4gLoNltKnvdjQQZwNPKoXeaAjK7h', '2018-07-23 21:56:02', '2018-07-23 21:56:02', 1),
	(34, 'Muhammad Shafique', 'muhammad.shafique@hblasset.com', '$2y$10$qN/Jp4yoPsBdjnL2llgFP.pEqq0JK0Odi/ENonwe1Ef5CFBKKaSry', NULL, '2018-07-23 21:58:18', '2018-07-23 21:58:18', 1),
	(35, 'Faiq Alam', 'faiq.alam@hblasset.com', '$2y$10$JHI3/WDwDolx.zjlUPPvfeWv2.UwJlvQiG8VJ83cd6Yox/zRAY/ZK', NULL, '2018-07-23 22:03:29', '2018-07-23 22:03:29', 1),
	(36, 'Zainab Mubeen', 'zainab.mubeen@hblasset.com', '$2y$10$TdRSbM42of6BQVEkZT/YOOdgWVIFOHVBXW23FPHlZbuHZS8ngElIy', NULL, '2018-07-23 22:04:02', '2018-07-23 22:04:02', 1),
	(37, 'Jahanzaib Ahmed Siddiqui', 'jahanzaib.siddiqui@hblasset.com', '$2y$10$KHDkHpBiP/PMrLblZxRK3eE8e2hwDpyz0Ao0MaxB8/aGsCmCmnz3m', NULL, '2018-07-23 22:04:56', '2018-07-23 22:04:56', 1),
	(38, 'Shaikh Muhammad Yasir bashir', 'yasir.bashir@hblasset.com', '$2y$10$ST1bBkxmGQkor/LGew8.s.sl65WtozmT6/OkXmQTBNW4EDU/cnz5e', 'cuJ3JjCcMnt2JUEFvXi7OnuNztTfI62nxvBveaLkkQklDdyaLW0pOATdTbCc', '2018-07-23 22:06:08', '2018-07-23 22:06:08', 1),
	(39, 'Muhammad Farhan Khan', 'Mfarhan.khan@hblasset.com', '$2y$10$AWhYtRllBKdC/XCwEEcb9.FcNeHrjjJk1xA0VULxw0tfV1PxejASO', NULL, '2018-07-23 22:07:00', '2018-07-23 22:07:00', 1),
	(41, 'Amjad Hussain Phull', 'amjad.hussain@hblasset.com', '$2y$10$GvIBbqxCZ3QL8.xuwAuMwOb6WSl3hWLKGi9xZ48IZEm9BqVOsxnZO', '4KtbCYAgVLLwIvmqkIjlyvpiOjFlVpVxc4VZJF7gA558DsTzMtU2QlEAff5J', '2018-07-23 22:07:59', '2018-07-23 22:07:59', 1),
	(44, 'Sheeraz Ahmed', 'sheeraz.ahmed@hblasset.com', '$2y$10$0G3OaN88LwAq.A1qj0Th/.e7Ndh6fI2vCXW8ryfgGbHBuFvo/0Wne', 'QmbP8cUYxOExXfIde0Zjkr7U7zc6f6MEndLtgRod26oI46qTfiDEVIKku56M', '2018-07-24 19:38:14', '2018-07-24 19:38:14', 1),
	(47, 'Muhammad Imran', 'muhammad.imran1@hblasset.com', '$2y$10$Nr.52ITQfaeGYu8ZwnPOouCO8.FiZDouKVn2iN/OfVB//lZAUbc.W', NULL, '2018-08-15 18:17:38', '2018-08-15 18:17:38', 1),
	(48, 'Shahzeb Aziz', 'shahzeb.aziz@hblasset.com', '$2y$10$aialkMApczjdGgjkmsrfw.yyfqkhkEraG33ZI8aeo4ULT3/Rkcixa', NULL, '2018-08-15 18:18:51', '2018-08-15 18:18:51', 1),
	(49, 'Fiaz Ahmed Khan', 'fiaz.ahmed@hblasset.com', '$2y$10$4e.2qKoc41ooO8Gpl7F1nuUf60AZiU.2qBoy4s5Kn6Nx6rrx4ODVG', 'DXlIjKb0ouG71uhfOGjSb82rdskyxSL06guuWi18eOKsk39f1oGd6mOruXbA', '2018-08-15 18:19:48', '2018-08-15 18:19:48', 1),
	(50, 'Zeeshan Tahir', 'zeeshan.tahir@hblasset.com', '$2y$10$6pDCgxzKUZ528GoUTOuCFOdC2sFYk3ocdDWd0qovzUl2ksnOqU0dq', NULL, '2018-08-15 18:24:35', '2018-08-15 18:24:35', 1),
	(51, 'Shahzad Ul Haq', 'shahzad.haq@hblasset.com', '$2y$10$fFTh/EKqPTA4ZyhUNNdGtu.HmlIxohG6jle.roaxKczvAK3L7nxTe', NULL, '2018-08-15 18:25:23', '2018-08-15 18:25:23', 1),
	(52, 'Saad Zaman', 'saad.zaman@hblasset.com', '$2y$10$XjGxbIuWyovEPtcE448o5uNrLzd9mGcdcdM0q5k0yhqGIIAqzVGHO', 'JSyidhPMOtIGf7XRRW9kKzgTjFZzkm0YUgYhNyNkyQXKnC5S7YMLc2urWfIM', '2018-08-15 18:26:24', '2018-08-15 18:26:24', 1),
	(53, 'Ali Raza Zaidi', 'ali.raza@hblasset.com', '$2y$10$L7/YTWii/4yrw/GlWIge1.dKcj9seWn6zHJu5wfKFnt.u6JemE3LK', 'nnHG9C1lOQLosFSRi3ia0kkaagRkDBhCf1QUAOhVpCkPtCFNMhn6GmRBWcOc', '2018-08-15 22:09:25', '2018-08-15 22:09:25', 1),
	(54, 'Ali Raza', 'ali.naqvi@hblasset.com', '$2y$10$FXcvPg5VUxIto5yVDvAG9ub1ZT1efVpdcV77nDOvLDFld.wCv2o1C', 'kbEDNsSU8tdeW2FNK80cRsKWjFCqDQEYvvPmCKJ79WYLWUGrUyPVk7Sth2S8', '2018-08-15 22:10:35', '2018-08-15 22:10:35', 1),
	(56, 'Ehtisham Junaidi', 'ehtisham.junaidi@hblasset.com', '$2y$10$jj0hvJDIOEoVPziDpx6l4uz9dLRTDqDOk7nOcL.ABmxuCtQXFeNZW', NULL, '2018-09-04 19:35:49', '2018-09-04 19:35:49', 1),
	(57, 'francis.gill', 'francis.gill@ord.com', '$2y$10$ss28ZzICcK9h5KziiSV9kO4cnb1yvYvcZO3sUHTqkdoXYVWL4/pFG', 'kfR06OlqJqg5FtPVvQCVRjnqs4CB0SzWHWKmSAu5N9biYgTThszttU1L8i9c', '2018-09-05 17:01:58', '2018-09-05 17:01:58', 2),
	(58, 'Imran Tariq', 'imran.tariq@hblasset.com', '$2y$10$nD0ePsk1h1/P4vAwLAVoKeZpZz2cQKab.bSD3THZbi8bhcYXbQyUa', NULL, '2018-09-18 18:27:59', '2018-09-18 18:27:59', 1),
	(59, 'Amir Khan', 'amir.khan@hblasset.com', '$2y$10$c4WD9k2pjon.6t11FsKo9O6qxugXR.cRDeRCXFmf5BauXx.7ZM/ia', 'EkDTmf0Yhz12ShWFd63DPvIpbDl47loWl7BIGKEFVldP2XZeAGl7GWJwwp34', '2018-10-04 06:20:28', '2018-10-04 06:20:28', 1),
	(60, 'omair.inam', 'omair.inam@hblasset.com', '$2y$10$9nhckVnqHLyb014g9TWHPO9qnr2gU2kq1NVXe9CTZgvM5zKV2fAZW', 'h5ElN9MLZPwv4Z0eCzIoRRmEWUb195UqgPgjf1YHV8SHzuS7GBoUwvgpPmEy', '2018-11-27 07:47:15', '2018-11-27 07:47:15', 2),
	(61, 'Arslan Khalid', 'arslan.khalid@hblasset.com', '$2y$10$PdQ4sGcSUUz8LoeIecWhyeUz73WM6ebHeCiSt3YKKt3lQ51k9qvgO', NULL, '2019-02-12 06:25:46', '2019-02-12 06:25:46', 1),
	(62, 'Muhammad Irfan', 'muhammad.irfan@hblasset.com', '$2y$10$4Lm8S8Mkw.Tc.5DDA/11C.Xq/9cuvTFGrYjh2T09AY3SuUPNcaunW', NULL, '2019-02-12 06:26:34', '2019-02-12 06:26:34', 1),
	(65, 'Sadaf Wajid', 'sadaf.wajid@hblasset.com', '$2y$10$lx5GIjYaN5bgMeqCJwh7tuOu9TieteEtoCjr52wy1jg7We37mdlfK', NULL, '2019-08-09 10:15:20', '2019-08-09 10:15:20', 1),
	(66, 'Sharafat Ali', 'sharafat.ali@hblasset.com', '$2y$10$sxG2gFWBEblQG.2WAcDwWeUhfVQuXrBHJQLJ90ewz3Us7tjbkugq.', NULL, '2019-08-09 10:17:38', '2019-08-09 10:17:38', 1),
	(67, 'Salman Farooqi', 'salman.farooqi@hblasset.com', '$2y$10$LWnl/DGf6Zk8TwMCl3iNXOoiuj34dAV1I2JeL6KUIBoAVCNpGt7Tu', NULL, '2019-08-09 10:51:01', '2019-08-09 10:51:01', 1),
	(68, 'Moonis Ahmed', 'moonis.ahmed@hblasset.com', '$2y$10$geOdkvb0IveoojNMzj8iXeAWK9ZCh7ASedcnMol64HVYAIassjFvS', NULL, '2019-08-09 11:11:15', '2019-08-09 11:11:15', 1),
	(69, 'Mirza Iqrar Baig', 'iqrar.baig@hblasset.com', '$2y$10$qFrEoo6U/EW.qut7HQ93kuJHk9ZkpAgp5YH/o4ytTUkLQZIrMFFMG', NULL, '2019-08-09 11:26:41', '2019-08-09 11:26:41', 1),
	(70, 'Waqas Hussain', 'waqas.hussain@hblasset.com', '$2y$10$Ah8zcY8wzMMvjKoQeGmL9OTwuPQEAbM0yh3IzmUTzWsrXSstr5I2a', NULL, '2019-08-09 11:50:25', '2019-08-09 11:50:25', 1),
	(71, 'Saeem Khan', 'saeem.khan@hblasset.com', '$2y$10$gFHuzNitkrwxSBWCO6l3wucrjEYeq5jd7vNS6tz1BzYcCgLQ8t1BC', NULL, '2019-08-09 12:56:35', '2019-08-09 12:56:35', 1),
	(72, 'Faisal Shabbir', 'faisal.shabbir@hblasset.com', '$2y$10$a7XXZwFV.U9F1s1QB7UT0uH0VOgZi/eTz/ibNWZSEzHoz59LMpYZO', NULL, '2019-08-16 10:17:13', '2019-08-16 10:17:13', 1),
	(73, 'Inayat Hussain', 'inayat.hussain@hblasset.com', '$2y$10$7x0O7X809F6Z4XCEnsh/GeYa0GKEoOVOCXQqRea0akQGbh69WjRXm', NULL, '2019-08-16 10:44:12', '2019-08-16 10:44:12', 1),
	(74, 'Ahsan Nadeem Bhutta', 'ahsan.nadeem@hblasset.com', '$2y$10$xbEBvheI.b3FXXtnLmLHB.AFkSPbu/.HSQdVF.Syjx6TU6K4VpX4.', NULL, '2019-08-16 11:42:57', '2019-08-16 11:42:57', 1),
	(75, 'Ali Ahmed', 'ali.ahmed@hblasset.com', '$2y$10$uVXXAJ8htK1f6n1V6TdPteaNbtoFrd9cjVuyI8V3s5hywmN.EGsNy', NULL, '2019-08-16 14:46:49', '2019-08-16 14:46:49', 1),
	(76, 'Kashif Naveed', 'kashif.naveed@hblasset.com', '$2y$10$jLxMOeTTKF/91NUADS2hQuNM5ctiUM9z22Q9Wgsl2Euo729//78RC', NULL, '2019-08-17 11:15:07', '2019-08-17 11:15:07', 1),
	(77, 'Shahzad Ali', 'shahzad.ali@hblasset.com', '$2y$10$9JOQd5Nr0t3vKH4WIg1HrOTqXHVo8vYyIEdEua3/p7gPKJOXMCZu6', NULL, '2019-08-17 11:17:00', '2019-08-17 11:17:00', 1),
	(78, 'Munaf Panjwani', 'munaf.panjwani@hblasset.com', '$2y$10$iqoj9ccC9ksAWaMdcl1ckePFe3LHcFfRpPUsc2ZIeg1ZUcOJ7h3PW', NULL, '2019-08-20 10:45:03', '2019-08-20 10:45:03', 1),
	(79, 'Naseem Nawaz', 'naseem.nawaz@hblasset.com', '$2y$10$vW8hakUgcNC7Dvr5Gv5Equ5BEBvN7RaALBzcHjvTMs0yGqyVEjN9q', NULL, '2019-08-20 11:18:44', '2019-08-20 11:18:44', 1),
	(80, 'Muhammad Shujaat Khan', 'shujaat.khan@hblasset.com', '$2y$10$AwMv058mdV9lBrPwSvNsAut7r4YwqIwOVqf3An0QRE9k7tdmMf1wK', NULL, '2019-08-20 11:35:45', '2019-08-20 11:35:45', 1),
	(81, 'Wajahat Butt', 'wajahat.butt@hblasset.com', '$2y$10$FM6ANVzhQctPlGV1d3vm4uwTNzEdRzZXzk6USI5SUauu8TZRzpIki', NULL, '2019-08-20 11:38:11', '2019-08-20 11:38:11', 1),
	(82, 'Umair Ahmed', 'umair.ahmed@hblasset.com', '$2y$10$1mEaJoiYVgw6/G1GOyxFhuIa8rw2JMOcIM0Cq/nd/82dy2fEULTR.', NULL, '2019-08-20 12:06:16', '2019-08-20 12:06:16', 1),
	(83, 'Muhammad Waqar', 'muhammad.waqar@hblasset.com', '$2y$10$EAT0NBXyhKQG5mx3uX17xeXS6ug51MOmW8eoYXFCpgOXABYU0fRjS', NULL, '2019-08-20 14:25:03', '2019-08-20 14:25:03', 1),
	(84, 'Muhammad Fahad', 'muhammad.fahad@hblasset.com', '$2y$10$xRb/2/aKF1vHHt5WmK4wMuJl39TMgzQdFvLKXkP0BZRA4tWf9Vpc6', NULL, '2019-08-20 15:06:55', '2019-08-20 15:06:55', 1),
	(85, 'Jazib Ahmed Essani', 'jazib.essani@hblasset.com', '$2y$10$y5ojjALcCSlpKnpJTB/Psu4xgCWwgfiZXLT2dwaxoSIPcvRZvj8hu', NULL, '2019-08-20 15:08:00', '2019-08-20 15:08:00', 1),
	(86, 'Jarar Haider', 'jarar.haider@hblasset.com', '$2y$10$G9.Mvm8E0zmOUrV13PqrWeZIaTy17udEEVv8SDrY8uUzQvNDX5bfO', NULL, '2019-08-20 16:41:11', '2019-08-20 16:41:11', 1),
	(87, 'Agha Abrar', 'agha.abrar@hblasset.com', '$2y$10$cWv4MJXBkRTi3uqUeSb8eeGoPiA0pFM2XzZxOye9EyEvfyxoJoRs.', NULL, '2019-08-27 16:15:51', '2019-08-27 16:15:51', 1),
	(88, 'Zahid Shams', 'zahid.shams@hblasset.com', '$2y$10$KogBGGnBDRmSiJkECLOj0unfLkGA9HfKZfmPnR8FtUaxCy8KgRzou', NULL, '2019-09-18 09:05:13', '2019-09-18 09:05:13', 1),
	(89, 'sales ord', 'sales@ord.com', '$2y$10$pD1DfD0wMjN/XNi3er7wuOmD9tCua7KjjByUlvNW7L93.KBOpUSvO', 'p3KUZoaRwwwT32g47bpQ9VfpD2iA0g08mSrlris5F1QJ6UVh8PUOXpTUdXHA', '2019-10-02 18:17:20', '2019-10-02 18:17:20', 1),
	(90, 'retail admin', 'retailadmin@ord.com', '$2y$10$IUixJn5.3MpjQZkThbl2qOxA/JG.zu8vJr0cd6VHrwn8xSA.cCGvu', 'qFyCV89XiRtM3PbYKTRONYZERMvq72YLh4DjdlEeIV33h8lJUGJGsKdFEgnk', '2019-10-04 13:47:51', '2019-10-04 13:47:51', 3),
	(91, 'retail user', 'retailuser@ord.com', '$2y$10$GUPDI12YGAhmDva7eUrgK.P2Wzs86u3Bei0PdJEgpeVZBFHr3pxrC', 'e6krqZRJuhZf9UdYs3WvRl1iK1zG4A20Ls76HuxYVu0oZVvFrBm6VpTaudFa', '2019-10-04 13:55:56', '2019-10-04 13:55:56', 4),
	(93, 'melvin pereira', 'melvin.pereira@hblasset.com', '$2y$10$vIOUo13kfi2V8z5GGke0ce.L6.8RJnJyef.srObsb9mP7/CgCfOvy', 'AumTT3o6NJIssEtAiJPSjspN9Lkg0jEM4jjnY1hhINGDCGt6jcp9YPeiNewX', '2019-10-04 19:41:35', '2019-10-04 19:41:35', 5),
	(94, 'waseem siddiqui', 'waseem.siddiqui@hblasset.com', '$2y$10$1YIUWrqRz0sDLQdCPq6kEOi5fo6DURyI5O7VaXIg.lDuvFJloXZN2', 'EHI5diWK8jyolGW6J2S4FoNXMFI1bGIFUHZtuzxv0P5YbvBT0WWvAdZfRUmE', '2019-10-04 19:42:16', '2019-10-04 19:42:16', 4),
	(95, 'cbc user', 'cbc@ord.com', '$2y$10$3CX9f1Qz.cXO5EHceHNeMel2Hqyq7.GYkPbWUCX1bvPilZj3cHxCO', 'd5TjRsgrfLvyQRGtg6nqeFeSitbE8gKCmft0vuWFyTbDzcl5B4imgJtWqOBf', '2019-12-04 15:51:06', '2019-12-04 15:51:06', 5),
	(96, 'Zia Javed', 'zia.javed@hblasset.com', '$2y$10$VCFeESTyMnlDzEgn1ZHb.u1aukC8r2EOid7ldeIqJejcJJ5SGYBgK', NULL, '2020-04-17 13:09:03', '2020-04-17 13:09:03', 1),
	(97, 'Ivan N. Johns', 'ivan.johns@hblasset.com', '$2y$10$xaPtY/x/OrI6iRiwncIj3uLMYg/Tcceq6WnuhgF9ZutcLqyqxIMD.', 'D7MHxPzqRH1Envbs183rOoBnGP3Wi6wrP0oKuOtBE8V7v9Mj4G4p5v0IxA63', '2020-04-21 11:41:00', '2020-04-21 11:41:00', 1),
	(98, 'Mir Adil Rashid', 'mir.adil@hblasset.com', '$2y$10$jNkL9j45Pdbtc4KqBR9crul3aacJ2HHcwras4NwfHhd0hZO311beC', NULL, '2020-04-21 11:53:33', '2020-04-21 11:53:33', 1),
	(99, 'Lubna Ahmed', 'lubna.ahmed@hblasset.com', '$2y$10$RHnRA/WewxD2rfw1oKUREevAGjDyv0fXlkTZhacSLvEH7DxNDKvkO', NULL, '2020-04-21 11:58:00', '2020-04-21 11:58:00', 1),
	(100, 'Rizwan Syed', 'rizwan.syed@hblasset.com', '$2y$10$raoydCbdJs01qfpF81sTQOkO3zu8cTW5pdaNpLBUP/pZmwosY7S.q', NULL, '2020-04-21 12:03:52', '2020-04-21 12:03:52', 1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Dumping structure for table sales-app-live.views
CREATE TABLE IF NOT EXISTS `views` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `count` varchar(191) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `update_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

-- Dumping data for table sales-app-live.views: ~22 rows (approximately)
/*!40000 ALTER TABLE `views` DISABLE KEYS */;
REPLACE INTO `views` (`id`, `count`, `user_id`, `update_at`) VALUES
	(1, '4', 29, '2018-10-10'),
	(2, '2', 37, '2018-09-05'),
	(3, '7', 23, '2018-10-23'),
	(4, '22', 12, '2018-10-25'),
	(5, '16', 24, '2018-12-27'),
	(6, '80', 30, '2019-06-19'),
	(7, '8', 44, '2018-09-17'),
	(8, '6', 22, '2018-10-17'),
	(9, '5', 31, '2018-09-07'),
	(10, '10', 25, '2019-01-02'),
	(11, '7', 39, '2018-09-07'),
	(12, '11', 56, '2018-10-26'),
	(13, '5', 26, '2019-01-08'),
	(14, '1', 33, NULL),
	(15, '18', 49, '2018-12-10'),
	(16, '157', 11, '2020-04-18'),
	(17, '10', 53, '2019-02-12'),
	(18, '5', 52, '2019-03-18'),
	(19, '11', 51, '2018-10-24'),
	(20, '5', 21, '2018-09-17'),
	(21, '1', 47, NULL),
	(22, '58', 57, '2020-02-14'),
	(23, '53', 60, '2020-04-21'),
	(24, '6', 61, '2019-02-13'),
	(25, '21', 62, '2019-06-20'),
	(26, '3', 67, '2019-08-09'),
	(27, '2', 64, '2019-09-05'),
	(28, '14', 89, '2020-01-18'),
	(29, '1', 97, NULL);
/*!40000 ALTER TABLE `views` ENABLE KEYS */;

-- Dumping structure for table sales-app-live.welcome
CREATE TABLE IF NOT EXISTS `welcome` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(191) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table sales-app-live.welcome: ~0 rows (approximately)
/*!40000 ALTER TABLE `welcome` DISABLE KEYS */;
REPLACE INTO `welcome` (`id`, `date`) VALUES
	(1, 'March, 2020.');
/*!40000 ALTER TABLE `welcome` ENABLE KEYS */;

-- Dumping structure for table sales-app-live.ytp
CREATE TABLE IF NOT EXISTS `ytp` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sh` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f1` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f2` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f3` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f4` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f5` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sales-app-live.ytp: ~0 rows (approximately)
/*!40000 ALTER TABLE `ytp` DISABLE KEYS */;
REPLACE INTO `ytp` (`id`, `title`, `sh`, `f1`, `f2`, `f3`, `f4`, `f5`, `created_at`, `updated_at`) VALUES
	(1, 'Your Trusted Partner', 'WHY HBL SHOULD BE YOUR PREFERRED PARTNER?', 'HBL Asset Management Limited (HBL AMC) is backed by the largest and strongest \r\nFinancial institution of Pakistan which boasts of 75 years of rich and successful \r\nhistory. The franchise is associated with trust and credibility for our investors in \r\nmore than 25 countries that their savings are in safe hands.', 'We provide a seamless financial experience to our clients in partnership with HBL. \r\nThe entire product suite ranging from bank accounts to cash management and saving plans available under one umbrella.', 'We manage one of the largest equity portfolios in the country with a size of over Rs 10..63 billion. \r\nOur mutual funds have a demonstrated track record of over 10 years of superior returns.', 'No conflicts and no third parties involved as we take pride in providing all services in-house. \r\nOur experienced research team provides detailed equity and economic reports.', 'An experienced management team boasting exposure of both local and international markets.', NULL, NULL);
/*!40000 ALTER TABLE `ytp` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
