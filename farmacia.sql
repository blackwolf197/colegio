-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-11-2019 a las 23:50:16
-- Versión del servidor: 10.1.32-MariaDB
-- Versión de PHP: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `farmacia`
--
CREATE DATABASE IF NOT EXISTS `farmacia` DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci;
USE `farmacia`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `almacen`
--

CREATE TABLE `almacen` (
  `id_almacen` int(11) NOT NULL,
  `codigo` int(11) NOT NULL,
  `almacen_cantidad` int(11) NOT NULL,
  `fecha_agregado` datetime NOT NULL,
  `fecha_vendido` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id_categoria` int(11) NOT NULL,
  `categoria` varchar(30) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id_categoria`, `categoria`) VALUES
(1, 'vacunas '),
(2, 'anti gripales');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento`
--

CREATE TABLE `departamento` (
  `id_departamento` int(11) NOT NULL,
  `departamento` varchar(30) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `departamento`
--

INSERT INTO `departamento` (`id_departamento`, `departamento`) VALUES
(1, 'Ahuachapán'),
(2, 'Cabañas'),
(3, 'Chalatenango'),
(4, 'Cuscatlán'),
(5, 'La Libertad'),
(6, 'La Paz'),
(7, 'La Unión'),
(8, 'Morazán'),
(9, 'San Miguel'),
(10, 'San Salvador'),
(11, 'San Vicente'),
(12, 'Santa Ana'),
(13, 'Sonsonate'),
(14, 'Usulután');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marca`
--

CREATE TABLE `marca` (
  `id_marca` int(11) NOT NULL,
  `marca` varchar(50) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `marca`
--

INSERT INTO `marca` (`id_marca`, `marca`) VALUES
(1, 'mk'),
(2, 'losano');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `municipio`
--

CREATE TABLE `municipio` (
  `id_municipio` int(11) NOT NULL,
  `id_departamento` int(11) NOT NULL,
  `municipio` varchar(40) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `municipio`
--

INSERT INTO `municipio` (`id_municipio`, `id_departamento`, `municipio`) VALUES
(1, 1, 'Ahuachapán'),
(2, 1, 'Apaneca'),
(3, 1, 'Atiquizaya'),
(4, 1, 'Concepción de Ataco'),
(5, 1, 'El Refugio'),
(6, 1, 'Guaymango'),
(7, 1, 'Jujutla'),
(8, 1, 'San Francisco Menéndez'),
(9, 1, 'San Lorenzo'),
(10, 1, 'San Pedro Puxtla'),
(11, 1, 'Tacuba'),
(12, 1, 'Turín'),
(13, 12, 'Candelaria de la Frontera'),
(14, 12, 'Chalchuapa'),
(15, 12, 'Coatepeque'),
(16, 12, 'El Congo'),
(17, 12, 'El Porvenir'),
(18, 12, 'Masahuat'),
(19, 12, 'Metapán'),
(20, 12, 'San Antonio Pajonal'),
(21, 12, 'San Sebastián Salitrillo'),
(22, 12, 'Santa Ana'),
(23, 12, 'Santa Rosa Guachipilín'),
(24, 12, 'Santiago de la Frontera'),
(25, 12, 'Texistepeque'),
(42, 13, 'Sonzacate'),
(43, 13, 'Acajutla'),
(44, 13, 'Armenia'),
(45, 13, 'Caluco'),
(46, 13, 'Cuisnahuat'),
(47, 13, 'Izalco'),
(48, 13, 'Juayúa'),
(49, 13, 'Nahuizalco'),
(50, 13, 'Nahulingo'),
(51, 13, 'Salcoatitán'),
(52, 13, 'San Antonio del Monte'),
(53, 13, 'San Julián'),
(54, 13, 'Santa Catarina Masahuat'),
(55, 13, 'Santa Isabel Ishuatán'),
(56, 13, 'Santo Domingo Guzmán'),
(57, 13, 'Sonsonate'),
(58, 13, 'Acajutla'),
(59, 13, 'Armenia'),
(60, 13, 'Caluco'),
(61, 13, 'Cuisnahuat'),
(62, 13, 'Izalco'),
(63, 13, 'Juayúa'),
(64, 13, 'Nahuizalco'),
(65, 13, 'Nahulingo'),
(66, 13, 'Salcoatitán'),
(67, 13, 'San Antonio del Monte'),
(68, 13, 'San Julián'),
(69, 13, 'Santa Catarina Masahuat'),
(70, 13, 'Santa Isabel Ishuatán'),
(71, 13, 'Santo Domingo Guzmán'),
(72, 13, 'Sonsonate'),
(73, 13, 'Sonzacate'),
(74, 3, 'Agua Caliente'),
(75, 3, 'Arcatao'),
(76, 3, 'Azacualpa'),
(77, 3, 'Chalatenango'),
(78, 3, 'Comalapa'),
(79, 3, 'Citalá'),
(80, 3, 'Concepción Quezaltepeque'),
(81, 3, 'Dulce Nombre de María'),
(82, 3, 'El Carrizal'),
(83, 3, 'El Paraíso'),
(84, 3, 'La Laguna'),
(85, 3, 'La Palma'),
(86, 3, 'La Reina'),
(87, 3, 'Las Vueltas'),
(88, 3, 'Nueva Concepción'),
(89, 3, 'Nueva Trinidad'),
(90, 3, 'Nombre de Jesús'),
(91, 3, 'Ojos de Agua'),
(92, 3, 'Potonico'),
(93, 3, 'San Antonio de la Cruz'),
(94, 3, 'San Antonio Los Ranchos'),
(95, 3, 'San Fernando'),
(96, 3, 'San Francisco Lempa'),
(97, 3, 'San Francisco Morazán'),
(98, 3, 'San Ignacio'),
(99, 3, 'San Isidro Labrador'),
(100, 3, 'San José Cancasque'),
(101, 3, 'San José Las Flores'),
(102, 3, 'San Luis del Carmen'),
(103, 3, 'San Miguel de Mercedes'),
(104, 3, 'San Rafael'),
(105, 3, 'Santa Rita'),
(106, 3, 'Tejutla'),
(107, 4, 'Candelaria'),
(108, 4, 'Cojutepeque'),
(109, 4, 'El Carmen'),
(110, 4, 'El Rosario'),
(111, 4, 'Monte San Juan'),
(112, 4, 'Oratorio de Concepción'),
(113, 4, 'San Bartolomé Perulapía'),
(114, 4, 'San Cristóbal'),
(115, 4, 'San José Guayabal'),
(116, 4, 'San Pedro Perulapán'),
(117, 4, 'San Rafael Cedros'),
(118, 4, 'San Ramón'),
(119, 4, 'Santa Cruz Analquito'),
(120, 4, 'Santa Cruz Michapa'),
(121, 4, 'Suchitoto'),
(122, 4, 'Tenancingo'),
(123, 10, 'Aguilares'),
(124, 10, 'Apopa'),
(125, 10, 'Ayutuxtepeque'),
(126, 10, 'Cuscatancingo'),
(127, 10, 'Ciudad Delgado'),
(128, 10, 'El Paisnal'),
(129, 10, 'Guazapa'),
(130, 10, 'Ilopango'),
(131, 10, 'Mejicanos'),
(132, 10, 'Nejapa'),
(133, 10, 'Panchimalco'),
(134, 10, 'Rosario de Mora'),
(135, 10, 'San Marcos'),
(136, 10, 'San Martín'),
(137, 10, 'San Salvador'),
(138, 10, 'Santiago Texacuangos'),
(139, 10, 'Santo Tomás'),
(140, 10, 'Soyapango'),
(141, 10, 'Tonacatepeque'),
(142, 5, 'Antiguo Cuscatlán'),
(143, 5, 'Chiltiupán'),
(144, 5, 'Ciudad Arce'),
(145, 5, 'Colón'),
(146, 5, 'Comasagua'),
(147, 5, 'Huizúcar'),
(148, 5, 'Jayaque'),
(149, 5, 'Jicalapa'),
(150, 5, 'La Libertad'),
(151, 5, 'Santa Tecla'),
(152, 5, 'Nuevo Cuscatlán'),
(153, 5, 'San Juan Opico'),
(154, 5, 'Quezaltepeque'),
(155, 5, 'Sacacoyo'),
(156, 5, 'San José Villanueva'),
(157, 5, 'San Matías'),
(158, 5, 'San Pablo Tacachico'),
(159, 5, 'Talnique'),
(160, 5, 'Tamanique'),
(161, 5, 'Teotepeque'),
(162, 5, 'Tepecoyo'),
(163, 5, 'Zaragoza'),
(164, 11, 'Apastepeque'),
(165, 11, 'Guadalupe'),
(166, 11, 'San Cayetano Istepeque'),
(167, 11, 'San Esteban Catarina'),
(168, 11, 'San Ildefonso'),
(169, 11, 'San Lorenzo'),
(170, 11, 'San Sebastián'),
(171, 11, 'San Vicente'),
(172, 11, 'Santa Clara'),
(173, 11, 'Santo Domingo'),
(174, 11, 'Tecoluca'),
(175, 11, 'Tepetitán'),
(176, 11, 'Verapaz'),
(177, 2, 'Cinquera'),
(178, 2, 'Dolores'),
(179, 2, 'Guacotecti'),
(180, 2, 'Ilobasco'),
(181, 2, 'Jutiapa'),
(182, 2, 'San Isidro'),
(183, 2, 'Sensuntepeque'),
(184, 2, 'Tejutepeque'),
(185, 2, 'Victoria'),
(186, 6, 'Cuyultitán'),
(187, 6, 'El Rosario'),
(188, 6, 'Jerusalén'),
(189, 6, 'Mercedes La Ceiba'),
(190, 6, 'Olocuilta'),
(191, 6, 'Paraíso de Osorio'),
(192, 6, 'San Antonio Masahuat'),
(193, 6, 'San Emigdio'),
(194, 6, 'San Francisco Chinameca'),
(195, 6, 'San Juan Nonualco'),
(196, 6, 'San Juan Talpa'),
(197, 6, 'San Juan Tepezontes'),
(198, 6, 'San Luis La Herradura'),
(199, 6, 'San Miguel Tepezontes'),
(200, 6, 'San Pedro Masahuat'),
(201, 6, 'San Pedro Nonualco'),
(202, 6, 'San Rafael Obrajuelo'),
(203, 6, 'Santa María Ostuma'),
(204, 6, 'Santiago Nonualco'),
(205, 6, 'Tapalhuaca'),
(206, 6, 'Zacatecoluca'),
(207, 14, 'Alegría'),
(208, 14, 'Berlín'),
(209, 14, 'California'),
(210, 14, 'Concepción Batres'),
(211, 14, 'El Triunfo'),
(212, 14, 'Ereguayquín'),
(213, 14, 'Estanzuelas'),
(214, 14, 'Jiquilisco'),
(215, 14, 'Jucuapa'),
(216, 14, 'Jucuarán'),
(217, 14, 'Mercedes Umaña'),
(218, 14, 'Nueva Granada'),
(219, 14, 'Ozatlán'),
(220, 14, 'Puerto El Triunfo'),
(221, 14, 'San Agustín'),
(222, 14, 'San Buenaventura'),
(223, 14, 'San Dionisio'),
(224, 14, 'San Francisco Javier'),
(225, 14, 'Santa Elena'),
(226, 14, 'Santa María'),
(227, 14, 'Santiago de María'),
(228, 14, 'Tecapán'),
(229, 14, 'Usulután'),
(290, 9, 'Carolina'),
(291, 9, 'Chapeltique'),
(292, 9, 'Chinameca'),
(293, 9, 'Chirilagua'),
(294, 9, 'Ciudad Barrios'),
(295, 9, 'Comacarán'),
(296, 9, 'El Tránsito'),
(297, 9, 'Lolotique'),
(298, 9, 'Moncagua'),
(299, 9, 'Nueva Guadalupe'),
(300, 9, 'Nuevo Edén de San Juan'),
(301, 9, 'Quelepa'),
(302, 9, 'San Antonio del Mosco'),
(303, 9, 'San Gerardo'),
(304, 9, 'San Jorge'),
(305, 9, 'San Luis de la Reina'),
(306, 9, 'San Miguel'),
(307, 9, 'San Rafael Oriente'),
(308, 9, 'Sesori'),
(309, 9, 'Uluazapa'),
(310, 8, 'Arambala'),
(311, 8, 'Cacaopera'),
(312, 8, 'Chilanga'),
(313, 8, 'Corinto'),
(314, 8, 'Delicias de Concepción'),
(315, 8, 'El Divisadero'),
(316, 8, 'El Rosario'),
(317, 8, 'Gualococti'),
(318, 8, 'Guatajiagua'),
(319, 8, 'Joateca'),
(320, 8, 'Jocoaitique'),
(321, 8, 'Jocoro'),
(322, 8, 'Lolotiquillo'),
(323, 8, 'Meanguera'),
(324, 8, 'Osicala'),
(325, 8, 'Perquín'),
(326, 8, 'San Carlos'),
(327, 8, 'San Fernando'),
(328, 8, 'San Francisco Gotera'),
(329, 8, 'San Isidro'),
(330, 8, 'San Simón'),
(331, 8, 'Sensembra'),
(332, 8, 'Sociedad'),
(333, 8, 'Torola'),
(334, 8, 'Yamabal'),
(335, 8, 'Yoloaiquín'),
(336, 7, 'Anamorós'),
(337, 7, 'Bolivar'),
(338, 7, 'Concepción de Oriente'),
(339, 7, 'Conchagua'),
(340, 7, 'El Carmen'),
(341, 7, 'El Sauce'),
(342, 7, 'Intipucá'),
(343, 7, 'La Unión'),
(344, 7, 'Lislique'),
(345, 7, 'Meanguera del Golfo'),
(346, 7, 'Nueva Esparta'),
(347, 7, 'Pasaquina'),
(348, 7, 'Polorós'),
(349, 7, 'San Alejo'),
(350, 7, 'San José'),
(351, 7, 'Santa Rosa de Lima'),
(352, 7, 'Yayantique'),
(353, 7, 'Yucuaiquín');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil_usuario`
--

CREATE TABLE `perfil_usuario` (
  `DUI` int(11) NOT NULL,
  `edad` int(11) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `id_sexo` int(11) NOT NULL,
  `direccion` text COLLATE utf8_spanish_ci NOT NULL,
  `id_municipio` int(11) NOT NULL,
  `celular` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `perfil_usuario`
--

INSERT INTO `perfil_usuario` (`DUI`, `edad`, `fecha_nacimiento`, `id_sexo`, `direccion`, `id_municipio`, `celular`, `id_usuario`) VALUES
(123456789, 21, '2019-11-12', 1, 'en tu corazon bb', 1, 74020102, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `codigo` int(11) NOT NULL,
  `nombre_producto` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` text COLLATE utf8_spanish_ci NOT NULL,
  `precio` float NOT NULL,
  `id_tipo` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `fecha_de_fabricacion` date NOT NULL,
  `fecha_de_expiracion` date NOT NULL,
  `id_marca` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`codigo`, `nombre_producto`, `descripcion`, `precio`, `id_tipo`, `id_categoria`, `fecha_de_fabricacion`, `fecha_de_expiracion`, `id_marca`) VALUES
(12232, 'acetaminofen', 'producto especializado para la fiebre', 0.25, 2, 2, '2019-11-13', '2019-11-29', 1),
(87647, 'alca ad', 'efectiva para la diarrea', 0.25, 2, 2, '2019-10-08', '2019-11-30', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prod_venta`
--

CREATE TABLE `prod_venta` (
  `codigo` int(11) NOT NULL,
  `id_ventas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `id_proveedor` int(11) NOT NULL,
  `nombre_proveedor` int(11) NOT NULL,
  `direccion` int(11) NOT NULL,
  `id_municipio` int(11) NOT NULL,
  `telefono` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pro_produc`
--

CREATE TABLE `pro_produc` (
  `id_proveedor` int(11) NOT NULL,
  `codigo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `id_rol` int(11) NOT NULL,
  `rol` varchar(20) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`id_rol`, `rol`) VALUES
(1, 'admin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sexo`
--

CREATE TABLE `sexo` (
  `id_sexo` int(11) NOT NULL,
  `sexo` varchar(11) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `sexo`
--

INSERT INTO `sexo` (`id_sexo`, `sexo`) VALUES
(1, 'masculino'),
(2, 'femenino');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo`
--

CREATE TABLE `tipo` (
  `id_tipo` int(11) NOT NULL,
  `tipo` varchar(30) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tipo`
--

INSERT INTO `tipo` (`id_tipo`, `tipo`) VALUES
(1, 'analgesico'),
(2, 'pastillas'),
(3, 'jarabe'),
(4, 'suplementos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `usuario` varchar(40) COLLATE utf8_spanish_ci NOT NULL,
  `password` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `nombre` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `apellido` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `id_rol` int(11) NOT NULL,
  `email` varchar(50) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `usuario`, `password`, `nombre`, `apellido`, `id_rol`, `email`) VALUES
(1, 'mike', '1234', 'miguel', 'cortez', 1, 'miguelcortez@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id_ventas` int(11) NOT NULL,
  `codigo_producto` int(11) NOT NULL,
  `nombre_producto` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `id_marca` int(11) NOT NULL,
  `id_tipo` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio` float NOT NULL,
  `fecha_de_vencimiento` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `almacen`
--
ALTER TABLE `almacen`
  ADD PRIMARY KEY (`id_almacen`),
  ADD KEY `id_producto` (`codigo`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`id_departamento`);

--
-- Indices de la tabla `marca`
--
ALTER TABLE `marca`
  ADD PRIMARY KEY (`id_marca`);

--
-- Indices de la tabla `municipio`
--
ALTER TABLE `municipio`
  ADD PRIMARY KEY (`id_municipio`),
  ADD KEY `id_departamento` (`id_departamento`);

--
-- Indices de la tabla `perfil_usuario`
--
ALTER TABLE `perfil_usuario`
  ADD PRIMARY KEY (`DUI`),
  ADD KEY `id_sexo` (`id_sexo`,`id_municipio`,`id_usuario`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_municipio` (`id_municipio`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`codigo`),
  ADD KEY `id_tipo` (`id_tipo`,`id_categoria`),
  ADD KEY `id_categoria` (`id_categoria`),
  ADD KEY `id_marca` (`id_marca`);

--
-- Indices de la tabla `prod_venta`
--
ALTER TABLE `prod_venta`
  ADD KEY `codigo` (`codigo`,`id_ventas`),
  ADD KEY `codigo_2` (`codigo`,`id_ventas`),
  ADD KEY `id_ventas` (`id_ventas`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`id_proveedor`);

--
-- Indices de la tabla `pro_produc`
--
ALTER TABLE `pro_produc`
  ADD KEY `id_proveedor` (`id_proveedor`,`codigo`),
  ADD KEY `id_proveedor_2` (`id_proveedor`,`codigo`),
  ADD KEY `codigo` (`codigo`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`id_rol`);

--
-- Indices de la tabla `sexo`
--
ALTER TABLE `sexo`
  ADD PRIMARY KEY (`id_sexo`);

--
-- Indices de la tabla `tipo`
--
ALTER TABLE `tipo`
  ADD PRIMARY KEY (`id_tipo`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `id_rol` (`id_rol`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id_ventas`),
  ADD KEY `id_marca` (`id_marca`,`id_tipo`,`id_categoria`),
  ADD KEY `codigo_producto` (`codigo_producto`,`id_marca`,`id_tipo`,`id_categoria`),
  ADD KEY `id_categoria` (`id_categoria`),
  ADD KEY `id_tipo` (`id_tipo`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `almacen`
--
ALTER TABLE `almacen`
  MODIFY `id_almacen` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `marca`
--
ALTER TABLE `marca`
  MODIFY `id_marca` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `id_proveedor` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `id_rol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `sexo`
--
ALTER TABLE `sexo`
  MODIFY `id_sexo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tipo`
--
ALTER TABLE `tipo`
  MODIFY `id_tipo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id_ventas` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `almacen`
--
ALTER TABLE `almacen`
  ADD CONSTRAINT `almacen_ibfk_1` FOREIGN KEY (`codigo`) REFERENCES `producto` (`codigo`);

--
-- Filtros para la tabla `municipio`
--
ALTER TABLE `municipio`
  ADD CONSTRAINT `municipio_ibfk_1` FOREIGN KEY (`id_departamento`) REFERENCES `departamento` (`id_departamento`);

--
-- Filtros para la tabla `perfil_usuario`
--
ALTER TABLE `perfil_usuario`
  ADD CONSTRAINT `perfil_usuario_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`),
  ADD CONSTRAINT `perfil_usuario_ibfk_2` FOREIGN KEY (`id_sexo`) REFERENCES `sexo` (`id_sexo`),
  ADD CONSTRAINT `perfil_usuario_ibfk_3` FOREIGN KEY (`id_municipio`) REFERENCES `municipio` (`id_municipio`);

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categoria` (`id_categoria`),
  ADD CONSTRAINT `producto_ibfk_3` FOREIGN KEY (`id_tipo`) REFERENCES `tipo` (`id_tipo`),
  ADD CONSTRAINT `producto_ibfk_4` FOREIGN KEY (`id_marca`) REFERENCES `marca` (`id_marca`);

--
-- Filtros para la tabla `prod_venta`
--
ALTER TABLE `prod_venta`
  ADD CONSTRAINT `prod_venta_ibfk_1` FOREIGN KEY (`codigo`) REFERENCES `producto` (`codigo`),
  ADD CONSTRAINT `prod_venta_ibfk_2` FOREIGN KEY (`id_ventas`) REFERENCES `ventas` (`id_ventas`);

--
-- Filtros para la tabla `pro_produc`
--
ALTER TABLE `pro_produc`
  ADD CONSTRAINT `pro_produc_ibfk_1` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedor` (`id_proveedor`),
  ADD CONSTRAINT `pro_produc_ibfk_2` FOREIGN KEY (`codigo`) REFERENCES `producto` (`codigo`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`id_rol`) REFERENCES `rol` (`id_rol`);

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`codigo_producto`) REFERENCES `producto` (`codigo`),
  ADD CONSTRAINT `ventas_ibfk_2` FOREIGN KEY (`id_marca`) REFERENCES `marca` (`id_marca`),
  ADD CONSTRAINT `ventas_ibfk_3` FOREIGN KEY (`id_categoria`) REFERENCES `categoria` (`id_categoria`),
  ADD CONSTRAINT `ventas_ibfk_4` FOREIGN KEY (`id_tipo`) REFERENCES `tipo` (`id_tipo`),
  ADD CONSTRAINT `ventas_ibfk_5` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
