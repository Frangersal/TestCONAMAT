-- Script para crear las tablas básicas necesarias para iniciar la plataforma
-- Importa este archivo en phpMyAdmin dentro de una base de datos vacía

CREATE DATABASE IF NOT EXISTS `conamatenlinea2` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `conamatenlinea2`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE IF NOT EXISTS `alumnos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `matricula` varchar(50) NOT NULL,
  `contrasena` varchar(255) NOT NULL,
  `nombrealumno` varchar(100) NOT NULL,
  `apellidopaterno` varchar(100) NOT NULL,
  `apellidomaterno` varchar(100) NOT NULL,
  `sexo` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `matricula` (`matricula`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `alumnos` (Usuario de prueba)
--

INSERT INTO `alumnos` (`matricula`, `contrasena`, `nombrealumno`, `apellidopaterno`, `apellidomaterno`, `sexo`) VALUES
('alumno123', '123456', 'Juan', 'Pérez', 'Gómez', 'masculino');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `maestros`
--

CREATE TABLE IF NOT EXISTS `maestros` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(50) NOT NULL,
  `contrasena` varchar(255) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `sexo` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `usuario` (`usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `maestros` (Maestro/Admin de prueba)
--

INSERT INTO `maestros` (`usuario`, `contrasena`, `nombre`, `sexo`) VALUES
('admin', '123456', 'Maestro Administrador', 'masculino');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursos`
--

CREATE TABLE IF NOT EXISTS `cursos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `descripcion` text,
  `imagen` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cursos` (Curso de prueba)
--

INSERT INTO `cursos` (`nombre`, `descripcion`, `imagen`) VALUES
('Curso de Matemáticas Básicas', 'Aprende los fundamentos de álgebra y aritmética.', 'default.jpg'),
('Taller de Lectura y Redacción', 'Mejora tu comprensión lectora y habilidades de escritura.', 'default.jpg');

-- --------------------------------------------------------

-- Nota: A medida que explores el panel de administración (/admin), 
-- es probable que el sistema te pida más tablas (actividades, materias, etc.).
