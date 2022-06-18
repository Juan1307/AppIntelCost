-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-06-2022 a las 02:23:35
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `intelcost_bienes`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_bienes`
--

CREATE TABLE `tbl_bienes` (
  `Tipo` varchar(50) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `Codigo_Postal` varchar(20) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `Precio` varchar(20) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `Direccion` varchar(100) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `Ciudad` varchar(100) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `Telefono` varchar(20) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `tbl_bienes`
--

INSERT INTO `tbl_bienes` (`Tipo`, `Codigo_Postal`, `Precio`, `Direccion`, `Ciudad`, `Telefono`, `Id`) VALUES
('Casa', '85328', '$30,746', 'Ap #549-7395 Ut Rd.', 'New York', '334-052-0954', 1),
('Casa de Campo', '04436', '$71,045', 'P.O. Box 657, 9831 Cursus St.', 'Orlando', '488-441-5521', 2),
('Casa de Campo', '89804', '$36,087', 'Ap #325-2507 Quisque Av.', 'Los Angeles', '623-807-2869', 3),
('Casa de Campo', '94526-134', '$16,048', '347-866 Laoreet Road', 'Los Angeles', '997-640-8188', 4),
('Casa', '162925', '$45,912', '4732 Ipsum. Rd.', 'Houston', '802-414-8872', 5),
('Casa de Campo', '210020', '$64,370', '672-9576 Consectetuer Road', 'Orlando', '355-601-5749', 6),
('Casa', '16794', '$2,846', '549-5766 Sodales St.', 'Orlando', '557-228-6918', 7),
('Apartamento', '70689', '$60,951', 'P.O. Box 847, 2589 In Av.', 'Washington', '390-713-8687', 8),
('Casa de Campo', 'P0C 0G3', '$58,902', '175-4344 Nec, Ave', 'Orlando', '578-170-6179', 9),
('Casa', '7029', '$17,759', 'P.O. Box 497, 8679 Turpis. St.', 'New York', '870-559-3430', 10),
('Casa', '5237JG', '$91,067', '844-8312 Molestie Road', 'Miami', '147-920-5435', 11),
('Casa', '684445', '$36,155', 'P.O. Box 494, 674 Amet, Street', 'New York', '056-617-2556', 12),
('Apartamento', '5422', '$78,947', 'P.O. Box 466, 2795 Velit. Avenue', 'New York', '252-330-0116', 13),
('Casa de Campo', '37045', '$51,817', 'P.O. Box 523, 2126 Aliquet Rd.', 'Orlando', '986-825-6899', 14),
('Casa', 'RI9 6RT', '$39,561', 'Ap #669-7718 Cras St.', 'New York', '200-935-8531', 15),
('Apartamento', '31519', '$52,433', '2211 Malesuada Rd.', 'Los Angeles', '436-742-7954', 16),
('Apartamento', '83594', '$85,641', 'P.O. Box 181, 7858 Nisi. St.', 'Houston', '383-252-8216', 17),
('Casa de Campo', '753543', '$78,854', '741-2614 Accumsan Rd.', 'Miami', '487-609-0106', 18),
('Casa de Campo', '783917', '$64,471', '829-3250 In Rd.', 'New York', '788-832-7076', 19),
('Apartamento', '8635', '$47,420', 'Ap #393-3363 Fringilla Road', 'Orlando', '335-278-9678', 20),
('Casa de Campo', '15971', '$28,795', 'Ap #247-8024 Curabitur St.', 'Miami', '167-013-1429', 21),
('Apartamento', '37-346', '$69,505', '995-1099 Id, Road', 'Washington', '491-394-8799', 22),
('Casa de Campo', '0318YB', '$73,231', 'Ap #176-8333 Gravida St.', 'Miami', '339-324-8859', 23),
('Casa de Campo', '5411', '$83,847', '340-985 Lobortis. Avenue', 'Washington', '049-063-4896', 24),
('Casa', '1045SO', '$93,907', '992-7214 Pharetra Rd.', 'Miami', '257-364-7011', 25),
('Casa de Campo', '9802', '$21,796', '7705 Fusce St.', 'Washington', '363-540-9113', 26),
('Casa', '1038', '$97,134', '723-5458 Neque. Ave', 'New York', '512-886-8792', 27),
('Casa', '61483', '$32,659', 'Ap #246-9877 Ultricies Rd.', 'Washington', '423-014-6013', 28),
('Apartamento', '9738', '$14,560', 'Ap #712-3234 Nunc Road', 'Miami', '334-030-0048', 29),
('Casa de Campo', '38707', '$69,433', '4406 Justo Avenue', 'Houston', '242-441-7733', 30),
('Casa de Campo', '57503', '$1,986', 'Ap #172-6600 Vivamus St.', 'New York', '710-649-0830', 31),
('Casa', '0242AN', '$73,668', 'Ap #728-4099 Et, Ave', 'Houston', '535-501-0707', 32),
('Apartamento', '94323', '$85,996', '4648 Sem Rd.', 'Washington', '956-749-3273', 33),
('Casa', '894922', '$38,835', 'Ap #539-4295 Volutpat Avenue', 'Miami', '904-312-9292', 34),
('Casa de Campo', '5574', '$62,069', '500-6214 Tempus, Street', 'Miami', '168-671-0953', 35),
('Casa de Campo', '20705', '$32,174', '233-9001 Cum Rd.', 'New York', '670-701-8060', 36),
('Apartamento', '02187', '$23,492', '4084 Sit St.', 'Orlando', '326-023-8622', 37),
('Casa de Campo', '56309', '$42,579', 'P.O. Box 825, 9762 Etiam Street', 'Miami', '343-695-3228', 38),
('Apartamento', '6038', '$41,843', '5889 Luctus. Ave', 'New York', '259-039-5762', 39),
('Casa de Campo', '69526', '$94,728', 'Ap #834-3873 Nullam St.', 'Houston', '809-587-9484', 40),
('Casa de Campo', '65211', '$90,451', 'P.O. Box 711, 706 Dis Rd.', 'Washington', '354-038-8533', 41),
('Casa de Campo', '893592', '$2,261', 'P.O. Box 315, 6041 Duis Avenue', 'Orlando', '186-671-4205', 42),
('Casa de Campo', '4263', '$76,404', '5640 Dapibus St.', 'Washington', '906-342-4567', 43),
('Casa', '92501', '$2,055', '5260 Sed Rd.', 'New York', '336-903-7567', 44),
('Casa de Campo', 'G9T 9P2', '$99,508', 'Ap #864-1235 Mi Rd.', 'Orlando', '723-547-1102', 45),
('Casa', '58567', '$7,952', '8151 Rutrum Rd.', 'Miami', '594-072-4670', 46),
('Casa', '0547ID', '$48,882', 'P.O. Box 926, 1798 Pellentesque St.', 'New York', '328-063-3034', 47),
('Apartamento', 'J6H 9S9', '$33,141', 'P.O. Box 264, 6488 Euismod Avenue', 'Los Angeles', '210-220-4305', 48),
('Apartamento', '63897', '$88,980', 'Ap #694-1472 Orci Ave', 'New York', '362-652-3567', 49),
('Casa', '90970-060', '$35,831', 'P.O. Box 354, 6477 Eget St.', 'Los Angeles', '593-092-8585', 50),
('Casa de Campo', '727883', '$99,230', '128-8013 Imperdiet Avenue', 'New York', '611-764-9648', 51),
('Apartamento', '6390', '$82,679', 'Ap #394-8201 Pede. St.', 'New York', '057-000-7888', 52),
('Casa', '4116', '$96,998', 'Ap #210-1906 Mauris St.', 'New York', '742-185-0661', 53),
('Casa', '7217', '$54,710', '228-2036 Tincidunt Road', 'Orlando', '565-750-7079', 54),
('Casa', '83809', '$96,281', '681-117 Facilisis Street', 'Washington', '695-936-1302', 55),
('Casa', '843642', '$3,829', 'P.O. Box 665, 3825 Nec St.', 'Houston', '859-638-8140', 56),
('Casa de Campo', '66013', '$70,069', 'Ap #800-4147 In Street', 'Los Angeles', '324-489-2139', 57),
('Casa de Campo', '9133', '$26,514', '297-8960 Libero. Rd.', 'Los Angeles', '626-297-1082', 58),
('Casa', '188876', '$68,927', '5605 Nisi Ave', 'Orlando', '842-236-6720', 59),
('Casa', '64899', '$67,772', 'P.O. Box 870, 9855 Tristique Avenue', 'Miami', '114-453-9481', 60),
('Casa', '5290KA', '$71,048', 'Ap #214-5963 Metus Road', 'Houston', '337-930-6310', 61),
('Casa de Campo', 'Y4V 5A1', '$90,138', '869 Tempus St.', 'New York', '235-726-7602', 62),
('Casa de Campo', '26271', '$70,212', 'P.O. Box 916, 4350 In Avenue', 'New York', '292-391-9640', 63),
('Casa', '93246', '$74,320', 'Ap #768-2635 Eget, Avenue', 'Miami', '909-006-0105', 64),
('Apartamento', '35826', '$15,782', 'Ap #581-5945 Ullamcorper Road', 'Orlando', '820-970-3451', 65),
('Casa de Campo', '8625GM', '$27,530', 'Ap #298-502 Dolor. Ave', 'Orlando', '339-015-5616', 66),
('Casa de Campo', '857132', '$56,359', '569-3972 Malesuada Street', 'Miami', '712-181-4815', 67),
('Casa de Campo', '39945', '$29,789', 'Ap #378-8818 Molestie Ave', 'Los Angeles', '286-311-5133', 68),
('Casa', '71804', '$57,408', '766 Consequat, St.', 'Los Angeles', '790-137-7352', 69),
('Casa', 'F7 0YF', '$87,871', '729-3081 Cubilia Rd.', 'Washington', '888-946-8086', 70),
('Casa', '19418', '$43,727', '457-7987 Curae; Rd.', 'Washington', '760-938-1297', 71),
('Casa de Campo', 'L18 9SC', '$30,425', '6158 Tempor Rd.', 'Houston', '690-850-4520', 72),
('Casa', '21712', '$23,311', 'Ap #693-2983 Class St.', 'New York', '213-536-0655', 73),
('Casa de Campo', 'YY0A 3TD', '$72,611', '841 Scelerisque Rd.', 'Houston', '367-551-7660', 74),
('Casa', '14844', '$98,815', '792-7569 Dolor Rd.', 'New York', '261-470-7647', 75),
('Casa', '8230', '$50,861', '444-5718 Ut Rd.', 'Washington', '041-009-6788', 76),
('Casa de Campo', '37234', '$87,808', 'Ap #377-8404 Ipsum Street', 'New York', '534-916-5827', 77),
('Casa', 'IC54 7IK', '$93,263', '2425 Rutrum Street', 'Los Angeles', '494-431-4661', 78),
('Apartamento', '99-113', '$99,947', '344-8412 Nisl. St.', 'Houston', '050-082-4431', 79),
('Casa', '03082', '$69,922', '9399 Sem Ave', 'Houston', '909-320-3004', 80),
('Casa', 'A8Z 9N1', '$25,541', 'P.O. Box 284, 8629 Egestas. St.', 'Orlando', '196-562-2718', 81),
('Apartamento', 'G1C 0L5', '$97,152', '283-2290 Aliquam Street', 'New York', '272-977-8230', 82),
('Casa', '63477', '$70,429', 'P.O. Box 787, 1352 Mollis Rd.', 'New York', '580-328-0397', 83),
('Casa de Campo', '1688', '$9,426', '571-3448 Ipsum. St.', 'New York', '451-067-8082', 84),
('Apartamento', '3977', '$82,655', '626-4183 Eros. Road', 'New York', '818-932-2502', 85),
('Casa de Campo', '3773', '$29,354', 'Ap #500-446 Accumsan Ave', 'Los Angeles', '453-561-4737', 86),
('Apartamento', '54983', '$96,267', '3703 Quisque Rd.', 'Orlando', '020-821-1050', 87),
('Casa', 'Q28 3PO', '$61,691', '5946 Consectetuer St.', 'New York', '773-538-6408', 88),
('Casa', '4484KP', '$95,859', 'P.O. Box 556, 1951 Vulputate Av.', 'Houston', '670-572-1780', 89),
('Apartamento', '5962', '$82,504', '727-198 A Road', 'Houston', '821-444-9824', 90),
('Casa', '703157', '$80,965', 'Ap #271-6835 Tempus St.', 'Washington', '601-485-1049', 91),
('Casa de Campo', '61790-368', '$49,957', 'P.O. Box 519, 981 Nostra, Avenue', 'Miami', '440-469-6769', 92),
('Casa', '612383', '$23,498', '2759 Faucibus St.', 'Washington', '510-056-8508', 93),
('Casa de Campo', 'X45 0FA', '$8,187', '5720 Urna, Street', 'Miami', '581-094-0717', 94),
('Apartamento', 'R1B 4Y7', '$32,660', '283-1453 Amet, Avenue', 'Los Angeles', '751-107-3929', 95),
('Casa', '86541', '$39,721', 'P.O. Box 169, 7235 Quisque Road', 'Los Angeles', '782-078-8565', 96),
('Casa de Campo', '7112', '$97,135', '6840 Rhoncus. Ave', 'Miami', '845-500-3131', 97),
('Apartamento', '34981', '$6,672', '967-7675 A, Rd.', 'Los Angeles', '751-125-7876', 98),
('Casa de Campo', '7131', '$17,160', '227-6771 Ut Street', 'Houston', '262-186-7762', 99),
('Casa', '598072', '$42,804', 'P.O. Box 432, 4652 Proin Ave', 'Washington', '113-637-2816', 100);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_det_bienes`
--

CREATE TABLE `tbl_det_bienes` (
  `id_det_bien` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_bien` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `tbl_det_bienes`
--

INSERT INTO `tbl_det_bienes` (`id_det_bien`, `id_usuario`, `id_bien`) VALUES
(2, 2, 1),
(4, 2, 10),
(16, 1, 3),
(17, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_usuarios`
--

CREATE TABLE `tbl_usuarios` (
  `id_usuario` int(11) NOT NULL,
  `nombre` varchar(70) COLLATE utf8mb4_spanish_ci NOT NULL,
  `apellidos` varchar(100) COLLATE utf8mb4_spanish_ci NOT NULL,
  `num_doc` varchar(10) COLLATE utf8mb4_spanish_ci NOT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `tbl_usuarios`
--

INSERT INTO `tbl_usuarios` (`id_usuario`, `nombre`, `apellidos`, `num_doc`, `estado`) VALUES
(1, 'Pedro Carlos', 'Sanchez Carvajal', '23432123', 1),
(2, 'Carmen Liz', 'Caballero Casanova', '44332123', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_bienes`
--
ALTER TABLE `tbl_bienes`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `tbl_det_bienes`
--
ALTER TABLE `tbl_det_bienes`
  ADD PRIMARY KEY (`id_det_bien`),
  ADD KEY `id_bien` (`id_bien`),
  ADD KEY `tbl_det_bienes_ibfk_2` (`id_usuario`);

--
-- Indices de la tabla `tbl_usuarios`
--
ALTER TABLE `tbl_usuarios`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_bienes`
--
ALTER TABLE `tbl_bienes`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de la tabla `tbl_det_bienes`
--
ALTER TABLE `tbl_det_bienes`
  MODIFY `id_det_bien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `tbl_usuarios`
--
ALTER TABLE `tbl_usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tbl_det_bienes`
--
ALTER TABLE `tbl_det_bienes`
  ADD CONSTRAINT `tbl_det_bienes_ibfk_1` FOREIGN KEY (`id_bien`) REFERENCES `tbl_bienes` (`Id`),
  ADD CONSTRAINT `tbl_det_bienes_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `tbl_usuarios` (`id_usuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
