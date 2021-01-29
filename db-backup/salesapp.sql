-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 13, 2020 at 01:46 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `salesapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `aa1`
--

DROP TABLE IF EXISTS `aa1`;
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aa1`
--

INSERT INTO `aa1` (`id`, `aa1_key`, `aa1_v1`, `aa1_v2`, `aa1_v3`, `fund_id`, `created_at`, `updated_at`) VALUES
(1, 'Equity Funds', '19.85%', '56.38%', '41.70%', 23, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Fixed Income Funds', '79.01%', '43.18%', '58.23%', 23, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Cash', '0.99%', '0.39%', '0.02%', 23, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Others Including Receivables', '0.15%', '0.05%', '0.05%', 23, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Equity Funds', '17.87%', '56.95%', '48.71%', 24, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Fixed Income Funds', '79.49%', '41.42%', '50.97%', 24, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Cash', '1.23%', '0.97%', '0.02%', 24, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Others including receivables', '1.41%', '0.66%', '0.30%', 24, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'T-bills', '50.28%', '46.85%', '-', 25, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'Cash', '40.61%', '19.24%', '8.02%', 25, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'Commercial Paper', '7.97%', '6.96%', '-', 25, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'PIBs', '-', '0.03%', '-', 25, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'TFCs/ Sukuks', '-', '25.48%', '-', 25, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'Stock / Equities', '-', '-', '91.91%', 25, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'Others & receivables', '1.14%', '1.44%', '0.07%', 25, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'GoP Ijarah Sukuk', '-', '10.00%', '-', 26, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'Cash', '72.42%', '52.06%', '9.99%', 26, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'Placement with Banks & DFIs', '15.86%', '16.08%', '-', 26, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'TFCs/ Sukuks', '-', '15.55%', '-', 26, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'Commercial Paper', '7.77%', '2.14%', '-', 26, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'Stock / Equities', '-', '-', '89.94%', 26, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'Others including Receivables', '3.95%', '4.17%', '0.07%', 26, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `asset_allocation`
--

DROP TABLE IF EXISTS `asset_allocation`;
CREATE TABLE IF NOT EXISTS `asset_allocation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aa_keys` varchar(191) DEFAULT NULL,
  `aa_values` varchar(191) DEFAULT NULL,
  `fund_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `asset_allocation`
--

INSERT INTO `asset_allocation` (`id`, `aa_keys`, `aa_values`, `fund_id`, `created_at`, `updated_at`) VALUES
(1, 'Cash', '37.20%', 10, '2018-07-10 06:20:59', '2018-07-10 06:20:59'),
(2, 'Placements with Banks & DFIs', '21.75%', 10, '2018-07-10 06:20:59', '2018-07-10 06:20:59'),
(3, 'T-Bills', '36.17%', 10, '2018-07-10 06:20:59', '2018-07-10 06:20:59'),
(4, 'Commercial Paper', '4.22%', 10, '2018-07-10 06:20:59', '2018-07-10 06:20:59'),
(5, 'Others Including receivables', '0.66%', 10, '2018-07-10 06:20:59', '2018-07-10 06:20:59'),
(6, 'Cash', '87.07%', 11, '2018-07-10 06:20:59', '2018-07-10 06:20:59'),
(8, 'Commercial paper', '12.14%', 11, '2018-07-10 06:20:59', '2018-07-10 06:20:59'),
(9, 'Others Including receivables', '0.79%', 11, '2018-07-10 06:20:59', '2018-07-10 06:20:59'),
(11, 'Placement with Banks & DFI', '9.18%', 12, '2018-07-10 06:20:59', '2018-07-10 06:20:59'),
(12, 'TFCs / Sukuks', '40.32%', 12, '2018-07-10 06:20:59', '2018-07-10 06:20:59'),
(14, 'Others Including receivables', '1.48%', 12, '2018-07-10 06:20:59', '2018-07-10 06:20:59'),
(15, 'Commercial Papers', '17.57%', 12, '2018-07-10 06:20:59', '2018-07-10 06:20:59'),
(16, 'Cash', '56.84%', 13, '2018-07-10 06:20:59', '2018-07-10 06:20:59'),
(18, 'T-Bills', '31.38%', 13, '2018-07-10 06:20:59', '2018-07-10 06:20:59'),
(21, 'Others Including receivables', '0.52%', 13, '2018-07-10 06:20:59', '2018-07-10 06:20:59'),
(22, 'Cash', '52.63%', 14, '2018-07-10 06:20:59', '2018-07-10 06:20:59'),
(24, 'TFCs/Sukuks', '45.68%', 14, '2018-07-10 06:20:59', '2018-07-10 06:20:59'),
(29, 'Others including receivables', '1.69%', 14, '2018-07-10 06:20:59', '2018-07-10 06:20:59'),
(30, 'Cash', '74.85%', 15, '2018-07-10 06:20:59', '2018-07-10 06:20:59'),
(34, 'T-Bills', '0.34%', 15, '2018-07-10 06:20:59', '2018-07-10 06:20:59'),
(35, 'MTS/Spread Transaction', '0.79%', 15, '2018-07-10 06:20:59', '2018-07-10 06:20:59'),
(36, 'Others including receivables', '2.05%', 15, '2018-07-10 06:20:59', '2018-07-10 06:20:59'),
(37, 'Cash', '13.30%', 16, '2018-07-10 06:20:59', '2018-07-10 06:20:59'),
(38, 'Stock/Equities', '77.89%', 16, '2018-07-10 06:20:59', '2018-07-10 06:20:59'),
(40, 'Others including receivables', '8.81%', 16, '2018-07-10 06:20:59', '2018-07-10 06:20:59'),
(41, 'Cash', '10.20%', 17, '2018-07-10 06:20:59', '2018-07-10 06:20:59'),
(42, 'Stock/Equities', '87.30%', 17, '2018-07-10 06:20:59', '2018-07-10 06:20:59'),
(43, 'Others including receivables', '2.50%', 17, '2018-07-10 06:20:59', '2018-07-10 06:20:59'),
(44, 'Cash', '15.17%', 18, '2018-07-10 06:20:59', '2018-07-10 06:20:59'),
(45, 'Stock/Equities', '84.18%', 18, '2018-07-10 06:20:59', '2018-07-10 06:20:59'),
(46, 'Others including receivables', '0.65%', 18, '2018-07-10 06:20:59', '2018-07-10 06:20:59'),
(47, 'Cash', '14.46%', 19, '2018-07-10 06:20:59', '2018-07-10 06:20:59'),
(48, 'Stock/Equities', '84.43%', 19, '2018-07-10 06:20:59', '2018-07-10 06:20:59'),
(49, 'Others including receivables', '1.11%', 19, '2018-07-10 06:20:59', '2018-07-10 06:20:59'),
(50, 'Cash', '15.57%', 20, '2018-07-10 06:20:59', '2018-07-10 06:20:59'),
(51, 'Stock/Equities', '83.63%', 20, '2018-07-10 06:20:59', '2018-07-10 06:20:59'),
(52, 'Others including receivables', '0.80%', 20, '2018-07-10 06:20:59', '2018-07-10 06:20:59'),
(53, 'Cash', '15.63%', 21, '2018-07-10 06:20:59', '2018-07-10 06:20:59'),
(55, 'TFC/ Sukuks', '30.24%', 21, '2018-07-10 06:20:59', '2018-07-10 06:20:59'),
(56, 'Stock/Equities', '25.91%', 21, '2018-07-10 06:20:59', '2018-07-10 06:20:59'),
(57, 'Others Including Receivables', '1.11%', 21, '2018-07-10 06:20:59', '2018-07-10 06:20:59'),
(58, 'Cash', '33.94%', 22, '2018-07-10 06:20:59', '2018-07-10 06:20:59'),
(60, 'TFCs/Sukuks', '11.21%', 22, '2018-07-10 06:20:59', '2018-07-10 06:20:59'),
(63, 'Stock / Equities', '53.22%', 22, '2018-07-10 06:20:59', '2018-07-10 06:20:59'),
(64, 'Others including receivables', '1.63%', 22, '2018-07-10 06:20:59', '2018-07-10 06:20:59'),
(66, 'Cash', '31.45%', 12, '2018-07-20 11:24:39', '2018-07-20 11:24:39'),
(68, 'Commercial Paper', '21.97%', 15, '2018-10-15 11:19:39', '2018-10-15 11:19:39'),
(69, 'Placements with Banks & DFIs', '11.26%', 13, '2018-11-20 09:51:34', '2018-11-20 09:51:34'),
(70, 'Placements with Banks & DFIs', '17.75%', 21, '2018-11-22 07:32:14', '2018-11-22 07:32:14'),
(71, 'Commercial Paper', '9.36%', 21, '2018-11-22 07:32:45', '2018-11-22 07:32:45');

-- --------------------------------------------------------

--
-- Table structure for table `aums1`
--

DROP TABLE IF EXISTS `aums1`;
CREATE TABLE IF NOT EXISTS `aums1` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f1` varchar(3000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `aums1`
--

INSERT INTO `aums1` (`id`, `title`, `f1`, `created_at`, `updated_at`) VALUES
(1, 'Assets Under Management (AUMs)', 'During the past 9 years, HBL AML Assets Under Management has shown a CAGR of 29.10%. AUMs grew from Rs. 5.2 billion in 2010 to Rs. 51.80 billion in Dec, 2018. This illustrates the HBL AML’s commitment towards becoming one of the leading asset management company.', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `aums2`
--

DROP TABLE IF EXISTS `aums2`;
CREATE TABLE IF NOT EXISTS `aums2` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f1` varchar(3000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `aums2`
--

INSERT INTO `aums2` (`id`, `title`, `f1`, `created_at`, `updated_at`) VALUES
(1, 'Assets Under Management (AUMs)', 'As of Dec 2018, 40.78% of our assets under management consists of Equity Schemes which offer high returns. Followed by Money Market and Fixed Income (42.42% cumulative) Schemes for those who are willing to opt for consistent returns.', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `aums_1_chart`
--

DROP TABLE IF EXISTS `aums_1_chart`;
CREATE TABLE IF NOT EXISTS `aums_1_chart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aums_1_key` varchar(191) NOT NULL,
  `aums_1_value` varchar(191) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aums_1_chart`
--

INSERT INTO `aums_1_chart` (`id`, `aums_1_key`, `aums_1_value`) VALUES
(1, 'Dec 18', '51806'),
(2, 'Dec 17', '55693'),
(3, 'Dec 16', '52406'),
(4, 'Dec 15', '20312'),
(5, 'Dec 14', '19022');

-- --------------------------------------------------------

--
-- Table structure for table `aums_2_chart`
--

DROP TABLE IF EXISTS `aums_2_chart`;
CREATE TABLE IF NOT EXISTS `aums_2_chart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aums_2_key` varchar(191) NOT NULL,
  `aums_2_value` varchar(191) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aums_2_chart`
--

INSERT INTO `aums_2_chart` (`id`, `aums_2_key`, `aums_2_value`) VALUES
(1, 'Equity Schemes', '21,126'),
(2, 'Fixed Income Schemes', '3,399'),
(3, 'Money Market Schemes', '18,577'),
(4, 'Balanced Schemes', '2,499'),
(5, 'Pension Schemes', '949'),
(6, 'Funds of Funds Schemes', '5256');

-- --------------------------------------------------------

--
-- Table structure for table `awards`
--

DROP TABLE IF EXISTS `awards`;
CREATE TABLE IF NOT EXISTS `awards` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
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

--
-- Dumping data for table `awards`
--

INSERT INTO `awards` (`id`, `title`, `f1_bold`, `f1_normal`, `f2_bold`, `f2_normal`, `f3_bold`, `f3_normal`, `f4_bold`, `f4_normal`, `f5_bold`, `f5_normal`, `f6_bold`, `f6_normal`, `f7_bold`, `f7_normal`, `f8_bold`, `f8_normal`, `f9_bold`, `f9_normal`, `f10_bold`, `f10_normal`, `created_at`, `updated_at`) VALUES
(1, 'Awards – Habib Bank Limited', 'Bank of the Year', 'in Pakistan (The Banker)', 'Safest Bank', 'in Pakistan (Global Finance)', 'Best Domestic Bank', '- Pakistan (Asiamoney)', 'Brand of the Year, Banking', '- Pakistan (World Branding Awards)', 'Best Investment Bank', 'in Pakistan (Global Finance)', 'Best Retail Bank', 'in Pakistan (Asian Banker)', 'Best Trade Finance Bank', 'in Pakistan (Global Finance)', 'Best Bank for Small Business & Agriculture', '(Institute of Bankers Pakistan IBP Awards)', 'Best Environmental, Social and Governance Bank', '(Institute of Bankers Pakistan IBP Awards)', 'The Innovators of Transaction Services', '(Global Finance, Digital Bank Awards)', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `banks`
--

DROP TABLE IF EXISTS `banks`;
CREATE TABLE IF NOT EXISTS `banks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bank` varchar(191) DEFAULT NULL,
  `bank_color` varchar(191) NOT NULL,
  `chart_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banks`
--

INSERT INTO `banks` (`id`, `bank`, `bank_color`, `chart_id`) VALUES
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

-- --------------------------------------------------------

--
-- Table structure for table `bank_details`
--

DROP TABLE IF EXISTS `bank_details`;
CREATE TABLE IF NOT EXISTS `bank_details` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `bank_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `branch_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `iban_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` int(11) NOT NULL,
  `bank_name_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `branch_name_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bank_details`
--

INSERT INTO `bank_details` (`id`, `bank_name`, `branch_name`, `account_title`, `iban_number`, `customer_id`, `bank_name_id`, `branch_name_id`, `created_at`, `updated_at`) VALUES
(1, 'abc', 'abc', '234234234234abc', '24234A234234242423423424abc', 1, '1', '1', '2020-10-06 13:44:52', '2020-10-06 13:44:52'),
(2, 'NBP', 'Kanupp Branch', 'ABCDmmm', '24234A23423424242', 2, '20', '857', '2020-10-07 06:37:13', '2020-10-07 06:37:13');

-- --------------------------------------------------------

--
-- Table structure for table `charts`
--

DROP TABLE IF EXISTS `charts`;
CREATE TABLE IF NOT EXISTS `charts` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `year` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `val` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ret` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `plan` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fund_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `charts`
--

INSERT INTO `charts` (`id`, `year`, `val`, `ret`, `plan`, `fund_id`, `created_at`, `updated_at`) VALUES
(7, '1 year', '10568', '5.68', NULL, 11, NULL, NULL),
(8, '3 year', '11444', '4.81', NULL, 11, NULL, NULL),
(9, '1 year', '10612', '6.12', NULL, 12, NULL, NULL),
(10, '3 year', '10587', '5.87', NULL, 12, NULL, NULL),
(11, '1 year', '10640', '6.40', NULL, 13, NULL, NULL),
(12, '3 year', '10629', '6.29', NULL, 13, NULL, NULL),
(13, '1 year', '10649', '6.49', NULL, 14, NULL, NULL),
(14, '3 year', '11697', '5.65', NULL, 14, NULL, NULL),
(15, '1 year', '10651', '6.51', NULL, 15, NULL, NULL),
(16, '3 year', '11973', '6.57', NULL, 15, NULL, NULL),
(17, '1 year', '9286', '-7.14', NULL, 16, NULL, NULL),
(18, '3 year', '10333', '3.33', NULL, 16, NULL, NULL),
(19, '1 year', '9416', '-5.84', NULL, 17, NULL, NULL),
(20, '3 year', '12270', '7.56', NULL, 17, NULL, NULL),
(21, '1 year', '9485', '-5.15', NULL, 18, NULL, NULL),
(22, '3 year', '11982', '6.60', NULL, 18, NULL, NULL),
(23, '1 year', '9485', '-5.15', NULL, 19, NULL, NULL),
(24, '3 year', '10509', '5.09', NULL, 19, NULL, NULL),
(25, '1 year', '8766', '-12.34', NULL, 20, NULL, NULL),
(26, '3 year', '11233', '12.33', NULL, 20, NULL, NULL),
(27, '1 year', '10197', '1.97', NULL, 21, NULL, NULL),
(28, '3 year', '10000', '0.00', NULL, 21, NULL, NULL),
(29, '1 year', '9802', '-1.98', NULL, 22, NULL, NULL),
(30, '3 year', '11051', '10.51', NULL, 22, NULL, NULL),
(33, '5 year', '12912', '5.82', NULL, 11, NULL, NULL),
(34, '5 year', '10000', '0.00', NULL, 12, NULL, NULL),
(35, '5 year', '10767', '7.67', NULL, 13, NULL, NULL),
(36, '5 year', '14372', '8.74', NULL, 14, NULL, NULL),
(37, '5 year', '14472', '8.94', NULL, 15, NULL, NULL),
(38, '5 year', '11927', '19.27', NULL, 16, NULL, NULL),
(39, '5 year', '30816', '41.61', NULL, 17, NULL, NULL),
(40, '5 year', '10000', '0.00', NULL, 18, NULL, NULL),
(41, '5 year', '12457', '24.57', NULL, 19, NULL, NULL),
(42, '5 year', '12499', '24.99', NULL, 20, NULL, NULL),
(43, '5 year', '10000', '0.00', NULL, 21, NULL, NULL),
(44, '5 year', '12748', '27.48', NULL, 22, NULL, NULL),
(45, '1 year', '10653', '6.53', NULL, 10, NULL, NULL),
(46, '3 year', '12057', '6.85', NULL, 10, NULL, NULL),
(47, '5 year', '14332', '8.66', NULL, 10, NULL, NULL),
(48, '1 year', '10553', '5.33', 'mmsf', 25, NULL, NULL),
(49, '3 year', '11462', '4.87', 'mmsf', 25, NULL, NULL),
(50, '5 year', '12977', '5.95', 'mmsf', 25, NULL, NULL),
(51, '1 year', '10479', '4.79', 'dsf', 25, NULL, NULL),
(52, '3 year', '10521', '5.21', 'dsf', 25, NULL, NULL),
(53, '5 year', '10779', '7.79', 'dsf', 25, NULL, NULL),
(54, '1 year', '9506', '-4.94', 'esf', 25, NULL, NULL),
(55, '3 year', '13039', '10.12', 'esf', 25, NULL, NULL),
(56, '5 year', '38521', '57.01', 'esf', 25, NULL, NULL),
(57, '1 year', '10456', '4.56%', 'mmsf', 26, NULL, NULL),
(58, '3 year', '11231', '4.10', 'mmsf', 26, NULL, NULL),
(59, '5 year', '12331', '4.66', 'mmsf', 26, NULL, NULL),
(60, '1 year', '10403', '4.03', 'dsf', 26, NULL, NULL),
(61, '3 year', '10424', '4.24', 'dsf', 26, NULL, NULL),
(62, '5 year', '10488', '4.88', 'dsf', 26, NULL, NULL),
(63, '1 year', '9640', '-3.60', 'esf', 26, NULL, NULL),
(64, '3 year', '13135', '10.44', 'esf', 26, NULL, NULL),
(65, '5 year', '43493', '66.95', 'esf', 26, NULL, NULL),
(66, '90 Days', '9965', '-0.35', 'cap', 23, NULL, NULL),
(67, '180 Days', '10157', '1.57', 'cap', 23, NULL, NULL),
(68, '1 Year', '10339', '3.39', 'cap', 23, NULL, NULL),
(69, '90 Days', '9469', '-5.31', 'aap', 23, NULL, NULL),
(70, '180 Days', '9721', '-2.79', 'aap', 23, NULL, NULL),
(71, '1 Year', '9663', '-3.37', 'aap', 23, NULL, NULL),
(72, '90 Days', '9641', '-3.59', 'sap', 23, NULL, NULL),
(73, '180 Days', '9890', '-1.10', 'sap', 23, NULL, NULL),
(74, '1 Year', '9868', '-1.32', 'sap', 23, NULL, NULL),
(75, '90 Days', '9943', '-0.57', 'cap', 24, NULL, NULL),
(76, '180 Days', '10117', '1.17', 'cap', 24, NULL, NULL),
(77, '1 Year', '10326', '3.26', 'cap', 24, NULL, NULL),
(78, '90 Days', '9379', '-6.21', 'aap', 24, NULL, NULL),
(79, '180 Days', '9564', '-4.36', 'aap', 24, NULL, NULL),
(80, '1 Year', '9472', '-5.28', 'aap', 24, NULL, NULL),
(81, '90 Days', '9499', '-5.01', 'sap', 24, NULL, NULL),
(82, '180 Days', '9674', '-3.26', 'sap', 24, NULL, NULL),
(83, '1 Year', '9628', '-3.72', 'sap', 24, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
CREATE TABLE IF NOT EXISTS `customers` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
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
  `occ_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `designation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `pob_city_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pob_country_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city1_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country1_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `marital_status_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `soi_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `occupation_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `average_annual_income_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `qq`, `name`, `father_name`, `mother_name`, `dob`, `cnic`, `cnic_attachment`, `cnic_issue_date`, `pob_city`, `pob_country`, `email`, `cell`, `occupation`, `occ_name`, `designation`, `department`, `org_emp_bes_name`, `working_experience`, `age_of_business`, `education`, `marital_status`, `no_of_dependants`, `public_figure`, `average_annual_income`, `refused_account_by_institute`, `high_value_item`, `soi`, `soi_attachment`, `address`, `city1`, `country1`, `zakat`, `zakat_options`, `zakat_certificate`, `pob_city_id`, `pob_country_id`, `city1_id`, `country1_id`, `marital_status_id`, `soi_id`, `occupation_id`, `average_annual_income_id`, `created_at`, `updated_at`) VALUES
(1, 'pk', 'abcabc', 'abcabc', 'abcabc', '1986-11-25', '47623-4877347-9', '120-SM544611.jpg', '2020-10-06', 'KARACHIsdabc', 'Pakistandfabc', 'FSDabcaaasaFLJK@GMAIL.COM', '031031031301301asa', 'Businesssasasabc', NULL, NULL, NULL, NULL, NULL, NULL, 'Undergraduateasasabc', 'Married', '509', 'no', '1-10mn', 'yes', 'yes', 'Investmentsqwqwqw', '220-SM637538.jpg', 'TTTTaddsdsdabc', 'KARACHIasasasabc', 'Pakistanasasabc', 'yes', NULL, 'no_image.png', '1', '1', '1', '1', 'DAD124CE-67D8-4EBD-A71E-A30CC2AB21BE', '0140405E-779F-4090-9089-A6237B4ED75C', '00769A6D-1403-44D9-BE2D-C75A4FB6A177', '185AB59D-4173-4FD4-9886-96D461B89876', '2020-10-06 13:44:52', '2020-10-06 13:44:52'),
(2, 'pk', 'fine good', 'abc', 'sdsd', '1997-01-02', '12345-6543213-2', '113.jpg', '2019-05-02', 'Centerbury', 'United States of America', 'ABCDaD@GMAIL.COM', '03331232222', 'Retired', NULL, NULL, NULL, NULL, NULL, NULL, 'Undergraduate', 'Married', '42', 'no', '1mn-10mn', 'no2', 'no2', 'Salaried', 'Capture.PNG', 'KHI222', 'Vineland', 'United States of America', 'yes', 'file', '113.jpg', '224', '5', '372', '5', 'DD81959B-9930-48E4-BA55-50D8CC8E8F5A', '2A38CAF9-9FB7-4FD5-8DDD-03979085F835', 'DC73D20C-2D83-4EBC-AE38-A64FF93B056D', '6527E5BC-AACC-4DE3-9D0D-9D8C1ADF4F45', '2020-10-07 06:37:12', '2020-10-07 06:37:12');

-- --------------------------------------------------------

--
-- Table structure for table `discussions`
--

DROP TABLE IF EXISTS `discussions`;
CREATE TABLE IF NOT EXISTS `discussions` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `form_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `msg` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `receiver_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `discussions`
--

INSERT INTO `discussions` (`id`, `form_id`, `msg`, `receiver_id`, `sender_id`, `created_at`, `updated_at`) VALUES
(1, 'SA1893', 'ok', '78', '79', '2020-10-06 13:46:37', '2020-10-06 13:46:37'),
(2, 'SA1893', 'teseting', '78', '79', '2020-10-06 14:16:11', '2020-10-06 14:16:11'),
(3, 'SA1893', 'teseting', '78', '79', '2020-10-06 14:20:05', '2020-10-06 14:20:05'),
(4, 'SA1893', 'teseting', '78', '79', '2020-10-06 14:20:34', '2020-10-06 14:20:34'),
(5, 'SA1893', 'iik', '78', '79', '2020-10-06 14:27:46', '2020-10-06 14:27:46'),
(6, 'SA1893', 'sdlfkjslfkjsdlfk', '79', '78', '2020-10-06 14:36:29', '2020-10-06 14:36:29'),
(7, 'SA1893', 'sdlfkjslfkjsdlfk', '79', '78', '2020-10-06 14:40:45', '2020-10-06 14:40:45'),
(8, 'SA1893', 'acbb', '79', '78', '2020-10-06 14:42:22', '2020-10-06 14:42:22'),
(9, 'SA1893', 'abc', '79', '78', '2020-10-06 14:42:46', '2020-10-06 14:42:46'),
(10, 'SA1893', 'f', '79', '78', '2020-10-06 14:43:34', '2020-10-06 14:43:34'),
(11, 'SA1893', 'bahi msla solve hogya', '79', '78', '2020-10-06 14:44:07', '2020-10-06 14:44:07'),
(12, 'SA1893', 'chl beta', '79', '78', '2020-10-06 14:46:00', '2020-10-06 14:46:00'),
(13, 'SA1893', 'ddd', '79', '78', '2020-10-06 14:51:18', '2020-10-06 14:51:18'),
(14, 'SA1893', 'hdhdhd', '79', '78', '2020-10-06 14:57:07', '2020-10-06 14:57:07'),
(15, 'SA1893', 'ddd', '79', '78', '2020-10-06 14:57:51', '2020-10-06 14:57:51'),
(16, 'SA1893', 'done', '79', '78', '2020-10-06 15:09:26', '2020-10-06 15:09:26'),
(17, 'Web2633', 'Filled', '78', '79', '2020-10-07 06:44:30', '2020-10-07 06:44:30'),
(18, 'Web2633', 'ok', '79', '78', '2020-10-07 06:48:30', '2020-10-07 06:48:30'),
(19, 'Web2633', 'All fields changed', '79', '78', '2020-10-07 07:19:05', '2020-10-07 07:19:05'),
(20, 'Web2633', 'ok', '79', '78', '2020-10-07 07:22:34', '2020-10-07 07:22:34'),
(21, 'Web2633', 'business', '79', '78', '2020-10-08 06:47:52', '2020-10-08 06:47:52'),
(22, 'Web2633', 'Private Service', '79', '78', '2020-10-08 06:54:13', '2020-10-08 06:54:13'),
(23, 'Web2633', 'std', '79', '78', '2020-10-08 07:22:58', '2020-10-08 07:22:58'),
(24, 'Web2633', 'others', '79', '78', '2020-10-08 07:23:27', '2020-10-08 07:23:27'),
(25, 'Web2633', 'ret', '79', '78', '2020-10-08 07:43:05', '2020-10-08 07:43:05'),
(26, 'Web2633', 'ok', '79', '78', '2020-10-08 08:37:44', '2020-10-08 08:37:44'),
(27, 'Web2633', 'jkhkj', '79', '78', '2020-10-08 08:39:42', '2020-10-08 08:39:42'),
(28, 'Web2633', 'dsadsdad', '79', '78', '2020-10-08 08:40:55', '2020-10-08 08:40:55'),
(29, 'Web2633', 'Undergraduade', '79', '78', '2020-10-08 08:54:06', '2020-10-08 08:54:06'),
(30, 'Web2633', 'ds', '79', '78', '2020-10-08 08:58:27', '2020-10-08 08:58:27'),
(31, 'Web2633', 'pg', '79', '78', '2020-10-08 09:40:09', '2020-10-08 09:40:09'),
(32, 'Web2633', 'c', '79', '78', '2020-10-08 10:44:24', '2020-10-08 10:44:24'),
(33, 'Web2633', 'soi', '79', '78', '2020-10-08 11:04:04', '2020-10-08 11:04:04'),
(34, 'Web2633', 'sbp', '79', '78', '2020-10-08 11:30:04', '2020-10-08 11:30:04'),
(35, 'Web2633', 'jhgj', '79', '78', '2020-10-08 11:40:09', '2020-10-08 11:40:09'),
(36, 'Web2633', 'ok', '79', '78', '2020-10-08 11:40:32', '2020-10-08 11:40:32'),
(37, 'Web2633', 'odood', '79', '78', '2020-10-08 11:53:52', '2020-10-08 11:53:52'),
(38, 'Web2633', 'fund', '79', '78', '2020-10-08 12:43:16', '2020-10-08 12:43:16'),
(39, 'Web2633', 'fund', '79', '78', '2020-10-08 12:44:54', '2020-10-08 12:44:54'),
(40, 'Web2633', 'aAaaa', '79', '78', '2020-10-08 12:48:20', '2020-10-08 12:48:20'),
(41, 'Web2633', 'dd', '79', '78', '2020-10-08 12:48:42', '2020-10-08 12:48:42'),
(42, 'Web2633', 'h', '79', '78', '2020-10-08 12:50:08', '2020-10-08 12:50:08'),
(43, 'Web2633', 'a', '79', '78', '2020-10-08 12:52:02', '2020-10-08 12:52:02'),
(44, 'Web2633', 'q', '79', '78', '2020-10-08 13:07:07', '2020-10-08 13:07:07'),
(45, 'Web2633', 'pk', '79', '78', '2020-10-08 13:18:43', '2020-10-08 13:18:43'),
(46, 'Web2633', 'oq', '79', '78', '2020-10-08 13:24:58', '2020-10-08 13:24:58'),
(47, 'Web2633', 'changes dropdown', '79', '78', '2020-10-13 12:43:59', '2020-10-13 12:43:59'),
(48, 'Web2633', 'okkk', '79', '78', '2020-10-13 12:49:06', '2020-10-13 12:49:06'),
(49, 'Web2633', 'ddd', '79', '78', '2020-10-13 12:54:48', '2020-10-13 12:54:48'),
(50, 'Web2633', 'jksdf', '79', '78', '2020-10-13 13:45:11', '2020-10-13 13:45:11');

-- --------------------------------------------------------

--
-- Table structure for table `email_activities`
--

DROP TABLE IF EXISTS `email_activities`;
CREATE TABLE IF NOT EXISTS `email_activities` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `msg` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_activities`
--

INSERT INTO `email_activities` (`id`, `status`, `msg`, `action`, `created_at`, `updated_at`) VALUES
(1, 'success', 'mail has been sent successfully', 'cbc done', '2020-08-20 20:22:33', NULL),
(2, 'success', 'mail has been sent successfully', 'cbc done', '2020-08-20 20:22:34', NULL),
(3, 'success', 'mail has been sent successfully', 'cbc done', '2020-08-20 20:22:34', NULL),
(4, 'success', 'mail has been sent successfully', 'send to cbc', '2020-08-20 20:25:27', NULL),
(5, 'success', 'mail has been sent successfully', 'send to cbc', '2020-08-20 20:25:28', NULL),
(6, 'success', 'mail has been sent successfully', 'send to cbc', '2020-08-20 20:25:29', NULL),
(7, 'success', 'mail has been sent successfully', 'send back to changes', '2020-08-20 20:40:17', NULL),
(8, 'success', 'mail has been sent successfully', 'send back to changes', '2020-08-20 20:40:18', NULL),
(9, 'success', 'mail has been sent successfully', 'form creation', '2020-10-01 23:15:37', NULL),
(10, 'success', 'mail has been sent successfully', 'form creation', '2020-10-01 23:15:38', NULL),
(11, 'success', 'mail has been sent successfully', 'form creation', '2020-10-01 23:15:40', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `exp`
--

DROP TABLE IF EXISTS `exp`;
CREATE TABLE IF NOT EXISTS `exp` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `shd` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fund_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exp`
--

INSERT INTO `exp` (`id`, `shd`, `title`, `desc`, `fund_id`, `created_at`, `updated_at`) VALUES
(1, 'As of Dec 31, 2018', 'Explanation:', 'If you would have invested Rs. 10,000/- each for three different tenures of 1 Year, 3 Years and 5 Years; the cumulative value of your investment would have been as per the above chart.', 10, NULL, NULL),
(2, 'As of Dec 31, 2018', 'Explanation:', 'If you would have invested Rs. 10,000/- each for three different tenures of 1 Year, 3 Years and 5 Years; the cumulative value of your investment would have been as per the above chart.', 11, NULL, NULL),
(3, 'As of Dec 31, 2018', 'Explanation:', 'If you would have invested Rs. 10,000/- each for three different tenures of 1 Year, 3 Years and 5 Years; the cumulative value of your investment would have been as per the above chart.', 12, '0000-00-00 00:00:00', NULL),
(4, 'As of Dec 31, 2018', 'Explanation:', 'If you would have invested Rs. 10,000/- each for three different tenures of 1 Year, 3 Years and 5 Years; the cumulative value of your investment would have been as per the above chart.', 13, '0000-00-00 00:00:00', NULL),
(5, 'As of Dec 31, 2018', 'Explanation:', 'If you would have invested Rs. 10,000/- each for three different tenures of 1 Year, 3 Years and 5 Years; the cumulative value of your investment would have been as per the above chart.', 14, NULL, NULL),
(6, 'As of Dec 31, 2018', 'Explanation:', 'If you would have invested Rs. 10,000/- each for three different tenures of 1 Year, 3 Years and 5 Years; the cumulative value of your investment would have been as per the above chart.', 15, NULL, NULL),
(7, 'As of Dec 31, 2018', 'Explanation:', 'If you would have invested Rs. 10,000/- each for three different tenures of 1 Year, 3 Years and 5 Years; the cumulative value of your investment would have been as per the above chart.', 16, NULL, NULL),
(8, 'As of Dec 31, 2018', 'Explanation:', 'If you would have invested Rs. 10,000/- each for three different tenures of 1 Year, 3 Years and 5 Years; the cumulative value of your investment would have been as per the above chart.', 17, NULL, NULL),
(9, 'As of Dec 31, 2018', 'Explanation:', 'If you would have invested Rs. 10,000/- each for three different tenures of 1 Year, 3 Years and 5 Years; the cumulative value of your investment would have been as per the above chart.', 18, NULL, NULL),
(10, 'As of Dec 31 2018', 'Explanation:', 'If you would have invested Rs. 10,000/- each for three different tenures of 1 Year, 3 Years and 5 Years; the cumulative value of your investment would have been as per the above chart.', 19, NULL, NULL),
(11, 'As of Dec 31, 2018', 'Explanation:', 'If you would have invested Rs. 10,000/- each for three different tenures of 1 Year, 3 Years and 5 Years; the cumulative value of your investment would have been as per the above chart.', 20, NULL, NULL),
(12, 'As of Dec 31, 2018', 'Explanation:', 'If you would have invested Rs. 10,000/- for one year; the cumulative value of your investment would have been as per the above chart.', 21, NULL, NULL),
(13, 'As of Dec 31, 2018', 'Explanation:', 'If you would have invested Rs. 10,000/- each for three different tenures of 1 Year, 3 Years and 5 Years; the cumulative value of your investment would have been as per the above chart.', 22, NULL, NULL),
(14, 'As of Dec 31, 2018', 'Explanation:', 'If you would have invested Rs. 10,000/- each for three different tenures of 1 Year, 3 Years and 5 Years; the cumulative value of your investment would have been as per the above chart.', 23, NULL, NULL),
(15, 'As of Dec 31, 2018', 'Explanation:', 'If you would have invested Rs. 10,000/- each for three different tenures of 1 Year, 3 Years and 5 Years; the cumulative value of your investment would have been as per the above chart.', 24, NULL, NULL),
(16, 'As of Dec 31, 2018', 'Explanation:', 'If you would have invested Rs. 10,000/- for one year; the cumulative value of your investment would have been as per the above chart.', 25, NULL, NULL),
(17, 'As of Dec 31, 2018', 'Explanation:', 'If you would have invested Rs. 10,000/- each for three different tenures of 1 Year, 3 Years and 5 Years; the cumulative value of your investment would have been as per the above chart.', 26, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fatca_details`
--

DROP TABLE IF EXISTS `fatca_details`;
CREATE TABLE IF NOT EXISTS `fatca_details` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `multiple_nat` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nats` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fatca_details`
--

INSERT INTO `fatca_details` (`id`, `multiple_nat`, `nats`, `green_card`, `tax_resi`, `for_citi`, `co_ma`, `co_mp`, `attor`, `attor_addr`, `trans_fund`, `wf`, `wform`, `wform_options`, `customer_id`, `created_at`, `updated_at`) VALUES
(1, 'no', NULL, 'no', 'no', 'no', NULL, NULL, 'no', NULL, 'no', 'no', 'no_image.png', NULL, 1, '2020-10-06 13:44:52', '2020-10-06 13:44:52'),
(2, 'no', NULL, 'no', 'no', 'no', NULL, NULL, 'no', NULL, 'no', 'no', 'no_image.png', NULL, 2, '2020-10-07 06:37:13', '2020-10-07 06:37:13');

-- --------------------------------------------------------

--
-- Table structure for table `features_benefits`
--

DROP TABLE IF EXISTS `features_benefits`;
CREATE TABLE IF NOT EXISTS `features_benefits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fb_bullets_rt` varchar(300) DEFAULT NULL,
  `fb_bullets_lt` varchar(300) DEFAULT NULL,
  `fund_id` int(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `features_benefits`
--

INSERT INTO `features_benefits` (`id`, `fb_bullets_rt`, `fb_bullets_lt`, `fund_id`, `created_at`, `updated_at`) VALUES
(1, 'Easy to Invest.', 'No back end load.', 10, '2018-07-07 06:47:22', '2018-07-07 06:47:22'),
(2, 'Safe Investment.', 'Actively managed by experienced Fund Managers.', 10, '2018-07-07 06:47:22', '2018-07-07 06:47:22'),
(3, 'Stable returns.', NULL, 10, '2018-07-07 06:47:22', '2018-07-07 06:47:22'),
(4, 'Timely redeemable.', NULL, 10, '2018-07-07 06:47:22', '2018-07-07 06:47:22'),
(7, 'Easy to Invest.', 'No back end load.', 11, '2018-07-07 06:47:22', '2018-07-07 06:47:22'),
(8, 'Actively managed by experienced Fund Managers.', 'Safe Investment.', 11, '2018-07-07 06:47:22', '2018-07-07 06:47:22'),
(9, 'Stable returns.', 'Actively managed by experienced Fund Managers.', 11, '2018-07-07 06:47:22', '2018-07-07 06:47:22'),
(10, 'Timely redeemable.', NULL, 11, '2018-07-07 06:47:22', '2018-07-07 06:47:22'),
(13, 'Easy to Invest.', 'No back end load.', 12, '2018-07-07 06:47:22', '2018-07-07 06:47:22'),
(14, 'Safe Investment.', 'Actively managed by experienced Fund Managers.', 12, '2018-07-07 06:47:22', '2018-07-07 06:47:22'),
(15, 'Stable returns.', NULL, 12, '2018-07-07 06:47:22', '2018-07-07 06:47:22'),
(16, 'Timely redeemable.', NULL, 12, '2018-07-07 06:47:22', '2018-07-07 06:47:22'),
(19, 'Easy to Invest.', 'No back end load.', 13, '2018-07-07 06:47:22', '2018-07-07 06:47:22'),
(20, 'Safe Investment.', 'Actively managed by experienced Fund Managers.', 13, '2018-07-07 06:47:22', '2018-07-07 06:47:22'),
(21, 'Stable returns.', NULL, 13, '2018-07-07 06:47:22', '2018-07-07 06:47:22'),
(22, 'Timely redeemable.', NULL, 13, '2018-07-07 06:47:22', '2018-07-07 06:47:22'),
(25, 'Easy to Invest.', 'No back end load.', 14, '2018-07-07 06:47:22', '2018-07-07 06:47:22'),
(26, 'Safe Investment.', 'Actively managed by experienced Fund Managers.', 14, '2018-07-07 06:47:22', '2018-07-07 06:47:22'),
(27, 'Stable returns.', NULL, 14, '2018-07-07 06:47:22', '2018-07-07 06:47:22'),
(28, 'Timely redeemable.', NULL, 14, '2018-07-07 06:47:22', '2018-07-07 06:47:22'),
(31, 'Easy to Invest.', 'No back end load.', 15, '2018-07-07 06:47:22', '2018-07-07 06:47:22'),
(32, 'Safe Investment.', 'Actively managed by experienced Fund Managers.', 15, '2018-07-07 06:47:22', '2018-07-07 06:47:22'),
(33, 'Stable returns.', NULL, 15, '2018-07-07 06:47:22', '2018-07-07 06:47:22'),
(34, 'Timely redeemable.', NULL, 15, '2018-07-07 06:47:22', '2018-07-07 06:47:22'),
(37, 'Easy to Invest.', 'Selective off-index allocations to generate alpha.\r\n', 16, '2018-07-09 16:08:55', '2018-07-09 16:08:55'),
(38, 'Diversified portfolio with a focus on high-quality blue-chip stocks.\r\n', 'Actively managed by experienced Fund Managers.\r\n', 16, '2018-07-09 16:08:55', '2018-07-09 16:08:55'),
(39, 'No back end load.', NULL, 16, '2018-07-07 06:47:22', '2018-07-07 06:47:22'),
(42, 'Easy to Invest.', 'Selective off-index allocations to generate alpha.\r\n', 17, '2018-07-09 16:08:55', '2018-07-09 16:08:55'),
(43, 'Diversified portfolio with a focus on high-quality blue-chip stocks.\r\n', 'Actively managed by experienced Fund Managers.\r\n', 17, '2018-07-09 16:08:55', '2018-07-09 16:08:55'),
(44, 'No back end load.', NULL, 17, '2018-07-07 06:47:22', '2018-07-07 06:47:22'),
(47, 'Easy to Invest.', 'Selective off-index allocations to generate alpha.\r\n', 18, '2018-07-09 16:08:55', '2018-07-09 16:08:55'),
(48, 'Diversified portfolio with a focus on high-quality blue-chip stocks.\r\n', 'Actively managed by experienced Fund Managers.\r\n', 18, '2018-07-09 16:08:55', '2018-07-09 16:08:55'),
(49, 'No back end load.', NULL, 18, '2018-07-07 06:47:22', '2018-07-07 06:47:22'),
(52, 'Easy to Invest.', 'Selective off-index allocations to generate alpha.\r\n', 19, '2018-07-09 16:08:55', '2018-07-09 16:08:55'),
(53, 'Diversified portfolio with a focus on high-quality blue-chip stocks.\r\n', 'Actively managed by experienced Fund Managers.\r\n', 19, '2018-07-09 16:08:55', '2018-07-09 16:08:55'),
(54, 'No back end load.', NULL, 19, '2018-07-07 06:47:22', '2018-07-07 06:47:22'),
(57, 'Easy to Invest.', 'Selective off-index allocations to generate alpha.\r\n', 20, '2018-07-09 16:08:55', '2018-07-09 16:08:55'),
(58, 'Diversified portfolio with a focus on high-quality blue-chip stocks.\r\n', 'Actively managed by experienced Fund Managers.\r\n', 20, '2018-07-09 16:08:55', '2018-07-09 16:08:55'),
(59, 'No back end load.', NULL, 20, '2018-07-07 06:47:22', '2018-07-07 06:47:22'),
(62, 'Easy to Invest.', 'Up to 30% exposure in listed stocks.\r\n', 21, '2018-07-07 06:47:22', '2018-07-07 06:47:22'),
(63, 'Up to 30% exposure in listed stocks', 'No back end load.', 21, '2018-07-09 16:08:55', '2018-07-09 16:08:55'),
(64, 'Diversified into money market/fixed income and equities asset classes', 'Actively managed by experienced Fund Managers.', 21, '2018-07-09 16:08:55', '2018-07-09 16:08:55'),
(68, 'Easy to Invest.', 'Time redeemable', 22, '2018-07-07 06:47:22', '2018-07-07 06:47:22'),
(69, 'Safe Investment.', 'No back end load.\r\n', 22, '2018-07-09 16:08:55', '2018-07-09 16:08:55'),
(70, 'Better Returns than Money Market & Fixed \r\nIncome Funds.', 'Up to 70% exposure in listed stocks.\r\n', 22, '2018-07-09 16:08:55', '2018-07-09 16:08:55'),
(71, NULL, 'Actively managed by experienced Fund Managers.\r\n', 22, '2018-07-07 06:47:22', '2018-07-07 06:47:22'),
(74, NULL, NULL, 23, '2018-07-07 06:47:22', '2018-07-07 06:47:22'),
(75, 'Actively managed by experienced Fund Managers', NULL, 23, '2018-07-09 16:08:55', '2018-07-09 16:08:55'),
(76, 'Easy to Invest.', 'Diversified into defensive (money market/fixed income) and aggressive (equities) assets classes.', 23, '2018-07-09 16:08:55', '2018-07-09 16:08:55'),
(77, 'Easy to Invest.', 'Diversified into defensive (money market/fixed income) and aggressive (equities) assets classes.', 24, '2018-07-07 06:47:22', '2018-07-07 06:47:22'),
(78, 'Actively managed by experienced Fund Managers.', NULL, 24, '2018-07-09 16:08:55', '2018-07-09 16:08:55'),
(79, NULL, NULL, 24, '2018-07-09 16:08:55', '2018-07-09 16:08:55'),
(80, 'Invest as per the investor’s risk appetite.', 'No Back End Load', 25, '2018-07-07 06:47:22', '2018-07-07 06:47:22'),
(81, 'Competitive Returns.', 'Professional Management.\r\n', 25, '2018-07-09 16:08:55', '2018-07-09 16:08:55'),
(82, 'Tax Credit.', 'Option to withdraw entire or partial amount 50% free of tax at retirement.\r\n', 25, '2018-07-09 16:08:55', '2018-07-09 16:08:55'),
(83, 'Invest as per the investor’s risk appetite.', 'No Back End Load', 26, '2018-07-07 06:47:22', '2018-07-07 06:47:22'),
(84, 'Competitive Returns.', 'Professional Management.\r\n', 26, '2018-07-09 16:08:55', '2018-07-09 16:08:55'),
(85, 'Tax Credit.', 'Option to withdraw entire or partial amount 50% free of tax at retirement.', 26, '2018-07-09 16:08:55', '2018-07-09 16:08:55');

-- --------------------------------------------------------

--
-- Table structure for table `fi`
--

DROP TABLE IF EXISTS `fi`;
CREATE TABLE IF NOT EXISTS `fi` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
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

--
-- Dumping data for table `fi`
--

INSERT INTO `fi` (`id`, `fi_k_1`, `fi_v_1`, `fi_k_2`, `fi_v_2`, `fi_k_3`, `fi_v_3`, `fi_k_4`, `fi_v_4`, `fi_k_5`, `fi_v_5`, `fund_id`, `created_at`, `updated_at`) VALUES
(1, 'Fund Size (PKR Mn)', '10,158', 'Minimum Investment (PKR)', '1,000', 'Subsequent Investment (PKR)', '1,000', 'Front end Load', 'Up to 1% of NAV', 'Back end Load', 'Nil', 10, NULL, NULL),
(2, 'Fund Size (PKR Mn)', '967', 'Minimum Investment (PKR)', '1,000', 'Subsequent Investment (PKR)', '1,000', 'Front end Load', 'Nil', 'Back end Load', 'Nil', 11, NULL, NULL),
(3, 'Fund Size (PKR Mn)', '1,217', 'Minimum Investment (PKR)', '1,000', 'Subsequent Investment (PKR)', '1,000', 'Front end Load', 'Up to 2.00%', 'Back end Load', 'Nil', 12, NULL, NULL),
(4, 'Fund Size (PKR Mn)', '7,452', 'Minimum Investment (PKR)', '1,000', 'Subsequent Investment (PKR)', '1,000', 'Front end Load', 'Nil', 'Back end Load', 'Nil', 13, NULL, NULL),
(5, 'Fund Size (PKR Mn)', '1,973', 'Minimum Investment (PKR)', '1,000', 'Subsequent Investment (PKR)', '500', 'Front end Load', '1.50%', 'Back end Load', 'Nil', 14, NULL, NULL),
(6, 'Fund Size (PKR Mn)', '209', 'Minimum Investment (PKR)', '1,000', 'Subsequent Investment (PKR)', '1,000', 'Front end Load', 'Up to 2.00%', 'Back end Load', 'Nil', 15, NULL, NULL),
(7, 'Fund Size (PKR Mn)', '3,150', 'Minimum Investment (PKR)', '1,000', 'Subsequent Investment (PKR)', '1,000', 'Front end Load', 'Up to 2.50%', 'Back end Load', 'Nil', 16, NULL, NULL),
(8, 'Fund Size (PKR Mn)', '270', 'Minimum Investment (PKR)', '1,000', 'Subsequent Investment (PKR)', '1000', 'Front end Load', 'Up to 2.00%', 'Back end Load', 'Nil', 17, NULL, NULL),
(9, 'Fund Size (PKR Mn)', '292', 'Minimum Investment (PKR)', '1,000', 'Subsequent Investment (PKR)', '1,000', 'Front end Load', '2.00%', 'Back end Load', 'Nil', 18, NULL, NULL),
(10, 'Fund Size (PKR Mn)', '1,025', 'Minimum Investment (PKR)', '1,000', 'Subsequent Investment (PKR)', '1,000', 'Front end Load', '2.00%', 'Back end Load', 'Nil', 19, NULL, NULL),
(11, 'Fund Size (PKR Mn)', '834', 'Minimum Investment (PKR)', '1,000', 'Subsequent Investment (PKR)', '1,000', 'Front end Load', 'Up to 2.00%', 'Back end Load', 'Nil', 20, NULL, NULL),
(12, 'Fund Size (PKR Mn)', '2,233', 'Minimum Investment (PKR)', '1,000', 'Subsequent Investment (PKR)', '1,000', 'Front end Load', 'Up to 2.00%', 'Back end Load', 'Nil', 21, NULL, NULL),
(13, 'Fund Size (PKR Mn)', '266', 'Minimum Investment (PKR)', '1,000', 'Subsequent Investment (PKR)', '1,000', 'Front end Load', '2.00%', 'Back end Load', 'Nil', 22, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fi1`
--

DROP TABLE IF EXISTS `fi1`;
CREATE TABLE IF NOT EXISTS `fi1` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
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

--
-- Dumping data for table `fi1`
--

INSERT INTO `fi1` (`id`, `fi_k1`, `fi_k1v1`, `fi_k1v2`, `fi_k1v3`, `fi_k2`, `fi_k2v1`, `fi_k2v2`, `fi_k2v3`, `fi_k3`, `fi_k3v1`, `fi_k3v2`, `fi_k3v3`, `fi_k4`, `fi_k4v1`, `fi_k4v2`, `fi_k4v3`, `fi_k5`, `fi_k5v1`, `fi_k5v2`, `fi_k5v3`, `fund_id`, `created_at`, `updated_at`) VALUES
(1, 'Fund Size (PKR Mn)', '25', '194', '4,138', 'Minimum Investment (PKR)', NULL, 'Rs. 10,000/-', NULL, 'Subsequent Investment', NULL, 'Rs. 1000/-', NULL, 'Front end Load', 'Up to 2%', 'Up to 2%', 'Up to 2%', 'Back end Load', 'Nil', 'Nil', '1% for Year 1 & 0.5% thereon', 23, NULL, NULL),
(2, 'Fund Size (PKR Mn)', '67', '172', '192', 'Minimum Investment (PKR)', NULL, 'Rs. 10,000/-', NULL, 'Subsequent Investment', NULL, 'Rs. 1000/-', NULL, 'Front end Load', 'Up to 2%', 'Up to 2%', 'Up to 2%', 'Back end Load', 'Nil', 'Nil', '1% for Year & 0.5% thereon', 24, NULL, NULL),
(3, 'Fund Size (PKR Mn)', '166', '174', '219', 'Minimum Investment (PKR)', NULL, 'Rs. 1,000/-', NULL, 'Subsequent Investment', NULL, 'Rs. 1,000/-', NULL, 'Front end Load', NULL, 'Max 3.00%', NULL, 'Back end Load', NULL, 'Nil', NULL, 25, NULL, NULL),
(4, 'Fund Size (PKR Mn)', '94', '111', '185', 'Minimum Investment (PKR)', NULL, 'Rs. 1,000/-', NULL, 'Subsequent Investment', NULL, 'Rs. 1,000/-', NULL, 'Front end Load', 'Up to 2%', 'Up to 2%', 'Up to 2%', 'Back end Load', 'Nil', 'Nil', '1% for Year 1 & 0.5% thereon', 26, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fields`
--

DROP TABLE IF EXISTS `fields`;
CREATE TABLE IF NOT EXISTS `fields` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `form_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_details` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_details` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `investment_details` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other_details` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fatca_details` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fields`
--

INSERT INTO `fields` (`id`, `form_id`, `customer_details`, `bank_details`, `investment_details`, `other_details`, `fatca_details`, `user_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'SA1893', '[\"name\",\"father_name\",\"mother_name\",\"dob\",\"cnic\",\"cnic_attachment\",\"cnic_issue_date\",\"pob_country\",\"pob_city\",\"email\",\"cell\",\"occupation\",\"occ_name\",\"designation\",\"department\",\"working_experience\",\"org_emp_bes_name\",\"age_of_business\",\"education\",\"marital_status\",\"no_of_dependants\",\"public_figure\",\"average_annual_income\",\"refused_account_by_institute\",\"high_value_item\",\"soi\",\"soi_attachment\",\"address\",\"country1\",\"city1\",\"zakat\",\"zakat_options\"]', '[\"bank_name\",\"branch_name\",\"account_title\",\"iban_number\"]', '[\"fund_name\",\"amount\",\"payment_mode\",\"attachment\",\"bank_name\",\"instrument_number\"]', '[\"asf\",\"dpo\",\"type_of_units\"]', '[\"multiple_nat\",\"green_card\",\"for_citi\",\"co_ma\",\"co_mp\",\"attor\",\"trans_fund\",\"wf\"]', '78', 'checked', '2020-10-06 14:27:46', '2020-10-06 14:27:46'),
(2, 'Web2633', '[\"name\",\"father_name\",\"mother_name\",\"dob\",\"cnic\",\"cnic_attachment\",\"cnic_issue_date\",\"pob_country\",\"pob_city\",\"email\",\"cell\",\"occupation\",\"occ_name\",\"designation\",\"department\",\"working_experience\",\"org_emp_bes_name\",\"age_of_business\",\"education\",\"marital_status\",\"no_of_dependants\",\"public_figure\",\"average_annual_income\",\"refused_account_by_institute\",\"high_value_item\",\"soi\",\"soi_attachment\",\"address\",\"country1\",\"city1\",\"zakat\",\"zakat_options\",\"zakat_certificate\"]', '[\"bank_name\",\"branch_name\",\"account_title\",\"iban_number\"]', '[\"fund_name\",\"amount\",\"payment_mode\",\"attachment\",\"bank_name\",\"instrument_number\"]', '[\"asf\",\"dpo\",\"type_of_units\"]', '[\"multiple_nat\",\"green_card\",\"for_citi\",\"co_ma\",\"co_mp\",\"attor\",\"trans_fund\",\"wf\"]', '78', 'checked', '2020-10-07 06:44:30', '2020-10-07 06:44:30');

-- --------------------------------------------------------

--
-- Table structure for table `forms`
--

DROP TABLE IF EXISTS `forms`;
CREATE TABLE IF NOT EXISTS `forms` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `form_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `channel` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `customer_id` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `assigned_to` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `forms`
--

INSERT INTO `forms` (`id`, `form_id`, `channel`, `status`, `customer_id`, `user_id`, `assigned_to`, `created_at`, `updated_at`) VALUES
(1, 'SA1893', 'SA', 2, 1, 78, 0, '2020-10-06 13:44:53', '2020-10-06 13:44:53'),
(2, 'Web2633', 'Web', 2, 2, 78, 0, '2020-10-07 06:37:13', '2020-10-07 06:37:13');

-- --------------------------------------------------------

--
-- Table structure for table `fr`
--

DROP TABLE IF EXISTS `fr`;
CREATE TABLE IF NOT EXISTS `fr` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
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

--
-- Dumping data for table `fr`
--

INSERT INTO `fr` (`id`, `k1`, `k1v1`, `k1v2`, `k1v3`, `k1v4`, `k2`, `k2v1`, `k2v2`, `k2v3`, `k2v4`, `k3`, `k3v1`, `k3v2`, `k3v3`, `k3v4`, `fund_id`, `created_at`, `updated_at`) VALUES
(1, 'Tenure', '30 Days', '90 Days', '180 Days', 'CYTD*', 'Return %', '8.62', '7.86', '7.37', '6.52', 'Benchmark %', '8.83', '8.10', '7.36', '6.45', 10, NULL, NULL),
(2, 'Tenure', '30 Days', '90 Days', '180 Days', 'CYTD*', 'Return %', '8.54', '7.32', '6.60', '5.68', 'Benchmark %', '3.19', '3.00', '2.81', '2.70', 11, NULL, NULL),
(3, 'Tenure', '30 Days', '90 Days', '180 Days', 'CYTD*', 'Return %', '7.31', '6.78', '6.61', '6.12', 'Benchmark %', '3.20', '3.02', '2.85', '2.64', 12, NULL, NULL),
(4, 'Tenure', '30 Days', '90 Days', '180 Days', 'CYTD*', 'Return %', '8.44', '7.60', '7.12', '6.40', 'Benchmark %', '8.83', '8.10', '7.36', '6.45', 13, NULL, NULL),
(5, 'Tenure', '30 Days', '90 Days', '180 Days', 'CYTD*', 'Return %', '9.13', '8.71', '7.28', '6.49', 'Benchmark %', '10.63', '9.98', '8.96', '7.76', 14, NULL, NULL),
(6, 'Tenure', '30 Days', '90 Days', '180 Days', 'CYTD*', 'Return %', '9.59', '8.26', '7.84', '6.51', 'Benchmark %', '10.49', '9.70', '8.72', '7.56', 15, NULL, NULL),
(7, 'Tenure', '30 Days', '90 Days', '180 Days', 'CYTD*', 'Return %', '-9.64', '-10.45', '-11.53', '-7.14', 'Benchmark %', '-10.75', '-12.30', '-13.99', '-10.29', 16, NULL, NULL),
(8, 'Tenure', '30 Days', '90 Days', '180 Days', 'CYTD*', 'Return %', '-9.30', '-9.69', '-10.61', '-5.84', 'Benchmark %', '-8.47', '-9.59', '-11.56', '-8.41', 17, NULL, NULL),
(9, 'Tenure', '30 Days', '90 Days', '180 Days', 'CYTD*', 'Return %', '-7.96', '-8.02', '-8.80', '-5.15', 'Benchmark %', '-10.55', '-11.64', '-13.91', '-10.84', 18, NULL, NULL),
(10, 'Tenure', '30 Days', '90 Days', '180 Days', 'CYTD*', 'Return %', '-7.96', '-8.07', '-8.79', '-5.15', 'Benchmark %', '-10.55', '-11.64', '-13.91', '-10.84', 19, NULL, NULL),
(11, 'Tenure', '30 Days', '90 Days', '180 Days', 'CYTD*', 'Return %', '-10.10', '-13.12', '-15.44', '-12.34', 'Benchmark %', '-10.75', '-12.30', '-13.99', '-10.29', 20, NULL, NULL),
(12, 'Tenure', '30 Days', '90 Days', '180 Days', 'CYTD*', 'Return %', '-2.11', '-1.28', '-0.78', '1.97', 'Benchmark %', '-2.64', '-2.50', '-2.74', '-0.91', 21, NULL, NULL),
(13, 'Tenure', '30 Days', '90 Days', '180 Days', 'CYTD*', 'Return %', '-5.66', '-5.66', '-6.45', '-1.98', 'Benchmark %', '-4.39', '-4.39', '-4.94', '-1.75', 22, NULL, NULL),
(16, 'Tenure', '30 Days', '90 Days', '180 Days', 'CYDT*', 'Return %', '1.30', '3.44', '2.64', '3.44', 'Benchmark %', '1.50', '3.49', '3.14', '3.49', 25, NULL, NULL),
(17, 'Tenure', '30 Days', '90 Days', '180 Days', 'CYDT*', 'Return %', '3.38', '8.11', '5.77', '4.35', 'Benchmark %', '3.28', '7.71', '5.34', '7.71', 26, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fr1`
--

DROP TABLE IF EXISTS `fr1`;
CREATE TABLE IF NOT EXISTS `fr1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fr1_v1` varchar(191) DEFAULT NULL,
  `fr1_v2` varchar(191) DEFAULT NULL,
  `fr1_v3` varchar(191) DEFAULT NULL,
  `fr1_v4` varchar(191) DEFAULT NULL,
  `fund_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fr1`
--

INSERT INTO `fr1` (`id`, `fr1_v1`, `fr1_v2`, `fr1_v3`, `fr1_v4`, `fund_id`) VALUES
(1, '30 Days', '7.33', '6.86', '-9.51', 25),
(2, '90 Days', '6.77', '6.45', '-9.75', 25),
(3, '180 Days', '6.22%', '5.22%', '-9.78%', 25),
(4, '30 Days', '7.03', '6.89', '-8.72', 26),
(5, '90 Days', '6.14', '5.86', '-8.07', 26),
(6, '180 Days', '5.58', '4.97', '-8.00', 26),
(7, 'CYTD*', '4.56', '4.03', '-3.60', 26);

-- --------------------------------------------------------

--
-- Table structure for table `funds`
--

DROP TABLE IF EXISTS `funds`;
CREATE TABLE IF NOT EXISTS `funds` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `funds`
--

INSERT INTO `funds` (`id`, `title`, `created_at`, `updated_at`) VALUES
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

-- --------------------------------------------------------

--
-- Table structure for table `hamls`
--

DROP TABLE IF EXISTS `hamls`;
CREATE TABLE IF NOT EXISTS `hamls` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
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

--
-- Dumping data for table `hamls`
--

INSERT INTO `hamls` (`id`, `title`, `b1`, `b2`, `b3`, `b4`, `b5`, `b6`, `f1`, `f2`, `f3`, `f4`, `created_at`, `updated_at`) VALUES
(1, 'HBL Asset Management Limited', 'PKR 21.12<br />\r\nbillion  <br />\r\nEquity AUM', '17 <br />\r\nOpen-end  <br />\r\nFunds', 'Total AUMs <br />\r\nRs. 51.8<br />\r\nBillion', 'AM2+ <br />\r\nRating <br />\r\nby JCR-VIS', '2 VPS  <br />\r\nSchemes', '5th Largest <br />\r\n AMC <br />\r\nin  Pakistan', 'HBL Asset Management Limited (HBL AML) is a wholly owned subsidiary of HBL, the largest commercial bank in Pakistan.', 'With a nationwide foot print of retail and corporate clients, HBL AML is one of the largest private fund management company in the country. We offer both conventional and Shariah-compliant investment products.', 'During the year 2016, HBL AML acquired PICIC Asset Management Company Limited which has subsequently merged into HBL AML. The acquisition has increased our product suite to 19 mutual fund schemes and plans.', 'HBL Asset Management is rated AM2+ by JCR-VIS.', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `iimf`
--

DROP TABLE IF EXISTS `iimf`;
CREATE TABLE IF NOT EXISTS `iimf` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
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

--
-- Dumping data for table `iimf`
--

INSERT INTO `iimf` (`id`, `title`, `sh`, `sf`, `f1`, `f2`, `f3`, `f4`, `f5`, `f6`, `f7`, `created_at`, `updated_at`) VALUES
(1, 'ADVANTAGES OF INVESTING IN MUTUAL FUNDS', 'ADVANTAGES OF INVESTING IN MUTUAL FUNDS', 'Mutual funds are an easy, convenient and affordable way of gaining access to capital markets. Each investor has a stake in the assets and earnings of the fund in proportion to the amount of their investments. The benefits of mutual funds include:', 'Professional Management', 'Tax Efficient Way to Save', 'Diversification', 'Liquidity', 'Reduction of transaction costs', 'Convenience', 'Time', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `investment_avenues`
--

DROP TABLE IF EXISTS `investment_avenues`;
CREATE TABLE IF NOT EXISTS `investment_avenues` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ai_key` varchar(191) DEFAULT NULL,
  `fund_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `investment_avenues`
--

INSERT INTO `investment_avenues` (`id`, `ai_key`, `fund_id`, `created_at`, `updated_at`) VALUES
(1, 'Cash', 10, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(2, 'Placements with Banks & DFIs', 10, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(3, 'T-Bills', 10, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(4, 'Commercial Paper', 10, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(5, 'Other including Receivables', 10, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(12, 'Cash	', 11, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(13, 'Placements with Banks & DFIs', 11, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(14, 'Other including Receivables', 11, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(16, 'Cash	', 12, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(17, 'Commercial Paper', 12, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(18, 'Other including Receivables', 12, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(19, 'TFCs/ Sukuks', 12, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(21, 'Placement with Banks and DFI', 12, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(23, 'Cash	', 13, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(24, 'Placement with Banks and DFIs', 13, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(25, 'T-Bills', 13, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(28, 'Other including Receivables', 13, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(30, 'Cash', 14, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(33, 'Other including Receivables', 14, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(36, 'TFCs/ Sukuks', 14, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(37, 'Cash', 15, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(39, 'T-Bills', 15, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(41, 'Other including Receivables', 15, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(42, 'MTS / Spread Transaction', 15, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(44, 'Commercial Paper', 15, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(47, 'Cash', 16, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(49, 'Other including Receivables', 16, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(50, 'Stock/Equities', 16, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(51, 'Cash', 17, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(52, 'Other including receivables', 17, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(53, 'Stock/Equities', 17, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(54, 'Cash', 18, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(55, 'Other including Receivables', 18, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(56, 'Stock/Equities', 18, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(57, 'Cash', 19, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(58, 'Other including Receivables', 19, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(59, 'Stock/Equities', 19, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(60, 'Cash', 20, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(61, 'Other including Receivables', 20, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(62, 'Stock/Equities', 20, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(63, 'Cash	', 21, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(64, 'Other including Receivables', 21, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(65, 'Stock/Equities', 21, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(66, 'Commercial Paper', 21, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(67, 'TFCs/Sukuks', 21, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(68, 'Cash', 22, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(71, 'TFCs / Sukuks', 22, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(72, 'Other including Receivables', 22, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(74, 'Stock/Equities', 22, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(76, 'Cash', 23, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(77, 'Other including Receivables', 23, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(78, 'Equity Funds', 23, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(79, 'Fixed Income Funds', 23, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(81, 'Cash', 24, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(82, 'Equity Funds', 24, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(83, 'Cash', 25, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(84, 'Placement with Banks and DFIs', 25, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(85, 'T-Bills', 25, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(86, 'Commercial Paper', 25, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(87, 'PIBs', 25, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(88, 'Other including Receivables', 25, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(89, 'TFCs/ Sukuks', 25, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(90, 'Stock/Equities', 25, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(92, 'Cash', 26, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(93, 'Placement with Banks and DFIs', 26, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(94, 'Other including Receivables', 26, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(95, 'GoP Ijara Sukuks', 26, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(96, 'Cash', 26, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(97, 'Stock / Equities', 26, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(98, 'Fixed Income Funds', 24, '2018-07-20 11:02:56', '2018-07-20 11:02:56'),
(99, 'Commercial Paper', 26, '2019-01-17 11:01:22', '2019-01-17 11:01:22'),
(100, 'TFCs/ Sukuks', 26, '2019-01-17 11:01:47', '2019-01-17 11:01:47'),
(101, 'Others Including Receivables', 24, '2019-01-17 11:21:37', '2019-01-17 11:21:37'),
(102, 'Placement with Banks & DFI', 21, '2019-01-17 12:03:28', '2019-01-17 12:03:28');

-- --------------------------------------------------------

--
-- Table structure for table `investment_details`
--

DROP TABLE IF EXISTS `investment_details`;
CREATE TABLE IF NOT EXISTS `investment_details` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `fund_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount_in_words` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `front_end_load` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_mode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attachment` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instrument_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` int(11) NOT NULL,
  `fund_name_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_mode_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_name_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `investment_details`
--

INSERT INTO `investment_details` (`id`, `fund_name`, `amount`, `amount_in_words`, `front_end_load`, `payment_mode`, `attachment`, `bank_name`, `instrument_number`, `customer_id`, `fund_name_id`, `payment_mode_id`, `bank_name_id`, `created_at`, `updated_at`) VALUES
(1, 'HBL Government Securities Fund', '5,558', 'Five Thousand Five Hundred Fifty Five only', 'N/A', 'Pay Oder', '220-SM667653.jpg', 'ALBARAKA', '5556', 1, '5a8e05d4-ca56-4897-8ec7-fb930a4f32d4', 'a2d08021-616f-460a-baeb-4e8728b8a674', '1', '2020-10-06 13:44:52', '2020-10-06 13:44:52'),
(2, 'HBL Cash Fund', '1000', 'Ten Thousand only', 'N/A', 'IBFT', 'Screenshot-2019-01-23-00.20.04.png', 'FINCA', '5555hh', 2, '5a8e05d4-ca56-4897-8ec7-fb930a4f32d4', 'a2d08021-616f-460a-baeb-4e8728b8a674', '72', '2020-10-07 06:37:13', '2020-10-07 06:37:13');

-- --------------------------------------------------------

--
-- Table structure for table `lead`
--

DROP TABLE IF EXISTS `lead`;
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

-- --------------------------------------------------------

--
-- Table structure for table `mf`
--

DROP TABLE IF EXISTS `mf`;
CREATE TABLE IF NOT EXISTS `mf` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f1` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f2` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f3` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f4` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mf`
--

INSERT INTO `mf` (`id`, `title`, `f1`, `f2`, `f3`, `f4`, `created_at`, `updated_at`) VALUES
(1, 'What Are Mutual Funds?', 'A mutual fund is an investment vehicle comprising a pool of funds collected from many investors for the purpose of investing in securities such as stocks, bonds, money market instruments, securities, treasury notes and other capital market instruments.', 'All assets of the mutual fund are held by an independent trustee (such as CDC) and the asset management company only serves as a portfolio manager for the mutual fund.', 'Investors who purchase units of a mutual fund are its unit‐holders.', 'Mutual funds distribute 90% of their realized income to its unit‐holders at the time of dividend pay‐out (once every quarter or at times, once a year).', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_09_23_174642_create_bank_details_table', 1),
(2, '2019_09_23_174933_create_investment_details_table', 1),
(3, '2019_09_23_180051_create_forms_table', 1),
(4, '2019_09_25_175306_create_fields_table', 1),
(5, '2019_12_03_135243_create_fatca_details_table', 1),
(6, '2019_12_03_135519_create_customers_table', 1),
(7, '2019_12_03_170014_create_other_details_table', 2),
(8, '2019_12_03_174913_create_fatca_details_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `other_details`
--

DROP TABLE IF EXISTS `other_details`;
CREATE TABLE IF NOT EXISTS `other_details` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `asf` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dpo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_of_units` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` int(11) NOT NULL,
  `asf_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `other_details`
--

INSERT INTO `other_details` (`id`, `asf`, `dpo`, `type_of_units`, `customer_id`, `asf_id`, `created_at`, `updated_at`) VALUES
(1, 'Quarterly', 'Cash', 'NA', 1, '238b79ea-f543-43ed-9c22-6006b1466047', '2020-10-06 13:44:52', '2020-10-06 13:44:52'),
(2, 'Quarterly', 'Cash', 'NA', 2, '2907c971-9429-45bf-b4bd-59f184ab21a8', '2020-10-07 06:37:13', '2020-10-07 06:37:13');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `returns`
--

DROP TABLE IF EXISTS `returns`;
CREATE TABLE IF NOT EXISTS `returns` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `risks`
--

DROP TABLE IF EXISTS `risks`;
CREATE TABLE IF NOT EXISTS `risks` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `client_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_number` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `client_cnic` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'empty',
  `location` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `choosen_fund` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `irf` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `crf` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `decision` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `pushed` tinyint(1) NOT NULL DEFAULT 0,
  `userScore` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `risks`
--

INSERT INTO `risks` (`id`, `client_name`, `client_email`, `client_number`, `client_cnic`, `location`, `choosen_fund`, `irf`, `crf`, `decision`, `user_id`, `created_at`, `updated_at`, `pushed`, `userScore`) VALUES
(1, 'testing', 'teseting@gmail.com', '999999', '4210110110110', 'D.H.A Phase 6 Ittehad Commercial Area Defence Housing Authority, Karachi Malir', 'Money Market Fund', NULL, 'Money Market Fund', 'I agree I will go with above recommended product', 78, '2020-09-25 21:30:11', '2020-09-25 21:30:11', 0, '-16');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role`, `role_title`, `created_at`, `updated_at`) VALUES
(0, 'admin', 'Admin', NULL, NULL),
(1, 'user', 'Sales', NULL, NULL),
(2, 'super_admin', 'Super Admin', NULL, NULL),
(3, 'retail_admin', 'Retail Admin', NULL, NULL),
(4, 'retail_user', 'Retail User', NULL, NULL),
(5, 'cbc', 'cbc', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rp_count`
--

DROP TABLE IF EXISTS `rp_count`;
CREATE TABLE IF NOT EXISTS `rp_count` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `counts` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rp_count`
--

INSERT INTO `rp_count` (`id`, `counts`) VALUES
(1, 144);

-- --------------------------------------------------------

--
-- Table structure for table `sc_yr`
--

DROP TABLE IF EXISTS `sc_yr`;
CREATE TABLE IF NOT EXISTS `sc_yr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `yr` varchar(191) DEFAULT NULL,
  `chart_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sc_yr`
--

INSERT INTO `sc_yr` (`id`, `yr`, `chart_id`) VALUES
(1, '2013', 1),
(2, '2013', 2);

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

DROP TABLE IF EXISTS `slides`;
CREATE TABLE IF NOT EXISTS `slides` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slides`
--

INSERT INTO `slides` (`id`, `title`, `content`, `created_at`, `updated_at`) VALUES
(1, 'Sponsers', '<p>HBL was the first commercial bank to be established in Pakistan in 1947.&nbsp;<br /><br />The Government of Pakistan privatized HBL in 2004 through which AKFED acquired 51% of the Bank\'s shareholding and the management control.&nbsp;<br /><br />Current network is over 1,600 branches and 1,700 ATMs globally and a customer base exceeding eight million relationships.<br />&nbsp;&nbsp;<br />HBL is the Largest bank by:<br />Deposits<br />Balance sheet<br />Capital<br />Profitability&nbsp;<br /><br />With a global presence in over 25 countries spanning across four continents,&nbsp;&nbsp;HBL is also the largest domestic multinational.&nbsp;<br /><br />HBL is rated AAA by JCR-VIS.&nbsp;</p>', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sponsers`
--

DROP TABLE IF EXISTS `sponsers`;
CREATE TABLE IF NOT EXISTS `sponsers` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
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

--
-- Dumping data for table `sponsers`
--

INSERT INTO `sponsers` (`id`, `title`, `f1`, `f2`, `f3`, `f4`, `f5`, `f6`, `created_at`, `updated_at`) VALUES
(1, 'Sponsor', 'HBL was the first commercial bank to be established in Pakistan in 1947.', 'The Government of Pakistan privatized HBL in 2004 through which AKFED acquired 51% of the Bank\'s shareholding and the management control.', 'Current network is over 1,600 branches and 1,700 ATMs globally and a customer base exceeding eight million relationships.', 'HBL is the Largest bank by: <br />\r\nDeposits <br />\r\nBalance sheet <br />\r\nCapital', 'With a global presence in over 25 countries spanning across four continents,  HBL is also the largest domestic multinational.', 'HBL is rated AAA by JCR-VIS.', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sponsor_chart_1`
--

DROP TABLE IF EXISTS `sponsor_chart_1`;
CREATE TABLE IF NOT EXISTS `sponsor_chart_1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sc_1_nums` varchar(500) DEFAULT NULL,
  `bank_id` int(11) DEFAULT NULL,
  `sort_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sponsor_chart_1`
--

INSERT INTO `sponsor_chart_1` (`id`, `sc_1_nums`, `bank_id`, `sort_id`) VALUES
(23, '8549', 1, 1),
(24, '9357', 1, 1),
(25, '9434', 1, 1),
(32, '5778', 1, 1),
(33, '3478', 1, 1),
(34, '3503', 2, 2),
(35, '9345', 2, 2),
(36, '3045', 2, 2),
(37, '2287', 2, 2),
(38, '4059', 2, 2),
(39, '39390', 3, 3),
(40, '12000', 3, 3),
(41, '12306', 3, 3),
(42, '16006', 3, 3),
(43, '19098', 3, 3),
(44, '22000', 4, 4),
(45, '22098', 4, 4),
(46, '54000', 4, 4),
(47, '6153', 4, 4),
(48, '8003', 4, 4),
(49, '55000', 5, 5),
(50, '6153', 5, 5),
(51, '6153', 5, 5),
(52, '7687', 5, 5),
(53, '8003', 5, 5),
(60, '1234', 6, 1),
(61, '7678', 6, 1),
(62, '7678', 6, 1),
(63, '7678', 6, 1),
(64, '7678', 6, 1),
(65, '1000', 7, 2),
(66, '6153', 7, 2),
(67, '8003', 7, 2),
(68, '22000', 7, 2),
(69, '22098', 7, 2),
(70, '39390', 8, 3),
(71, '12000', 8, 3),
(72, '12306', 8, 3),
(73, '16006', 8, 3),
(74, '19098', 8, 3),
(75, '22000', 9, 4),
(76, '22098', 9, 4),
(77, '54000', 9, 4),
(78, '6153', 9, 4),
(79, '8003', 9, 4),
(80, '55000', 10, 5),
(81, '6153', 10, 5),
(82, '6153', 10, 5),
(83, '7687', 10, 5),
(84, '8003', 10, 5);

-- --------------------------------------------------------

--
-- Table structure for table `tomf`
--

DROP TABLE IF EXISTS `tomf`;
CREATE TABLE IF NOT EXISTS `tomf` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
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

--
-- Dumping data for table `tomf`
--

INSERT INTO `tomf` (`id`, `title`, `sh1`, `sh1f1`, `sh1f2`, `sh2`, `sh2f1`, `sh2f2`, `sh2f3`, `sh2f4`, `sh2f5`, `sh2f6`, `sh3`, `sh3f1`, `sh3f2`, `sh3f3`, `created_at`, `updated_at`) VALUES
(1, 'Types Of Mutual Funds', 'By Structure', 'Open End Funds: These units are issued and redeemed by the Management Company', 'Closed End Funds: Only traded at the Stock Exchange and are not redeemable', 'By Investment Objective', 'Money Market Funds: Invest in most liquid securities e.g., Bank Deposits, Treasury bills etc.', 'Growth Funds – Equity Funds: Invest in Equity Securities', 'Income Funds / Debt Funds: Invest in longer term Government & Corporate Bonds.', 'Balanced Funds: Invest in both Fixed Income and Equity Securities', 'Asset Allocation Funds: Usually specifies the percentage of investment in equity and Fixed Income Securities.', 'Capital Protected Funds: Guarantees the protection of capital through different methodologies.', 'Special Funds', 'Shariah Compliant Funds:All assets are Shariah Compliant with the approval of Shariah Advisor', 'Sector Specific Funds: Invest only in the sector that is described in offering document', 'Govt. Securities Funds: Invest in Government bonds both short term and long term.', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `role_id`) VALUES
(11, 'Ahsan Hassan', 'Ahsan.Hassan@hblasset.com', '$2y$10$GX7Q2xv3hcfWt4b2DDWi/OIDpHxAQkTiYJujfaCgvtLEMBYnyOMK6', 'kDvUMxlKQM2f7vjlqTcezSO5BlpcA3YuqSXwRO5ZVRKrBqXl5XysnGcIvTH2', '2018-07-09 02:50:44', '2018-07-09 02:50:44', 0),
(15, 'MUstafa Subhani', 'mustafa.subhani@hblasset.com', '$2y$10$GcoEeqmRiftYTCy7nTUxL.tZN4NOXgqkqBCiIE6nJLRiBbHiJwNi6', NULL, '2018-07-23 16:35:08', '2018-07-23 16:35:08', 1),
(16, 'Mohammad Noman', 'muhammad.noman@hblasset.com', '$2y$10$9kZaz2.kHAXWvrqz6VnI0.LfJfPyIlyyrEB.NqemAgmao8dicRLqO', NULL, '2018-07-23 16:38:15', '2018-07-23 16:38:15', 1),
(18, 'Tayyab Javed', 'tayyab.javed@hblasset.com', '$2y$10$u4Ssk55uOn8BY0U9ntYrIeaiMha3xZOmWemzUre6uwEU2WojueIvS', NULL, '2018-07-23 16:40:15', '2018-07-23 16:40:15', 1),
(19, 'Sarmad Iqbal', 'sarmad.iqbal@hblasset.com', '$2y$10$Ot5LwxWYUV3hxv4SZXtdBejYTpDquH3OboWzw7JVQbneOq4bz5B5y', NULL, '2018-07-23 16:41:38', '2018-07-23 16:41:38', 1),
(21, 'Gohar Ayub', 'gohar.ayub@hblasset.com', '$2y$10$cjNzHjSN1bdBTjAJpPKBXOafNkZsbTLKBrlNbEcroh6m3j5rrjrgq', NULL, '2018-07-23 16:42:41', '2018-07-23 16:42:41', 1),
(22, 'Tahir Bin Yousuf', 'tahir.yousuf@hblasset.com', '$2y$10$.OJKbmrReNJ0FXWbhJdufuxbbpCs./HrhfZbCa1GMuIN4VFg30mmC', NULL, '2018-07-23 16:43:16', '2018-07-23 16:43:16', 1),
(23, 'Ali Babar Syed', 'babar.syed@hblasset.com', '$2y$10$/jIeV6lrP3.NBCeQVPL0jOsM0KSYXHYOQv/yqpxJV/tRf7LRJMhna', 'HijzFSB7gHZkrIj5N53B4Y9xjns7FpiIGiCjPJATRgQWYdATN172iO0SVNIs', '2018-07-23 16:44:41', '2018-07-23 16:44:41', 1),
(24, 'Waleed Minhaj', 'waleed.minhaj@hblasset.com', '$2y$10$I1X18k1gdYGCQ92lMZh2BuwhApMuVgQFFSUKkLGajIOL9EGMM3m6K', NULL, '2018-07-23 16:45:09', '2018-07-23 16:45:09', 1),
(25, 'Muhib Khan', 'Muhib.khan@hblasset.com', '$2y$10$rusH0qAlWD2et2UDnC8/aOl2VWPZiQaAM22F3sdbVFzBBjBMSg1iG', 'FlQ3tKsyYsXxQmZxEQbxwjNWGrQ2GpKzpMPl2krajOU8JIHKzasjoHl9jVpJ', '2018-07-23 16:45:58', '2018-07-23 16:45:58', 1),
(26, 'Murtaza Jafri', 'murtuza.jafri@hblasset.com', '$2y$10$mfqbIRf7woG7J6q9kh9WT.099vXnUj4kbdvn7KQXSgPbtiIlGKpEm', NULL, '2018-07-23 16:47:03', '2018-07-23 16:47:03', 1),
(29, 'Meheboob Ali Solangi', 'mehboob.solangi@hblasset.com', '$2y$10$mXS/BclRKgzT/LdsT8PNEebf1S9ymk5.H/3zB8GkJLIiGqG4b3yn2', NULL, '2018-07-23 16:48:48', '2018-07-23 16:48:48', 1),
(30, 'Raheel Khawer', 'raheel.khawer@hblasset.com', '$2y$12$FqVd76xuRhgfCoA.0b.Z7.p1Ukf.5UIqfV42vMBgGm7vgeqBkPvZO', '1UDCK7YKDZASRlMwqF15bPOZj44U1FsytrHej4Pir2r8QjiSLipyaL3KvmKw', '2018-07-23 16:49:43', '2018-07-23 16:49:43', 1),
(31, 'Mubashir Azhar', 'mubashir.azhar@hblasset.com', '$2y$10$rWqj9cq9/GWijdfyhcDpp.EoYZM103nFw30ew45Vwv9/4wzgTxRXi', 'WXvmd1TOHrQZAhLKYSy1KHSJCQGjWU3NJogoFAGd3m55nXQmRNjQVg7ylwVg', '2018-07-23 16:50:18', '2018-07-23 16:50:18', 1),
(33, 'Arsalan Ashraf', 'marsalan.ashraf@hblasset.com', '$2y$10$wQAkHu5V0vMMYz07gXjbmOg9zEDSxNnhKY28UJf8xr73YYQ2yVFZ2', 'JECZwrR2AyBGEsCFy0YMrur6wMBCyTzS4gLoNltKnvdjQQZwNPKoXeaAjK7h', '2018-07-23 16:56:02', '2018-07-23 16:56:02', 1),
(34, 'Muhammad Shafique', 'muhammad.shafique@hblasset.com', '$2y$10$TgDGMLbxgQ2VvVCkjOHFeO.6FD/SUkMqlnBvIZTKKNToDDz93nj8G', NULL, '2018-07-23 16:58:18', '2018-07-23 16:58:18', 1),
(35, 'Faiq Alam', 'faiq.alam@hblasset.com', '$2y$10$JHI3/WDwDolx.zjlUPPvfeWv2.UwJlvQiG8VJ83cd6Yox/zRAY/ZK', NULL, '2018-07-23 17:03:29', '2018-07-23 17:03:29', 1),
(36, 'Zainab Mubeen', 'zainab.mubeen@hblasset.com', '$2y$10$TdRSbM42of6BQVEkZT/YOOdgWVIFOHVBXW23FPHlZbuHZS8ngElIy', NULL, '2018-07-23 17:04:02', '2018-07-23 17:04:02', 1),
(37, 'Jahanzaib Ahmed Siddiqui', 'jahanzaib.siddiqui@hblasset.com', '$2y$10$KHDkHpBiP/PMrLblZxRK3eE8e2hwDpyz0Ao0MaxB8/aGsCmCmnz3m', NULL, '2018-07-23 17:04:56', '2018-07-23 17:04:56', 1),
(38, 'Shaikh Muhammad Yasir bashir', 'yasir.bashir@hblasset.com', '$2y$10$ST1bBkxmGQkor/LGew8.s.sl65WtozmT6/OkXmQTBNW4EDU/cnz5e', 'cuJ3JjCcMnt2JUEFvXi7OnuNztTfI62nxvBveaLkkQklDdyaLW0pOATdTbCc', '2018-07-23 17:06:08', '2018-07-23 17:06:08', 1),
(39, 'Muhammad Farhan Khan', 'Mfarhan.khan@hblasset.com', '$2y$10$e0BzRbdZEu8sdC/p1GqxmeYMff7W5m2jdWrcS/8rRfkvXK7vGeLVC', NULL, '2018-07-23 17:07:00', '2018-07-23 17:07:00', 1),
(41, 'Amjad Hussain Phull', 'amjad.hussain@hblasset.com', '$2y$10$GvIBbqxCZ3QL8.xuwAuMwOb6WSl3hWLKGi9xZ48IZEm9BqVOsxnZO', '4KtbCYAgVLLwIvmqkIjlyvpiOjFlVpVxc4VZJF7gA558DsTzMtU2QlEAff5J', '2018-07-23 17:07:59', '2018-07-23 17:07:59', 1),
(44, 'Sheeraz Ahmed', 'sheeraz.ahmed@hblasset.com', '$2y$10$25fp54h6T9QL2/N459Mj5OoAyLrGYA/w0JEQuSrIx8/z6mN/CTNtm', 'QmbP8cUYxOExXfIde0Zjkr7U7zc6f6MEndLtgRod26oI46qTfiDEVIKku56M', '2018-07-24 14:38:14', '2018-07-24 14:38:14', 1),
(47, 'Muhammad Imran', 'muhammad.imran1@hblasset.com', '$2y$10$x0PHU9X3tmvA1faMZq73GeVb2NsEw7ppuAaOlmZ8g4T/W2yP6vmFm', NULL, '2018-08-15 13:17:38', '2018-08-15 13:17:38', 1),
(48, 'Shahzeb Aziz', 'shahzeb.aziz@hblasset.com', '$2y$10$aialkMApczjdGgjkmsrfw.yyfqkhkEraG33ZI8aeo4ULT3/Rkcixa', NULL, '2018-08-15 13:18:51', '2018-08-15 13:18:51', 1),
(49, 'Fiaz Ahmed Khan', 'fiaz.ahmed@hblasset.com', '$2y$10$aPW.YgnFSxAd9ewD..hIxuxCHYRB0JHsBloXJzctQX6SirQ.ahKR2', 'hPeJXD139lc1cifDxFZtY1yCkKCWHs1fSgU5xxewtrTB5dqtll76UwF5XVSX', '2018-08-15 13:19:48', '2018-08-15 13:19:48', 1),
(50, 'Zeeshan Tahir', 'zeeshan.tahir@hblasset.com', '$2y$10$6pDCgxzKUZ528GoUTOuCFOdC2sFYk3ocdDWd0qovzUl2ksnOqU0dq', NULL, '2018-08-15 13:24:35', '2018-08-15 13:24:35', 1),
(51, 'Shahzad Ul Haq', 'shahzad.haq@hblasset.com', '$2y$10$Y/25kjN3BA2lWMFdvPA0aOKg3RG2eSjgIiLFPJ51lsBcLbjJJEcKK', NULL, '2018-08-15 13:25:23', '2018-08-15 13:25:23', 1),
(52, 'Saad Zaman', 'saad.zaman@hblasset.com', '$2y$10$pRkIggrYT1Qc8yg5Vogj2eeJACFKD/Y9T4rgSZx8Bj46TCA1e5hXW', 'JSyidhPMOtIGf7XRRW9kKzgTjFZzkm0YUgYhNyNkyQXKnC5S7YMLc2urWfIM', '2018-08-15 13:26:24', '2018-08-15 13:26:24', 1),
(53, 'Ali Raza Zaidi', 'ali.raza@hblasset.com', '$2y$10$BbnsFGXZtjApxW7OjSd5eODeBd1ACipKErrG3DxhR1wI1ySGTgSpa', 'nnHG9C1lOQLosFSRi3ia0kkaagRkDBhCf1QUAOhVpCkPtCFNMhn6GmRBWcOc', '2018-08-15 17:09:25', '2018-08-15 17:09:25', 1),
(54, 'Ali Raza', 'ali.naqvi@hblasset.com', '$2y$10$FXcvPg5VUxIto5yVDvAG9ub1ZT1efVpdcV77nDOvLDFld.wCv2o1C', 'kbEDNsSU8tdeW2FNK80cRsKWjFCqDQEYvvPmCKJ79WYLWUGrUyPVk7Sth2S8', '2018-08-15 17:10:35', '2018-08-15 17:10:35', 1),
(56, 'Ehtisham Junaidi', 'ehtisham.junaidi@hblasset.com', '$2y$10$jj0hvJDIOEoVPziDpx6l4uz9dLRTDqDOk7nOcL.ABmxuCtQXFeNZW', NULL, '2018-09-04 14:35:49', '2018-09-04 14:35:49', 1),
(57, 'francis.gill', 'master@erp.com', '$2y$10$jdDNYITPuQtAAWg46xz3Me6ZiVLoHfSBq.2AlAoQKdqx1SSlKz8sO', 'H3KE3DYVDXEnF1BxLjMGfqnAHBA6hWAHD58GrjskW05l4ZnUK4253olI5sEi', '2018-09-05 12:01:58', '2018-09-05 12:01:58', 2),
(58, 'Imran Tariq', 'imran.tariq@hblasset.com', '$2y$10$6LCIYtsQfd4fgtfQc9J94.o5aMQCpugaBotRA/6A3Dw0FeFUdECeq', NULL, '2018-09-18 13:27:59', '2018-09-18 13:27:59', 1),
(59, 'Amir Khan', 'amir.khan@hblasset.com', '$2y$10$c4WD9k2pjon.6t11FsKo9O6qxugXR.cRDeRCXFmf5BauXx.7ZM/ia', 'EkDTmf0Yhz12ShWFd63DPvIpbDl47loWl7BIGKEFVldP2XZeAGl7GWJwwp34', '2018-10-04 01:20:28', '2018-10-04 01:20:28', 1),
(60, 'omair.inam', 'omair.inam@hblasset.com', '$2y$10$9nhckVnqHLyb014g9TWHPO9qnr2gU2kq1NVXe9CTZgvM5zKV2fAZW', '64HAHdWZBmckFUchBPElCnR1FW8htlwIioLRYmf7fOe0lmqP1EHcgXYhoPMr', '2018-11-27 02:47:15', '2018-11-27 02:47:15', 2),
(77, 'francis', 'francisgill1000@gmail.com', '$2y$10$ivkbQDpydp.iXDbisBY0u.HMs0h0eDVqCFNYsXHReJ6bxq7ZTU.Ja', 'YlPSALaLZcCWQZVm0LfvgaQuvbEXRkR14J7mUa791GtNthV70l2NIJGywj20', '2020-08-18 23:26:57', '2020-08-18 23:26:57', 5),
(78, 'Qaiser', 'qaiserinfolive@gmail.com', '$2y$10$tUw7xaeKuG7AgqsOy4pol.g1cvVHMyRq/gP6JCkk3MoUTPItHLuaG', 'Cu4VJn1oo926KMrG5l2N6kyZAQgPkbg4DFOPAAr0juirYUwZKlKRL6NYBuEI', '2020-08-18 23:27:55', '2020-08-18 23:27:55', 1),
(79, 'shaheed', 'shaheedkhan336@gmail.com', '$2y$10$0NLbHFrx2W7qv0LE6jDiz.qgpvlLX/Pj8blH7D8HpjtAjIH5R7W6a', 'vZ4iSTSZEWMs9OFtNxwTUdscNGZhGfRdBOYGvq1kFgcYgGjWGIS3v9QEUX2z', '2020-08-18 23:32:12', '2020-08-18 23:32:12', 3),
(81, 'shaheedRU', 'hafiz.shaheed@orangeroomdigital.com', '$2y$10$r9kR6s8gaC5bEbfxcWEO4usyMrcG/CVOFi.bjZluTfNMNn243JNXe', 'M1VzVnpHbm7UFltY5ffPoiv7LJNs742WnUJzz7GQrXaam9WLHZs2aue7k5gI', '2020-08-18 23:42:13', '2020-08-18 23:42:13', 4);

-- --------------------------------------------------------

--
-- Table structure for table `views`
--

DROP TABLE IF EXISTS `views`;
CREATE TABLE IF NOT EXISTS `views` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `count` varchar(191) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `update_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `views`
--

INSERT INTO `views` (`id`, `count`, `user_id`, `update_at`) VALUES
(1, '3', 57, '2019-09-24'),
(2, '1', 67, NULL),
(3, '2', 75, '2020-08-19'),
(4, '2', 77, '2020-09-02'),
(5, '1', 78, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `welcome`
--

DROP TABLE IF EXISTS `welcome`;
CREATE TABLE IF NOT EXISTS `welcome` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(191) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `welcome`
--

INSERT INTO `welcome` (`id`, `date`) VALUES
(1, 'December, 2018');

-- --------------------------------------------------------

--
-- Table structure for table `ytp`
--

DROP TABLE IF EXISTS `ytp`;
CREATE TABLE IF NOT EXISTS `ytp` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
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

--
-- Dumping data for table `ytp`
--

INSERT INTO `ytp` (`id`, `title`, `sh`, `f1`, `f2`, `f3`, `f4`, `f5`, `created_at`, `updated_at`) VALUES
(1, 'Your Trusted Partner', 'WHY HBL SHOULD BE YOUR PREFERRED PARTNER?', 'HBL Asset Management Limited (HBL AML) is backed by the largest and strongest \r\nFinancial institution of Pakistan which boasts of 75 years of rich and successful \r\nhistory. The franchise is associated with trust and credibility for our investors in \r\nmore than 25 countries that their savings are in safe hands.', 'We provide a seamless financial experience to our clients in partnership with HBL. \r\nThe entire product suite ranging from bank accounts to cash management and saving plans available under one umbrella.', 'We manage one of the largest equity portfolios in the country with a size of over Rs 21.12 billion. \r\nOur mutual funds have a demonstrated track record of over 10 years of superior returns.', 'No conflicts and no third parties involved as we take pride in providing all services in-house. \r\nOur experienced research team provides detailed equity and economic reports.', 'An experienced management team boasting exposure of both local and international markets.', NULL, NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
