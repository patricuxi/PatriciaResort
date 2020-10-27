-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-10-2020 a las 10:17:33
-- Versión del servidor: 10.4.13-MariaDB
-- Versión de PHP: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `presort2`
--
CREATE DATABASE IF NOT EXISTS `presort2` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `presort2`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alojamientos`
--

CREATE TABLE `alojamientos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direccion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `habitaciones` int(11) NOT NULL,
  `telefono` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `alojamientos`
--

INSERT INTO `alojamientos` (`id`, `nombre`, `direccion`, `tipo`, `habitaciones`, `telefono`, `created_at`, `updated_at`) VALUES
(4, 'Aliquid maxime dolores quas.', '7287 Emmerich Mount Apt. 591\nCamdenmouth, AZ 98064', 'Dolores aspernatur.', 0, 4, '2020-10-27 06:24:41', '2020-10-27 06:24:41'),
(5, 'Laboriosam mollitia dignissimos.', '59057 Frederik Track\nNorth Carterfort, RI 70929', 'Non voluptatem.', 0, 3, '2020-10-27 06:24:41', '2020-10-27 06:24:41'),
(6, 'Recusandae ullam dolor.', '6303 Lehner Landing\nJohathanchester, IL 48802-2361', 'Provident.', 4, 0, '2020-10-27 06:24:41', '2020-10-27 06:24:41'),
(7, 'Eveniet facere molestiae nostrum.', '9817 Pedro Drive\nFrankiemouth, AZ 46443-3598', 'Voluptatem veniam.', 4, 3, '2020-10-27 06:24:41', '2020-10-27 06:24:41'),
(8, 'Ex vitae hic.', '53038 Ellie Manor Suite 447\nGersonville, WY 41839-2350', 'Fugit.', 2, 8, '2020-10-27 06:24:41', '2020-10-27 06:24:41'),
(9, 'Dolores et aut.', '54572 Will Dam\nLarrymouth, MI 87858-6772', 'Reprehenderit aut.', 6, 8, '2020-10-27 06:24:41', '2020-10-27 06:24:41'),
(10, 'Sit similique cum mollitia.', '22350 Terrell Ways Suite 988\nGibsonshire, WI 74098-0940', 'Adipisci.', 3, 3, '2020-10-27 06:24:41', '2020-10-27 06:24:41'),
(11, 'Et fugiat libero.', '244 Hudson Ferry Apt. 894\nNorth Cobymouth, WY 44400-8951', 'Et soluta.', 6, 6, '2020-10-27 06:24:41', '2020-10-27 06:24:41'),
(12, 'Rem odit et.', '1749 Goldner Forges\nJohnsberg, WV 25191-4924', 'Dicta distinctio.', 7, 9, '2020-10-27 06:24:41', '2020-10-27 06:24:41'),
(13, 'Hic eveniet harum esse.', '26705 Robel Estates Apt. 460\nJerrodmouth, MA 22252-6609', 'Vel.', 9, 5, '2020-10-27 06:24:41', '2020-10-27 06:24:41'),
(14, 'Et ut accusantium voluptatem.', '54210 Rodriguez Common\nLuettgenberg, NM 72132', 'Accusamus.', 8, 9, '2020-10-27 06:24:41', '2020-10-27 06:24:41'),
(15, 'Quos mollitia consequatur.', '110 Schiller Extensions\nNew Yazminburgh, AL 92306', 'Autem.', 4, 7, '2020-10-27 06:24:41', '2020-10-27 06:24:41'),
(16, 'Dolore non temporibus.', '92603 Harber Trafficway Apt. 584\nPort Kristina, ID 40697', 'Autem possimus.', 6, 0, '2020-10-27 06:24:41', '2020-10-27 06:24:41'),
(17, 'Est ipsam ea et ipsa.', '35526 Gussie Ferry\nGloverchester, ND 25190-3533', 'Numquam natus.', 1, 7, '2020-10-27 06:24:41', '2020-10-27 06:24:41'),
(18, 'Explicabo et mollitia.', '85118 Malinda Port Apt. 568\nMartinburgh, KY 16602', 'Recusandae optio.', 3, 9, '2020-10-27 06:24:41', '2020-10-27 06:24:41'),
(19, 'Hic at aut sit.', '41444 Justen Haven Apt. 714\nPort Kali, NY 70004-5622', 'Sint laborum.', 3, 5, '2020-10-27 06:24:41', '2020-10-27 06:24:41'),
(20, 'Quo qui est suscipit.', '7948 Ullrich Inlet\nBrittanystad, OH 38769-3331', 'Molestiae et.', 6, 6, '2020-10-27 06:24:41', '2020-10-27 06:24:41'),
(21, 'Ea quo maiores.', '7723 Kathleen Parks Suite 659\nPort Vada, NE 20203-1775', 'Earum.', 8, 1, '2020-10-27 06:24:41', '2020-10-27 06:24:41'),
(22, 'Quia tenetur perferendis laudantium fugit.', '3965 Kling Landing Suite 096\nWest Nicolastad, OH 62034-6213', 'Consequatur facilis.', 9, 1, '2020-10-27 06:24:41', '2020-10-27 06:24:41'),
(23, 'Nobis qui aut sed quia.', '28769 Bosco Brooks\nCaroleburgh, RI 69979', 'Voluptas magnam.', 5, 3, '2020-10-27 06:24:41', '2020-10-27 06:24:41');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `media`
--

CREATE TABLE `media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `collection_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` bigint(20) UNSIGNED NOT NULL,
  `manipulations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`manipulations`)),
  `custom_properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`custom_properties`)),
  `responsive_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`responsive_images`)),
  `order_column` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `media`
--

INSERT INTO `media` (`id`, `model_type`, `model_id`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `size`, `manipulations`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES
(1, 'App\\User', 3, 'avatar', 'My-Neighbor-Totoro-Wallpapers-8', 'My-Neighbor-Totoro-Wallpapers-8.jpg', 'image/jpeg', 'public', 513932, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 1, '2020-10-26 08:10:08', '2020-10-26 08:10:09'),
(2, 'App\\User', 2, 'avatar', 'generico', 'generico.jpg', 'image/jpeg', 'public', 9314, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 2, '2020-10-27 05:57:31', '2020-10-27 05:57:33'),
(3, 'App\\User', 2, 'avatar', 'images', 'images.jpg', 'image/jpeg', 'public', 6939, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 3, '2020-10-27 06:01:44', '2020-10-27 06:01:44'),
(4, 'App\\User', 2, 'default', '83a9a144ab03763667b8d8aa381bb441', '83a9a144ab03763667b8d8aa381bb441.jpg', 'image/jpeg', 'public', 11981, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 4, '2020-10-27 06:46:22', '2020-10-27 06:46:22'),
(5, 'App\\User', 2, 'default', '5dbcb0b79bda748a4404c982aabfbdf2', '5dbcb0b79bda748a4404c982aabfbdf2.jpg', 'image/jpeg', 'public', 16586, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 5, '2020-10-27 07:16:36', '2020-10-27 07:16:36'),
(6, 'App\\User', 2, 'avatar', 'generico', 'generico.jpg', 'image/jpeg', 'public', 9314, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 6, '2020-10-27 07:19:14', '2020-10-27 07:19:15'),
(7, 'App\\User', 2, 'avatar', '5dbcb0b79bda748a4404c982aabfbdf2', '5dbcb0b79bda748a4404c982aabfbdf2.jpg', 'image/jpeg', 'public', 16586, '[]', '{\"generated_conversions\":{\"thumb\":true,\"avatar\":true,\"card\":true}}', '[]', 7, '2020-10-27 07:55:56', '2020-10-27 07:55:57'),
(8, 'App\\User', 1, 'avatar', 'Avatar-6-1', 'Avatar-6-1.jpg', 'image/jpeg', 'users_avatar', 37530, '[]', '{\"generated_conversions\":{\"thumb\":true,\"avatar\":true,\"card\":true}}', '[]', 8, '2020-10-27 08:13:47', '2020-10-27 08:13:48'),
(9, 'App\\User', 1, 'avatar', '5dbcb0b79bda748a4404c982aabfbdf2', '5dbcb0b79bda748a4404c982aabfbdf2.jpg', 'image/jpeg', 'users_avatar', 16586, '[]', '{\"generated_conversions\":{\"thumb\":true,\"avatar\":true,\"card\":true}}', '[]', 9, '2020-10-27 08:14:16', '2020-10-27 08:14:17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_10_20_062637_create_permission_tables', 1),
(5, '2020_10_20_064926_create_media_table', 1),
(6, '2020_10_20_075724_create_alojamientos_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 1),
(2, 'App\\User', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'crear_alojamientos', 'web', '2020-10-26 08:03:07', '2020-10-26 08:03:07'),
(2, 'editar_alojamientos', 'web', '2020-10-26 08:03:07', '2020-10-26 08:03:07'),
(3, 'borrar_alojamientos', 'web', '2020-10-26 08:03:07', '2020-10-26 08:03:07'),
(4, 'ver_alojamientos', 'web', '2020-10-26 08:03:08', '2020-10-26 08:03:08');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2020-10-26 08:03:08', '2020-10-26 08:03:08'),
(2, 'cliente', 'web', '2020-10-26 08:03:08', '2020-10-26 08:03:08');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(4, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `avatar_id`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '3', 'admin@gmail.com', NULL, '$2y$10$kv43iLjSgX8MICrhAAv/Yu2tQGkEBlUOBY.coUJODcDib8yXfmyGu', NULL, '2020-10-26 08:03:08', '2020-10-26 08:03:08'),
(2, 'cliente1', NULL, 'cliente1@gmail.com', NULL, '$2y$10$gTTF3H68AjpX6IIwz7o/l.C7GnjWeTHEdNWVKzTFC.95CbaZhHdle', NULL, '2020-10-26 08:03:08', '2020-10-26 08:03:08'),
(3, 'Patricia', '1', 'patri@gmail.com', NULL, '$2y$10$xRHQrizZ71rKl2KIwu53COrZcOkSHuzorZHeMAGyaHG1zDRrZzGpG', NULL, '2020-10-26 08:09:08', '2020-10-26 08:09:08'),
(4, 'Rey Stark', NULL, 'lexie.turner@example.org', '2020-10-27 06:18:38', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'LtcXVq7dC7', '2020-10-27 06:18:38', '2020-10-27 06:18:38'),
(5, 'Arianna Romaguera', NULL, 'rcarroll@example.net', '2020-10-27 06:18:38', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'EQseMPfaUA', '2020-10-27 06:18:38', '2020-10-27 06:18:38'),
(6, 'Dr. Misael Lemke Jr.', NULL, 'jarrell.schamberger@example.org', '2020-10-27 06:18:38', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'sdwTmKDnrS', '2020-10-27 06:18:38', '2020-10-27 06:18:38'),
(7, 'Ms. Eileen Rowe', NULL, 'kellen.bartell@example.net', '2020-10-27 06:18:38', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'n5FFfjiIq4', '2020-10-27 06:18:38', '2020-10-27 06:18:38'),
(8, 'Prof. Kenneth Blanda IV', NULL, 'arvid.stracke@example.net', '2020-10-27 06:18:38', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'rCEvXsrk1C', '2020-10-27 06:18:38', '2020-10-27 06:18:38'),
(9, 'Darius Dach', NULL, 'carolanne04@example.com', '2020-10-27 06:18:38', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'rriBqK5sDd', '2020-10-27 06:18:38', '2020-10-27 06:18:38'),
(10, 'Fidel Bayer', NULL, 'aoreilly@example.org', '2020-10-27 06:18:38', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'MF2Kvqzoyx', '2020-10-27 06:18:38', '2020-10-27 06:18:38'),
(11, 'Kennedi Dickens Sr.', NULL, 'payton11@example.net', '2020-10-27 06:18:38', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '8iY70lEEZG', '2020-10-27 06:18:38', '2020-10-27 06:18:38'),
(12, 'Yvette Crist', NULL, 'emiller@example.com', '2020-10-27 06:18:38', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '36ghnddSC1', '2020-10-27 06:18:38', '2020-10-27 06:18:38'),
(13, 'Jabari Stiedemann Sr.', NULL, 'sigrid.konopelski@example.org', '2020-10-27 06:18:38', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'WhSVlM8Oyh', '2020-10-27 06:18:38', '2020-10-27 06:18:38'),
(14, 'Elinore Schumm', NULL, 'tremblay.maggie@example.com', '2020-10-27 06:18:38', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'I9hIiHZ9xc', '2020-10-27 06:18:38', '2020-10-27 06:18:38'),
(15, 'Kara Davis III', NULL, 'rutherford.helen@example.com', '2020-10-27 06:18:38', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '3ooDFNNGUd', '2020-10-27 06:18:38', '2020-10-27 06:18:38'),
(16, 'Dr. Hilton Erdman Sr.', NULL, 'damaris.vonrueden@example.net', '2020-10-27 06:18:38', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'xZTpmsVCWG', '2020-10-27 06:18:38', '2020-10-27 06:18:38'),
(17, 'Reba Yost', NULL, 'noemi46@example.net', '2020-10-27 06:18:38', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'RsUKQuRsw9', '2020-10-27 06:18:38', '2020-10-27 06:18:38'),
(18, 'Ms. Tracy Lowe III', NULL, 'sierra.hermiston@example.com', '2020-10-27 06:18:38', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'GoF7aDbw12', '2020-10-27 06:18:38', '2020-10-27 06:18:38'),
(19, 'Bonita Deckow PhD', NULL, 'fleannon@example.net', '2020-10-27 06:18:38', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'y16LqLximD', '2020-10-27 06:18:38', '2020-10-27 06:18:38'),
(20, 'Miss Una Bayer', NULL, 'dskiles@example.net', '2020-10-27 06:18:38', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ETx6IdyESJ', '2020-10-27 06:18:38', '2020-10-27 06:18:38'),
(21, 'Helene Hintz', NULL, 'henry.lang@example.net', '2020-10-27 06:18:38', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'LlQWmHwAEZ', '2020-10-27 06:18:38', '2020-10-27 06:18:38'),
(22, 'Taurean Kub', NULL, 'qfahey@example.org', '2020-10-27 06:18:38', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'onwqDI2djD', '2020-10-27 06:18:38', '2020-10-27 06:18:38'),
(23, 'Anjali Lubowitz', NULL, 'ida.davis@example.com', '2020-10-27 06:18:38', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'KIqinPkLdC', '2020-10-27 06:18:38', '2020-10-27 06:18:38');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alojamientos`
--
ALTER TABLE `alojamientos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_model_type_model_id_index` (`model_type`,`model_id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indices de la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alojamientos`
--
ALTER TABLE `alojamientos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
