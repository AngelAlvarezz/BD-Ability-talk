-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-04-2024 a las 02:52:53
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
-- Base de datos: `escuela`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `ID_alumnos` int(11) NOT NULL,
  `Nombre` varchar(55) NOT NULL,
  `ApellidoP` varchar(55) NOT NULL,
  `ApellidoM` varchar(55) NOT NULL,
  `Edad` varchar(55) NOT NULL,
  `Matricula` varchar(55) NOT NULL,
  `Grupo` varchar(55) NOT NULL,
  `ID_Carreras` int(11) NOT NULL,
  `ID_laboratorios` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`ID_alumnos`, `Nombre`, `ApellidoP`, `ApellidoM`, `Edad`, `Matricula`, `Grupo`, `ID_Carreras`, `ID_laboratorios`) VALUES
(1, 'Juan', 'González', 'López', '16', '22180001-4', '406', 1, 2),
(2, 'María', 'Martínez', 'García', '17', '22180002-5', '406', 1, 2),
(3, 'David', 'Hernández', 'Pérez', '18', '22180003-6', '406', 1, 2),
(4, 'Laura', 'Rodríguez', 'Fernández', '16', '22180004-7', '406', 1, 3),
(5, 'Sofía', 'López', 'Gómez', '17', '22180005-8', '406', 1, 3),
(6, 'Alejandro', 'Pérez', 'Martínez', '18', '22180006-9', '406', 1, 3),
(7, 'Andrea', 'García', 'Sánchez', '16', '22180007-10', '406', 1, 3),
(8, 'Daniel', 'Fernández', 'López', '17', '22180008-11', '406', 1, 3),
(9, 'Ana', 'Gómez', 'Martínez', '18', '22180009-12', '406', 1, 3),
(10, 'Lucía', 'Sánchez', 'Pérez', '16', '22180010-13', '406', 1, 4),
(11, 'Diego', 'Ramírez', 'Hernández', '16', '22180011-14', '401', 2, 4),
(12, 'Carolina', 'Torres', 'Gómez', '17', '22180012-15', '401', 2, 4),
(13, 'Pedro', 'Díaz', 'Martínez', '18', '22180013-16', '401', 2, 3),
(14, 'Elena', 'Gutiérrez', 'Sánchez', '16', '22180014-17', '401', 2, 3),
(15, 'José', 'Vázquez', 'López', '17', '22180015-18', '401', 2, 4),
(17, 'Marina', 'Hernández', 'Martínez', '18', '22180016-19', '404', 3, 5),
(18, 'Carlos', 'Moreno', 'Gómez', '16', '22180017-20', '404', 3, 5),
(19, 'Patricia', 'García', 'Pérez', '17', '22180018-21', '404', 3, 5),
(20, 'Luis', 'Díaz', 'Hernández', '16', '22180019-22', '403', 4, 4),
(21, 'Fernanda', 'Ruiz', 'López', '17', '22180020-23', '403', 4, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carreras`
--

CREATE TABLE `carreras` (
  `ID_carreras` int(11) NOT NULL,
  `Nombre_carrera` varchar(55) NOT NULL,
  `Horario` int(11) NOT NULL,
  `ID_laboratorios` int(11) NOT NULL,
  `ID_alumnos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `carreras`
--

INSERT INTO `carreras` (`ID_carreras`, `Nombre_carrera`, `Horario`, `ID_laboratorios`, `ID_alumnos`) VALUES
(1, 'Informatica', 7, 1, 10),
(2, 'Alimentos y Bebidas', 10, 2, 5),
(3, 'Hospitalidad Turistica', 9, 3, 3),
(4, 'Contablilidad ', 12, 4, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `laboratorios`
--

CREATE TABLE `laboratorios` (
  `ID_laboratorios` int(11) NOT NULL,
  `Laboratorio_A` varchar(55) NOT NULL,
  `Laboratorio_B` varchar(55) NOT NULL,
  `Laboratorio_C` varchar(55) NOT NULL,
  `Laboratorio_D` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `laboratorios`
--

INSERT INTO `laboratorios` (`ID_laboratorios`, `Laboratorio_A`, `Laboratorio_B`, `Laboratorio_C`, `Laboratorio_D`) VALUES
(1, '2', '3', '4', '5');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`ID_alumnos`),
  ADD KEY `ID_Carreras` (`ID_Carreras`),
  ADD KEY `ID_laboratorios` (`ID_laboratorios`);

--
-- Indices de la tabla `carreras`
--
ALTER TABLE `carreras`
  ADD PRIMARY KEY (`ID_carreras`);

--
-- Indices de la tabla `laboratorios`
--
ALTER TABLE `laboratorios`
  ADD PRIMARY KEY (`ID_laboratorios`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `ID_alumnos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `carreras`
--
ALTER TABLE `carreras`
  MODIFY `ID_carreras` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `laboratorios`
--
ALTER TABLE `laboratorios`
  MODIFY `ID_laboratorios` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD CONSTRAINT `alumnos_ibfk_1` FOREIGN KEY (`ID_Carreras`) REFERENCES `carreras` (`ID_Carreras`),
  ADD CONSTRAINT `alumnos_ibfk_2` FOREIGN KEY (`ID_laboratorios`) REFERENCES `laboratorios ` (`ID_laboratorios`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
