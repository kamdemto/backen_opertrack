-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 09 mai 2023 à 19:57
-- Version du serveur : 10.4.24-MariaDB
-- Version de PHP : 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `opetrack_db`
--

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
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
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
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

-- --------------------------------------------------------

--
-- Structure de la table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
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

--
-- Déchargement des données de la table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'opetrackApp', '08f0f54d50fe892e83e176dacacb92c7f911a48283eb8e0bb30c0eeafa2f1dd3', '[\"*\"]', NULL, NULL, '2023-05-08 05:30:12', '2023-05-08 05:30:12'),
(2, 'App\\Models\\User', 1, 'opetrackApp', 'd8608008627e494f4b06aabd475fcac5388a563b346009e041f9a25d712bc023', '[\"*\"]', NULL, NULL, '2023-05-08 05:32:04', '2023-05-08 05:32:04'),
(3, 'App\\Models\\User', 1, 'opetrackApp', '65024b121f9bb928b7b9802232fdd4012301dd583bdcb7df1de6d7add24cf496', '[\"*\"]', NULL, NULL, '2023-05-08 05:33:12', '2023-05-08 05:33:12'),
(4, 'App\\Models\\User', 1, 'opetrackApp', '40964aaaade6c7e565ad1f7af07e3afe36adc8c5fd358782f2feccd86ddf08d6', '[\"*\"]', NULL, NULL, '2023-05-08 05:33:43', '2023-05-08 05:33:43'),
(5, 'App\\Models\\User', 1, 'opetrackApp', '306e8b4ccc3b83eed849f3d75ad6822197ef93fab8418dde3a8229f2a2e03a01', '[\"*\"]', NULL, NULL, '2023-05-08 09:23:15', '2023-05-08 09:23:15'),
(6, 'App\\Models\\User', 1, 'opetrackApp', '344fd841792b74e304ad7204f7a77a01b0a77bc3b900715f84f7b07a573d4aaa', '[\"*\"]', NULL, NULL, '2023-05-08 09:28:47', '2023-05-08 09:28:47'),
(7, 'App\\Models\\User', 1, 'opetrackApp', '75a34a37c4c02de0c8959fa436ae4fec4b3f3666080ea5943afecb608a028091', '[\"*\"]', NULL, NULL, '2023-05-08 09:32:25', '2023-05-08 09:32:25'),
(8, 'App\\Models\\User', 1, 'opetrackApp', 'b2c4d7a6af70224dec0148c3e2f9cc8cf71342a7e042d3577c512132e388e6a9', '[\"*\"]', NULL, NULL, '2023-05-08 09:34:58', '2023-05-08 09:34:58'),
(9, 'App\\Models\\User', 1, 'opetrackApp', 'f89124727989184377f6ce0a6951d1a56cb3348756ff8786e99f9205dd39d697', '[\"*\"]', NULL, NULL, '2023-05-08 10:17:56', '2023-05-08 10:17:56'),
(10, 'App\\Models\\User', 1, 'opetrackApp', 'b7f0a919ddf09dbff7c3885f739c621666b509605eedff28cb3adcf78295adca', '[\"*\"]', NULL, NULL, '2023-05-08 10:26:34', '2023-05-08 10:26:34'),
(11, 'App\\Models\\User', 1, 'opetrackApp', '535a1d9659e4e310dc06179513cc9300b64fbfaab64acfed6707b3ee328f1a19', '[\"*\"]', NULL, NULL, '2023-05-08 10:44:18', '2023-05-08 10:44:18'),
(12, 'App\\Models\\User', 1, 'opetrackApp', 'd18dc0f1235b0911a4de30a4df6415fca7ef05390b41c8901ef20637f6ed1dd1', '[\"*\"]', NULL, NULL, '2023-05-08 10:56:04', '2023-05-08 10:56:04'),
(13, 'App\\Models\\User', 1, 'opetrackApp', 'dcd92e385e7ebfb79d5a3ab340c02378be3a6c552ca4506fd5433dbb7707f68a', '[\"*\"]', NULL, NULL, '2023-05-08 10:56:10', '2023-05-08 10:56:10'),
(14, 'App\\Models\\User', 1, 'opetrackApp', '34f1e89ad1ae50fd8046fd0a68ebe21d668599dac36399ba51861d456ebfc20a', '[\"*\"]', NULL, NULL, '2023-05-08 10:56:17', '2023-05-08 10:56:17'),
(15, 'App\\Models\\User', 1, 'opetrackApp', 'efa05c1263380f40e587e1de6599b55c3d2ca129f2dc018847dcb04267111aed', '[\"*\"]', NULL, NULL, '2023-05-08 10:56:53', '2023-05-08 10:56:53'),
(16, 'App\\Models\\User', 1, 'opetrackApp', '81aa6d043d51880232d67981b262a6ab240ef1c731959295c9281209cb8a5ddf', '[\"*\"]', NULL, NULL, '2023-05-08 10:56:57', '2023-05-08 10:56:57'),
(17, 'App\\Models\\User', 1, 'opetrackApp', 'e74ac6693a3b4e7a5a51372b832b85543cd3ba4e64476c7b228a3e9941a1b861', '[\"*\"]', NULL, NULL, '2023-05-08 10:56:58', '2023-05-08 10:56:58'),
(18, 'App\\Models\\User', 1, 'opetrackApp', '38e480fc7141f72ca9c4b98dbc826a237a274286f8e107761fb88a843f5e199e', '[\"*\"]', NULL, NULL, '2023-05-08 10:56:58', '2023-05-08 10:56:58'),
(19, 'App\\Models\\User', 1, 'opetrackApp', '0ce94b0acbbe555ccaed609e80f8a5b1a4ab57b76ed05b77dbcacb286f3dbda5', '[\"*\"]', NULL, NULL, '2023-05-08 10:56:59', '2023-05-08 10:56:59'),
(20, 'App\\Models\\User', 1, 'opetrackApp', '11d87146fba94736149811f495436fbc7a8f12557d461cf6aa8029cee3412f74', '[\"*\"]', NULL, NULL, '2023-05-08 10:56:59', '2023-05-08 10:56:59'),
(21, 'App\\Models\\User', 1, 'opetrackApp', '796a07e75b822e956fc334cb6630127ad5a783f2b3bff6105928eb1b5ffaa3d6', '[\"*\"]', NULL, NULL, '2023-05-08 10:57:01', '2023-05-08 10:57:01'),
(22, 'App\\Models\\User', 1, 'opetrackApp', '9acfa08ae11998b0ecc3de5f650a8806e099b4c9739da5a21cc58dfba871c30d', '[\"*\"]', NULL, NULL, '2023-05-08 10:57:02', '2023-05-08 10:57:02'),
(23, 'App\\Models\\User', 1, 'opetrackApp', '957b4a20eb2a14d31c234e2091ecd3d82b4759c981402fbdd8ddf85140876f5a', '[\"*\"]', NULL, NULL, '2023-05-08 10:57:02', '2023-05-08 10:57:02'),
(24, 'App\\Models\\User', 1, 'opetrackApp', '9714eb88ab18c7f3c8d7d89c1d4f88106ab5b36398aeaa6d122f175c7234a735', '[\"*\"]', NULL, NULL, '2023-05-08 10:57:18', '2023-05-08 10:57:18'),
(25, 'App\\Models\\User', 1, 'opetrackApp', '04ecc8acfc3449cdd06fcce3642a036a43017a189464b61d67776ebf8f413a39', '[\"*\"]', NULL, NULL, '2023-05-08 10:59:07', '2023-05-08 10:59:07'),
(26, 'App\\Models\\User', 1, 'opetrackApp', 'ab9d8ed60fb98d6a1c5a6ec49461f14ad4c04f8df24fe86824d47f5b8c855e61', '[\"*\"]', NULL, NULL, '2023-05-08 10:59:31', '2023-05-08 10:59:31'),
(27, 'App\\Models\\User', 1, 'opetrackApp', '4c01a637d2fdb6b0cf0a9e4a417767890a8d5fcba1722e03e9cf977908b4133b', '[\"*\"]', NULL, NULL, '2023-05-08 10:59:40', '2023-05-08 10:59:40'),
(28, 'App\\Models\\User', 1, 'opetrackApp', '45d930d4f496734b1fc6e0b310f85b1c529b5ca52bee253e950271cd3cb9de40', '[\"*\"]', NULL, NULL, '2023-05-08 10:59:41', '2023-05-08 10:59:41'),
(29, 'App\\Models\\User', 1, 'opetrackApp', 'c6e7f5cf26fb7f7d5e558de5422407e79e1cb1fe352ac1cfba20736a3dd53414', '[\"*\"]', NULL, NULL, '2023-05-08 10:59:41', '2023-05-08 10:59:41'),
(30, 'App\\Models\\User', 1, 'opetrackApp', '050ca2510232658d837841fceeb2c3b21bbf7a8eebe6221bd7d7e4c7156aa04a', '[\"*\"]', NULL, NULL, '2023-05-08 10:59:42', '2023-05-08 10:59:42'),
(31, 'App\\Models\\User', 1, 'opetrackApp', '0745a8b1ed941f904189807909a9896d7b9bc3a9ce4aebf5f583117e30d808f5', '[\"*\"]', NULL, NULL, '2023-05-08 10:59:42', '2023-05-08 10:59:42'),
(32, 'App\\Models\\User', 1, 'opetrackApp', '8dfe297a9cf12b7dbd0f96725d82f6d896704d6f76dfa78548c10d732dae67f3', '[\"*\"]', NULL, NULL, '2023-05-08 10:59:42', '2023-05-08 10:59:42'),
(33, 'App\\Models\\User', 1, 'opetrackApp', '727efe72b5e1bf694e65c73390a58f29218a5908580df439c920b7a40ae83904', '[\"*\"]', NULL, NULL, '2023-05-08 10:59:43', '2023-05-08 10:59:43'),
(34, 'App\\Models\\User', 1, 'opetrackApp', 'f0300b98692c0943bf898094b7b3844eee5264f1cbf0abf295fb5f0598fff9a0', '[\"*\"]', NULL, NULL, '2023-05-08 10:59:43', '2023-05-08 10:59:43'),
(35, 'App\\Models\\User', 1, 'opetrackApp', '4e5ee3a46a017da9066689e40766e57a425b0c5d1f56bf77477fde47ae20b26d', '[\"*\"]', NULL, NULL, '2023-05-08 11:00:26', '2023-05-08 11:00:26'),
(36, 'App\\Models\\User', 1, 'opetrackApp', 'adc966a528432c17fb21238925b0007f18e7de8f17ce7031935cdd24bf9639cf', '[\"*\"]', NULL, NULL, '2023-05-09 02:28:33', '2023-05-09 02:28:33'),
(37, 'App\\Models\\User', 1, 'opetrackApp', 'ac21ba1dba465135e35b2a049843da824a5a94c77ccb5a3b5e90d6e5db5d4786', '[\"*\"]', NULL, NULL, '2023-05-09 02:28:33', '2023-05-09 02:28:33'),
(38, 'App\\Models\\User', 2, 'opetrackApp', '26e98feab204cb31482e4d90d8153fbf9f1e6e0122aa845c3617ff8ccfaa748a', '[\"*\"]', NULL, NULL, '2023-05-09 03:38:23', '2023-05-09 03:38:23'),
(39, 'App\\Models\\User', 7, 'opetrackApp', 'f70c8732135861a8bc7eb834c77abd78959d85d4c28cbe34d0767a631817a410', '[\"*\"]', NULL, NULL, '2023-05-09 03:47:33', '2023-05-09 03:47:33'),
(40, 'App\\Models\\User', 1, 'opetrackApp', '9d3a85d7f40eadf49d37764226978269baac011aca7be512bb093fd1b4780c05', '[\"*\"]', NULL, NULL, '2023-05-09 03:51:29', '2023-05-09 03:51:29'),
(41, 'App\\Models\\User', 8, 'opetrackApp', '4e74165b9fee881ae380266759e8008760d74d748138ced50afbc55b50022a93', '[\"*\"]', NULL, NULL, '2023-05-09 03:53:21', '2023-05-09 03:53:21'),
(42, 'App\\Models\\User', 1, 'opetrackApp', '63f38588d65117a1a4f6012061854d67edd0571462350d9bc8cf8ae215f2ab6b', '[\"*\"]', NULL, NULL, '2023-05-09 03:54:34', '2023-05-09 03:54:34'),
(43, 'App\\Models\\User', 9, 'opetrackApp', 'b824454d4641d9a2b897b00845ffb00cab0c4d3ab71bfa923f863a96756023cd', '[\"*\"]', NULL, NULL, '2023-05-09 03:57:25', '2023-05-09 03:57:25'),
(44, 'App\\Models\\User', 9, 'opetrackApp', 'e1eded7e39c39b48b6defa47542d7c1ad00ae8256223bf46a52bbf754a863825', '[\"*\"]', NULL, NULL, '2023-05-09 03:58:49', '2023-05-09 03:58:49'),
(45, 'App\\Models\\User', 10, 'opetrackApp', 'f22e0b8c50eee38775c81028efbb0459ec75992825cbf5928f4bd8e0340de381', '[\"*\"]', NULL, NULL, '2023-05-09 03:59:23', '2023-05-09 03:59:23'),
(46, 'App\\Models\\User', 10, 'opetrackApp', 'fadaa4c942a1b2dbdedd0c3c1f9a9e51904c2d10cfac7b121dc8c8374470eaaf', '[\"*\"]', NULL, NULL, '2023-05-09 03:59:38', '2023-05-09 03:59:38'),
(47, 'App\\Models\\User', 1, 'opetrackApp', 'd7e28ac2ab723041e48dd88e0033656b061e7eacedd04e42942b30f09867541f', '[\"*\"]', NULL, NULL, '2023-05-09 04:35:06', '2023-05-09 04:35:06'),
(48, 'App\\Models\\User', 1, 'opetrackApp', '90327270c5e4d9bdeea77bd6d0dda9076db711c56d56bc637b6222b94eaa3a4f', '[\"*\"]', NULL, NULL, '2023-05-09 07:44:51', '2023-05-09 07:44:51'),
(49, 'App\\Models\\User', 1, 'opetrackApp', '3f40793739d2f2f4b7ed4d368f153b4e1c9dc3dc8ac3d72c9ece29cd0cf1a9d2', '[\"*\"]', NULL, NULL, '2023-05-09 14:23:22', '2023-05-09 14:23:22'),
(50, 'App\\Models\\User', 11, 'opetrackApp', 'eacfe69c7cb263261f58867fbd9dcd8e1eae2c88b35d33ac5842e01dab3c5dcb', '[\"*\"]', NULL, NULL, '2023-05-09 14:25:43', '2023-05-09 14:25:43'),
(51, 'App\\Models\\User', 11, 'opetrackApp', 'dbf5e8f9e999832a42161371cbe80bcbb8a36511a10cc7d3bc80199393291fa9', '[\"*\"]', NULL, NULL, '2023-05-09 14:28:20', '2023-05-09 14:28:20'),
(52, 'App\\Models\\User', 1, 'opetrackApp', '34f2284cb73e847ed12ada82ccfa469394dbf76367716e53ea8210754d4f0454', '[\"*\"]', NULL, NULL, '2023-05-09 14:48:09', '2023-05-09 14:48:09');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `filiale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `departement` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `filiale`, `departement`, `roles`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Nico', 'Alfred', 'MADA', 'SAV', 'ADMIN', 'nico@gmail.com', NULL, '$2y$10$vePgpbqhVv4pgZPSSR1JyOu2tozIjtSjcr5EcRjGp9n5LDtA7HkHu', NULL, '2023-05-08 05:30:11', '2023-05-08 05:30:11'),
(11, 'Olivier', 'Kamdem', 'innovation', 'camtrack cameroun', 'client', 'olvier.kamdem@camtrack.net', NULL, '$2y$10$wiuPav0IWfpOwAarxLXi0uskhSrcoh7K7kEknbz0vmo8ucZHml0Gy', NULL, '2023-05-09 14:25:43', '2023-05-09 14:25:43');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Index pour la table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Index pour la table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Index pour la table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Index pour la table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
