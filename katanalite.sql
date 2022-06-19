-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 14-06-2022 a las 23:12:22
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `katanalite`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `buy`
--

CREATE TABLE `buy` (
  `id` int(11) NOT NULL,
  `k` varchar(20) DEFAULT NULL,
  `code` varchar(20) DEFAULT NULL,
  `client_id` int(11) DEFAULT NULL,
  `coupon_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `paymethod_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `buy`
--

INSERT INTO `buy` (`id`, `k`, `code`, `client_id`, `coupon_id`, `status_id`, `created_at`, `paymethod_id`) VALUES
(1, 'H_djLsMAqTT', 'wTvsOH6qHWv', 5, NULL, 5, '2022-06-14 14:44:09', 1),
(2, 'CYKVOpuh253', 'KHeBbpdS0ba', 6, NULL, 2, '2022-06-14 14:52:52', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `buy_product`
--

CREATE TABLE `buy_product` (
  `id` int(11) NOT NULL,
  `buy_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `q` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `buy_product`
--

INSERT INTO `buy_product` (`id`, `buy_id`, `product_id`, `q`) VALUES
(1, 1, 7, 1),
(2, 1, 6, 1),
(3, 2, 1, 1),
(4, 2, 3, 1),
(5, 2, 5, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `short_name` varchar(200) DEFAULT NULL,
  `in_home` tinyint(1) DEFAULT 0,
  `in_menu` tinyint(1) DEFAULT 0,
  `is_active` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `category`
--

INSERT INTO `category` (`id`, `name`, `short_name`, `in_home`, `in_menu`, `is_active`) VALUES
(2, 'Teclados', 'Tec', 0, 0, 1),
(4, 'Laptops', 'Lap', 0, 0, 1),
(5, 'Discos Duros', 'DisDuros', 0, 0, 1),
(6, 'Memorias Usb', 'Musb', 0, 0, 1),
(7, 'Bocinas', 'Boc', 0, 0, 1),
(8, 'Impresoras', 'Impresora', 0, 0, 1),
(9, 'Auriculares', 'Auri', 0, 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `client`
--

CREATE TABLE `client` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `password` varchar(60) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `client`
--

INSERT INTO `client` (`id`, `name`, `lastname`, `email`, `phone`, `address`, `password`, `is_active`, `created_at`) VALUES
(5, 'luis', 'ruiz', 'ruizgarcialuis17@gmail.com', '', '', '63982e54a7aeb0d89910475ba6dbd3ca6dd4e5a1', 1, '2022-06-14 14:38:38'),
(6, 'jorge', 'perez', 'luismiguel16@gmail.com', '', '', 'adcd7048512e64b48da55b027577886ee5a36350', 1, '2022-06-14 14:50:41');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `configuration`
--

CREATE TABLE `configuration` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `label` varchar(200) DEFAULT NULL,
  `kind` int(11) DEFAULT NULL,
  `val` text DEFAULT NULL,
  `cfg_id` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `configuration`
--

INSERT INTO `configuration` (`id`, `name`, `label`, `kind`, `val`, `cfg_id`) VALUES
(1, 'general_main_title', 'Titulo Principal', 1, 'TIENDA', 1),
(2, 'general_main_email', 'Email Principal', 1, 'tuemail@tudominio.com', 1),
(3, 'general_country', 'Pais', 1, 'MX', 1),
(4, 'general_coin', 'Moneda', 1, '$', 1),
(5, 'general_iva_txt', 'Impuesto Texto', 1, 'I.V.A', 1),
(6, 'general_iva', 'Impuesto IVA (%)', 2, '16', 1),
(7, 'general_img_default', 'Imagen Default', 1, 'res/img/default.png', 1),
(8, 'bank_titular', 'Titular de la cuenta', 1, '', 1),
(9, 'bank_name', 'Nombre del Banco', 1, '', 1),
(10, 'bank_account', 'Numero de Cuenta', 1, '', 1),
(11, 'bank_card', 'Numero de Tarjeta', 1, '', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `country`
--

CREATE TABLE `country` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `country`
--

INSERT INTO `country` (`id`, `name`) VALUES
(1, 'Argentina'),
(2, 'Chile'),
(3, 'Colombia'),
(4, 'España'),
(5, 'Mexico');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `coupon`
--

CREATE TABLE `coupon` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `val` double DEFAULT NULL,
  `kind` int(11) DEFAULT 1,
  `is_multiple` tinyint(1) DEFAULT 0,
  `is_active` tinyint(1) DEFAULT 1,
  `start_at` date DEFAULT NULL,
  `finish_at` date DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paymethod`
--

CREATE TABLE `paymethod` (
  `id` int(11) NOT NULL,
  `short_name` varchar(100) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `paymethod`
--

INSERT INTO `paymethod` (`id`, `short_name`, `name`, `is_active`) VALUES
(1, 'bank', 'Deposito Bancario', 1),
(2, 'deliver', 'Pago Contra entrega', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `short_name` varchar(20) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `code` varchar(200) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `offer_txt` varchar(1000) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `is_featured` tinyint(1) DEFAULT 0,
  `is_public` tinyint(1) DEFAULT 0,
  `in_existence` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `order_at` datetime DEFAULT NULL,
  `price` float DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `unit_id` int(11) DEFAULT NULL,
  `meta_title` varchar(100) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `product`
--

INSERT INTO `product` (`id`, `short_name`, `name`, `code`, `description`, `offer_txt`, `image`, `link`, `is_featured`, `is_public`, `in_existence`, `created_at`, `order_at`, `price`, `category_id`, `unit_id`, `meta_title`, `meta_description`, `meta_keywords`) VALUES
(1, 'eDddWBVgegB', 'Laptop Acer ', 'PMZ000054', 'Acer Predator Helios 300 PH315-54-760S Laptop para juegos, Intel i7-11800H , NVIDIA GeForce RTX 3060 GPU para laptop , 15.6 pulgadas Full HD 144Hz 3ms IPS , 16GB DDR4 ,SSD de 512GB , Killer WiFi 6, Teclado RGB.', NULL, 'laptop.jpg', '', 1, 1, 1, '2022-05-25 09:49:03', NULL, 25000, 4, 1, NULL, NULL, NULL),
(2, 'SW8tzvp5er4', 'Teclado KBR', 'PMX000568', 'KBR Repuesto con Teclado retroiluminado Compatible con Lenovo Yoga 730-13IKB 730-13IWL 730-15IKB 730-15IWL, Flex 6-14ARR Flex 6-14IKB Series Laptop US Layout', NULL, 'Teclado.jpg', '', 1, 1, 1, '2022-05-25 10:00:10', NULL, 600, 2, 1, NULL, NULL, NULL),
(3, 'D4Bj3xCNm_d', 'Disco ADATA', 'PMZ000037', 'Disco Duro Externo HDD HD710P, 2 TB,Resistente a golpes,agua y polvo, certificación grado militar, Color Negro', NULL, 'dISCODURO.jpg', '', 1, 1, 1, '2022-05-25 10:11:20', NULL, 1500, 5, 1, NULL, NULL, NULL),
(4, 'zC71Au6Qo6R', 'Memorias HP', 'PMZ000023', 'HP 128GB x900w USB 3.0 Flash Drive (P-FD128HP900-GE)', NULL, 'memoria.jpg', '', 1, 1, 1, '2022-05-25 10:17:33', NULL, 300, 6, 1, NULL, NULL, NULL),
(5, '63fSm2DLfWZ', 'Bocina YOMYM', 'PMZ00098', 'Bocinas Para PC, Altavoces Para Computadora, Bocinas PC Gamer, Altavoces de Multimedia con Cable USB, Altavoces Multimedia para PC, Tablet PC, teléfono móvil, computadora portátil, MP3 / MP4, PSP, Altavoces de Multimedia con Cable USB', NULL, 'boci.jpg', '', 1, 1, 1, '2022-05-25 10:25:57', NULL, 300, 7, 1, NULL, NULL, NULL),
(6, 'CnTgGO3VpaM', 'Impresora Epson', 'PMZ000044', 'Impresora Ecotank L1210, Tanque de Tinta a Color para Hogar, conectividad USB', NULL, 'impresora.jpg', '', 1, 1, 1, '2022-05-25 10:28:24', NULL, 2500, 8, 4, NULL, NULL, NULL),
(7, 'Rw49F3s-6PH', 'Auriculares Sennheiser', 'PMZ000022', 'Sennheiser HD-280 PRO Audífonos de diadema Audífonos dinámicos cerrados con hasta 32 dB de atenuación de sonido ambiental', NULL, 'auriculares.jpg', '', 1, 1, 1, '2022-05-25 10:32:16', NULL, 600, 9, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product_view`
--

CREATE TABLE `product_view` (
  `id` int(11) NOT NULL,
  `viewer_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `realip` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `product_view`
--

INSERT INTO `product_view` (`id`, `viewer_id`, `product_id`, `created_at`, `realip`) VALUES
(1, NULL, 6, '2022-05-25 12:26:03', '::1'),
(2, NULL, 7, '2022-06-13 15:26:41', '::1'),
(3, NULL, 3, '2022-06-13 19:12:48', '::1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `slide`
--

CREATE TABLE `slide` (
  `id` int(11) NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `is_public` tinyint(1) DEFAULT 0,
  `position` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `status`
--

CREATE TABLE `status` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `status`
--

INSERT INTO `status` (`id`, `name`) VALUES
(1, 'Pendiente'),
(2, 'Pagado'),
(3, 'Cancelado'),
(4, 'Enviado'),
(5, 'Finalizado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unit`
--

CREATE TABLE `unit` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `unit`
--

INSERT INTO `unit` (`id`, `name`) VALUES
(1, 'Pieza'),
(2, 'Kit'),
(3, 'Juego'),
(4, 'Caja');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(60) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `is_admin` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `name`, `lastname`, `username`, `email`, `password`, `is_active`, `is_admin`, `created_at`) VALUES
(1, 'Admin', '', 'admin', '', '90b9aa7e25f80cf4f64e990b78a9fc5ebd6cecad', 1, 1, '2022-05-17 18:13:16');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `buy`
--
ALTER TABLE `buy`
  ADD PRIMARY KEY (`id`),
  ADD KEY `paymethod_id` (`paymethod_id`),
  ADD KEY `coupon_id` (`coupon_id`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indices de la tabla `buy_product`
--
ALTER TABLE `buy_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `buy_id` (`buy_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indices de la tabla `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `configuration`
--
ALTER TABLE `configuration`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `coupon`
--
ALTER TABLE `coupon`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indices de la tabla `paymethod`
--
ALTER TABLE `paymethod`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `unit_id` (`unit_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indices de la tabla `product_view`
--
ALTER TABLE `product_view`
  ADD PRIMARY KEY (`id`),
  ADD KEY `viewer_id` (`viewer_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indices de la tabla `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `unit`
--
ALTER TABLE `unit`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `buy`
--
ALTER TABLE `buy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `buy_product`
--
ALTER TABLE `buy_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `client`
--
ALTER TABLE `client`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `configuration`
--
ALTER TABLE `configuration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `country`
--
ALTER TABLE `country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `coupon`
--
ALTER TABLE `coupon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `paymethod`
--
ALTER TABLE `paymethod`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `product_view`
--
ALTER TABLE `product_view`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `slide`
--
ALTER TABLE `slide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `status`
--
ALTER TABLE `status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `unit`
--
ALTER TABLE `unit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `buy`
--
ALTER TABLE `buy`
  ADD CONSTRAINT `buy_ibfk_1` FOREIGN KEY (`paymethod_id`) REFERENCES `paymethod` (`id`),
  ADD CONSTRAINT `buy_ibfk_2` FOREIGN KEY (`coupon_id`) REFERENCES `coupon` (`id`),
  ADD CONSTRAINT `buy_ibfk_3` FOREIGN KEY (`client_id`) REFERENCES `client` (`id`),
  ADD CONSTRAINT `buy_ibfk_4` FOREIGN KEY (`status_id`) REFERENCES `status` (`id`);

--
-- Filtros para la tabla `buy_product`
--
ALTER TABLE `buy_product`
  ADD CONSTRAINT `buy_product_ibfk_1` FOREIGN KEY (`buy_id`) REFERENCES `buy` (`id`),
  ADD CONSTRAINT `buy_product_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Filtros para la tabla `coupon`
--
ALTER TABLE `coupon`
  ADD CONSTRAINT `coupon_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Filtros para la tabla `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`unit_id`) REFERENCES `unit` (`id`),
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

--
-- Filtros para la tabla `product_view`
--
ALTER TABLE `product_view`
  ADD CONSTRAINT `product_view_ibfk_1` FOREIGN KEY (`viewer_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `product_view_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
