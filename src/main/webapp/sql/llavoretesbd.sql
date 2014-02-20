-- phpMyAdmin SQL Dump
-- version 4.0.5
-- http://www.phpmyadmin.net
--
-- Servidor: localhost:3306
-- Tiempo de generación: 20-02-2014 a las 02:44:54
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
  `id_primertutor` int(4) DEFAULT NULL,
  `id_segundotutor` int(4) DEFAULT NULL,
  `id_grupo` int(4) DEFAULT NULL,
  `horario` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `medicacion` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `otros` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `alumno`
--

INSERT INTO `alumno` (`id`, `nombre`, `ape1`, `ape2`, `nif`, `id_primertutor`, `id_segundotutor`, `id_grupo`, `horario`, `medicacion`, `otros`) VALUES
(3, 'pedro', 'feliciano', 'lopez', '44523145F', 1, 2, 1, 'ordinario', 'no', 'no'),
(4, 'carlos', 'soto', 'diaz', '4521365B', 1, 2, 2, 'ordinario', 'no', 'no'),
(5, 'pepe', 'potamo', 'pot', '553262g', 1, 2, 1, 'ordinario', 'no', 'no');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `curso`
--

CREATE TABLE IF NOT EXISTS `curso` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `anyo` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `curso`
--

INSERT INTO `curso` (`id`, `anyo`) VALUES
(1, '2012-2013'),
(2, '2013-2014'),
(3, '2014-2015');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupo`
--

CREATE TABLE IF NOT EXISTS `grupo` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `nombreaula` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `franjaedad` varchar(20) DEFAULT NULL,
  `id_alumno` int(3) DEFAULT NULL,
  `id_profesor` int(3) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `id_profesor` (`id_profesor`),
  KEY `id_profesor_2` (`id_profesor`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `grupo`
--

INSERT INTO `grupo` (`id`, `nombreaula`, `franjaedad`, `id_alumno`, `id_profesor`) VALUES
(1, 'caragols', '0-1', 1, 1),
(2, 'papallones', '1-2', 2, 2);

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
  `fechahora` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descripcion` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_alumno` int(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `incidencia`
--

INSERT INTO `incidencia` (`id`, `fechahora`, `descripcion`, `id_alumno`) VALUES
(1, '10/10/2013', 'No ha comido', 3),
(2, '12/11/2013', 'Esta con diarrea', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mes`
--

CREATE TABLE IF NOT EXISTS `mes` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=24 ;

--
-- Volcado de datos para la tabla `mes`
--

INSERT INTO `mes` (`id`, `nombre`) VALUES
(1, 'enero'),
(2, 'febrero'),
(3, 'marzo'),
(4, 'abril'),
(5, 'mayo'),
(11, 'junio'),
(12, 'julio'),
(13, 'septiembre'),
(14, 'octubre'),
(15, 'noviembre'),
(16, 'diciembre'),
(23, 'agosto');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pago`
--

CREATE TABLE IF NOT EXISTS `pago` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `id_curso` int(4) DEFAULT NULL,
  `id_alumno` int(4) DEFAULT NULL,
  `id_mes` int(4) DEFAULT NULL,
  `pagado` tinyint(1) DEFAULT NULL,
  `cantidad` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `pago`
--

INSERT INTO `pago` (`id`, `id_curso`, `id_alumno`, `id_mes`, `pagado`, `cantidad`) VALUES
(1, 1, 1, 1, 1, 250),
(2, 2, 2, 3, 127, 200);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesor`
--

CREATE TABLE IF NOT EXISTS `profesor` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `nif` varchar(10) DEFAULT NULL,
  `nombre` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ape1` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ape2` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `direccion` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `telefono` int(20) DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `horario` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_grupo` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `profesor`
--

INSERT INTO `profesor` (`id`, `nif`, `nombre`, `ape1`, `ape2`, `direccion`, `telefono`, `email`, `horario`, `id_grupo`) VALUES
(1, '4556456J', 'Elena', 'Perez', 'Perez', 'baro de carcer', 699452135, 'elenaperez@gmail.com', 'ordinario', 1),
(2, '45456414T', 'Susana', 'Lopez ', 'Lopez', 'blasco ibañez', 961124576, 'susanalopez@gmail.com', 'vespertino', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tutor`
--

CREATE TABLE IF NOT EXISTS `tutor` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `nif` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `nombre` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ape1` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ape2` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `sexo` varchar(6) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `direccion` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `telefono1` int(9) DEFAULT NULL,
  `telefono2` int(9) DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_alumno` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `tutor`
--

INSERT INTO `tutor` (`id`, `nif`, `nombre`, `ape1`, `ape2`, `sexo`, `direccion`, `telefono1`, `telefono2`, `email`, `id_alumno`) VALUES
(1, '45454454P', 'Ramon', 'Romero', 'Romero', 'hombre', 'pio baroja', 963341254, 655412412, 'ramonromero@gmail.com', 3),
(2, '11145134V', 'Vanesa', 'Bonet', 'Bonet', 'mujer', 'santo justo y pastor', 658987444, 963356412, 'vanesabonet@gmail.com', 4);

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
