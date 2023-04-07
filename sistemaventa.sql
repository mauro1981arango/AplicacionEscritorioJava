-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-03-2023 a las 17:01:00
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sistemaventa`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id_cliente` int(11) NOT NULL,
  `cedula` int(10) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `telefono` bigint(11) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `razon` varchar(100) DEFAULT NULL,
  `fecha` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id_cliente`, `cedula`, `nombre`, `telefono`, `direccion`, `razon`, `fecha`) VALUES
(1, 1035287100, 'Martin Delgado', 2471099, 'Calle 6 Nro 7-09', '', '2022-06-09 23:57:29'),
(2, 1032597682, 'Katerine Mendez', 2506632, 'Av 3 65 - 43', 'Comerciante', '2022-06-09 23:58:50'),
(3, 70983589, 'Jorge Robledo', 2104477, 'Diagonal 4 Nro 32 - 44', 'Distribuidor', '2022-06-10 00:00:18'),
(4, 1032598777, 'Maria Camila Bermudez', 2809855, 'Calle 40 Nr0 55-09', 'Independiente', '2022-06-10 17:42:32'),
(5, 70980250, 'Karina Miranda ', 2584763, 'Calle 54 Nro 89-08', 'Ferreteria', '2022-06-10 19:42:47');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `config`
--

CREATE TABLE `config` (
  `id` int(11) NOT NULL,
  `nit` varchar(15) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `razon` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `config`
--

INSERT INTO `config` (`id`, `nit`, `nombre`, `telefono`, `direccion`, `razon`) VALUES
(1, '890.543.68', 'Desarrollo en Java', '3105802120', 'Av 33 Nro 24-295', 'Desarrollador de aplicaciones');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle`
--

CREATE TABLE `detalle` (
  `id_detalle` int(11) NOT NULL,
  `cod_producto` varchar(20) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio` double(10,1) NOT NULL,
  `id_venta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `detalle`
--

INSERT INTO `detalle` (`id_detalle`, `cod_producto`, `cantidad`, `precio`, `id_venta`) VALUES
(1, '18920-564', 3, 9000.0, 1),
(2, '6543-kjf0', 1, 20000.0, 1),
(3, 'HTER-986M', 2, 28000.0, 1),
(4, 'HTER-986M', 5, 28000.0, 2),
(5, '18920-564', 6, 9000.0, 3),
(6, 'RETYU8K00', 3, 20000.0, 4),
(7, 'HTER-986M', 2, 28000.0, 4),
(8, '18920-564', 1, 9000.0, 4),
(9, '6543-kjf0', 1, 20000.0, 4),
(10, 'HTER-986M', 2, 28000.0, 5),
(11, '6543-kjf0', 1, 20000.0, 6),
(12, 'RETYU8K00', 2, 20000.0, 6),
(13, '18920-564', 2, 9000.0, 7),
(14, 'RETYU8K00', 1, 20000.0, 7),
(15, '18920-564', 2, 9000.0, 8),
(16, '6543-kjf0', 4, 20000.0, 9),
(17, '18920-564', 6, 9000.0, 9),
(18, '6543-kjf0', 2, 20000.0, 10),
(19, 'HTER-986M', 5, 28000.0, 10),
(20, '6543-kjf0', 5, 20000.0, 11),
(21, '6543-kjf0', 2, 20000.0, 12),
(22, 'RETYU8K00', 2, 20000.0, 12),
(23, 'HTER-986M', 5, 28000.0, 13),
(24, 'RETYU8K00', 2, 20000.0, 13);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id_producto` int(11) NOT NULL,
  `codigo` varchar(20) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `proveedor` varchar(50) NOT NULL,
  `stock` int(11) NOT NULL,
  `precio` double(10,1) NOT NULL,
  `fecha` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_producto`, `codigo`, `descripcion`, `proveedor`, `stock`, `precio`, `fecha`) VALUES
(1, '18920-564', 'Frasco de aceite x 500 ml', 'Detodo SA', 60, 9000.0, '2022-06-10'),
(2, 'HTER-986M', 'Botella de vino blanco 750 ml', 'Las Delicias', 35, 28000.0, '2022-06-10'),
(3, '6543-kjf0', 'Torta dulce 100 gramos', 'Las Delicias', 91, 20000.0, '2022-06-10'),
(4, 'RETYU8K00', 'Bombilla ahorradora', 'Detodo SA', 40, 20000.0, '2022-06-10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `id_proveedor` int(11) NOT NULL,
  `nit` varchar(20) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `razon` varchar(150) NOT NULL,
  `fecha` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`id_proveedor`, `nit`, `nombre`, `telefono`, `direccion`, `razon`, `fecha`) VALUES
(1, '980.542.32-21', 'Detodo SA', '2451010', 'Calle 100 Nro 56 - 42', 'Distribuidor', '2022-06-10'),
(2, '358.3256.00', 'Las Delicias', '2163232', 'Diagonal 4 Nro  6-99', 'Distribuidor de Láctes', '2022-06-10'),
(3, '970.40052-2', 'Surtimax', '2666666', 'Av Orienta Nuro 45-90', 'Distribuidor de abarrotes', '2022-06-10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `pass` varchar(20) NOT NULL,
  `rol` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `nombre`, `correo`, `pass`, `rol`) VALUES
(1, 'Roberto Aguirre', 'roberto@hotmail.com', '12345', 'Administrador'),
(2, 'Katerine Londoño', 'kati@hotmail.cim', '123', 'Asistente'),
(3, 'Probando Sistema', 'probando@gamail.com', '0000', 'Asistente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id_venta` int(11) NOT NULL,
  `cliente` varchar(100) NOT NULL,
  `vendedor` varchar(100) NOT NULL,
  `total` double(10,1) NOT NULL,
  `fecha` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id_venta`, `cliente`, `vendedor`, `total`, `fecha`) VALUES
(1, 'Katerine Mendez', 'Pruebas Java', 103000.0, '07/06/2022'),
(2, 'Martin Delgado', 'Pruebas Java', 140000.0, '07/06/2022'),
(3, 'Jorge Robledo', 'Pruebas Java', 54000.0, '07/06/2022'),
(4, 'Jorge Robledo', 'Pruebas Java', 145000.0, '07/06/2022'),
(5, 'Maria Camila Bermudez', 'Pruebas Java', 56000.0, '07/06/2022'),
(6, 'Katerine Mendez', 'Pruebas Java', 60000.0, '07/06/2022'),
(7, 'Jorge Robledo', 'Pruebas Java', 38000.0, '07/06/2022'),
(8, 'Martin Delgado', 'Pruebas Java', 18000.0, '10/06/2022'),
(9, 'Karina Miranda ', 'Pruebas Java', 134000.0, '10/06/2022'),
(10, 'Martin Delgado', 'Pruebas Java', 180000.0, '10/06/2022'),
(11, 'Karina Miranda ', 'Pruebas Java', 100000.0, '10/06/2022'),
(12, 'Martin Delgado', 'Probando Sistema', 80000.0, '12/06/2022'),
(13, 'Jorge Robledo', 'Roberto Aguirre', 180000.0, '28/06/2022');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indices de la tabla `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detalle`
--
ALTER TABLE `detalle`
  ADD PRIMARY KEY (`id_detalle`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id_producto`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`id_proveedor`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id_venta`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `config`
--
ALTER TABLE `config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `detalle`
--
ALTER TABLE `detalle`
  MODIFY `id_detalle` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `id_proveedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id_venta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
