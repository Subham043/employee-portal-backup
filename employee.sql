-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 19, 2023 at 10:56 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `employee`
--

-- --------------------------------------------------------

--
-- Table structure for table `ctcs`
--

CREATE TABLE `ctcs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ctc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `month_year` date DEFAULT NULL,
  `hr_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ctcs`
--

INSERT INTO `ctcs` (`id`, `ctc`, `month_year`, `hr_id`, `user_id`, `status`, `created_at`, `updated_at`) VALUES
(1, '23452', '2022-12-31', 12, 12, 1, '2023-01-16 23:57:37', '2023-01-17 04:23:30'),
(2, '23455', NULL, 12, 12, 0, '2023-01-17 04:23:30', '2023-01-17 04:56:13');

-- --------------------------------------------------------

--
-- Table structure for table `ctc_fixed_items`
--

CREATE TABLE `ctc_fixed_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `amount` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ctc_fixed_items`
--

INSERT INTO `ctc_fixed_items` (`id`, `amount`, `user_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '1250', 5, '2023-01-11 01:09:30', '2023-01-11 03:31:54', NULL),
(2, '1600', 5, '2023-01-11 01:12:55', '2023-01-11 03:35:30', NULL),
(3, '200', 5, '2023-01-11 01:16:14', '2023-01-11 01:16:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `user_id`, `created_at`, `updated_at`) VALUES
(4, 'hr', 5, '2023-01-14 04:17:58', '2023-01-14 04:17:58');

-- --------------------------------------------------------

--
-- Table structure for table `designations`
--

CREATE TABLE `designations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `designations`
--

INSERT INTO `designations` (`id`, `name`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 'Developer', 1, '2022-12-12 23:58:41', '2022-12-12 23:58:41'),
(3, 'Tester', 1, '2022-12-12 23:58:46', '2022-12-12 23:58:46');

-- --------------------------------------------------------

--
-- Table structure for table `divisions`
--

CREATE TABLE `divisions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `divisions`
--

INSERT INTO `divisions` (`id`, `name`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 'Administration', 1, '2022-12-12 23:59:02', '2022-12-12 23:59:02'),
(3, 'Official', 1, '2022-12-12 23:59:09', '2022-12-12 23:59:09');

-- --------------------------------------------------------

--
-- Table structure for table `employee_bank_details`
--

CREATE TABLE `employee_bank_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bank_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ifsc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_type` int(11) NOT NULL DEFAULT 1,
  `employee_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_bank_details`
--

INSERT INTO `employee_bank_details` (`id`, `bank_name`, `account_no`, `ifsc`, `account_type`, `employee_id`, `user_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'test bank', '1212123232', '212ASDCC', 2, 4, 1, '2022-12-13 00:14:53', '2022-12-13 00:14:53', NULL),
(2, 'test bank', '121243234', '212AS', 1, 5, 1, '2022-12-13 02:04:44', '2022-12-13 02:04:44', NULL),
(3, 'test bank', '1212213123', '123123ASSA', 1, 6, 1, '2022-12-13 02:11:28', '2022-12-13 02:11:28', NULL),
(4, 'test bank', '1212213123', '123123ASSA', 2, 7, 1, '2022-12-13 04:40:03', '2022-12-13 04:40:03', NULL),
(5, 'test bank', '1212213123', '123123ASSA', 1, 8, 1, '2022-12-13 04:41:33', '2022-12-13 04:41:33', NULL),
(6, 'test bank', '1212213123', '123123ASSA', 1, 9, 1, '2022-12-13 23:40:49', '2022-12-13 23:40:49', NULL),
(7, 'test bank', '1212213123', '123123ASSA', 1, 10, 5, '2023-01-11 00:11:17', '2023-01-11 00:11:17', NULL),
(8, 'test bank', '1212213123', '123123ASSA', 2, 11, 5, '2023-01-11 00:13:41', '2023-01-11 00:13:41', NULL),
(9, 'test bank', '1212213123', '123123ASSA', 1, 12, 5, '2023-01-11 00:18:51', '2023-01-11 00:18:51', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employee_emergency_details`
--

CREATE TABLE `employee_emergency_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `relationship` int(11) NOT NULL DEFAULT 1,
  `employee_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_emergency_details`
--

INSERT INTO `employee_emergency_details` (`id`, `name`, `phone`, `relationship`, `employee_id`, `user_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'subham', '7892156160', 6, 4, 1, '2022-12-13 00:14:53', '2022-12-13 00:14:53', NULL),
(2, 'subham', '7892156160', 6, 5, 1, '2022-12-13 02:04:44', '2022-12-13 02:04:44', NULL),
(3, 'subham', '7892156160', 6, 6, 1, '2022-12-13 02:11:28', '2022-12-13 02:11:28', NULL),
(4, 'subham', '7892156160', 1, 7, 1, '2022-12-13 04:40:03', '2022-12-13 04:40:03', NULL),
(5, 'subham', '7892156160', 6, 8, 1, '2022-12-13 04:41:33', '2022-12-13 04:41:33', NULL),
(6, 'subham', '7892156160', 6, 9, 1, '2022-12-13 23:40:49', '2022-12-13 23:40:49', NULL),
(7, 'subham', '7892156160', 9, 10, 5, '2023-01-11 00:11:17', '2023-01-11 00:11:17', NULL),
(8, 'subham', '7892156160', 8, 11, 5, '2023-01-11 00:13:41', '2023-01-11 00:13:41', NULL),
(9, 'subham', '7892156160', 11, 12, 5, '2023-01-11 00:18:51', '2023-01-11 00:18:51', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employee_employment_details`
--

CREATE TABLE `employee_employment_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `work_status` int(11) NOT NULL DEFAULT 1,
  `exit_mode_id` bigint(20) DEFAULT NULL,
  `exit_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employee_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_employment_details`
--

INSERT INTO `employee_employment_details` (`id`, `work_status`, `exit_mode_id`, `exit_date`, `employee_id`, `user_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, 2, '22/10/1996', 4, 1, '2022-12-13 00:14:53', '2022-12-13 00:14:53', NULL),
(2, 2, 2, '2022-12-15', 5, 1, '2022-12-13 02:04:44', '2022-12-13 02:04:44', NULL),
(3, 1, 2, '2022-12-30', 6, 1, '2022-12-13 02:11:28', '2022-12-13 04:30:57', NULL),
(4, 1, NULL, NULL, 8, 1, '2022-12-13 04:41:33', '2022-12-13 04:41:33', NULL),
(5, 1, 3, '2022-12-31', 9, 1, '2022-12-13 23:40:49', '2022-12-13 23:49:43', NULL),
(6, 1, NULL, NULL, 10, 5, '2023-01-11 00:11:17', '2023-01-11 00:11:17', NULL),
(7, 1, NULL, NULL, 11, 5, '2023-01-11 00:13:41', '2023-01-11 00:13:41', NULL),
(8, 1, NULL, NULL, 12, 5, '2023-01-11 00:18:51', '2023-01-11 00:18:51', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employee_job_details`
--

CREATE TABLE `employee_job_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `department_id` bigint(20) DEFAULT NULL,
  `division_id` bigint(20) DEFAULT NULL,
  `designation_id` bigint(20) DEFAULT NULL,
  `employee_type_id` bigint(20) DEFAULT NULL,
  `date_of_join` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_of_training_days_d` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_of_training_days_m` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_of_training_days_y` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `training_end_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_of_regular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mou_duration_d` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mou_duration_m` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mou_duration_y` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employee_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_job_details`
--

INSERT INTO `employee_job_details` (`id`, `department_id`, `division_id`, `designation_id`, `employee_type_id`, `date_of_join`, `no_of_training_days_d`, `no_of_training_days_m`, `no_of_training_days_y`, `training_end_date`, `date_of_regular`, `mou_duration_d`, `mou_duration_m`, `mou_duration_y`, `employee_id`, `user_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, 2, 2, 2, '2022-12-14', NULL, '2', NULL, '2023-02-12', '2023-02-13', NULL, NULL, '2', 5, 1, '2022-12-13 02:04:44', '2022-12-13 02:04:44', NULL),
(2, 2, 2, 2, 2, '2022-12-14', NULL, '2', NULL, '2023-02-12', '2023-02-13', NULL, NULL, '2', 6, 1, '2022-12-13 02:11:28', '2022-12-13 02:11:28', NULL),
(3, 2, 2, 2, 2, '2022-12-16', NULL, NULL, '4', '2026-12-15', '2026-12-16', NULL, '3', NULL, 8, 1, '2022-12-13 04:41:33', '2022-12-13 04:41:33', NULL),
(4, 2, 2, 2, 2, '2022-12-16', NULL, '3', NULL, '2023-03-16', '2023-03-17', NULL, NULL, '2', 9, 1, '2022-12-13 23:40:49', '2022-12-13 23:40:49', NULL),
(5, 2, 2, 2, 2, '2023-01-14', '6', NULL, NULL, '2023-01-20', '2023-01-21', NULL, '6', NULL, 10, 5, '2023-01-11 00:11:17', '2023-01-11 00:11:17', NULL),
(6, 2, 2, 2, 2, '2023-01-13', NULL, '3', NULL, '2023-04-13', '2023-04-14', NULL, '5', NULL, 11, 5, '2023-01-11 00:13:41', '2023-01-11 00:13:41', NULL),
(7, 4, 2, 2, 2, '2022-10-19', NULL, '7', NULL, '2023-05-17', '2023-05-18', NULL, '8', NULL, 12, 5, '2023-01-11 00:18:51', '2023-01-17 02:39:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employee_personal_details`
--

CREATE TABLE `employee_personal_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gender` int(11) NOT NULL DEFAULT 1,
  `dob` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aadhar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `current_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `permanent_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blood_group` int(11) NOT NULL DEFAULT 1,
  `employee_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_personal_details`
--

INSERT INTO `employee_personal_details` (`id`, `gender`, `dob`, `email`, `aadhar`, `current_address`, `permanent_address`, `pan`, `blood_group`, `employee_id`, `user_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, '22/10/1996', 'subham.5ine@gmail.com', '862760132898', 'test', 'test', 'KANPS6850M', 2, 4, 1, '2022-12-13 00:14:53', '2022-12-13 00:14:53', NULL),
(2, 2, '2022-12-01', 'subham.5ine1@gmail.com', '862760132898', 'test address', 'test address', 'KANPS6850M', 2, 5, 1, '2022-12-13 02:04:44', '2022-12-13 02:04:44', NULL),
(3, 1, '2022-12-14', 'subham.5ine@gmail.com', '862760132898', 'asdasd', 'asdsad', 'KANPS6850M', 2, 6, 1, '2022-12-13 02:11:28', '2022-12-13 03:53:00', NULL),
(4, 1, '2022-12-08', 'subham.5ine3@gmail.com', '862760132898', 'asdasd', 'asdasda', 'KANPS6850M', 1, 7, 1, '2022-12-13 04:40:03', '2022-12-13 04:40:03', NULL),
(5, 2, '2022-12-08', 'subham.5ine3@gmail.com', '862760132898', 'asdasd', 'asdasda', 'KANPS6850M', 2, 8, 1, '2022-12-13 04:41:33', '2022-12-13 04:41:33', NULL),
(6, 2, '2022-12-15', 'subham.5ine1@gmail.com', '862760132898', 'adasd', 'sadasd', 'KANPS6850M', 2, 9, 1, '2022-12-13 23:40:49', '2022-12-13 23:40:49', NULL),
(7, 1, '2023-01-13', 'subham.5ine9@gmail.com', '862760132898', 'test', 'test', 'KANPS6850M', 3, 10, 5, '2023-01-11 00:11:17', '2023-01-11 00:11:17', NULL),
(8, 1, '2023-01-13', 'subham.5ine10@gmail.com', '862760132898', 'sdasdas', 'asdasdd', 'KANPS6850M', 8, 11, 5, '2023-01-11 00:13:41', '2023-01-11 00:13:41', NULL),
(9, 1, '2023-01-19', 'subham.5ine23@gmail.com', '862760132898', 'adasdasd', 'asdasdasdad', 'KANPS6850M', 8, 12, 5, '2023-01-11 00:18:51', '2023-01-11 00:18:51', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employee_pictures`
--

CREATE TABLE `employee_pictures` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `images` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employee_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_pictures`
--

INSERT INTO `employee_pictures` (`id`, `images`, `employee_id`, `user_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'a3623e89-23bc-4d73-8a56-67f26ff58185-6769264_60111.webp', 9, 1, '2022-12-14 01:03:35', '2022-12-14 01:05:08', NULL),
(3, 'f7c076bb-6bb3-476d-b078-9f7ce2c5dd60-user.png', 5, 5, '2022-12-14 04:20:32', '2022-12-14 04:20:32', NULL),
(4, '0a00ae51-406f-474a-8eeb-400ffe4c5e83-_Adidas Solid  Polo T-Shirt.webp', 12, 12, '2023-01-16 05:52:07', '2023-01-16 05:52:07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employee_types`
--

CREATE TABLE `employee_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_types`
--

INSERT INTO `employee_types` (`id`, `name`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 'Permanent', 1, '2022-12-12 23:59:16', '2022-12-12 23:59:16'),
(3, 'Temporary', 1, '2022-12-12 23:59:22', '2022-12-12 23:59:22');

-- --------------------------------------------------------

--
-- Table structure for table `exit_modes`
--

CREATE TABLE `exit_modes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exit_modes`
--

INSERT INTO `exit_modes` (`id`, `name`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 'Resigned', 1, '2022-12-12 23:59:30', '2022-12-12 23:59:30'),
(3, 'Terminated', 1, '2022-12-12 23:59:47', '2022-12-12 23:59:47');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
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

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_12_12_054311_chage_users_table', 2),
(11, '2022_12_12_063721_departments', 3),
(12, '2022_12_12_063732_divisions', 3),
(13, '2022_12_12_063744_employee_types', 3),
(14, '2022_12_12_063755_designations', 3),
(15, '2022_12_12_063840_exit_modes', 3),
(16, '2022_12_12_102454_employee_personal_details', 4),
(18, '2022_12_12_102514_employee_bank_details', 4),
(19, '2022_12_12_102527_employee_emergency_details', 4),
(20, '2022_12_12_102539_employee_employment_details', 4),
(22, '2022_12_12_102504_employee_job_details', 5),
(24, '2022_12_14_052203_employee_pictures', 6),
(25, '2023_01_11_053139_add_ctc_to_user', 7),
(26, '2023_01_11_060730_ctc_fixed_items', 8),
(31, '2023_01_14_074943_payslip_download_reasons', 12),
(37, '2023_01_12_125750_payslip_downloads', 13),
(38, '2023_01_14_054054_ctcs', 13),
(39, '2023_01_11_112044_payslips', 14);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payslips`
--

CREATE TABLE `payslips` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `main_gross_salary` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `month_year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_days_of_month` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `working_days_of_month` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paid_leave_taken` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unpaid_leave_taken` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `worked_days` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `working_days_of_month_arrears` int(11) NOT NULL DEFAULT 0,
  `unpaid_leave_taken_arrears` int(11) NOT NULL DEFAULT 0,
  `allow_arrears` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payslips`
--

INSERT INTO `payslips` (`id`, `main_gross_salary`, `month_year`, `total_days_of_month`, `working_days_of_month`, `paid_leave_taken`, `unpaid_leave_taken`, `worked_days`, `user_id`, `working_days_of_month_arrears`, `unpaid_leave_taken_arrears`, `allow_arrears`, `created_at`, `updated_at`) VALUES
(5, '23452', '2022-11', '30', '26', '2', '3', '21', 12, 12, 3, 1, '2023-01-17 05:01:57', '2023-01-17 05:01:57'),
(6, '23452', '2022-12', '31', '26', '2', '3', '21', 12, 0, 0, 0, '2023-01-17 05:30:25', '2023-01-17 05:30:25');

-- --------------------------------------------------------

--
-- Table structure for table `payslip_downloads`
--

CREATE TABLE `payslip_downloads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `reason` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `payslip_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payslip_download_reasons`
--

CREATE TABLE `payslip_download_reasons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `reason` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payslip_download_reasons`
--

INSERT INTO `payslip_download_reasons` (`id`, `reason`, `created_at`, `updated_at`) VALUES
(3, 'test 2', '2023-01-14 03:22:16', '2023-01-14 03:22:16');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `userType` int(11) NOT NULL DEFAULT 2,
  `status` int(11) NOT NULL DEFAULT 1,
  `otp` int(11) DEFAULT NULL,
  `allowPasswordChange` int(11) NOT NULL DEFAULT 0,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jurysoft_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `email`, `phone`, `userType`, `status`, `otp`, `allowPasswordChange`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`, `last_name`, `jurysoft_id`) VALUES
(5, 'subham', 'subham.5ine@gmail.com', '7892156160', 1, 1, 4968, 0, '$2y$10$dlqE4zgHX25/Zov5kUDmjO4jml2o3ZZkhu6L0hG8Pp9ZbXxM5ntZ2', NULL, '2022-12-13 02:04:44', '2023-01-12 03:29:39', NULL, 'saha', 'JS-013'),
(6, 'subham', 'subham.5ine2@gmail.com', '7892156162', 2, 1, 8197, 0, '$2y$10$65l.MIi0ByDGgU.QwGwuJe.H0fN9O.maYSCHLTf5hZ0PyMI95VHo.', NULL, '2022-12-13 02:11:28', '2022-12-13 03:41:11', NULL, 'saha', NULL),
(9, 'subham', 'subham.5ine5@gmail.com', '7892156165', 1, 1, 8934, 0, '$2y$10$dr7x2sObbjM1pdT3ESyehOapFho5TqxgufrxqDNxR0Us7OQC0Cg.y', NULL, '2022-12-13 23:40:49', '2022-12-13 23:40:49', NULL, 'saha', NULL),
(11, 'subham', 'subham.5ine10@gmail.com', '7892156110', 2, 1, 9367, 0, '$2y$10$Wcf4anuRQDJ1p67vh3w05e0fK8fGTGr15DcJttXqf8Plfj5hBEpOe', NULL, '2023-01-11 00:13:41', '2023-01-12 00:01:29', NULL, 'saha', 'JS-11'),
(12, 'subham', 'subham.5ine23@gmail.com', '7892156123', 3, 1, 3986, 0, '$2y$10$Za3lco4.6RtnAfqBAzGXUuMM6aFcnF4KFgEbEKkYTg0r0ApkPu4Iy', NULL, '2023-01-11 00:18:51', '2023-01-17 04:50:31', NULL, 'saha', 'JS-012');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ctcs`
--
ALTER TABLE `ctcs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ctc_fixed_items`
--
ALTER TABLE `ctc_fixed_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `designations`
--
ALTER TABLE `designations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `divisions`
--
ALTER TABLE `divisions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_bank_details`
--
ALTER TABLE `employee_bank_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_emergency_details`
--
ALTER TABLE `employee_emergency_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_employment_details`
--
ALTER TABLE `employee_employment_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_job_details`
--
ALTER TABLE `employee_job_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_personal_details`
--
ALTER TABLE `employee_personal_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_pictures`
--
ALTER TABLE `employee_pictures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_types`
--
ALTER TABLE `employee_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exit_modes`
--
ALTER TABLE `exit_modes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payslips`
--
ALTER TABLE `payslips`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payslip_downloads`
--
ALTER TABLE `payslip_downloads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payslip_download_reasons`
--
ALTER TABLE `payslip_download_reasons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ctcs`
--
ALTER TABLE `ctcs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ctc_fixed_items`
--
ALTER TABLE `ctc_fixed_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `designations`
--
ALTER TABLE `designations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `divisions`
--
ALTER TABLE `divisions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `employee_bank_details`
--
ALTER TABLE `employee_bank_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `employee_emergency_details`
--
ALTER TABLE `employee_emergency_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `employee_employment_details`
--
ALTER TABLE `employee_employment_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `employee_job_details`
--
ALTER TABLE `employee_job_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `employee_personal_details`
--
ALTER TABLE `employee_personal_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `employee_pictures`
--
ALTER TABLE `employee_pictures`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `employee_types`
--
ALTER TABLE `employee_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `exit_modes`
--
ALTER TABLE `exit_modes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `payslips`
--
ALTER TABLE `payslips`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `payslip_downloads`
--
ALTER TABLE `payslip_downloads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payslip_download_reasons`
--
ALTER TABLE `payslip_download_reasons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
