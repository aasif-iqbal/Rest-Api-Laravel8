-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 25, 2021 at 11:06 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rest_api_laravel8`
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
(5, '2021_06_19_080049_create_projects_table', 2),
(6, '2021_06_22_040920_create_tasks_table', 3);

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

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 13, 'authToken', 'd2c9c543a6ca0824b207d4354cb9b5af6e0b87122d5fd6ccd8066fd704e234a2', '[\"*\"]', NULL, '2021-06-19 00:37:21', '2021-06-19 00:37:21'),
(2, 'App\\Models\\User', 13, 'authToken', '0b1a011cb1a6f4e03ba0f0ef48d099e7bd9b4e7b4cf0bc569b7e2908da2debeb', '[\"*\"]', NULL, '2021-06-19 00:39:02', '2021-06-19 00:39:02'),
(3, 'App\\Models\\User', 13, 'authToken', 'f1d08655c9641908504ea36a34e0ce2721efe98e44fdf6e6e195f2db564086d3', '[\"*\"]', NULL, '2021-06-19 00:39:05', '2021-06-19 00:39:05'),
(4, 'App\\Models\\User', 13, 'authToken', '10bface7ecc3274b1567988834e0981b5efe7ad8cef49239c13ad47c7a79625e', '[\"*\"]', NULL, '2021-06-19 00:42:41', '2021-06-19 00:42:41'),
(5, 'App\\Models\\User', 13, 'authToken', 'e50a3646b45343a3803af5f5220b7fd3a21657338c86e26e532649b091b7c4a2', '[\"*\"]', NULL, '2021-06-19 00:43:00', '2021-06-19 00:43:00'),
(6, 'App\\Models\\User', 13, 'authToken', '666b340d28ffe661aa12c9993905553cadfff5246ea340abe428b8c59042a330', '[\"*\"]', NULL, '2021-06-19 00:43:02', '2021-06-19 00:43:02'),
(7, 'App\\Models\\User', 13, 'authToken', '5b9325b2488ab9cfd43a8cb2d3791eb8d07d68be87e35ea8e395682eaa71b014', '[\"*\"]', NULL, '2021-06-19 00:43:07', '2021-06-19 00:43:07'),
(8, 'App\\Models\\User', 13, 'authToken', '0e1e97aadc2e9f81d751dc5a8fd755b02eff7fa0507e4fb36c749e18c38350f9', '[\"*\"]', '2021-06-21 04:52:57', '2021-06-19 01:50:21', '2021-06-21 04:52:57'),
(9, 'App\\Models\\User', 13, 'authToken', 'c15982d0cb9b1f36c427e8564597f94b7c71bbc9f3794900cc3a42c5e3db3c12', '[\"*\"]', NULL, '2021-06-19 02:13:18', '2021-06-19 02:13:18'),
(10, 'App\\Models\\User', 13, 'authToken', '3bf66b510bbe67ba51aa23955c649a36caa2417810317b036a8bf18d692ea5b2', '[\"*\"]', '2021-06-19 05:16:15', '2021-06-19 03:47:27', '2021-06-19 05:16:15'),
(11, 'App\\Models\\User', 13, 'authToken', '364dabcf3dd7926513e9d94e157fd5a2ac896da6920125aca13a8536ad0c4156', '[\"*\"]', NULL, '2021-06-19 04:48:34', '2021-06-19 04:48:34'),
(12, 'App\\Models\\User', 13, 'authToken', '35c795afbecb6267778286b17593d4f831ba3e0b8125c01a877ecaecc60e56fc', '[\"*\"]', '2021-06-20 07:34:41', '2021-06-19 05:17:48', '2021-06-20 07:34:41'),
(13, 'App\\Models\\User', 13, 'authToken', 'b7f74fe29c344259baab9429f15c0965908790416c713ef150fc504b2bb52b09', '[\"*\"]', NULL, '2021-06-19 05:26:22', '2021-06-19 05:26:22'),
(14, 'App\\Models\\User', 13, 'authToken', 'cd7a6744202a180b42fcb9bca594faac635cebfd5dec2353c89d466a3dcfd645', '[\"*\"]', '2021-06-21 04:31:46', '2021-06-20 01:38:10', '2021-06-21 04:31:46'),
(15, 'App\\Models\\User', 13, 'authToken', 'd5872913afe2db25610deff047d4faa9f69739875a96e8f7244e2724bc152a6c', '[\"*\"]', '2021-06-20 03:51:13', '2021-06-20 03:50:44', '2021-06-20 03:51:13'),
(16, 'App\\Models\\User', 1, 'authToken', '06071dbb9c313d23d594dd7d35fffe41ffc836bc45178802b99d3768a1063822', '[\"*\"]', NULL, '2021-06-20 03:54:08', '2021-06-20 03:54:08'),
(17, 'App\\Models\\User', 1, 'authToken', 'dc609d64a87f6b267b9db52fd34558730a95346c414a898eac6f362ed46938c0', '[\"*\"]', '2021-06-20 04:37:56', '2021-06-20 03:54:16', '2021-06-20 04:37:56'),
(18, 'App\\Models\\User', 1, 'authToken', 'dc5b720e8dd40ecd2c729795dff6142b74721de1530cb0c547e7eefb9b62920c', '[\"*\"]', '2021-06-22 06:03:58', '2021-06-20 04:34:24', '2021-06-22 06:03:58'),
(19, 'App\\Models\\User', 2, 'authToken', '1176ed01aea4c10a550095ee81ae360213f05efdf824f1c09d5c46ead9b0e11f', '[\"*\"]', '2021-06-25 00:02:00', '2021-06-21 04:37:48', '2021-06-25 00:02:00'),
(20, 'App\\Models\\User', 2, 'authToken', '7ae2202c211bac7b18f024d9c4ea97084fe4768df4dac111232eaa23ad836b74', '[\"*\"]', '2021-06-24 06:22:56', '2021-06-24 06:13:52', '2021-06-24 06:22:56'),
(21, 'App\\Models\\User', 1, 'authToken', '01796c94199f03b4fb7af845ed87f9d7e9f40ff67da99bd7b15c90816dc03880', '[\"*\"]', '2021-06-25 03:35:56', '2021-06-24 06:33:47', '2021-06-25 03:35:56');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `user_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 'qui', '2021-06-19 02:56:57', '2021-06-19 02:56:57'),
(2, 1, 'et', '2021-06-19 02:56:57', '2021-06-19 02:56:57'),
(3, 1, 'natus', '2021-06-19 02:56:57', '2021-06-19 02:56:57'),
(4, 1, 'corrupti', '2021-06-19 02:56:57', '2021-06-19 02:56:57'),
(5, 1, 'exercitationem', '2021-06-19 02:56:57', '2021-06-19 02:56:57'),
(6, 1, 'similique', '2021-06-19 02:56:57', '2021-06-19 02:56:57'),
(7, 1, 'et', '2021-06-19 02:56:57', '2021-06-19 02:56:57'),
(8, 1, 'assumenda', '2021-06-19 02:56:57', '2021-06-19 02:56:57'),
(9, 1, 'natus', '2021-06-19 02:56:57', '2021-06-19 02:56:57'),
(10, 1, 'cumque', '2021-06-19 02:56:57', '2021-06-19 02:56:57'),
(11, 1, 'earum', '2021-06-19 05:35:47', '2021-06-19 05:35:47'),
(12, 1, 'odit', '2021-06-19 05:35:47', '2021-06-19 05:35:47'),
(13, 1, 'quibusdam', '2021-06-19 05:35:47', '2021-06-19 05:35:47'),
(14, 1, 'est', '2021-06-19 05:35:47', '2021-06-19 05:35:47'),
(15, 1, 'asperiores', '2021-06-19 05:35:47', '2021-06-19 05:35:47'),
(16, 1, 'soluta', '2021-06-19 05:35:47', '2021-06-19 05:35:47'),
(17, 1, 'ut', '2021-06-19 05:35:47', '2021-06-19 05:35:47'),
(18, 1, 'incidunt', '2021-06-19 05:35:47', '2021-06-19 05:35:47'),
(21, 13, 'new project', '2021-06-20 06:17:11', '2021-06-20 06:17:11'),
(22, 13, 'new project', '2021-06-20 06:19:45', '2021-06-20 06:19:45'),
(23, 13, 'new project', '2021-06-20 06:24:41', '2021-06-20 06:24:41'),
(24, 1, 'Updated Laravel Project', '2021-06-20 07:36:18', '2021-06-20 07:52:27');

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `due_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `project_id`, `name`, `due_date`, `created_at`, `updated_at`) VALUES
(1, 1, 'Animi ab delectus minima dolore. Ut sit dolorum est totam iste id recusandae in. Quisquam voluptatem inventore facere aliquam inventore est.', NULL, '2021-06-21 23:32:35', '2021-06-21 23:32:35'),
(2, 1, 'Voluptatum dolorem accusantium corporis dolor. Qui occaecati provident odio odio ipsa commodi. Consectetur mollitia molestias ad consectetur est. Inventore qui non excepturi quod autem.', NULL, '2021-06-21 23:32:35', '2021-06-21 23:32:35'),
(3, 1, 'Commodi qui tempore consequuntur eos expedita dolorem. Architecto aut et non tempora. Natus aut quis magni inventore sit asperiores non praesentium.', NULL, '2021-06-21 23:32:35', '2021-06-21 23:32:35'),
(4, 1, 'Facilis quo iste ea. Voluptatem sequi dolor impedit. Magnam voluptatem ea quibusdam magni. Culpa incidunt ipsum nihil.', NULL, '2021-06-21 23:32:35', '2021-06-21 23:32:35'),
(5, 1, 'Possimus perspiciatis consectetur sit. Molestiae quasi nemo commodi aut mollitia dolore ipsam. Quidem quia praesentium sunt omnis ullam.', NULL, '2021-06-21 23:32:35', '2021-06-21 23:32:35'),
(6, 2, 'Aut voluptas dolores iusto quidem. Ipsam optio tenetur velit quis nobis. Architecto voluptatem doloremque facilis. Maiores iste in rerum similique ut magni et perferendis.', NULL, '2021-06-21 23:36:03', '2021-06-21 23:36:03'),
(7, 2, 'Id dolorem cumque sed. Voluptatum est sunt dolor hic enim quasi cumque. Delectus tempora iure et tempora consequatur ab nobis.', NULL, '2021-06-21 23:36:03', '2021-06-21 23:36:03'),
(8, 2, 'Minima modi ea saepe excepturi ratione nostrum iure. Accusamus quo temporibus et. Quis vitae sunt id harum est. Nihil ut quis et voluptatum sunt quia magnam et. Facilis quam tempora illo est.', NULL, '2021-06-21 23:36:03', '2021-06-21 23:36:03'),
(9, 23, 'Itaque quidem recusandae voluptatibus doloremque. Vero blanditiis impedit sed laboriosam. Et cupiditate architecto harum accusantium temporibus corporis harum.', NULL, '2021-06-21 23:36:52', '2021-06-21 23:36:52'),
(10, 23, 'Enim quia quasi qui aut earum nihil. Voluptas dolor eligendi porro magni autem consequatur. Corporis vel voluptate inventore dolorem eligendi sed. Quos enim eaque sit non illo.', NULL, '2021-06-21 23:36:52', '2021-06-21 23:36:52'),
(12, 23, 'Name Updated', NULL, '2021-06-21 23:36:52', '2021-06-22 06:41:35'),
(14, 2, 'User 1 ,project_id:2 and Task_id:14', '2021-12-09', '2021-06-22 06:38:38', '2021-06-25 03:35:56'),
(15, 2, 'New Task added', NULL, '2021-06-24 06:42:05', '2021-06-24 06:42:05'),
(16, 1, 'New Task added', NULL, '2021-06-24 07:45:35', '2021-06-24 07:45:35'),
(17, 1, 'New Task added By User 1 project_id 1', NULL, '2021-06-24 07:46:10', '2021-06-24 07:46:10'),
(18, 1, 'New Task added By User 1 project_id 1', NULL, '2021-06-24 07:46:26', '2021-06-24 07:46:26');

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'John Deo', 'john@gmail.com', '2021-06-18 12:43:28', '$2y$10$qdmDlc1Dt8KtEUy4hMKx/Oa//fLQNTuzcBQ9HlTgQXz6KR1bQBPaG', 'JyBEYOQ5Zg', '2021-06-18 12:43:28', '2021-06-20 03:53:36'),
(2, 'Mr. Giles Sanford', 'smith@123.com', '2021-06-18 12:43:28', '$2y$10$9lcc7Ut2oB1fNviQN2tlNebzcKL6eHA/Ymyl9GyfB3OvB7zAr2wU2', 'RxYzM4Lklc', '2021-06-18 12:43:28', '2021-06-21 04:36:41'),
(3, 'Brenden Torp DDS', 'iwiegand@example.org', '2021-06-18 12:43:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'N1t7bZHwrL', '2021-06-18 12:43:28', '2021-06-18 12:43:28'),
(4, 'Patrick Reinger', 'bode.earl@example.com', '2021-06-18 12:43:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2WKa76VGUs', '2021-06-18 12:43:28', '2021-06-18 12:43:28'),
(5, 'Americo Lang Sr.', 'april.mante@example.net', '2021-06-18 12:43:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'P9lFazgfEX', '2021-06-18 12:43:28', '2021-06-18 12:43:28'),
(6, 'Tierra Ullrich', 'joey.balistreri@example.com', '2021-06-18 12:43:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'FFSrf5JgQ8', '2021-06-18 12:43:28', '2021-06-18 12:43:28'),
(7, 'Aliya Kutch IV', 'nathanael73@example.org', '2021-06-18 12:43:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'iwugwqB3ZS', '2021-06-18 12:43:28', '2021-06-18 12:43:28'),
(8, 'Marcelle Fadel', 'inolan@example.org', '2021-06-18 12:43:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'evDhKP6YHZ', '2021-06-18 12:43:28', '2021-06-18 12:43:28'),
(9, 'Prof. Easter Krajcik Sr.', 'tlesch@example.org', '2021-06-18 12:43:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'dhCUk0uj7I', '2021-06-18 12:43:28', '2021-06-18 12:43:28'),
(10, 'Alvena Mueller', 'ledner.kyla@example.com', '2021-06-18 12:43:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'LFuafKNOn5', '2021-06-18 12:43:28', '2021-06-18 12:43:28'),
(11, 'jim ', 'jim@gmail.com', NULL, 'jim123', NULL, NULL, NULL),
(12, 'Collin Nitzsche I', 'koch.annamarie@example.org', '2021-06-19 00:11:40', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'T6lYORLXon', '2021-06-19 00:11:41', '2021-06-19 00:11:41'),
(13, 'Davon Koss', 'admin@local.com', '2021-06-19 00:11:40', '$2y$10$js6snqConVz3cZ/GNjCcwOmTbh5ZI6wBpa4.kFE6vrI8Hh5ygmcwO', 'bxGrnpCLse', '2021-06-19 00:11:41', '2021-06-19 00:26:27');

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
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `projects_user_id_index` (`user_id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tasks_project_id_index` (`project_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
