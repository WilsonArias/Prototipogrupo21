-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-03-2018 a las 18:05:21
-- Versión del servidor: 10.1.30-MariaDB
-- Versión de PHP: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ultimate_ferreteria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `table_cliente`
--

CREATE TABLE `table_cliente` (
  `idCliente` int(11) NOT NULL,
  `Nombre_Cliente` varchar(45) NOT NULL,
  `Apellido_Cliente` varchar(45) NOT NULL,
  `Empresa_Cliente` varchar(200) NOT NULL,
  `DPI_Cliente` varchar(20) NOT NULL,
  `direccion_Cliente` varchar(100) NOT NULL,
  `telefono_Cliente` varchar(20) NOT NULL,
  `correo_Cliente` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `table_cliente`
--

INSERT INTO `table_cliente` (`idCliente`, `Nombre_Cliente`, `Apellido_Cliente`, `Empresa_Cliente`, `DPI_Cliente`, `direccion_Cliente`, `telefono_Cliente`, `correo_Cliente`) VALUES
(5, 'wil', 'zap', 'tigo', '65659859898', 'quiche', '54654165', 'dasda');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `table_facturas`
--

CREATE TABLE `table_facturas` (
  `No_Facturas` int(11) NOT NULL,
  `cliente` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `totals` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `table_guia_remision`
--

CREATE TABLE `table_guia_remision` (
  `id_guia` int(11) NOT NULL,
  `punto_par` varchar(50) NOT NULL,
  `punto_lle` varchar(50) NOT NULL,
  `fecha_traslado` date NOT NULL,
  `costo_min` int(10) NOT NULL,
  `nom_empresa_transportes` varchar(100) NOT NULL,
  `ruc_empresa_transportes` varchar(50) NOT NULL,
  `marca_num_placa` varchar(50) NOT NULL,
  `nro_cons_inscripcion` varchar(50) NOT NULL,
  `nro_lic_conductor` varchar(50) NOT NULL,
  `tipo_num_comp_pago` varchar(50) NOT NULL,
  `orden_compra` varchar(50) NOT NULL,
  `cliente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `table_productos`
--

CREATE TABLE `table_productos` (
  `idProductos` int(10) NOT NULL,
  `nombreProductos` varchar(45) NOT NULL,
  `preciosProductos` float NOT NULL,
  `descripcionProductos` varchar(200) NOT NULL,
  `cantidadProductos` int(11) NOT NULL,
  `preciocompraProductos` float NOT NULL,
  `Difererencia` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `table_productos`
--

INSERT INTO `table_productos` (`idProductos`, `nombreProductos`, `preciosProductos`, `descripcionProductos`, `cantidadProductos`, `preciocompraProductos`, `Difererencia`) VALUES
(1, 'tubo 2', 18, '1/2x7/8x35cm', 11, 18, 0),
(2, 'tubo de abasto inodoro trebol', 18, '1/2x7/8x35cm', 9, 10, 8),
(3, 'tubo de abasto labatorio Metuza', 18, '1/2x7/8x40cm	', 8, 10, 8),
(4, 'tubo de abasto labatorio Trebol', 18, '1/2x7/8x40cm', 7, 10, 8),
(5, 'valvula de base Concyssa', 15, '1/2 pulgada	', 6, 8, 7),
(6, 'plancha de batir Stanley', 20, '7 pulgadas	', 5, 20, 0),
(7, 'plancha de batir Camasa', 15, '7 pulgadas', 5, 8, 7),
(8, 'plancha empastar Stanley', 25, '280x130mn', 2, 15, 10),
(9, 'plancha de empastar FyG', 20, '11px5	', 1, 12, 8),
(10, 'plancha de canto dentado FyG', 20, '11px5', 3, 12, 8),
(11, 'plancha de batir (vadilejo) Wins', 10, '7 pulgadas', 4, 4, 6),
(12, 'gruna de canto nacional', 10, '6x2.5cm', 1, 3.5, 6.5),
(13, 'gruna de centro nacional', 10, '6x2.5p', 5, 3.5, 6.5),
(14, 'gruna de centro Truper', 25, '5/2x4p', 5, 14, 11),
(15, 'Cable UTP cat. 5', 350, '350m', 5, 80, 270),
(16, 'Ocre importado Bayer color rojo', 12, '1k	', 5, 6, 6),
(17, 'Ocre importado Bayer color verde', 12, '1k', 5, 6, 6),
(18, 'Ocre importado Bayer color amarillo', 12, '1k', 5, 6, 6),
(19, 'Cal nieve Vilubdsa', 5, '1k', 5, 1.5, 3.5),
(20, 'Masilla de madera Vilubdsa', 4, '1k', 5, 1.5, 2.5),
(21, 'Masilla de pared Vilubdsa', 4, '1k', 5, 1.5, 2.5),
(22, 'Soda caustica Vilubdsa', 10, '1k', 5, 4, 6),
(23, 'Cemento blanco Huascaran', 4, '1k', 5, 2, 2),
(24, 'Borax americano', 15, '1k', 5, 7, 8),
(25, 'Fragua para mayolica Gris', 6, '1k', 5, 3, 3),
(26, 'Fragua para mayolica Celeste', 6, '1k', 5, 3, 3),
(27, 'Fragua para mayolica Blanco', 6, '1k', 5, 3, 3),
(28, 'Fragua para mayolica Negro', 6, '1k	', 5, 3, 3),
(29, 'Tornillo de fijacion', 5, 'tarugo, tornillo y tapa	', 5, 4, 1),
(30, 'Unia para Labatorio', 5, 'Nacional	', 5, 2, 3),
(31, 'Pegamento PBC Ultrapec', 5, '96ml', 5, 2, 3),
(32, 'Pegamento PBC Ultrapec', 1, '30ml', 5, 0.5, 0),
(33, 'Codo FG', 2, '45gradosx1/2', 5, 1, 0),
(34, 'Codo FG', 2, '90gradosx1/2', 5, 1, 1),
(35, 'Fierro FG T', 2.5, '1/2p', 5, 1, 1.5),
(36, 'Union FG', 2.5, '1/2p', 5, 1, 1.5),
(37, 'Tapon FG Macho', 2.5, '1/2p', 5, 1, 0),
(38, 'Tapon FG Hembra', 2.5, '1/2p', 5, 1, 1.5),
(39, 'Codo FG', 4, '3/4p', 5, 1.5, 0),
(40, 'T FG Codo', 4, '3/4p', 5, 1.5, 0),
(41, 'T FG', 5, '3/4	', 5, 2, 3),
(42, 'Tapon Macho', 5, '3/4p', 5, 2, 3),
(43, 'Codo FG ', 7, '1/2p', 5, 3, 4),
(44, 'T FG', 7, '1/2p', 5, 3, 4),
(45, 'Union FG', 5, '1p', 5, 2, 3),
(46, 'Tapon', 5, '1p', 5, 2, 3),
(47, 'Bushing FG', 5, '', 5, 2.5, 2.5),
(48, 'Bushing FG', 5, '1/2p', 5, 2.5, 0),
(49, 'Extension FG', 3, '1/2x2p', 3, 1, 2),
(50, 'Extension FG', 3, '1/2x3p', 5, 1, 2),
(51, 'Extension FG', 4, '1/2x4p', 5, 1.5, 0),
(52, 'Curvo PBC Sel', 5, '3/4p', 5, 2.4, 0),
(53, 'Duchas Nacionales ', 23, 'Cromado', 3, 13, 10),
(54, 'Duchas Nacionales', 7, 'Plastico', 3, 2.5, 4.5),
(55, 'Duchas de mano importado', 25, 'Garbanisado ', 5, 14, 11),
(56, 'Canio Nacional', 12, 'Bronce con repuesto', 5, 6, 6),
(57, 'Canio Nacional Jardinero', 15, 'Bronce con repuesto', 5, 7, 8),
(58, 'Canio de Palanta Importado', 14, 'Niquelado', 5, 7, 7),
(59, 'Canio PBC Jardinero', 5, 'Importado', 5, 2.5, 2.5),
(60, 'Canio PBC ', 5, 'Importado', 5, 5, 0),
(61, 'Canio de Palanca Quitaly', 28, 'Importado', 5, 15, 13),
(62, 'Canio de Palanca Cim Val', 30, 'Niquelado', 5, 30, 0),
(63, 'Canio de Lavadero ', 15, 'Importado', 5, 8, 7),
(64, 'Canio de lavadero Nacional', 23, 'Niquelado', 5, 13, 10),
(65, 'Canio de lavadero de Cocina', 15, 'Importado', 5, 7, 8),
(66, 'Canio de lavadero de Cocina', 28, 'Nacional', 4, 16, 12),
(67, 'Canio PBC PCP', 20, 'PBC', 5, 8, 12),
(68, 'Valvula de media PBC', 5, '1/2p Importado', 2, 1.5, 3.5),
(69, 'Valvula de media Metal', 12, 'Importado', 5, 6, 6),
(70, 'Valvula de Metal Cim Val', 28, 'Cim Val', 5, 28, 0),
(71, 'Valvula de Metal Itali', 20, 'Niquelado', 5, 12, 0),
(72, 'Valvula de Metal con puerta', 15, 'Bronce', 5, 7, 8),
(73, 'Valvula de Media PCP', 20, '1/2 con union universal', 5, 12, 8),
(74, 'Valvula PCP de soldar', 15, 'PBC', 5, 8, 7),
(75, 'Valvula PBC', 12, '3/4p', 2, 4, 8),
(76, 'Valvula Palanca', 25, '3/4p Metal, Bronce', 5, 10, 0),
(77, 'Valvula con Puerta', 25, '3/4x4p Bronce', 5, 13, 12),
(78, 'Valvula PBC', 15, '1p Importado', 5, 5, 10),
(79, 'Valvula de Metal', 65, '1p Cim Val', 5, 35, 30),
(80, 'Valvula con puerta', 40, '1p Bronce Cim Val', 5, 25, 15),
(81, 'Valvula PBC', 30, '1/2 Importado', 5, 12, 18),
(82, 'Valvula con puerta', 60, '1/2 Bronce', 5, 30, 30),
(83, 'Valvula PBC', 25, '2p', 5, 12, 13),
(84, 'Valvula', 80, '2p Bronce Importado', 5, 55, 25),
(85, 'Valvula con puerta', 60, '2p Bronce', 5, 35, 0),
(86, 'Valvula PBC', 65, '3p Importado', 5, 35, 30),
(87, 'Valvula con puerta', 140, '3p Bronce', 5, 80, 60),
(88, 'Valvula PBC', 120, '4p Importado', 5, 60, 60),
(89, 'Valvula con puerta', 180, '4p Bronce', 5, 100, 80),
(90, 'Interruptor King RN', 15, 'Baquelita caja x 12u', 5, 10, 5),
(91, 'Interruptor King RN', 15, 'caja x 12u', 5, 10, 5),
(92, 'Tomacorriente Rema Triple', 4, 'Puesta a tierra Gris', 5, 1, 3),
(93, 'Socket King Rema', 20, 'Caja x 24u', 5, 10, 10),
(94, 'Interruptor Termo-magnetico CBB', 10, '20A', 5, 4, 0),
(95, 'Interruptor Termo-magnetico CBB', 10, '30A', 5, 4, 6),
(96, 'Interruptor Termo-magnetico CBB', 10, '60A', 5, 4, 6),
(97, 'Interruptor Termo-magnetico BTCINO', 28, '2x25A', 5, 16, 12),
(98, 'Interruptor Termo-magnetico BTCINO', 28, '2x32A', 5, 16, 12),
(99, 'Interruptor Termo-magnetico BTCINO', 28, '2x40A', 5, 16, 12),
(100, 'Interruptor Termo-magnetico BTCINO', 28, '2x63A', 5, 16, 12),
(101, 'Interruptor Termo-magnetico Stronger', 20, '2x25A', 4, 10, 10),
(102, 'Extension 3 salidas x 3m Rema', 5, 'Importado	', 5, 2.5, 2.5),
(103, 'Triple Epem', 3.5, '250v 6A', 4, 1.6, 1.9),
(104, 'Aceite 5 en 1', 3, '30ml', 5, 1, 2),
(105, 'Aceite 5 en 1', 5, '100ml', 5, 2, 3),
(106, 'Brazo Destellante', 4, 'Limpia Metal', 5, 1.5, 2.5),
(107, 'Foco Belix', 6, '18W', 5, 3, 3),
(108, 'Foco Belix', 7, '27W', 5, 3, 4),
(109, 'Foco Belix', 8, '36W', 5, 4, 4),
(110, 'Foco Belix', 15, '85W', 5, 8, 7),
(111, 'Foco Belix', 50, '105W', 5, 25, 25),
(112, 'Foco Phillips', 15, '18W', 5, 10, 5),
(113, 'Foco Phillips', 20, '36W', 5, 12, 8),
(114, 'Foco Led Belix', 20, '7W', 5, 7, 13),
(115, 'Foco Led Belix', 20, '12W', 5, 9, 11),
(116, 'Reflector ', 45, '500W Importado	', 5, 25, 20),
(117, 'Foco de Colores', 25, 'Led', 5, 7, 18),
(119, 'Juguete', 12, 'juguete para niños', 20, 10, 2),
(120, 'carro', 300, 'carro', 19, 250, 50);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `table_ventas`
--

CREATE TABLE `table_ventas` (
  `idVentas` int(11) NOT NULL,
  `No_Facturas` int(11) NOT NULL,
  `Productos` int(10) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `importe` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(10) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `pasword` varchar(50) NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `nombres` varchar(100) NOT NULL,
  `apellidos` varchar(100) NOT NULL,
  `dpi` bigint(13) NOT NULL,
  `telefono` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `usuario`, `pasword`, `tipo`, `nombres`, `apellidos`, `dpi`, `telefono`) VALUES
(2, 'root', 'root', 'Empleado', 'empleado', 'empleado', 9874561236548, 77559898),
(4, 'wil', 'wil', 'Administrador', 'wilson', 'zapeta', 12165146, 5656);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `table_cliente`
--
ALTER TABLE `table_cliente`
  ADD PRIMARY KEY (`idCliente`),
  ADD UNIQUE KEY `idCliente_UNIQUE` (`idCliente`);

--
-- Indices de la tabla `table_facturas`
--
ALTER TABLE `table_facturas`
  ADD PRIMARY KEY (`No_Facturas`),
  ADD UNIQUE KEY `No_Facturas_UNIQUE` (`No_Facturas`),
  ADD KEY `llavesForaneas_Cliente_idx` (`cliente`);

--
-- Indices de la tabla `table_guia_remision`
--
ALTER TABLE `table_guia_remision`
  ADD PRIMARY KEY (`id_guia`);

--
-- Indices de la tabla `table_productos`
--
ALTER TABLE `table_productos`
  ADD PRIMARY KEY (`idProductos`),
  ADD UNIQUE KEY `idtProductos_UNIQUE` (`idProductos`);

--
-- Indices de la tabla `table_ventas`
--
ALTER TABLE `table_ventas`
  ADD PRIMARY KEY (`idVentas`),
  ADD UNIQUE KEY `idVentas_UNIQUE` (`idVentas`),
  ADD KEY `llavesForaneas_Facturas_idx` (`No_Facturas`),
  ADD KEY `llavesForaneas_Productos_idx` (`Productos`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `table_cliente`
--
ALTER TABLE `table_cliente`
  MODIFY `idCliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `table_facturas`
--
ALTER TABLE `table_facturas`
  MODIFY `No_Facturas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de la tabla `table_guia_remision`
--
ALTER TABLE `table_guia_remision`
  MODIFY `id_guia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `table_productos`
--
ALTER TABLE `table_productos`
  MODIFY `idProductos` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT de la tabla `table_ventas`
--
ALTER TABLE `table_ventas`
  MODIFY `idVentas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `table_facturas`
--
ALTER TABLE `table_facturas`
  ADD CONSTRAINT `table_Facturas_ibfk_1` FOREIGN KEY (`cliente`) REFERENCES `table_cliente` (`idCliente`);

--
-- Filtros para la tabla `table_ventas`
--
ALTER TABLE `table_ventas`
  ADD CONSTRAINT `table_Ventas_ibfk_1` FOREIGN KEY (`Productos`) REFERENCES `table_productos` (`idProductos`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
