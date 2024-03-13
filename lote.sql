-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-03-2024 a las 04:23:55
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `lote`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lote`
--

CREATE TABLE `lote` (
  `id_lote` int(11) NOT NULL,
  `barrio` varchar(20) NOT NULL,
  `frente` varchar(10) NOT NULL,
  `ancho` varchar(10) NOT NULL,
  `dueño` varchar(50) NOT NULL,
  `cod_bar` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `lote`
--

INSERT INTO `lote` (`id_lote`, `barrio`, `frente`, `ancho`, `dueño`, `cod_bar`) VALUES
(1, 'Salado', '23 cm', '54cm', 'Luis ', '65f0f392915cb1450'),
(2, 'Villa Maria', '34cm', '443cm', 'Ohany', '65f0f3a1094a21827'),
(3, 'Santa Cecilia', '38cm', '43cm', 'Ohany', '65f0f5a426ccb1305'),
(4, 'Salado', '34cm', '443cm', 'Ohany', '65f0f607c48561780'),
(5, 'Portales', '20 metros', '15 metros', 'Juan Paez', '65f0f67b0a7981436'),
(6, 'Salado', '80 metros', '29metros', 'Luisa', '65f0f6c1cc3743327'),
(7, 'Jardin', '30 metros', '25 metros', 'Claudia', '65f0f6c5ecf3b6709'),
(8, 'Roma', '120 metros', '89 metros', 'Daniela Guiterrez', '65f0f70a6667a7511'),
(9, 'Jardin', '200 metros', '100 metros', 'Mercedes Lopez', '65f0f7f032c172550'),
(10, 'ricaurte', '52 metros', '20 metros', 'Luis a', '65f103e3544eb4180'),
(11, 'picaleña', '50 metros', '78 metros', 'Maria Hernandez', '65f103e84dc585765'),
(12, 'Santa Ana', '50 metros', '85 metros', 'Alirio Donoso', '65f11a5118fa71706'),
(13, 'Santa Camila', '210 metros', '120 metros', 'Danna Lozano', '65f11b394d5fc9641'),
(14, 'Salado', '52 metros', '15 metros', 'Andres Silva', '65f11b8b700c76511');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `lote`
--
ALTER TABLE `lote`
  ADD PRIMARY KEY (`id_lote`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `lote`
--
ALTER TABLE `lote`
  MODIFY `id_lote` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
