-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-01-2021 a las 07:48:39
-- Versión del servidor: 10.4.17-MariaDB
-- Versión de PHP: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `alfa_test`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudads`
--

CREATE TABLE `ciudads` (
  `id` bigint(2) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `ciudads`
--

INSERT INTO `ciudads` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Bogotá D.C.', '2021-01-14 00:10:25', '2021-01-14 00:10:25'),
(2, 'Medellin', '2021-01-14 00:10:25', '2021-01-14 00:10:25'),
(3, 'Cali', '2021-01-14 00:10:25', '2021-01-14 00:10:25'),
(4, 'Leticia', '2021-01-14 00:10:25', '2021-01-14 00:10:25'),
(5, 'Barranquilla', '2021-01-14 00:10:25', '2021-01-14 00:10:25'),
(6, 'Neiva', '2021-01-14 00:10:25', '2021-01-14 00:10:25'),
(7, 'Pereira', '2021-01-14 00:10:25', '2021-01-14 00:10:25'),
(8, 'Manizales', '2021-01-14 00:10:25', '2021-01-14 00:10:25'),
(9, 'Ibague', '2021-01-14 00:10:25', '2021-01-14 00:10:25'),
(10, 'Bucaramanga', '2021-01-14 00:10:25', '2021-01-14 00:10:25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono` bigint(11) NOT NULL,
  `ciudad` bigint(2) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `telefono`, `ciudad`, `created_at`, `updated_at`) VALUES
(1, 'Eulah Koss', 3154277605, 6, '2021-01-14 00:10:24', '2021-01-14 00:10:24'),
(2, 'Orpha Schuster', 3032377065, 1, '2021-01-14 00:10:24', '2021-01-14 00:10:24'),
(3, 'Ophelia Ebert Jurado', 3058754784, 3, '2021-01-14 00:10:24', '2021-01-14 11:43:01'),
(4, 'Prof. Zion Quigley', 3145245862, 10, '2021-01-14 00:10:24', '2021-01-14 00:10:24'),
(5, 'Regan Paucek', 3032143866, 1, '2021-01-14 00:10:24', '2021-01-14 00:10:24'),
(6, 'Ms. Mara Ferry', 3091742539, 4, '2021-01-14 00:10:24', '2021-01-14 00:10:24'),
(7, 'Jacinto Langworth', 3015367161, 5, '2021-01-14 00:10:24', '2021-01-14 00:10:24'),
(8, 'Mr. Einar Lubowitz', 3008780647, 6, '2021-01-14 00:10:24', '2021-01-14 00:10:24'),
(9, 'Moses Bernhard', 3114141320, 2, '2021-01-14 00:10:24', '2021-01-14 00:10:24'),
(10, 'Denis Labadie', 3090321014, 7, '2021-01-14 00:10:24', '2021-01-14 00:10:24'),
(11, 'Dr. Jolie Satterfield', 3159913354, 3, '2021-01-14 00:10:24', '2021-01-14 00:10:24'),
(12, 'Gordon Kohler', 3031207460, 7, '2021-01-14 00:10:24', '2021-01-14 00:10:24'),
(13, 'Ashlee Predovic', 3102307582, 9, '2021-01-14 00:10:24', '2021-01-14 00:10:24'),
(14, 'Rachelle Kozey', 3077806469, 6, '2021-01-14 00:10:24', '2021-01-14 00:10:24'),
(15, 'Mrs. Jessika Wilderman', 3021906279, 5, '2021-01-14 00:10:24', '2021-01-14 00:10:24'),
(16, 'Jane Hettinger Jr.', 3040688974, 7, '2021-01-14 00:10:24', '2021-01-14 00:10:24'),
(17, 'Hermina O\'Reilly V', 3104200572, 6, '2021-01-14 00:10:24', '2021-01-14 00:10:24'),
(18, 'Miss Marisol Goldner', 3096516825, 3, '2021-01-14 00:10:24', '2021-01-14 00:10:24'),
(19, 'Jose Fabian', 3115464141, 9, '2021-01-14 00:10:24', '2021-01-14 02:04:51'),
(22, 'Jose Martinez', 3148454141, 9, '2021-01-14 09:51:06', '2021-01-14 09:51:06'),
(23, 'Pablo Lopez', 3216451412, 5, '2021-01-14 09:52:04', '2021-01-14 09:52:04'),
(24, 'Luis Diaz', 3158454141, 5, '2021-01-14 10:43:18', '2021-01-14 10:43:18'),
(25, 'Maria Diaz', 3545124154, 4, '2021-01-14 11:05:44', '2021-01-14 11:05:44'),
(26, 'Andres Lopez', 3874112121, 10, '2021-01-14 11:38:25', '2021-01-14 11:38:25'),
(27, 'Luis Medina', 3154151474, 2, '2021-01-14 11:44:45', '2021-01-14 11:44:45');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
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
(4, '2021_01_13_183229_create_clientes_table', 1),
(5, '2021_01_13_183244_create_ciudads_table', 1);

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
-- Estructura de tabla para la tabla `users`
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
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ciudads`
--
ALTER TABLE `ciudads`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_CIUDAD` (`ciudad`) USING BTREE;

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
-- AUTO_INCREMENT de la tabla `ciudads`
--
ALTER TABLE `ciudads`
  MODIFY `id` bigint(2) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD CONSTRAINT `fk_ciudad` FOREIGN KEY (`ciudad`) REFERENCES `ciudads` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
