-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-07-2026 a las 00:07:28
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `brigada_juvenil`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividades`
--

CREATE TABLE `actividades` (
  `id` int(11) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `descripcion` text,
  `fecha` date NOT NULL,
  `hora_inicio` time DEFAULT NULL,
  `hora_fin` time DEFAULT NULL,
  `tipo` enum('Teorica','Practica','Deportiva','Social','Emergencia') DEFAULT 'Teorica',
  `patrulla_id` int(11) DEFAULT NULL,
  `instructor_id` int(11) DEFAULT NULL,
  `lugar` varchar(100) DEFAULT NULL,
  `notas` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asistencia`
--

CREATE TABLE `asistencia` (
  `id` int(11) NOT NULL,
  `brigadista_id` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `estado` enum('Presente','Ausente','Justificado','Retardo') DEFAULT 'Presente',
  `hora_llegada` time DEFAULT NULL,
  `hora_salida` time DEFAULT NULL,
  `observaciones` text,
  `registrado_por` int(11) DEFAULT NULL,
  `fecha_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bitacora`
--

CREATE TABLE `bitacora` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `accion` varchar(100) NOT NULL,
  `descripcion` text,
  `ip` varchar(45) DEFAULT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `bitacora`
--

INSERT INTO `bitacora` (`id`, `usuario_id`, `accion`, `descripcion`, `ip`, `fecha`) VALUES
(1, 1, 'LOGOUT', 'Cierre de sesión', NULL, '2026-07-28 00:25:25'),
(2, 3, 'LOGIN', 'Inicio de sesión', '127.0.0.1', '2026-07-28 00:53:23'),
(3, 3, 'LOGOUT', 'Cierre de sesión', NULL, '2026-07-28 01:04:55'),
(4, 3, 'LOGIN', 'Inicio de sesión', '127.0.0.1', '2026-07-28 01:13:36'),
(5, 3, 'LOGOUT', 'Cierre de sesión', NULL, '2026-07-28 01:28:05'),
(6, 3, 'LOGIN', 'Inicio de sesión', '127.0.0.1', '2026-07-28 01:28:23'),
(7, 3, 'LOGOUT', 'Cierre de sesión', NULL, '2026-07-28 01:29:52'),
(8, 3, 'LOGIN', 'Inicio de sesión', '127.0.0.1', '2026-07-28 01:32:21'),
(9, 3, 'LOGOUT', 'Cierre de sesión', NULL, '2026-07-28 01:33:18'),
(10, 3, 'LOGIN', 'Inicio de sesión', '127.0.0.1', '2026-07-28 01:37:32'),
(11, 3, 'LOGOUT', 'Cierre de sesión', NULL, '2026-07-28 01:39:11'),
(12, 2, 'LOGOUT', 'Cierre de sesión', NULL, '2026-07-28 16:30:55'),
(13, 2, 'LOGIN', 'Inicio de sesión', '127.0.0.1', '2026-07-28 16:31:19'),
(14, 2, 'LOGOUT', 'Cierre de sesión', NULL, '2026-07-28 16:32:14'),
(15, 1, 'LOGIN', 'Inicio de sesión', '127.0.0.1', '2026-07-28 16:32:58'),
(16, 1, 'LOGOUT', 'Cierre de sesión', NULL, '2026-07-28 16:34:52'),
(17, 3, 'LOGIN', 'Inicio de sesión', '127.0.0.1', '2026-07-28 16:35:09'),
(18, 3, 'LOGOUT', 'Cierre de sesión', NULL, '2026-07-28 16:36:14'),
(19, 2, 'LOGIN', 'Inicio de sesión', '127.0.0.1', '2026-07-28 16:36:21'),
(20, 2, 'LOGOUT', 'Cierre de sesión', NULL, '2026-07-28 16:40:04'),
(21, 1, 'LOGIN', 'Inicio de sesión', '127.0.0.1', '2026-07-28 16:40:11'),
(22, 1, 'LOGOUT', 'Cierre de sesión', NULL, '2026-07-28 16:50:36'),
(23, 1, 'LOGIN', 'Inicio de sesión', '127.0.0.1', '2026-07-28 17:00:40'),
(24, 1, 'LOGOUT', 'Cierre de sesión', NULL, '2026-07-28 17:30:57'),
(25, 1, 'LOGIN', 'Inicio de sesión', '127.0.0.1', '2026-07-28 17:32:15'),
(26, 1, 'LOGOUT', 'Cierre de sesión', NULL, '2026-07-28 17:34:26'),
(27, 1, 'LOGIN', 'Inicio de sesión', '127.0.0.1', '2026-07-28 17:38:29'),
(28, 1, 'LOGOUT', 'Cierre de sesión', NULL, '2026-07-28 17:53:20'),
(29, 1, 'LOGIN', 'Inicio de sesión', '127.0.0.1', '2026-07-28 17:57:46'),
(30, 1, 'LOGOUT', 'Cierre de sesión', NULL, '2026-07-28 18:10:05'),
(31, 3, 'LOGIN', 'Inicio de sesión', '127.0.0.1', '2026-07-28 18:12:02'),
(32, 3, 'LOGOUT', 'Cierre de sesión', NULL, '2026-07-28 18:18:02'),
(33, 1, 'LOGIN', 'Inicio de sesión', '127.0.0.1', '2026-07-28 18:18:13'),
(34, 1, 'LOGOUT', 'Cierre de sesión', NULL, '2026-07-28 18:18:27'),
(35, 1, 'LOGIN', 'Inicio de sesión', '127.0.0.1', '2026-07-28 18:20:42'),
(36, 1, 'LOGOUT', 'Cierre de sesión', NULL, '2026-07-28 18:34:35'),
(37, 1, 'LOGIN', 'Inicio de sesión', '127.0.0.1', '2026-07-28 18:37:38'),
(38, 1, 'LOGOUT', 'Cierre de sesión', NULL, '2026-07-28 19:24:03'),
(39, 1, 'LOGIN', 'Inicio de sesión', '127.0.0.1', '2026-07-28 19:40:54'),
(40, 1, 'LOGOUT', 'Cierre de sesión', NULL, '2026-07-28 20:55:19'),
(41, 2, 'LOGIN', 'Inicio de sesión', '127.0.0.1', '2026-07-28 20:59:33'),
(42, 2, 'LOGOUT', 'Cierre de sesión', NULL, '2026-07-28 21:10:38'),
(43, 1, 'LOGIN', 'Inicio de sesión', '127.0.0.1', '2026-07-28 21:25:51'),
(44, 1, 'LOGOUT', 'Cierre de sesión', NULL, '2026-07-28 21:28:59'),
(45, 2, 'LOGIN', 'Inicio de sesión', '127.0.0.1', '2026-07-28 21:29:09'),
(46, 2, 'LOGOUT', 'Cierre de sesión', NULL, '2026-07-28 21:29:40'),
(47, 3, 'LOGIN', 'Inicio de sesión', '127.0.0.1', '2026-07-28 21:30:00'),
(48, 3, 'LOGOUT', 'Cierre de sesión', NULL, '2026-07-28 21:38:01'),
(49, 1, 'LOGIN', 'Inicio de sesión', '127.0.0.1', '2026-07-28 21:56:21'),
(50, 1, 'LOGOUT', 'Cierre de sesión', NULL, '2026-07-28 22:00:51');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `brigadistas`
--

CREATE TABLE `brigadistas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `cedula` varchar(20) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `genero` enum('Masculino','Femenino') DEFAULT 'Masculino',
  `direccion` varchar(255) NOT NULL,
  `telefono` varchar(15) NOT NULL,
  `telefono_emergencia` varchar(15) DEFAULT NULL,
  `nombre_representante` varchar(100) NOT NULL,
  `telefono_representante` varchar(15) NOT NULL,
  `correo_representante` varchar(100) DEFAULT NULL,
  `escuela` varchar(100) DEFAULT NULL,
  `grado_estudio` varchar(50) DEFAULT NULL,
  `alergias` text,
  `enfermedades_base` text,
  `tipo_sangre` varchar(5) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `condicion` enum('Activo','Inactivo','Suspendido','Graduado') DEFAULT 'Activo',
  `fecha_ingreso` date NOT NULL,
  `fecha_egreso` date DEFAULT NULL,
  `patrulla_id` int(11) DEFAULT NULL,
  `observaciones` text,
  `fecha_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fecha_actualizacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `brigadistas`
--

INSERT INTO `brigadistas` (`id`, `nombre`, `apellido`, `cedula`, `fecha_nacimiento`, `genero`, `direccion`, `telefono`, `telefono_emergencia`, `nombre_representante`, `telefono_representante`, `correo_representante`, `escuela`, `grado_estudio`, `alergias`, `enfermedades_base`, `tipo_sangre`, `foto`, `condicion`, `fecha_ingreso`, `fecha_egreso`, `patrulla_id`, `observaciones`, `fecha_registro`, `fecha_actualizacion`) VALUES
(1, 'Juan Carlos', 'Pérez Gómez', 'V-12345678', '2010-05-15', 'Masculino', 'Calle Principal 123, El Paso', '0412-1234567', NULL, 'María Gómez', '0414-7654321', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Activo', '2024-01-15', NULL, 1, NULL, '2026-07-27 23:55:44', '2026-07-27 23:55:44'),
(2, 'María Fernanda', 'González López', 'V-87654321', '2011-07-20', 'Masculino', 'Avenida Libertad 456, El Paso', '0424-7654321', NULL, 'Carlos González', '0416-9876543', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Activo', '2024-02-01', NULL, 2, NULL, '2026-07-27 23:55:44', '2026-07-27 23:55:44'),
(3, 'Marwin', 'Salazar', 'V-32264071', '2007-11-05', 'Masculino', 'Las Adjuntas Macarao torre 5 piso 6-E', '04142104756', '04168956410', 'Yarubi Paredes', '04124387486', 'yarubiparedes@gmail.com', 'U.E.N Isaura Correa', '2 Grado', 'Gripe', 'Ninguna', 'A+', 'brigadista_V-32264071_1785262438.790168.jpg', 'Activo', '2026-07-27', NULL, 0, 'Si', '2026-07-28 18:13:58', '2026-07-28 18:13:58');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comunicados`
--

CREATE TABLE `comunicados` (
  `id` int(11) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `contenido` text NOT NULL,
  `fecha_publicacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `creado_por` int(11) DEFAULT NULL,
  `destinatario` enum('Todos','Instructores','Coordinadores','Padres') DEFAULT 'Todos'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evaluaciones`
--

CREATE TABLE `evaluaciones` (
  `id` int(11) NOT NULL,
  `brigadista_id` int(11) NOT NULL,
  `instructor_id` int(11) DEFAULT NULL,
  `tipo` enum('Teorica','Practica','Fisica','Actitud','Integral') NOT NULL,
  `fecha` date NOT NULL,
  `puntaje` decimal(5,2) DEFAULT NULL,
  `calificacion` char(1) DEFAULT NULL,
  `descripcion` text,
  `observaciones` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `evaluaciones`
--

INSERT INTO `evaluaciones` (`id`, `brigadista_id`, `instructor_id`, `tipo`, `fecha`, `puntaje`, `calificacion`, `descripcion`, `observaciones`) VALUES
(1, 1, 1, 'Practica', '2026-07-27', '90.50', 'A', 'Buena calificación', 'Bien');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `patrullas`
--

CREATE TABLE `patrullas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` text,
  `color` varchar(20) DEFAULT '#dc2626',
  `instructor_id` int(11) DEFAULT NULL,
  `fecha_creacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `activo` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `patrullas`
--

INSERT INTO `patrullas` (`id`, `nombre`, `descripcion`, `color`, `instructor_id`, `fecha_creacion`, `activo`) VALUES
(1, 'Águilas', 'Patrulla de élite - jóvenes destacados', '#dc2626', NULL, '2026-07-27 23:55:44', 1),
(2, 'Leones', 'Patrulla de fuerza - jóvenes con gran espíritu', '#f59e0b', NULL, '2026-07-27 23:55:44', 1),
(3, 'Tigres', 'Patrulla de velocidad - jóvenes ágiles', '#3b82f6', NULL, '2026-07-27 23:55:44', 1),
(4, 'Halcones', 'Patrulla de precisión - jóvenes observadores', '#10b981', NULL, '2026-07-27 23:55:44', 1),
(5, 'Marwin', 'Si', '#dc2626', 1, '2026-07-28 19:42:41', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre_usuario` varchar(50) NOT NULL,
  `nombre_completo` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contraseña` varchar(255) NOT NULL,
  `pregunta_secreta` varchar(200) NOT NULL,
  `respuesta_secreta` varchar(200) NOT NULL,
  `rol` enum('admin','instructor','coordinador') DEFAULT 'instructor',
  `avatar` varchar(255) DEFAULT 'default.png',
  `ultimo_acceso` timestamp NULL DEFAULT NULL,
  `activo` tinyint(1) DEFAULT '1',
  `fecha_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre_usuario`, `nombre_completo`, `email`, `contraseña`, `pregunta_secreta`, `respuesta_secreta`, `rol`, `avatar`, `ultimo_acceso`, `activo`, `fecha_registro`) VALUES
(1, 'admin', 'Administrador del Sistema', 'admin@brigada.com', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', '¿Color favorito?', 'rojo', 'admin', 'default.png', '2026-07-28 21:56:21', 1, '2026-07-27 23:55:43'),
(2, 'instructor1', 'Instructor Principal', 'instructor@brigada.com', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', '¿Mascota favorita?', 'perro', 'instructor', 'default.png', '2026-07-28 21:29:09', 1, '2026-07-27 23:55:43'),
(3, 'Marwin', 'Marwin Salazar', 'marwinsalazar@gmail.com', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', '¿Cuál es el nombre de tu primera mascota?', 'Niña', 'instructor', 'default.png', '2026-07-28 21:30:00', 1, '2026-07-28 00:52:58');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actividades`
--
ALTER TABLE `actividades`
  ADD PRIMARY KEY (`id`),
  ADD KEY `patrulla_id` (`patrulla_id`),
  ADD KEY `instructor_id` (`instructor_id`),
  ADD KEY `idx_fecha` (`fecha`),
  ADD KEY `idx_tipo` (`tipo`);

--
-- Indices de la tabla `asistencia`
--
ALTER TABLE `asistencia`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_asistencia` (`brigadista_id`,`fecha`),
  ADD KEY `registrado_por` (`registrado_por`),
  ADD KEY `idx_fecha` (`fecha`),
  ADD KEY `idx_estado` (`estado`);

--
-- Indices de la tabla `bitacora`
--
ALTER TABLE `bitacora`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`),
  ADD KEY `idx_fecha` (`fecha`);

--
-- Indices de la tabla `brigadistas`
--
ALTER TABLE `brigadistas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cedula` (`cedula`),
  ADD KEY `idx_cedula` (`cedula`),
  ADD KEY `idx_nombre` (`nombre`,`apellido`),
  ADD KEY `idx_condicion` (`condicion`);

--
-- Indices de la tabla `comunicados`
--
ALTER TABLE `comunicados`
  ADD PRIMARY KEY (`id`),
  ADD KEY `creado_por` (`creado_por`);

--
-- Indices de la tabla `evaluaciones`
--
ALTER TABLE `evaluaciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `brigadista_id` (`brigadista_id`),
  ADD KEY `instructor_id` (`instructor_id`),
  ADD KEY `idx_fecha` (`fecha`),
  ADD KEY `idx_tipo` (`tipo`);

--
-- Indices de la tabla `patrullas`
--
ALTER TABLE `patrullas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `instructor_id` (`instructor_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombre_usuario` (`nombre_usuario`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `actividades`
--
ALTER TABLE `actividades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `asistencia`
--
ALTER TABLE `asistencia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `bitacora`
--
ALTER TABLE `bitacora`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `brigadistas`
--
ALTER TABLE `brigadistas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `comunicados`
--
ALTER TABLE `comunicados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `evaluaciones`
--
ALTER TABLE `evaluaciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `patrullas`
--
ALTER TABLE `patrullas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `actividades`
--
ALTER TABLE `actividades`
  ADD CONSTRAINT `actividades_ibfk_1` FOREIGN KEY (`patrulla_id`) REFERENCES `patrullas` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `actividades_ibfk_2` FOREIGN KEY (`instructor_id`) REFERENCES `usuarios` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `asistencia`
--
ALTER TABLE `asistencia`
  ADD CONSTRAINT `asistencia_ibfk_1` FOREIGN KEY (`brigadista_id`) REFERENCES `brigadistas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `asistencia_ibfk_2` FOREIGN KEY (`registrado_por`) REFERENCES `usuarios` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `bitacora`
--
ALTER TABLE `bitacora`
  ADD CONSTRAINT `bitacora_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `comunicados`
--
ALTER TABLE `comunicados`
  ADD CONSTRAINT `comunicados_ibfk_1` FOREIGN KEY (`creado_por`) REFERENCES `usuarios` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `evaluaciones`
--
ALTER TABLE `evaluaciones`
  ADD CONSTRAINT `evaluaciones_ibfk_1` FOREIGN KEY (`brigadista_id`) REFERENCES `brigadistas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `evaluaciones_ibfk_2` FOREIGN KEY (`instructor_id`) REFERENCES `usuarios` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `patrullas`
--
ALTER TABLE `patrullas`
  ADD CONSTRAINT `patrullas_ibfk_1` FOREIGN KEY (`instructor_id`) REFERENCES `usuarios` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
