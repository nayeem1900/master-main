-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 22, 2022 at 11:53 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `master`
--

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
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `sequance` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(5, '2022_03_28_132953_create_menus_table', 1),
(6, '2022_03_29_122154_create_add_menu_column_slug_table', 1),
(7, '2022_06_10_055237_create_add_user_column_table', 2),
(8, '2022_07_22_044119_create_user_extends_props_table', 3),
(9, '2022_07_22_045657_create_add_extend_props_user_column_table', 3);

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `extend_props` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `unique_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '1 = Active, 0 = Inactive',
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `extend_props`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `unique_id`, `status`, `description`, `created_by`, `updated_by`) VALUES
(1, 'Harun or Rashid Chowdhury', 'nayeembd84@gmail.com', NULL, NULL, '$2y$10$boHThDsiTGzl9WM2zc8seO0luxLbiiBBqX/THJ9nmcEAFfj/SNSRW', NULL, '2022-06-09 23:24:19', '2022-06-09 23:24:19', '', 1, NULL, 0, 0),
(2, 'test', 'tet@gmail.com', NULL, NULL, '$2y$10$rYhbKA0X20ERujHur7it.ObH/lC9AQW1C5d.r.z2HpaN3bp5KZHCi', NULL, '2022-06-10 00:45:23', '2022-06-10 00:45:23', '8477', 1, NULL, NULL, NULL),
(3, 'Nayeem', 'test1@gmail.com', NULL, NULL, '$2y$10$5ChUWZ8OKoPlthwI6tgdb.o6xyG62XcUOehFQl5ooNV00.SxKpm9W', NULL, '2022-06-10 20:20:24', '2022-06-10 20:20:24', '2759', 1, NULL, NULL, NULL),
(4, 'Nayeem', 'nayeem@gmail.com', NULL, NULL, '$2y$10$6vX.TI05m7DnltaTqOS4EOJFmSJ4SOm4/DvtweEXHCNK4jK1Iw3DO', NULL, '2022-06-10 20:25:54', '2022-06-10 20:25:54', '4248', 1, NULL, NULL, NULL),
(5, 'gg', 'gg@gmail.com', NULL, NULL, '$2y$10$rBihZJSVUwQZO983Ajvck./kC6FcXASdemgnhtdUpVMY7n2VJ/vmq', NULL, '2022-06-10 20:39:33', '2022-06-10 20:39:33', '345', 1, NULL, NULL, NULL),
(6, 'eee', 'e@yahoo.com', NULL, NULL, '$2y$10$VCbu2u73Ap3d0R7.zX.8gOIa4kq9SH8fUV/WdavCZHliBjRofTVbW', NULL, '2022-06-10 20:51:20', '2022-06-10 20:51:20', '7498', 1, NULL, NULL, NULL),
(7, 'a', 'a@yahoo.com', NULL, NULL, '$2y$10$Hs2upTckySm8/XSUZhW9n.zd0Ae0pIjVy8joikwUR6nXecPbRbdkm', NULL, '2022-06-14 18:41:47', '2022-06-14 18:41:47', '9222', 1, NULL, NULL, NULL),
(8, 'Kawser', 'kawser@yahoo.com', NULL, NULL, '$2y$10$pqU.euzNCXW6h5GEVZ4FuOo1niAwyr7SvUd.zlNio/l/1IvsB/XJ6', NULL, '2022-07-21 22:19:00', '2022-07-21 22:19:00', '42', 1, NULL, NULL, NULL),
(10, 'vvvvv', 'e@gmail.com', '{\"name\":\"vvvvv\",\"email\":\"e@gmail.com\",\"password\":\"123456\",\"status\":\"1\"}', NULL, '123456', NULL, '2022-07-21 23:39:18', '2022-07-21 23:39:18', '1', 1, NULL, NULL, NULL),
(12, 'Karim', '3084e@gmail.com', '{\"father_name\":\"jasim\",\"mother_name\":\"Khadija\",\"address\":\"Rajshashi\"}', NULL, '123456', NULL, '2022-07-21 23:54:32', '2022-07-21 23:54:32', '1', 1, NULL, NULL, NULL),
(13, 'Karim', '9716e@gmail.com', '{\"father_name\":\"jasim\",\"mother_name\":\"Khadija\",\"address\":\"Rajshashi\"}', NULL, '123456', NULL, '2022-07-21 23:55:19', '2022-07-21 23:55:19', '1', 1, NULL, NULL, NULL),
(14, 'Karim', '5030e@gmail.com', '{\"father_name\":\"jasim\",\"mother_name\":\"Khadija\",\"address\":\"Rajshashi\"}', NULL, '123456', NULL, '2022-07-22 00:21:53', '2022-07-22 00:21:53', '1', 1, NULL, NULL, NULL),
(15, 'Karim', '1621e@gmail.com', '{\"father_name\":\"jasim\",\"mother_name\":\"Khadija\",\"address\":\"Rajshashi\"}', NULL, '123456', NULL, '2022-07-22 00:22:27', '2022-07-22 00:22:27', '1', 1, NULL, NULL, NULL),
(16, 'Karim', '1636e@gmail.com', '{\"father_name\":\"jasim\",\"mother_name\":\"Khadija\",\"address\":\"Rajshashi\"}', NULL, '123456', NULL, '2022-07-22 00:29:51', '2022-07-22 00:29:51', '1', 1, NULL, NULL, NULL),
(17, 'Karim', '9291e@gmail.com', '{\"father_name\":\"jasim\",\"mother_name\":\"Khadija\",\"address\":\"Rajshashi\"}', NULL, '123456', NULL, '2022-07-22 00:30:29', '2022-07-22 00:30:29', '1', 1, NULL, NULL, NULL),
(18, 'Karim', '7170e@gmail.com', '{\"father_name\":\"jasim\",\"mother_name\":\"Khadija\",\"address\":\"Rajshashi\"}', NULL, '123456', NULL, '2022-07-22 00:30:43', '2022-07-22 00:30:43', '1', 1, NULL, NULL, NULL),
(19, 'Karim', '2571e@gmail.com', '{\"father_nameddd\":\"jasim\",\"mother_name\":\"Khadija\",\"address\":\"Rajshashi\"}', NULL, '123456', NULL, '2022-07-22 00:31:06', '2022-07-22 00:31:06', '1', 1, NULL, NULL, NULL),
(20, 'Karim', '2112e@gmail.com', '{\"father_name\":\"jasim\",\"mother_name\":\"Khadija\",\"address\":\"Rajshashi\"}', NULL, '123456', NULL, '2022-07-22 00:32:59', '2022-07-22 00:32:59', '1', 1, NULL, NULL, NULL),
(21, 'Karim', '1248e@gmail.com', '{\"father_name\":\"jasim\",\"mother_name\":\"Khadija\",\"address\":\"Rajshashtttti\"}', NULL, '123456', NULL, '2022-07-22 00:33:24', '2022-07-22 00:33:24', '1', 1, NULL, NULL, NULL),
(22, 'Karim', '4012e@gmail.com', '{\"father_name\":\"jasim\",\"mother_name\":\"Khadija\",\"address\":\"Rajshashi\"}', NULL, '123456', NULL, '2022-07-22 00:40:18', '2022-07-22 00:40:18', '1', 1, NULL, NULL, NULL),
(23, 'Karim', '7193e@gmail.com', '{\"father_name\":\"jasim\",\"mother_name\":\"Khadija\",\"address\":\"Rajshashi\"}', NULL, '123456', NULL, '2022-07-22 00:40:24', '2022-07-22 00:40:24', '1', 1, NULL, NULL, NULL),
(24, 'majadul', 'majadul@gmail.com', '[]', NULL, '$2y$10$Qkxi1pkAM0rGHQ0Q1QotaOu.4mh/CI31kSf66ZIBe7aTkaozsTVwm', NULL, '2022-07-22 01:03:17', '2022-07-22 01:03:17', 'ef4xnp4lu0', 1, NULL, NULL, NULL),
(25, 'majadul', 'majadul02@gmail.com', '{\"\'father_name\'\":\"robiin\"}', NULL, '$2y$10$xJ/8/BgODkT8.FHUEbqISOOMhRuASWyFQDaiGakDLiL7wWA/tPtw6', NULL, '2022-07-22 01:05:29', '2022-07-22 01:05:29', '86dsv25dq2', 1, NULL, NULL, NULL),
(26, 'Shohagi', 'majadul222@gmail.com', '{\"father_name\":\"shohagh\",\"mother_name\":\"Rohima\"}', NULL, '$2y$10$xRbM4ICKFRLFLinlAbT5eOMUYVm89Xkj8yqx7SaynnwbqTzMYjylG', NULL, '2022-07-22 01:06:47', '2022-07-22 01:06:47', '86u6vl8957', 1, NULL, NULL, NULL),
(27, 'Shohagi00', 'majadu00l222@gmail.com', 'null', NULL, '$2y$10$0fgW9BgN6qTQXFbhlwCn2.c.aHrM6u3E02Rfk8u5DIIiMw7YLhJlC', NULL, '2022-07-22 01:08:29', '2022-07-22 01:08:29', '3mpnjlav18', 1, NULL, NULL, NULL),
(29, 'Shohagi0000', 'majadu00ldd222@gmail.com', NULL, NULL, '$2y$10$SeZoOxb9MBcn196xdCIzzOVF8cSfvwTU4PmGbMhV8kGg5xyz3//1m', NULL, '2022-07-22 01:14:13', '2022-07-22 01:14:13', 'yf343dcj47', 1, NULL, NULL, NULL),
(30, 'Shohagi0000', 'majad00ldd222@gmail.com', NULL, NULL, '$2y$10$VTTGSPhZ4vze/l7qHO08.uTKq0CWrsoTTKy9nkuEud0xxXNGg4nrq', NULL, '2022-07-22 01:15:14', '2022-07-22 01:15:14', 'a2wqdfo66s', 1, NULL, NULL, NULL),
(31, 'Shohagi1000', 'majaad00ldd222@gmail.com', NULL, NULL, '$2y$10$TGv88jt7h6kz9TCu3Ou71ONFe/teMIVAotOT17GHvzQzSy//LXyym', NULL, '2022-07-22 01:16:00', '2022-07-22 01:16:00', 'q6gpdaunfp', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_extend_props`
--

CREATE TABLE `user_extend_props` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_extend_props`
--

INSERT INTO `user_extend_props` (`id`, `user_id`, `field_name`, `value`, `created_at`, `updated_at`) VALUES
(1, '22', 'father_name', 'jasim', '2022-07-22 00:40:18', '2022-07-22 00:40:18'),
(2, '22', 'mother_name', 'Khadija', '2022-07-22 00:40:18', '2022-07-22 00:40:18'),
(3, '22', 'address', 'Rajshashi', '2022-07-22 00:40:18', '2022-07-22 00:40:18'),
(4, '23', 'father_name', 'jasim', '2022-07-22 00:40:24', '2022-07-22 00:40:24'),
(5, '23', 'mother_name', 'Khadija', '2022-07-22 00:40:24', '2022-07-22 00:40:24'),
(6, '23', 'address', 'Rajshashi', '2022-07-22 00:40:24', '2022-07-22 00:40:24'),
(7, '25', '\'father_name\'', 'robiin', '2022-07-22 01:05:29', '2022-07-22 01:05:29'),
(8, '26', 'father_name', 'shohagh', '2022-07-22 01:06:47', '2022-07-22 01:06:47'),
(9, '26', 'mother_name', 'Rohima', '2022-07-22 01:06:47', '2022-07-22 01:06:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

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
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_extend_props`
--
ALTER TABLE `user_extend_props`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `user_extend_props`
--
ALTER TABLE `user_extend_props`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
