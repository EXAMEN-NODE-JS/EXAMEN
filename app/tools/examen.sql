-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-05-2024 a las 17:57:49
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `examen`
--
CREATE DATABASE IF NOT EXISTS `examen` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `examen`;

DELIMITER $$
--
-- Procedimientos
--
DROP PROCEDURE IF EXISTS `SP_CREAR_FACTURA`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_CREAR_FACTURA` (IN `_NOMBRE` VARCHAR(100), IN `_VALORPAGO` INT(10))   BEGIN
INSERT INTO factura(nombre, valorpago)
VALUES(_NOMBRE, _VALORPAGO);
END$$

DROP PROCEDURE IF EXISTS `SP_ELIMINAR_FACTURA`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_ELIMINAR_FACTURA` (IN `_ID` INT(10))   BEGIN
DELETE FROM factura WHERE id = _ID;
END$$

DROP PROCEDURE IF EXISTS `SP_LISTAR_FACTURA`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_LISTAR_FACTURA` (IN `_ID` INT(10))   BEGIN

SELECT * FROM factura WHERE ID = _ID;

END$$

DROP PROCEDURE IF EXISTS `SP_MOSTRAR_FACTURA`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_MOSTRAR_FACTURA` ()   BEGIN

SELECT * FROM factura;

END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

DROP TABLE IF EXISTS `factura`;
CREATE TABLE `factura` (
  `id` int(10) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `valorpago` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `factura`
--

INSERT INTO `factura` (`id`, `nombre`, `valorpago`) VALUES
(1, 'lodjf', 30252),
(2, 'ggggg', 20000),
(3, 'ggrg', 5000);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `factura`
--
ALTER TABLE `factura`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
