-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 04, 2020 at 01:18 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `seani`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `email`, `password`) VALUES
(11, 'mtoriqalfariziimansyah@gmail.com', '$2y$10$1goXyzz.iwpOldAPnTaZpuIWIu/C6GYXcsviq2zQSUpJhwXV3NBRq');

-- --------------------------------------------------------

--
-- Table structure for table `alat`
--

CREATE TABLE `alat` (
  `id_alat` int(2) NOT NULL,
  `nama_alat` text NOT NULL,
  `stok` int(2) NOT NULL,
  `harga` int(8) NOT NULL,
  `foto` text NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `alat`
--

INSERT INTO `alat` (`id_alat`, `nama_alat`, `stok`, `harga`, `foto`, `deskripsi`) VALUES
(5, 'upja', 1, 10000, 'http://localhost:8000/storage/7GYBEnzpnv.jpeg', 'alat ini mah'),
(6, 'upja', 1, 10000, 'http://localhost:8000/storage/MACd29GpSs.jpeg', 'alat ini mah'),
(7, 'upja', 1, 10000, 'http://192.168.43.155:8000/storage/Dc5IibNFzj.jpeg', 'alat ini mah'),
(8, 'upja', 1, 10000, 'http://192.168.43.155:8000/storage/KPk9HxKkgK.jpeg', 'alat ini mah'),
(9, 'upja', 1, 10000, 'http://192.168.11.160:8000/storage/F8Pfig97OJ.jpeg', 'alat ini mah'),
(10, 'upja', 1, 10000, 'http://192.168.11.160:8000/storage/ps4lkflIlG.jpeg', 'alat ini mah'),
(11, 'kkkk', 80, 800000, 'http://192.168.11.160:8000/storage/YefG4kcaaF.jpeg', 'ok'),
(12, 'jj', 94, 80000, 'http://192.168.11.160:8000/storage/S0zF4Pqmej.jpeg', 'hsjw'),
(13, 'upja', 1, 10000, 'http://192.168.43.155:8000/storage/LamKg7it7S.jpeg', 'alat ini mah'),
(14, 'upja', 1, 10000, 'http://192.168.43.155:8000/storage/IqI09xfLon.jpeg', 'alat ini mah');

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id_berita` text NOT NULL,
  `namaberita` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `deskripsi` longtext NOT NULL,
  `penulis` text NOT NULL,
  `foto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `detail_sewa`
--

CREATE TABLE `detail_sewa` (
  `id_sewa` int(7) NOT NULL,
  `id_alat` int(2) NOT NULL,
  `harga` int(8) NOT NULL,
  `jumlah_luas` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('048b60814c1fad64a9be65b591a94e6b26e40237406d61f8e867a2ef2c93c7cc9e8afe6d5f09f55b', 6, '920de3e2-e55c-489a-8615-fa5821ce2ee9', 'MyApp', '[]', 0, '2020-11-20 21:25:01', '2020-11-20 21:25:01', '2021-11-21 05:25:01'),
('16bdb17018b7fed8142deb857b0ab76362e117dde8b9dcc37761efe68572bdfab7e74d249dd50ce7', 13, '920de3e2-e55c-489a-8615-fa5821ce2ee9', 'MyApp', '[]', 0, '2020-12-03 02:47:45', '2020-12-03 02:47:45', '2021-12-03 10:47:45'),
('1813fb4855a45ebcb31deec5e28a8d160bfca30392953a89846baabfb6704fdc07bee71ee676d6c1', 3, '920de3e2-e55c-489a-8615-fa5821ce2ee9', 'MyApp', '[]', 0, '2020-11-27 06:59:10', '2020-11-27 06:59:10', '2021-11-27 14:59:10'),
('3d47eea949c193cfc047813a82ec782ae62741aba16138b436c22cbb2ca2978bd18e09e4d2b151d6', 4, '920de3e2-e55c-489a-8615-fa5821ce2ee9', 'MyApp', '[]', 0, '2020-11-27 06:59:44', '2020-11-27 06:59:44', '2021-11-27 14:59:44'),
('4a0802df1a2334e011721c198b758b39982b222625c160851dcd97f64c7374d3803f3b0f799a41e2', NULL, '920de3e2-e55c-489a-8615-fa5821ce2ee9', 'MyApp', '[]', 0, '2020-11-23 01:16:32', '2020-11-23 01:16:32', '2021-11-23 09:16:32'),
('788a2ead416997de98114427afca8c042522a180ac59fb7b7093f2b4310ea58d31f7367e9e13fc5c', 7, '920de3e2-e55c-489a-8615-fa5821ce2ee9', 'MyApp', '[]', 0, '2020-11-20 21:33:28', '2020-11-20 21:33:28', '2021-11-21 05:33:28'),
('7ad94f65b0e4dc130659ab1a003356f24d1bbcb7c36a54fc76f00ae2cce9cb94363161a805a7566f', 1, '920de3e2-e55c-489a-8615-fa5821ce2ee9', 'MyApp', '[]', 0, '2020-11-23 01:14:48', '2020-11-23 01:14:48', '2021-11-23 09:14:48'),
('85ae7d9497da97f4cc27149677c8bcd551856d62f64866bd4617887ecf78af268c616acc6091da7b', 6, '920de3e2-e55c-489a-8615-fa5821ce2ee9', 'MyApp', '[]', 0, '2020-11-20 07:06:48', '2020-11-20 07:06:48', '2021-11-20 15:06:48'),
('8772395601c0f15a81428563c465d2b35e2875cae84c88377163956cf1f957e6eaa0fa0cd1b54700', 8, '920de3e2-e55c-489a-8615-fa5821ce2ee9', 'MyApp', '[]', 0, '2020-11-27 07:54:53', '2020-11-27 07:54:53', '2021-11-27 15:54:53'),
('8d9ab8bc0680381274b10543a317307b0938ea031b73e333c149bfc2c485ca68b17e2706a0535c82', 27, '920de3e2-e55c-489a-8615-fa5821ce2ee9', 'MyApp', '[]', 0, '2020-11-23 01:14:23', '2020-11-23 01:14:23', '2021-11-23 09:14:23'),
('8fd12117a64809f06543eef01dda539f178ac8239c16f4855094c945f5e64e17888d6a31886a1047', 6, '920de3e2-e55c-489a-8615-fa5821ce2ee9', 'MyApp', '[]', 0, '2020-11-27 07:16:40', '2020-11-27 07:16:40', '2021-11-27 15:16:40'),
('9dfcbea19ded9bdc0f17f0ae9c0d98a87702585d1fa56bb78781e6a09c22df45d56e587566001fa0', 10, '920de3e2-e55c-489a-8615-fa5821ce2ee9', 'MyApp', '[]', 0, '2020-11-28 22:30:02', '2020-11-28 22:30:02', '2021-11-29 06:30:02'),
('af0f527b145f2d36e3091330bc6afbafeb6a466a9ac5b5b5bcb03928ab8f803f0cb8f1898dbd739b', 7, '920de3e2-e55c-489a-8615-fa5821ce2ee9', 'MyApp', '[]', 0, '2020-11-27 07:54:38', '2020-11-27 07:54:38', '2021-11-27 15:54:38'),
('af532fb74249d34315d7115b47759e8092eacfc3f3b9248bdc7dd739f7f3879b2a726ccf60ba87b9', 6, '920de3e2-e55c-489a-8615-fa5821ce2ee9', 'MyApp', '[]', 0, '2020-11-20 21:26:18', '2020-11-20 21:26:18', '2021-11-21 05:26:18'),
('b89db485ef7ffd6fb7a726b4211942e9b14f767975a434eae8ed3ebaed71552da73caf7f4c4b229d', 12, '920de3e2-e55c-489a-8615-fa5821ce2ee9', 'MyApp', '[]', 0, '2020-11-29 04:16:07', '2020-11-29 04:16:07', '2021-11-29 12:16:07'),
('cd1b1faf0014b122c9430f4659d69ad0a37efbb60906a59254fdfa9bb233fe14a0adcadf6a97123c', 9, '920de3e2-e55c-489a-8615-fa5821ce2ee9', 'MyApp', '[]', 0, '2020-11-27 10:20:16', '2020-11-27 10:20:16', '2021-11-27 18:20:16'),
('d27d4b7748bf3cc2f580b3f6c3028ffccf3bfabd0b4cfc81da81bfd06b0c9ce6a1cb8d8c6389864c', 11, '920de3e2-e55c-489a-8615-fa5821ce2ee9', 'MyApp', '[]', 0, '2020-11-29 04:12:45', '2020-11-29 04:12:45', '2021-11-29 12:12:45'),
('d87f5b8284fb07f8b35bb38706a9f093ae985c465a3f2e260dc804b595ade55583c06eaa0d79f895', 2, '920de3e2-e55c-489a-8615-fa5821ce2ee9', 'MyApp', '[]', 0, '2020-11-23 02:21:06', '2020-11-23 02:21:06', '2021-11-23 10:21:06'),
('e10f5635b1620f8709a0aa8c35fdb163df88c4d4b92646448eaa3c9a769e30f028e203f6f0613616', 6, '920de3e2-e55c-489a-8615-fa5821ce2ee9', 'MyApp', '[]', 0, '2020-11-20 06:46:34', '2020-11-20 06:46:34', '2021-11-20 14:46:34'),
('e961cf5c1c893038eb1ba25590c3cd6cfa8f6fc2b6530f80647ddbbf911d7d6fdacff24961bff29d', 5, '920de3e2-e55c-489a-8615-fa5821ce2ee9', 'MyApp', '[]', 0, '2020-11-27 07:01:08', '2020-11-27 07:01:08', '2021-11-27 15:01:08'),
('f3dd050936ec5d1c937e4831a909ac9be8e1f5e4db4b857965d4d98d59c8b25651556076922bb8ca', 2, '920de3e2-e55c-489a-8615-fa5821ce2ee9', 'MyApp', '[]', 0, '2020-11-23 01:15:46', '2020-11-23 01:15:46', '2021-11-23 09:15:46'),
('fea02a8743bb8d21810677d1818cd2ff30a28d8ade5bc111a199a077c4cd657d205ccd66066cc90f', 6, '920de3e2-e55c-489a-8615-fa5821ce2ee9', 'MyApp', '[]', 0, '2020-11-20 21:30:59', '2020-11-20 21:30:59', '2021-11-21 05:30:59');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
('920de3e2-e55c-489a-8615-fa5821ce2ee9', NULL, 'tahu', 'hteQVBPFuaNqlKkNE3FKKkuGsXyo5ngBNCh43jdj', NULL, 'http://localhost', 1, 0, 0, '2020-11-20 06:45:55', '2020-11-20 06:45:55');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, '920de3e2-e55c-489a-8615-fa5821ce2ee9', '2020-11-20 06:45:55', '2020-11-20 06:45:55');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `sewa`
--

CREATE TABLE `sewa` (
  `id_sewa` int(7) NOT NULL,
  `id_user` int(5) NOT NULL,
  `tgl_sewa` date NOT NULL,
  `total` int(11) NOT NULL,
  `bayar` int(11) NOT NULL,
  `status` enum('diproses','disetujui','jadwal ulang','') NOT NULL,
  `unik` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(5) NOT NULL,
  `nama` text NOT NULL,
  `email` text NOT NULL,
  `alamat` text NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `foto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama`, `email`, `alamat`, `no_telp`, `foto`) VALUES
(5, 'aku', 'faristoriqu@gmail.com', 'jember', '0987', 'http://localhost:8000/storage/SB2vYQG1c0.jpeg'),
(6, 'aku', 'faristoriqu@gmail.com', 'jember', '0987', 'http://192.168.43.155:8000/storage/1X5jVJIKk7.jpeg'),
(9, 'Dheni Teguh Pramono', 'dhenipramono@gmail.com', 'kjasld', '90', 'http://192.168.43.155:8000/storage/orAYEb6JGi.jpeg'),
(11, 'Faris Toriqu', 'mtoriqalfariziimansyah@gmail.com', 'faris', '089633150084', 'http://192.168.43.155:8000/storage/jpFDLu20zI.jpeg'),
(12, 'aku', 'mtoriqalfariziimansyah@gmail.com', 'jember', '0987', 'http://192.168.43.155:8000/storage/Wz1rGk9sil.jpeg'),
(13, 'dheni', 'dhenipramono@gmail.com', 'jember', '082264587997', 'http://192.168.43.155:8000/storage/esMhvcInW3.jpeg');

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
(7, 'aku', 'oke@gmail.com', NULL, '$2y$10$sVN5QZtqZ/MPXEdszD1V9OQMvgNnQ9bMiK9BPiqNnnt614ax8hycm', NULL, '2020-11-20 21:33:28', '2020-11-20 21:33:28'),
(27, 'aku', 'mtoriqalfariziimansyah@gmail.com', NULL, '$2y$10$6Ao4Z19OnHA2eAUpfxaCZuAK//z4RTwF/XBwCji6FbGTQ7SeNEbOi', NULL, '2020-11-21 07:19:56', '2020-11-21 07:19:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `alat`
--
ALTER TABLE `alat`
  ADD PRIMARY KEY (`id_alat`);

--
-- Indexes for table `detail_sewa`
--
ALTER TABLE `detail_sewa`
  ADD UNIQUE KEY `id_sewa` (`id_sewa`),
  ADD UNIQUE KEY `id_alat` (`id_alat`);

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
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `sewa`
--
ALTER TABLE `sewa`
  ADD PRIMARY KEY (`id_sewa`),
  ADD UNIQUE KEY `id_user` (`id_user`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

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
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `alat`
--
ALTER TABLE `alat`
  MODIFY `id_alat` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sewa`
--
ALTER TABLE `sewa`
  MODIFY `id_sewa` int(7) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detail_sewa`
--
ALTER TABLE `detail_sewa`
  ADD CONSTRAINT `detail_sewa_ibfk_1` FOREIGN KEY (`id_sewa`) REFERENCES `sewa` (`id_sewa`) ON UPDATE CASCADE,
  ADD CONSTRAINT `detail_sewa_ibfk_2` FOREIGN KEY (`id_alat`) REFERENCES `alat` (`id_alat`) ON UPDATE CASCADE;

--
-- Constraints for table `sewa`
--
ALTER TABLE `sewa`
  ADD CONSTRAINT `sewa_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
