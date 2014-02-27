-- phpMyAdmin SQL Dump
-- version 4.0.5
-- http://www.phpmyadmin.net
--
-- Servidor: localhost:3306
-- Tiempo de generación: 27-02-2014 a las 00:43:31
-- Versión del servidor: 5.5.32
-- Versión de PHP: 5.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `llavoretesbd`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno`
--

CREATE TABLE IF NOT EXISTS `alumno` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ape1` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ape2` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `nif` varchar(12) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_tutor` int(4) DEFAULT NULL,
  `id_grupo` int(4) DEFAULT NULL,
  `horario` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `medicacion` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `otros` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Volcado de datos para la tabla `alumno`
--

INSERT INTO `alumno` (`id`, `nombre`, `ape1`, `ape2`, `nif`, `id_tutor`, `id_grupo`, `horario`, `medicacion`, `otros`) VALUES
(1, 'Antonio', 'Navarro', 'Llorens', '', 0, 3, 'Ordinario', '', ''),
(2, 'Javier', 'Bonet', 'Cerezuela', '', 0, 3, 'Vespertino', '', ''),
(3, 'Sergio', 'Martin', 'Tarraga', '', 0, 4, 'Vespertino', '', ''),
(4, 'Jose Luis', 'Rodriguez', 'Zapatero', '', 8, 4, 'Ordinario', '', ''),
(5, 'Mariano', 'Rajoy', 'Laschuches', '', 9, 4, 'Ordinario', '', ''),
(6, 'Elena', 'Valenciano', 'Soria', NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'Alfonso', 'Guerra', 'Guerra', NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'Francisca', 'Camps', 'Ladrona', NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'Elena', 'Troya', 'Paris', NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'Rosa', 'Luxemburgo', 'Escarola', NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'Patricia', 'Conde', 'Delicado', NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'Pedrito', 'catapun', 'a', '29171103L', 1, 5, 'Ordinario', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `curso`
--

CREATE TABLE IF NOT EXISTS `curso` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `anyo` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Volcado de datos para la tabla `curso`
--

INSERT INTO `curso` (`id`, `anyo`) VALUES
(1, '2011-2012'),
(2, '2012-2013'),
(3, '2013-2014'),
(4, '2014-2015'),
(5, '2015-2016'),
(6, '2016-2017'),
(7, '2017-2018');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupo`
--

CREATE TABLE IF NOT EXISTS `grupo` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `nombreaula` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `franjaedad` varchar(20) DEFAULT NULL,
  `id_profesor` int(3) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `id_profesor` (`id_profesor`),
  KEY `id_profesor_2` (`id_profesor`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Volcado de datos para la tabla `grupo`
--

INSERT INTO `grupo` (`id`, `nombreaula`, `franjaedad`, `id_profesor`) VALUES
(3, 'Papallones', '0-1', 2),
(4, 'Cuquets', '0-1', 1),
(5, 'Marietes', '1-2', 3),
(6, 'Abelles', '1-2', 0),
(7, 'Pardalets', '2-3', 0),
(8, 'Caragols', '2-3', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historico`
--

CREATE TABLE IF NOT EXISTS `historico` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `id_curso` int(4) DEFAULT NULL,
  `id_alumno` int(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `historico`
--

INSERT INTO `historico` (`id`, `id_curso`, `id_alumno`) VALUES
(1, 1, 1),
(2, 2, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `incidencia`
--

CREATE TABLE IF NOT EXISTS `incidencia` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `fecha` date DEFAULT NULL,
  `descripcion` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_alumno` int(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `incidencia`
--

INSERT INTO `incidencia` (`id`, `fecha`, `descripcion`, `id_alumno`) VALUES
(5, '2013-11-04', 'Piojos', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pago`
--

CREATE TABLE IF NOT EXISTS `pago` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `id_curso` int(4) DEFAULT NULL,
  `id_alumno` int(4) DEFAULT NULL,
  `mes` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pagado` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cantidad` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=19 ;

--
-- Volcado de datos para la tabla `pago`
--

INSERT INTO `pago` (`id`, `id_curso`, `id_alumno`, `mes`, `pagado`, `cantidad`) VALUES
(14, 3, 7, 'Enero', 'Si', 250),
(15, 1, 6, 'Mayo', 'Parcialmente', 150),
(16, 1, 2, 'Febrero', 'Si', 250),
(17, 3, 7, 'Diciembre', 'Si', 250),
(18, 3, 7, 'Junio', 'No', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesor`
--

CREATE TABLE IF NOT EXISTS `profesor` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ape1` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ape2` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `nif` varchar(10) DEFAULT NULL,
  `direccion` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `telefono` int(20) DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `horario` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_grupo` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `profesor`
--

INSERT INTO `profesor` (`id`, `nombre`, `ape1`, `ape2`, `nif`, `direccion`, `telefono`, `email`, `horario`, `id_grupo`) VALUES
(1, 'Elena', 'Perez', 'Perez', NULL, 'baro de carcer', 699452135, 'elenaperez@gmail.com', 'ordinario', 1),
(2, 'Susana', 'Lopez ', 'Lopez', NULL, 'blasco ibañez', 961124576, 'susanalopez@gmail.com', 'vespertino', 2),
(3, 'Pedro', 'Benito', 'Soria', NULL, 'tutia', 606060606, '', 'Ordinario', 4),
(4, 'Francisco', 'Gomez', 'Lopez', NULL, 'Quemasda', 666666666, '', 'Ordinario', 4),
(5, 'Ambrosio', 'Companys', 'Marquez', NULL, '9 de octubre', 69696969, '', 'Ordinario', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tutor`
--

CREATE TABLE IF NOT EXISTS `tutor` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ape1` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ape2` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `nif` varchar(10) DEFAULT NULL,
  `sexo` varchar(6) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `direccion` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `telefono` int(9) DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

--
-- Volcado de datos para la tabla `tutor`
--

INSERT INTO `tutor` (`id`, `nombre`, `ape1`, `ape2`, `nif`, `sexo`, `direccion`, `telefono`, `email`) VALUES
(1, 'Antonio', 'Navarro', 'Garcia', NULL, 'Hombre', 'Mitia', 606606606, ''),
(5, 'Carlos', 'Bonet', 'Aparicio', NULL, '', 'Hola mi calle', 63214569, ''),
(7, 'Luisa', 'Tárraga', 'Garcia', NULL, NULL, 'Francisco Quevedo', 963755757, 'luisa@gmail.com'),
(8, 'José Angel', 'Rodríguez', 'Rodríguez', NULL, NULL, '2 de mayo', 91919191, NULL),
(9, 'Mariana', 'Laschuches', 'Laniña', NULL, NULL, 'Calle del facha', 15369742, 'facherio@facherio.es'),
(10, 'Ambrosio', 'Valenciano', 'Ferrer', NULL, NULL, 'Francisco Granados, 2', 78965412, NULL),
(11, 'Pedro', 'Guerra', 'Ypaz', NULL, NULL, 'Gran Via, 2', 7896541, 'pedritodientes@hotmail.com'),
(13, 'Francisco', 'Camps', 'Lladre', NULL, NULL, 'Museo', 6521456, 'Gurtel@yahoo.es'),
(14, 'Adela', 'Paris', 'Benito', NULL, NULL, 'Isla de Troya, 5', 62111111, NULL),
(15, 'Gustaf', 'Luxemburgo', 'Bismarck', NULL, NULL, 'Del Aleman, 1', 54444444, NULL),
(16, 'Ladelino', 'Conde', 'Ladillas', NULL, NULL, 'Ole tu cucu', 78965412, 'otrofachilla@yahoo.es');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `login` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nombre` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `login`, `password`, `nombre`) VALUES
(1, 'elena', 'elena', 'elena'),
(2, 'veronica ', 'veronica', 'veronica'),
(3, 'marilo', 'marilo', 'maria dolores');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
