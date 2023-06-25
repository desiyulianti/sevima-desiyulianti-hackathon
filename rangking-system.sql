-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 25 Jun 2023 pada 01.36
-- Versi server: 5.7.33
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rangking-system`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `class`
--

CREATE TABLE `class` (
  `class_id` bigint(20) UNSIGNED NOT NULL,
  `class_name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `major` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `class`
--

INSERT INTO `class` (`class_id`, `class_name`, `major`, `created_at`, `updated_at`) VALUES
(1, 'XI RPL 1', 'software engineering', '2023-06-24 02:31:26', '2023-06-24 02:31:26'),
(2, 'XI RPL 2', 'software engineering', '2023-06-24 02:31:51', '2023-06-24 02:31:51'),
(3, 'XI RPL 3', 'software engineering', '2023-06-24 02:32:00', '2023-06-24 02:32:00'),
(4, 'XI RPL 4', 'software engineering', '2023-06-24 02:32:06', '2023-06-24 02:32:06'),
(5, 'XI TKJ 1', 'computer networking', '2023-06-24 02:33:41', '2023-06-24 02:33:41'),
(6, 'XI TKJ 2', 'computer networking', '2023-06-24 02:33:49', '2023-06-24 02:33:49'),
(7, 'XI TKJ 3', 'computer networking', '2023-06-24 02:33:55', '2023-06-24 02:33:55'),
(8, 'XI MM 1', 'multimedia', '2023-06-24 02:37:03', '2023-06-24 02:37:03'),
(9, 'XI MM 2', 'multimedia', '2023-06-24 02:37:09', '2023-06-24 02:37:09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2023_06_24_072608_create_class_table', 1),
(2, '2023_06_24_071931_create_student_table', 2),
(3, '2023_06_24_073608_create_score_table', 3),
(4, '2014_10_12_000000_create_users_table', 4),
(5, '2014_10_12_100000_create_password_resets_table', 4),
(6, '2019_08_19_000000_create_failed_jobs_table', 4),
(7, '2019_12_14_000001_create_personal_access_tokens_table', 4),
(9, '2023_06_24_121523_add_type_to_users', 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `score`
--

CREATE TABLE `score` (
  `score_id` bigint(20) UNSIGNED NOT NULL,
  `lesson_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `score_amount` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `score`
--

INSERT INTO `score` (`score_id`, `lesson_name`, `score_amount`, `created_at`, `updated_at`) VALUES
(1, 'math', '92', '2023-06-24 03:00:25', '2023-06-24 03:00:25'),
(2, 'math', '85', '2023-06-24 03:00:37', '2023-06-24 03:00:37'),
(3, 'math', '87', '2023-06-24 03:01:38', '2023-06-24 03:01:38'),
(4, 'math', '80', '2023-06-24 03:01:57', '2023-06-24 03:01:57'),
(5, 'competency skills', '80', '2023-06-24 03:03:16', '2023-06-24 03:03:16'),
(6, 'competency skills', '89', '2023-06-24 03:03:24', '2023-06-24 03:03:24'),
(7, 'competency skills', '91', '2023-06-24 03:03:30', '2023-06-24 03:03:30'),
(8, 'competency skills', '94', '2023-06-24 03:03:40', '2023-06-24 03:03:40'),
(9, 'english language', '97', '2023-06-24 03:05:11', '2023-06-24 03:05:11'),
(10, 'english language', '82', '2023-06-24 03:05:21', '2023-06-24 03:05:21'),
(11, 'english language', '93', '2023-06-24 03:05:30', '2023-06-24 03:05:30'),
(12, 'english language', '86', '2023-06-24 03:05:39', '2023-06-24 03:05:39'),
(13, 'indonesian language', '87', '2023-06-24 03:06:09', '2023-06-24 03:06:09'),
(14, 'indonesian language', '91', '2023-06-24 03:06:16', '2023-06-24 03:06:16'),
(15, 'indonesian language', '92', '2023-06-24 03:06:21', '2023-06-24 03:06:21'),
(16, 'indonesian language', '80', '2023-06-24 03:06:27', '2023-06-24 03:06:27');

-- --------------------------------------------------------

--
-- Struktur dari tabel `student`
--

CREATE TABLE `student` (
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `student_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` enum('L','P') COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `class_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `score_id` bigint(20) UNSIGNED NOT NULL,
  `score_amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `student`
--

INSERT INTO `student` (`student_id`, `student_name`, `gender`, `address`, `class_id`, `created_at`, `updated_at`, `score_id`, `score_amount`) VALUES
(1, 'Aqila', 'P', 'Malang', 2, '2023-06-24 02:37:41', '2023-06-24 02:37:41', 0, ''),
(2, 'Stephen', 'L', 'Bandung', 2, '2023-06-24 02:40:42', '2023-06-24 02:40:42', 0, ''),
(3, 'mingyu', 'L', 'tangerang', 2, '2023-06-24 03:17:18', '2023-06-24 03:17:18', 0, ''),
(4, 'winter', 'P', 'Solo', 2, '2023-06-24 03:17:43', '2023-06-24 03:17:43', 0, ''),
(5, 'ningning', 'P', 'Jogjakarta', 2, '2023-06-24 03:18:09', '2023-06-24 03:18:09', 0, ''),
(6, 'giselle', 'P', 'Jogjakarta', 2, '2023-06-24 03:18:25', '2023-06-24 03:18:25', 0, ''),
(7, 'woozi', 'L', 'Bandung', 2, '2023-06-24 03:19:41', '2023-06-24 03:19:41', 0, ''),
(8, 'Jun', 'L', 'Bandung', 2, '2023-06-24 03:19:57', '2023-06-24 03:19:57', 0, ''),
(9, 'Scoups', 'L', 'Jakarta', 2, '2023-06-24 03:20:18', '2023-06-24 03:20:18', 0, ''),
(10, 'Dino', 'L', 'Jakarta', 2, '2023-06-24 03:20:29', '2023-06-24 03:20:29', 0, ''),
(11, 'Dini', 'P', 'Jakarta', 2, '2023-06-24 03:20:45', '2023-06-24 03:20:45', 0, ''),
(12, 'Lala', 'P', 'Kediri', 1, '2023-06-24 03:21:03', '2023-06-24 03:21:03', 0, ''),
(13, 'eunchae', 'P', 'Jakarta', 1, '2023-06-24 03:21:41', '2023-06-24 03:21:41', 0, ''),
(14, 'kazuha', 'P', 'Jakarta', 1, '2023-06-24 03:21:50', '2023-06-24 03:21:50', 0, ''),
(15, 'sakura', 'P', 'Jakarta', 1, '2023-06-24 03:21:57', '2023-06-24 03:21:57', 0, ''),
(16, 'minji', 'P', 'Bogor', 1, '2023-06-24 03:22:15', '2023-06-24 03:22:15', 0, ''),
(17, 'Sindy', 'P', 'Bogor', 1, '2023-06-24 03:22:40', '2023-06-24 03:22:40', 0, ''),
(18, 'sunoo', 'L', 'Malang', 1, '2023-06-24 03:22:57', '2023-06-24 03:22:57', 0, ''),
(19, 'jake', 'L', 'Malang', 1, '2023-06-24 03:23:04', '2023-06-24 03:23:04', 0, ''),
(20, 'jay', 'L', 'Malang', 1, '2023-06-24 03:23:11', '2023-06-24 03:23:11', 0, ''),
(21, 'jungwon', 'L', 'Malang', 1, '2023-06-24 03:23:23', '2023-06-24 03:23:23', 0, ''),
(22, 'seungkwan', 'L', 'Malang', 1, '2023-06-24 03:24:21', '2023-06-24 03:24:21', 0, ''),
(23, 'chenle', 'L', 'Malang', 1, '2023-06-24 03:24:48', '2023-06-24 03:24:48', 0, ''),
(24, 'Bagus', 'L', 'Bali', 5, '2023-06-24 03:28:44', '2023-06-24 03:28:44', 0, ''),
(25, 'Faluwa', 'L', 'Bali', 5, '2023-06-24 03:29:08', '2023-06-24 03:29:08', 0, ''),
(26, 'Faluwa', 'P', 'Bali', 5, '2023-06-24 03:29:13', '2023-06-24 03:29:13', 0, ''),
(27, 'Nadif', 'L', 'Tangerang', 5, '2023-06-24 03:29:39', '2023-06-24 03:29:39', 0, ''),
(28, 'wain', 'L', 'Tangerang', 5, '2023-06-24 03:29:58', '2023-06-24 03:29:58', 0, ''),
(29, 'alex', 'L', 'Tangerang', 5, '2023-06-24 03:30:08', '2023-06-24 03:30:08', 0, ''),
(30, 'Jejee', 'P', 'Surabaya', 5, '2023-06-24 03:30:53', '2023-06-24 03:30:53', 0, ''),
(31, 'Miselle', 'P', 'Surabaya', 5, '2023-06-24 03:32:52', '2023-06-24 03:32:52', 0, ''),
(32, 'Joan', 'P', 'Kediri', 5, '2023-06-24 03:36:15', '2023-06-24 03:36:15', 0, ''),
(33, 'thea', 'P', 'Kediri', 5, '2023-06-24 03:36:46', '2023-06-24 03:36:46', 0, ''),
(34, 'rian', 'L', 'Kediri', 5, '2023-06-24 03:36:57', '2023-06-24 03:36:57', 0, ''),
(36, 'Rifa', 'L', 'malang', 3, '2023-06-24 13:43:46', '2023-06-24 13:43:46', 0, ''),
(37, 'Luthfi', 'L', 'Makassar', 2, '2023-06-24 13:57:03', '2023-06-24 13:57:03', 0, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `type`) VALUES
(1, 'Wiwin', 'wiwin@gmail.com', NULL, '$2y$10$UGRh8cwzAEtmLB8VzifrxeBABrhPCiDnerCua/feSBl5KDxj47eCa', NULL, '2023-06-24 05:01:56', '2023-06-24 05:01:56', 0);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`class_id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `score`
--
ALTER TABLE `score`
  ADD PRIMARY KEY (`score_id`);

--
-- Indeks untuk tabel `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`),
  ADD KEY `student_class_id_foreign` (`class_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `class`
--
ALTER TABLE `class`
  MODIFY `class_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `score`
--
ALTER TABLE `score`
  MODIFY `score_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `student`
--
ALTER TABLE `student`
  MODIFY `student_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `class` (`class_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
