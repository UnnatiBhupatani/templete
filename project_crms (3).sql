-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 27, 2025 at 01:08 PM
-- Server version: 8.0.30
-- PHP Version: 8.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project_crms`
--

-- --------------------------------------------------------

--
-- Table structure for table `assign_customers`
--

CREATE TABLE `assign_customers` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `customer_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assign_customers`
--

INSERT INTO `assign_customers` (`id`, `user_id`, `customer_id`) VALUES
(48, 22, 3),
(50, 23, 11),
(63, 24, 31);

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `customer_id` bigint UNSIGNED NOT NULL,
  `customer_FirstName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_LastName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_date` date NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `user_id`, `customer_id`, `customer_FirstName`, `customer_LastName`, `contact_date`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 9, 'meet', 'Bhupatani', '2025-02-18', 'sdAfdds', 'pending', '2025-02-21 06:19:11', '2025-02-21 06:22:19'),
(3, 2, 10, 'reema', 'gotecha', '2025-02-20', 'aaa', 'followup', '2025-02-21 06:22:50', '2025-02-21 07:42:24'),
(5, 19, 3, 'tirth', 'Bhupatani', '2025-02-22', 'new', 'followup', '2025-02-21 07:43:45', '2025-02-27 06:24:06'),
(6, 19, 1, 'Unnati', 'Bhupatani', '2025-02-15', 'newaaa', 'pending', '2025-02-21 07:44:43', '2025-02-25 01:33:14'),
(7, 24, 13, 'aakanxa', 'gadhvi', '2025-02-19', 'aaabb', 'done', '2025-02-25 06:24:05', '2025-02-25 06:24:33'),
(8, 22, 14, 'kalpita', 'kirve', '2025-02-14', 'sdasdsdf', 'followup', '2025-02-27 00:00:35', '2025-02-27 00:00:35');

-- --------------------------------------------------------

--
-- Table structure for table `contact_histories`
--

CREATE TABLE `contact_histories` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `customer_id` bigint UNSIGNED NOT NULL,
  `customer_FirstName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Customer_LastName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_date` date NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_histories`
--

INSERT INTO `contact_histories` (`id`, `user_id`, `customer_id`, `customer_FirstName`, `Customer_LastName`, `contact_date`, `description`, `contact_status`, `created_at`, `updated_at`) VALUES
(1, 2, 9, 'meet', 'Bhupatani', '2025-02-05', 'sdf', 'followup', '2025-02-21 06:19:11', '2025-02-21 06:19:11'),
(2, 2, 9, 'meet', 'Bhupatani', '2025-02-26', 'dsfsdfdg', 'done', '2025-02-21 06:19:52', '2025-02-21 06:19:52'),
(3, 2, 9, 'meet', 'Bhupatani', '2025-02-06', 'cxvfg', 'followup', '2025-02-21 06:22:00', '2025-02-21 06:22:00'),
(4, 2, 9, 'meet', 'Bhupatani', '2025-02-18', 'sdAfdds', 'pending', '2025-02-21 06:22:19', '2025-02-21 06:22:19'),
(5, 2, 10, 'reema', 'gotecha', '2025-02-14', 'sdsafdsdf', 'followup', '2025-02-21 06:22:50', '2025-02-21 06:22:50'),
(6, 2, 10, 'reema', 'gotecha', '2025-02-08', 'aaaaa', 'done', '2025-02-21 06:23:09', '2025-02-21 06:23:09'),
(7, 2, 9, 'meet', 'Bhupatani', '2025-02-09', 'aaaa', 'pending', '2025-02-21 06:27:03', '2025-02-21 06:27:03'),
(8, 2, 10, 'reema', 'gotecha', '2025-02-08', 'bbbbb', 'followup', '2025-02-21 06:28:20', '2025-02-21 06:28:20'),
(9, 2, 10, 'reema', 'gotecha', '2025-02-15', 'bbbbbccc', 'done', '2025-02-21 06:28:40', '2025-02-21 06:28:40'),
(10, 19, 3, 'tirth', 'Bhupatani', '2025-02-12', 'aaaaaa', 'followup', '2025-02-21 07:41:25', '2025-02-21 07:41:25'),
(11, 19, 3, 'tirth', 'Bhupatani', '2025-02-20', 'aaa', 'followup', '2025-02-21 07:42:24', '2025-02-21 07:42:24'),
(12, 19, 3, 'tirth', 'Bhupatani', '2025-02-12', 'asad', 'followup', '2025-02-21 07:43:45', '2025-02-21 07:43:45'),
(13, 19, 3, 'tirth', 'Bhupatani', '2025-02-06', 'asadassad', 'followup', '2025-02-21 07:43:56', '2025-02-21 07:43:56'),
(14, 19, 3, 'tirth', 'Bhupatani', '2025-02-06', 'aaaaaaaaa', 'followup', '2025-02-21 07:44:11', '2025-02-21 07:44:11'),
(15, 19, 1, 'Unnati', 'Bhupatani', '2025-02-15', 'asdasdsd', 'followup', '2025-02-21 07:44:43', '2025-02-21 07:44:43'),
(16, 19, 1, 'Unnati', 'Bhupatani', '2025-02-20', 'bbbbbbb', 'done', '2025-02-21 07:45:02', '2025-02-21 07:45:02'),
(17, 19, 3, 'tirth', 'Bhupatani', '2025-02-13', 'aaaaaaaaa', 'followup', '2025-02-21 07:51:59', '2025-02-21 07:51:59'),
(18, 19, 1, 'Unnati', 'Bhupatani', '2025-02-22', 'ccccccc', 'done', '2025-02-23 23:35:23', '2025-02-23 23:35:23'),
(19, 19, 3, 'tirth', 'Bhupatani', '2025-02-13', 'new des', 'done', '2025-02-24 00:10:12', '2025-02-24 00:10:12'),
(20, 19, 1, 'Unnati', 'Bhupatani', '2025-02-22', 'new', 'done', '2025-02-24 00:11:53', '2025-02-24 00:11:53'),
(21, 19, 1, 'Unnati', 'Bhupatani', '2025-02-22', 'new', 'done', '2025-02-24 07:31:31', '2025-02-24 07:31:31'),
(22, 22, 1, 'Unnati', 'Bhupatani', '2025-02-15', 'newaaa', 'pending', '2025-02-25 01:33:14', '2025-02-25 01:33:14'),
(23, 19, 10, 'reema', 'gotecha', '2025-02-20', 'aaa', 'followup', '2025-02-25 03:31:08', '2025-02-25 03:31:08'),
(24, 24, 13, 'aakanxa', 'gadhvi', '2025-02-19', 'aaaaa', 'followup', '2025-02-25 06:24:05', '2025-02-25 06:24:05'),
(25, 24, 13, 'aakanxa', 'gadhvi', '2025-02-19', 'aaabb', 'done', '2025-02-25 06:24:33', '2025-02-25 06:24:33'),
(26, 22, 3, 'tirth', 'Bhupatani', '2025-02-13', 'new dessaasd', 'followup', '2025-02-25 07:06:15', '2025-02-25 07:06:15'),
(27, 22, 14, 'kalpita', 'kirve', '2025-02-14', 'sdasdsdf', 'followup', '2025-02-27 00:00:35', '2025-02-27 00:00:35'),
(28, 22, 3, 'tirth', 'Bhupatani', '2025-02-22', 'new', 'followup', '2025-02-27 06:24:06', '2025-02-27 06:24:06');

-- --------------------------------------------------------

--
-- Table structure for table `customer_details`
--

CREATE TABLE `customer_details` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `customer_FirstName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_LastName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_phoneNo` int NOT NULL,
  `customer_city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_details`
--

INSERT INTO `customer_details` (`id`, `user_id`, `customer_FirstName`, `customer_LastName`, `customer_email`, `customer_gender`, `customer_phoneNo`, `customer_city`, `customer_address`, `created_at`, `updated_at`) VALUES
(1, 19, 'Unnati', 'Bhupatani', 'unnati@gmail.com', 'female', 1234561235, 'ahmedabad', 'bbbb', '2025-02-21 05:54:10', '2025-02-27 03:41:15'),
(3, 19, 'tirth', 'Bhupatani', 'unnati@gmail.com', 'male', 1234561211, 'junagadh', 'sdfdgdfg', '2025-02-21 05:58:22', '2025-02-27 07:01:55'),
(9, 2, 'meet', 'Bhupatani', 'meet@gmail.com', 'female', 1234561235, 'baroda', 'wdfgfgteg', '2025-02-21 06:15:55', '2025-02-21 06:15:55'),
(10, 2, 'reema', 'gotecha', 'reema@gmail.com', 'female', 1234561235, 'baroda', 'asadasd', '2025-02-21 06:22:40', '2025-02-21 06:22:40'),
(11, 19, 'divya', 'ramavat', 'divya123@gmail.com', 'female', 1234561235, 'junagadh', 'aaaabb', '2025-02-24 00:15:29', '2025-02-24 00:15:42'),
(13, 19, 'aakanxa', 'gadhvi', 'ak@gmail.com', 'female', 1234561235, 'baroda', 'asaSASD', '2025-02-25 04:02:37', '2025-02-25 04:03:12'),
(14, 19, 'kalpita', 'kirve', 'kalpita@gmail.com', 'female', 1234561235, 'ahmedabad', 'aaaaaaa', '2025-02-25 06:07:14', '2025-02-25 06:07:14'),
(15, 19, 'mivansh', 'bhupatani', 'mivansh@gmail.com', 'male', 1234567890, 'ahmedabad', 'aaaa', '2025-02-25 06:23:19', '2025-02-25 06:23:19'),
(31, 19, 'mivu', 'bhupatani', 'mivu@gmail.com', 'male', 1234561211, 'ahmedabad', 'saad', '2025-02-27 04:13:31', '2025-02-27 04:13:31'),
(36, 19, 'sandhya', 'shah', 'sandhya@gmail.com', 'female', 1234561211, 'junagadh', 'asdsdgdfg', '2025-02-27 06:39:28', '2025-02-27 06:39:28'),
(37, 19, 'rohit', 'LAL', 'rohit@gmail.com', 'male', 1234561235, 'ahmedabad', 'asdads', '2025-02-27 06:39:57', '2025-02-27 06:40:38'),
(38, 19, 'rahul', 'khan', 'rahul@gmail.com', 'male', 1234561235, 'baroda', 'ASAD', '2025-02-27 06:40:25', '2025-02-27 06:40:25'),
(39, 19, 'gopi', 'bhupatani', 'gopi@gmail.com', 'female', 1234561235, 'baroda', 'adsadsf', '2025-02-27 07:36:35', '2025-02-27 07:36:35'),
(40, 19, 'virat', 'kohli', 'virat@gmail.com', 'male', 1234561235, 'ahmedabad', 'sdasdsf', '2025-02-27 07:37:01', '2025-02-27 07:37:01'),
(41, 19, 'arjun', 'kapoor', 'arjun@gmail.com', 'male', 1234561235, 'junagadh', 'sdfdg', '2025-02-27 07:37:58', '2025-02-27 07:37:58');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_02_19_054100_create_cutomer_details_table', 2),
(5, '2025_02_19_055657_create_customer_details_table', 3),
(6, '2025_02_19_060230_create_customer_details_table', 4),
(7, '2025_02_19_062512_create_customer_details_table', 5),
(8, '2025_02_19_063000_create_customer_data_table', 6),
(11, '2025_02_19_085648_create_roles_table', 9),
(12, '2025_02_19_085747_create_permissions_table', 9),
(13, '2025_02_19_092239_role_permission', 10),
(14, '0001_01_01_000000_create_users_table', 11),
(15, '2025_02_20_085909_user_customer', 12),
(32, '2025_02_19_063302_create_customer_details_table', 21),
(33, '2025_02_20_132553_create_contacts_table', 22),
(34, '2025_02_21_054209_create_contact_histories_table', 23),
(38, '2025_02_25_051422_create_assign_customers_table', 24);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `permission_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `permission_name`, `created_at`, `updated_at`) VALUES
(1, 'add_customer', '2025-02-12 12:23:28', '2025-02-19 12:23:28'),
(2, 'edit_customer', '2025-02-12 12:23:28', '2025-02-19 12:23:28'),
(3, 'delete_customer', '2025-02-12 12:23:28', '2025-02-19 12:23:28'),
(4, 'manage_user', '2025-02-12 12:23:28', '2025-02-19 12:23:28'),
(5, 'manage_permission', '2025-02-12 12:23:28', '2025-02-19 12:23:28'),
(6, 'assign_customer', '2025-02-12 12:23:28', '2025-02-19 12:23:28'),
(7, 'contact_customer', '2025-02-12 12:23:28', '2025-02-19 12:23:28');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `role_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', '2025-02-13 08:59:42', '2025-02-18 18:30:00'),
(2, 'super_admin', NULL, NULL),
(4, 'Executive', '2025-02-24 12:52:10', '2025-02-19 12:23:28');

-- --------------------------------------------------------

--
-- Table structure for table `role_permissions`
--

CREATE TABLE `role_permissions` (
  `role_id` bigint UNSIGNED NOT NULL,
  `permission_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_permissions`
--

INSERT INTO `role_permissions` (`role_id`, `permission_id`) VALUES
(1, 1),
(2, 1),
(1, 2),
(2, 2),
(1, 3),
(2, 3),
(1, 4),
(2, 4),
(1, 5),
(2, 5),
(1, 6),
(2, 6),
(4, 7);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('pDUU3DGZH05eGfh1yUJGfuukjIoY73w290Wb04Zd', 19, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiWDdSeVdxSVRQZG85RWJaUFZKV043QW1xVmRJclQ5OW9CVG5kWFVqbCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jdXN0b21lci9kZXRhaWxzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTk7fQ==', 1740661681);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `username`, `password`, `created_at`, `updated_at`) VALUES
(2, 1, 'Dipali Bhupatani', '$2y$12$ERiu/ma41SfarUbkQcQsae1wRmizpBYw6WYbzsmLt9JPRTXiKaB.q', '2025-02-19 06:02:45', '2025-02-24 07:23:39'),
(19, 2, 'Unnati Bhupatani', '$2y$12$K5lMecc6VZCDKX233BGHCunkwmR9qTZEY.FcILGFg.Axy7xRErPE.', '2025-02-20 01:54:14', '2025-02-24 07:23:16'),
(22, 4, 'Divya Ramavat', '$2y$12$B1PS/WB6ujbV8i/kLK.dFOEeSxBOdCTCo64dDA9LP4h78IbsIapb6', '2025-02-24 07:22:59', '2025-02-24 07:22:59'),
(23, 4, 'shaily doshi', '$2y$12$RKL15N17gTlnfOPHf/Wvfu4/eK6im.ITye6.KqsBsx5h84UrFDv7.', '2025-02-24 23:37:55', '2025-02-24 23:37:55'),
(24, 4, 'sapna pal', '$2y$12$j5F8akuy5lpZsFF77EWX9uzSqr0hyYKf4Ds8.wMcMjIuiCnocJJb6', '2025-02-24 23:38:09', '2025-02-24 23:38:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assign_customers`
--
ALTER TABLE `assign_customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `assign_customers_customer_id_unique` (`customer_id`),
  ADD KEY `assign_customers_user_id_foreign` (`user_id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contacts_user_id_foreign` (`user_id`),
  ADD KEY `contacts_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `contact_histories`
--
ALTER TABLE `contact_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contact_histories_user_id_foreign` (`user_id`),
  ADD KEY `contact_histories_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `customer_details`
--
ALTER TABLE `customer_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_details_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_permissions`
--
ALTER TABLE `role_permissions`
  ADD UNIQUE KEY `role_permissions_role_id_permission_id_unique` (`role_id`,`permission_id`),
  ADD KEY `role_permissions_permission_id_foreign` (`permission_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assign_customers`
--
ALTER TABLE `assign_customers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `contact_histories`
--
ALTER TABLE `contact_histories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `customer_details`
--
ALTER TABLE `customer_details`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `assign_customers`
--
ALTER TABLE `assign_customers`
  ADD CONSTRAINT `assign_customers_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customer_details` (`id`),
  ADD CONSTRAINT `assign_customers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `contacts`
--
ALTER TABLE `contacts`
  ADD CONSTRAINT `contacts_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customer_details` (`id`),
  ADD CONSTRAINT `contacts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `contact_histories`
--
ALTER TABLE `contact_histories`
  ADD CONSTRAINT `contact_histories_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customer_details` (`id`),
  ADD CONSTRAINT `contact_histories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `customer_details`
--
ALTER TABLE `customer_details`
  ADD CONSTRAINT `customer_details_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `role_permissions`
--
ALTER TABLE `role_permissions`
  ADD CONSTRAINT `role_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`),
  ADD CONSTRAINT `role_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
