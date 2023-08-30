-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 30-08-2023 a las 18:35:42
-- Versión del servidor: 8.0.31
-- Versión de PHP: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cubers-page`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mensajes formulario`
--

DROP TABLE IF EXISTS `mensajes formulario`;
CREATE TABLE IF NOT EXISTS `mensajes formulario` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre/apellido` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `mail` varchar(80) COLLATE utf8mb4_general_ci NOT NULL,
  `mensaje` text COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `novedades`
--

DROP TABLE IF EXISTS `novedades`;
CREATE TABLE IF NOT EXISTS `novedades` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `subtitulo` text COLLATE utf8mb4_general_ci NOT NULL,
  `cuerpo` text COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `novedades`
--

INSERT INTO `novedades` (`id`, `titulo`, `subtitulo`, `cuerpo`) VALUES
(1, '¿Quien es Tymon Kolansinski?', 'Uno de los speedcubers legendarios. ', 'Tymon Kolanski tuvo varios records a lo largo de su carrera como speedcubers.\r\nLogro romper el record de promedio en 3x3 3 veces seguidas.\r\nSus conocimientos junto a su gran velocidad y su capicidad de prevensión lograron darle el world record.'),
(2, '¡Nuevo record mundial del cubo de Rubik 3x3!', 'Max park ha realizado una resolución 3.13 segundos', 'Luego de 3 años sin que este world record no pudiera ser roto, Max Park logro realizar un nuevo'),
(3, 'Feliks Zembedeg, el considerado mejor speedcuber de la historia ', 'Feliks Zembdeg el hombre que revoluciono el speedcubing para siempre ', 'Feliks Zembdeg fue uno de los primero speedcubers que logro tener worlds records incluso antes que se comenzaran a realizar competencias presenciales supervisadas por la WCA.\r\nLogro romper WRS en categorías como 3x3 hasta 4x4 blindfolded(a ciegas)');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id_usuario` int NOT NULL AUTO_INCREMENT,
  `usuario` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `contraseña` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `usuario`, `contraseña`) VALUES
(1, 'Flavia ', '81dc9bdb52d04dc20036dbd8313ed055'),
(2, 'Admin-cubers', 'c93ccd78b2076528346216b3b2f701e6'),
(3, 'Tahiel', '94121827ab5bed3b7525c959fad7313f');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
