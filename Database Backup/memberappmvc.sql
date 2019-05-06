-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 04, 2019 at 07:36 AM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `memberappmvc`
--

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
(3, '2019_04_01_214358_create_profiles_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_pic` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `designation`, `about`, `profile_pic`, `created_at`, `updated_at`) VALUES
(1, 1, 'Programmer rrjrgg ytp', 'Crazy programmer iikrggy', 'http://127.0.0.1:8000/uploads/20143001011.png', '2019-04-02 06:44:56', '2019-04-03 22:20:01'),
(3, 2, 'Project Lead', '4 Years Of experiences', 'http://127.0.0.1:8000/uploads/20143001013.png', '2019-04-02 07:17:23', '2019-04-03 20:51:01'),
(4, 4, 'IT Executive', 'experienced Excellent person in IT section', 'http://127.0.0.1:8000/uploads/20143001017.png', '2019-04-02 08:25:50', '2019-04-03 20:52:49'),
(6, 3, 'Project Lead', '4 Years Of experience', 'http://127.0.0.1:8000/uploads/20143001012.png', '2019-04-03 20:50:53', '2019-04-03 20:50:53'),
(7, 7, 'Sr HR Executive', 'a 10 years of experienced', 'http://127.0.0.1:8000/uploads/20143001012.png', '2019-04-03 20:55:00', '2019-04-03 20:55:13'),
(8, 8, 'Chief Technology Officer', '8 years of experience completeo', 'http://127.0.0.1:8000/uploads/20143001014.png', '2019-04-03 22:29:16', '2019-04-03 22:44:19'),
(9, 9, 'dkjfkdsf hira', 'sdfdsf jira', 'http://127.0.0.1:8000/uploads/20143001016.png', '2019-04-03 23:32:10', '2019-04-03 23:32:42');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
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
(1, 'Tarikul islam', 'tarikulislam.cse@gmail.com', NULL, '$2y$10$PyOX1f7pmGt2D.aPwBnNLOIDQDu7RPGXLCwQTFUH4XOnbFi.vpAg.', 'Y5mwk6h3ygzx92D4s0bhNUhKCTMB20uJP2ankRLgAejaEx5CRStNxWAZtEyx', '2019-04-01 13:40:42', '2019-04-01 15:02:06'),
(2, 'Tipu San', 'tipu@gmail.com', NULL, '$2y$10$NTrpseOtcgEskxN7aGLSu.rY5b6RQ6IEn2ebAWJLUsxaZ0eyI3/Oe', 'Sy2PJg36WRfwm2srRVOJSCwiKNtfJzXZTZSvhGZDreUr7FzhSSsHdfuIjFVL', '2019-04-01 14:17:58', '2019-04-01 14:52:59'),
(3, 'Rabia', 'rabia@gmail.com', NULL, '$2y$10$se8wjGdVY1uSIvarzGVgee0hCR2DX.Wbpm62B1uU8bxRFksr/yGKa', NULL, '2019-04-01 22:07:38', '2019-04-01 22:07:38'),
(4, 'Sonia Yeasmin', 'sonia@gmail.com', NULL, '$2y$10$LBOTo3b.uCI.T4FqjP./Wu4XXA9xxU0oR0hyQn9Da0wHsNPHuao/2', NULL, '2019-04-02 08:24:05', '2019-04-02 08:24:05'),
(5, 'Shojib', 'sojib@gmail.com', NULL, '$2y$10$6DSy0zYWzC8vQp0OA3GouuXUb9TElyw.3Oq.mQxjMeI30xLtATa.e', NULL, '2019-04-03 08:56:46', '2019-04-03 08:56:46'),
(7, 'Mahmudullah Riyadh', 'mahmudullah@gmail.com', NULL, '$2y$10$oALa.eHSqshYO597j.Hk8ukDDMuGuRhkpbg2Es6y6rYWX4C/9jOIm', NULL, '2019-04-03 20:53:45', '2019-04-03 20:53:45'),
(8, 'Ramesh Ram', 'ramesh@gmail.com', NULL, '$2y$10$/zDgNR4u60n8zjR/hOZd1ezCIY3x9KWqM/rw4OUaMGEYYshwra7Au', 'YlH0vG0qOIr1TYqviYvUgY9M3HGJJHAuoniP9jspot6L2XFlVJAJ8BnJXEG5', '2019-04-03 22:27:44', '2019-04-03 22:43:55'),
(9, 'mira', 'mira@gmail.com', NULL, '$2y$10$uC/375n/mTvbDvZsiAelKuCwTmZUVIDlj21.KlotfrtBRn7pn51eq', NULL, '2019-04-03 22:57:18', '2019-04-03 22:57:18');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
