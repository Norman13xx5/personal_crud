-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 06, 2022 at 06:42 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crud2`
--

-- --------------------------------------------------------

--
-- Table structure for table `tm_producto`
--

CREATE TABLE `tm_producto` (
  `id_producto` int(11) NOT NULL,
  `descripcion_producto` varchar(500) COLLATE utf8_spanish_ci NOT NULL,
  `nombre_producto` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `fecha_creacion` datetime NOT NULL,
  `fecha_modificacion` datetime DEFAULT NULL,
  `fecha_eliminacion` datetime DEFAULT NULL,
  `estado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `tm_producto`
--

INSERT INTO `tm_producto` (`id_producto`, `descripcion_producto`, `nombre_producto`, `fecha_creacion`, `fecha_modificacion`, `fecha_eliminacion`, `estado`) VALUES
(1, 'Ninguna', 'auriculares', '2022-04-04 14:44:54', NULL, '2022-04-05 16:16:39', 0),
(2, 'Ninguna', 'mouse', '2022-04-04 14:46:15', NULL, '2022-04-05 21:47:28', 0),
(3, 'Ninguna', 'teclado', '2022-04-04 14:47:00', NULL, '2022-04-05 21:49:03', 0),
(4, 'Ninguna', 'Monitor', '2022-04-04 23:03:01', NULL, NULL, 1),
(5, 'Ninguna', 'Mousepad', '2022-04-05 16:45:12', NULL, NULL, 1),
(6, 'Ninguna', 'Microfono', '2022-04-05 16:52:13', NULL, NULL, 1),
(7, 'Ninguna', 'Pantalla', '2022-04-05 16:52:27', NULL, NULL, 1),
(8, 'Ninguna', 'Bafle', '2022-04-05 23:58:49', '2022-04-05 21:47:43', '2022-04-05 21:48:58', 0),
(9, 'Ninguna', 'Display', '2022-04-05 16:57:45', NULL, NULL, 1),
(10, 'Ninguna', 'Mando', '2022-04-05 16:57:55', NULL, NULL, 1),
(11, 'Ninguna', 'Cooler', '2022-04-05 16:58:14', NULL, '2022-04-05 21:49:00', 0),
(12, 'Ninguna', 'Porta Basos', '2022-04-05 16:58:23', NULL, NULL, 1),
(13, 'Ninguna', 'Chasis', '2022-04-05 16:58:30', NULL, NULL, 1),
(14, 'Ninguna', 'Lapicero', '2022-04-05 16:59:32', NULL, '2022-04-05 16:59:40', 0),
(15, 'Ninguna', 'as', '2022-04-05 21:45:23', '2022-04-05 21:45:30', '2022-04-05 21:47:18', 0),
(16, 'Ninguna', '11111', '2022-04-05 21:47:39', NULL, '2022-04-05 21:47:55', 0),
(17, 'Ninguna', '2222', '2022-04-05 21:47:48', NULL, '2022-04-05 21:47:58', 0),
(18, 'Ninguna', '111', '2022-04-05 21:48:01', NULL, '2022-04-05 21:48:07', 0),
(19, 'Ninguna', '222', '2022-04-05 21:48:04', NULL, '2022-04-05 21:48:12', 0),
(20, 'Ninguna', '1111', '2022-04-05 21:48:20', NULL, '2022-04-05 21:48:30', 0),
(21, 'Ninguna', '2222', '2022-04-05 21:48:23', NULL, '2022-04-05 21:48:38', 0),
(22, 'Text1', 'Text1', '2022-04-06 11:37:13', '2022-04-06 11:37:20', '2022-04-06 11:37:32', 0),
(23, 'a', 'a', '2022-04-06 11:37:25', NULL, '2022-04-06 11:37:34', 0),
(24, 'Text 2', 'Text 2', '2022-04-06 11:37:48', NULL, NULL, 1),
(25, 'Text 3', 'Text 3', '2022-04-06 11:37:59', NULL, NULL, 1),
(26, 'Text 4', 'Text 4', '2022-04-06 11:38:24', NULL, NULL, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tm_producto`
--
ALTER TABLE `tm_producto`
  ADD PRIMARY KEY (`id_producto`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tm_producto`
--
ALTER TABLE `tm_producto`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
