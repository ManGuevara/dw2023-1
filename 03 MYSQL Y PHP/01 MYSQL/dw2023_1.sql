-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-03-2023 a las 05:27:24
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `dw2023_1`
--
CREATE DATABASE IF NOT EXISTS `dw2023_1` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `dw2023_1`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actores`
--

DROP TABLE IF EXISTS `actores`;
CREATE TABLE `actores` (
  `act_id` int(10) UNSIGNED NOT NULL,
  `act_nombres` varchar(100) NOT NULL,
  `act_apellidos` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `actores`
--

INSERT INTO `actores` (`act_id`, `act_nombres`, `act_apellidos`) VALUES
(1, 'Tom', 'Holland'),
(2, 'Zendaya', 'Colleman'),
(3, 'Keanu', 'Revees'),
(4, 'Carrie-Anne', 'Moss'),
(5, 'Leonardo', 'Dicaprio'),
(6, 'Kate', 'Winslet'),
(7, 'Jack', 'Nicolson'),
(8, 'Shelly', 'Duval'),
(9, 'Jamie', 'Fox'),
(10, 'Samuel', 'L. Jackson'),
(11, 'John', 'Travolta');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `directores`
--

DROP TABLE IF EXISTS `directores`;
CREATE TABLE `directores` (
  `dire_id` int(10) UNSIGNED NOT NULL,
  `dire_nombres` varchar(50) NOT NULL,
  `dire_apellidos` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `directores`
--

INSERT INTO `directores` (`dire_id`, `dire_nombres`, `dire_apellidos`) VALUES
(2, 'Lana', 'Wachoswky'),
(3, 'James', 'Cameron'),
(4, 'Christopher', 'Nolan'),
(5, 'Stanley', 'Kubric'),
(6, 'Quentin', 'Tarantino'),
(7, 'Ron', 'Howard'),
(8, 'Steven', 'Spilberg'),
(9, 'Night', 'Salaman');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `peliculas`
--

DROP TABLE IF EXISTS `peliculas`;
CREATE TABLE `peliculas` (
  `peli_id` int(10) UNSIGNED NOT NULL,
  `peli_dire_id` int(10) UNSIGNED DEFAULT NULL,
  `peli_nombre` varchar(50) NOT NULL,
  `peli_genero` varchar(20) NOT NULL,
  `peli_estreno` date NOT NULL,
  `peli_restricciones` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `peliculas`
--

INSERT INTO `peliculas` (`peli_id`, `peli_dire_id`, `peli_nombre`, `peli_genero`, `peli_estreno`, `peli_restricciones`) VALUES
(2, 2, 'Matrix', 'ciencia ficcion', '1999-10-10', 'PG-13'),
(3, NULL, 'El codigo enigma', 'Belica', '2017-05-05', 'PG-16'),
(4, 3, 'Titanic', 'Drama Romantico', '1997-09-09', 'PG'),
(5, 4, 'Interestellar', 'Ciencia Ficción', '2014-02-02', 'PG'),
(6, 5, 'El Resplandor', 'Terror', '1980-04-04', 'PG-18'),
(7, NULL, '50 sombras de gray', 'Thriller', '2013-06-06', 'PG-18'),
(8, 6, 'Django', 'Wenstern', '2016-12-12', 'PG-16'),
(9, 6, 'Pulp Fiction', 'Policial', '2010-10-10', 'PG-16'),
(10, NULL, 'El Resplandor 2', 'Terror', '1982-04-04', 'PG-18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personajes`
--

DROP TABLE IF EXISTS `personajes`;
CREATE TABLE `personajes` (
  `per_act_id` int(11) NOT NULL,
  `per_peli_id` int(11) NOT NULL,
  `per_nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `personajes`
--

INSERT INTO `personajes` (`per_act_id`, `per_peli_id`, `per_nombre`) VALUES
(1, 1, 'Spiderman'),
(2, 1, 'MJ'),
(3, 2, 'Neo'),
(4, 2, 'Trinity'),
(5, 4, 'Jack'),
(6, 4, 'Rose'),
(7, 6, 'Jack Torrance'),
(8, 6, 'Wendy Torrance'),
(0, 0, 'Batman'),
(0, 0, 'El lobo'),
(0, 0, 'La mascara');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas`
--

DROP TABLE IF EXISTS `personas`;
CREATE TABLE `personas` (
  `per_id` int(10) UNSIGNED NOT NULL,
  `per_nombre` varchar(50) NOT NULL,
  `per_apellido` varchar(50) NOT NULL,
  `per_genero` varchar(15) DEFAULT NULL,
  `per_dni` char(8) NOT NULL,
  `per_fechaNac` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `personas`
--

INSERT INTO `personas` (`per_id`, `per_nombre`, `per_apellido`, `per_genero`, `per_dni`, `per_fechaNac`) VALUES
(1, 'Malena', 'Casas', 'f', '22222222', '2000-10-10 00:00:00'),
(2, 'Pedro', 'Sifuentes', 'M', '33333333', '2010-12-12 00:00:00'),
(3, 'Sofia', 'Rodriguez', 'F', '44444444', '2016-05-05 00:00:00');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actores`
--
ALTER TABLE `actores`
  ADD PRIMARY KEY (`act_id`);

--
-- Indices de la tabla `directores`
--
ALTER TABLE `directores`
  ADD PRIMARY KEY (`dire_id`);

--
-- Indices de la tabla `peliculas`
--
ALTER TABLE `peliculas`
  ADD PRIMARY KEY (`peli_id`),
  ADD KEY `fk_direId` (`peli_dire_id`);

--
-- Indices de la tabla `personas`
--
ALTER TABLE `personas`
  ADD PRIMARY KEY (`per_id`),
  ADD UNIQUE KEY `per_dni` (`per_dni`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `actores`
--
ALTER TABLE `actores`
  MODIFY `act_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `directores`
--
ALTER TABLE `directores`
  MODIFY `dire_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `peliculas`
--
ALTER TABLE `peliculas`
  MODIFY `peli_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `personas`
--
ALTER TABLE `personas`
  MODIFY `per_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `peliculas`
--
ALTER TABLE `peliculas`
  ADD CONSTRAINT `fk_direId` FOREIGN KEY (`peli_dire_id`) REFERENCES `directores` (`dire_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
