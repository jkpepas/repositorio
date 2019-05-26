-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-05-2019 a las 06:59:25
-- Versión del servidor: 10.1.19-MariaDB
-- Versión de PHP: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `farmacias`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_administradores`
--

CREATE TABLE `tb_administradores` (
  `admin_codi` int(11) NOT NULL,
  `admin_nomb` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tb_administradores`
--

INSERT INTO `tb_administradores` (`admin_codi`, `admin_nomb`) VALUES
(1, 'Rodri'),
(2, 'Jarby Alexander');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_ciudades`
--

CREATE TABLE `tb_ciudades` (
  `ciu_codi` int(11) NOT NULL,
  `ciu_nomb` varchar(40) NOT NULL,
  `pais_codi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tb_ciudades`
--

INSERT INTO `tb_ciudades` (`ciu_codi`, `ciu_nomb`, `pais_codi`) VALUES
(1, 'Cali', 1),
(2, 'Bogota', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_clientes`
--

CREATE TABLE `tb_clientes` (
  `cli_codi` int(11) NOT NULL,
  `cli_nomb` varchar(55) NOT NULL,
  `cli_ape` varchar(55) NOT NULL,
  `cli_tele` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tb_clientes`
--

INSERT INTO `tb_clientes` (`cli_codi`, `cli_nomb`, `cli_ape`, `cli_tele`) VALUES
(1, 'Jarby', 'Cliente1', 4335678);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_empleados`
--

CREATE TABLE `tb_empleados` (
  `emple_codi` int(11) NOT NULL,
  `emple_nomb` varchar(50) NOT NULL,
  `farma_codi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tb_empleados`
--

INSERT INTO `tb_empleados` (`emple_codi`, `emple_nomb`, `farma_codi`) VALUES
(1, 'Jarby', 1),
(2, 'Camila', 1),
(3, 'fabio', 1),
(4, 'gloria', 1),
(10, 'pee', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_farmacias`
--

CREATE TABLE `tb_farmacias` (
  `farma_codi` int(11) NOT NULL,
  `farma_nomb` varchar(40) NOT NULL,
  `ciu_codi` int(11) NOT NULL,
  `admin_codi` int(11) NOT NULL,
  `propi_codi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tb_farmacias`
--

INSERT INTO `tb_farmacias` (`farma_codi`, `farma_nomb`, `ciu_codi`, `admin_codi`, `propi_codi`) VALUES
(1, 'Sura Farmax', 1, 1, 1),
(6, 'rodrigo', 2, 2, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_inventarios`
--

CREATE TABLE `tb_inventarios` (
  `inven_codi` int(11) NOT NULL,
  `produ_codi` int(11) NOT NULL,
  `cant` int(11) NOT NULL,
  `fecha` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tb_inventarios`
--

INSERT INTO `tb_inventarios` (`inven_codi`, `produ_codi`, `cant`, `fecha`) VALUES
(1, 1, 12, '12/05/2019'),
(2, 1, 4, '20/05/2019');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_nomina`
--

CREATE TABLE `tb_nomina` (
  `pago_codi` int(11) NOT NULL,
  `pago_cant` int(20) NOT NULL,
  `emple_codi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tb_nomina`
--

INSERT INTO `tb_nomina` (`pago_codi`, `pago_cant`, `emple_codi`) VALUES
(1, 1500000, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_notificaciones`
--

CREATE TABLE `tb_notificaciones` (
  `noti_codi` int(11) NOT NULL,
  `noti_desc` varchar(100) NOT NULL,
  `farma_codi` int(11) NOT NULL,
  `cli_codi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tb_notificaciones`
--

INSERT INTO `tb_notificaciones` (`noti_codi`, `noti_desc`, `farma_codi`, `cli_codi`) VALUES
(1, 'Nos encontramos de Segundasos en esta semana', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_paises`
--

CREATE TABLE `tb_paises` (
  `pais_codi` int(11) NOT NULL,
  `pais_nomb` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tb_paises`
--

INSERT INTO `tb_paises` (`pais_codi`, `pais_nomb`) VALUES
(1, 'Colombia'),
(2, 'Ecuador'),
(3, 'Venezuela'),
(4, 'Mexico'),
(5, 'Canada'),
(6, 'España');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_productos`
--

CREATE TABLE `tb_productos` (
  `produ_codi` int(11) NOT NULL,
  `produ_nomb` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tb_productos`
--

INSERT INTO `tb_productos` (`produ_codi`, `produ_nomb`) VALUES
(1, 'Yasminiq mini'),
(2, 'lorena');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_propietarios`
--

CREATE TABLE `tb_propietarios` (
  `propi_codi` int(11) NOT NULL,
  `propi_nomb` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tb_propietarios`
--

INSERT INTO `tb_propietarios` (`propi_codi`, `propi_nomb`) VALUES
(1, 'Jarby Prop'),
(2, 'Jose Manuel');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_proveedores`
--

CREATE TABLE `tb_proveedores` (
  `prove_codi` int(11) NOT NULL,
  `prove_nomb` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tb_proveedores`
--

INSERT INTO `tb_proveedores` (`prove_codi`, `prove_nomb`) VALUES
(1, 'Fedex');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_roles`
--

CREATE TABLE `tb_roles` (
  `rol_codi` int(11) NOT NULL,
  `rol_nomb` varchar(50) NOT NULL,
  `rol_desc` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tb_roles`
--

INSERT INTO `tb_roles` (`rol_codi`, `rol_nomb`, `rol_desc`) VALUES
(1, 'Administrador Del Sistema', 'Encargado de controlar los aspectos mas importantes dentro de la empresa'),
(2, 'Gerentes', 'Se encarga de Operaciones del Sistema');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_usuarios`
--

CREATE TABLE `tb_usuarios` (
  `usu_codi` int(11) NOT NULL,
  `usu_nomb` varchar(40) NOT NULL,
  `usu_pass` varchar(40) NOT NULL,
  `rol_codi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tb_usuarios`
--

INSERT INTO `tb_usuarios` (`usu_codi`, `usu_nomb`, `usu_pass`, `rol_codi`) VALUES
(1, 'Jarby', '123', 1),
(2, 'Manuel', '123', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_ventas`
--

CREATE TABLE `tb_ventas` (
  `venta_codi` int(11) NOT NULL,
  `cli_codi` int(11) NOT NULL,
  `produ_codi` int(11) NOT NULL,
  `produ_cant` int(11) NOT NULL,
  `fecha` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tb_ventas`
--

INSERT INTO `tb_ventas` (`venta_codi`, `cli_codi`, `produ_codi`, `produ_cant`, `fecha`) VALUES
(1, 1, 1, 1, '12/05/2019'),
(2, 1, 2, 1, '12/03/2018');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tb_administradores`
--
ALTER TABLE `tb_administradores`
  ADD PRIMARY KEY (`admin_codi`);

--
-- Indices de la tabla `tb_ciudades`
--
ALTER TABLE `tb_ciudades`
  ADD PRIMARY KEY (`ciu_codi`),
  ADD KEY `pais_codi` (`pais_codi`);

--
-- Indices de la tabla `tb_clientes`
--
ALTER TABLE `tb_clientes`
  ADD PRIMARY KEY (`cli_codi`);

--
-- Indices de la tabla `tb_empleados`
--
ALTER TABLE `tb_empleados`
  ADD PRIMARY KEY (`emple_codi`),
  ADD KEY `farma_codi` (`farma_codi`);

--
-- Indices de la tabla `tb_farmacias`
--
ALTER TABLE `tb_farmacias`
  ADD PRIMARY KEY (`farma_codi`),
  ADD KEY `ciu_codi` (`ciu_codi`),
  ADD KEY `admin_codi` (`admin_codi`),
  ADD KEY `propi_codi` (`propi_codi`);

--
-- Indices de la tabla `tb_inventarios`
--
ALTER TABLE `tb_inventarios`
  ADD PRIMARY KEY (`inven_codi`),
  ADD KEY `produ_codi` (`produ_codi`);

--
-- Indices de la tabla `tb_nomina`
--
ALTER TABLE `tb_nomina`
  ADD PRIMARY KEY (`pago_codi`),
  ADD KEY `emple_codi` (`emple_codi`);

--
-- Indices de la tabla `tb_notificaciones`
--
ALTER TABLE `tb_notificaciones`
  ADD PRIMARY KEY (`noti_codi`);

--
-- Indices de la tabla `tb_paises`
--
ALTER TABLE `tb_paises`
  ADD PRIMARY KEY (`pais_codi`);

--
-- Indices de la tabla `tb_productos`
--
ALTER TABLE `tb_productos`
  ADD PRIMARY KEY (`produ_codi`);

--
-- Indices de la tabla `tb_propietarios`
--
ALTER TABLE `tb_propietarios`
  ADD PRIMARY KEY (`propi_codi`);

--
-- Indices de la tabla `tb_proveedores`
--
ALTER TABLE `tb_proveedores`
  ADD PRIMARY KEY (`prove_codi`);

--
-- Indices de la tabla `tb_roles`
--
ALTER TABLE `tb_roles`
  ADD PRIMARY KEY (`rol_codi`);

--
-- Indices de la tabla `tb_usuarios`
--
ALTER TABLE `tb_usuarios`
  ADD PRIMARY KEY (`usu_codi`),
  ADD KEY `rol_codi` (`rol_codi`);

--
-- Indices de la tabla `tb_ventas`
--
ALTER TABLE `tb_ventas`
  ADD PRIMARY KEY (`venta_codi`),
  ADD KEY `cli_codi` (`cli_codi`),
  ADD KEY `produ_codi` (`produ_codi`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tb_administradores`
--
ALTER TABLE `tb_administradores`
  MODIFY `admin_codi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `tb_ciudades`
--
ALTER TABLE `tb_ciudades`
  MODIFY `ciu_codi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `tb_clientes`
--
ALTER TABLE `tb_clientes`
  MODIFY `cli_codi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `tb_empleados`
--
ALTER TABLE `tb_empleados`
  MODIFY `emple_codi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `tb_farmacias`
--
ALTER TABLE `tb_farmacias`
  MODIFY `farma_codi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `tb_inventarios`
--
ALTER TABLE `tb_inventarios`
  MODIFY `inven_codi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `tb_nomina`
--
ALTER TABLE `tb_nomina`
  MODIFY `pago_codi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `tb_notificaciones`
--
ALTER TABLE `tb_notificaciones`
  MODIFY `noti_codi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `tb_paises`
--
ALTER TABLE `tb_paises`
  MODIFY `pais_codi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `tb_productos`
--
ALTER TABLE `tb_productos`
  MODIFY `produ_codi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `tb_propietarios`
--
ALTER TABLE `tb_propietarios`
  MODIFY `propi_codi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `tb_proveedores`
--
ALTER TABLE `tb_proveedores`
  MODIFY `prove_codi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `tb_roles`
--
ALTER TABLE `tb_roles`
  MODIFY `rol_codi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `tb_usuarios`
--
ALTER TABLE `tb_usuarios`
  MODIFY `usu_codi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `tb_ventas`
--
ALTER TABLE `tb_ventas`
  MODIFY `venta_codi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
