-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-06-2025 a las 22:41:43
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `linkup`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `citas`
--

CREATE TABLE `citas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cliente_id` bigint(20) UNSIGNED NOT NULL,
  `empresa_id` bigint(20) UNSIGNED NOT NULL,
  `servicio_id` bigint(20) UNSIGNED NOT NULL,
  `fecha_inicio` datetime NOT NULL,
  `fecha_fin` datetime NOT NULL,
  `estado` enum('pendiente','confirmada','cancelada','finalizada') NOT NULL DEFAULT 'pendiente',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `citas`
--

INSERT INTO `citas` (`id`, `cliente_id`, `empresa_id`, `servicio_id`, `fecha_inicio`, `fecha_fin`, `estado`, `created_at`, `updated_at`) VALUES
(16, 3, 10, 26, '2025-06-08 09:00:00', '2025-06-08 13:00:00', 'cancelada', '2025-05-29 16:06:35', '2025-05-31 10:55:39'),
(17, 3, 2, 3, '2025-05-03 19:19:00', '2025-05-30 19:19:00', 'cancelada', '2025-05-29 16:06:49', '2025-05-29 16:07:24'),
(18, 3, 2, 1, '2025-05-18 22:22:00', '2025-05-30 19:22:00', 'confirmada', '2025-05-29 16:06:51', '2025-05-29 16:07:23'),
(19, 3, 5, 7, '2025-06-03 09:00:00', '2025-06-03 13:00:00', 'pendiente', '2025-05-31 10:55:31', '2025-05-31 10:55:31'),
(20, 3, 5, 10, '2025-06-03 09:00:00', '2025-06-03 13:00:00', 'pendiente', '2025-05-31 10:55:46', '2025-05-31 10:55:46'),
(21, 3, 4, 1, '2025-06-02 09:00:00', '2025-06-02 13:00:00', 'pendiente', '2025-05-31 11:11:41', '2025-05-31 11:11:41');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `disponibilidad`
--

CREATE TABLE `disponibilidad` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `empresa_id` bigint(20) UNSIGNED NOT NULL,
  `inicio` datetime NOT NULL,
  `fin` datetime NOT NULL,
  `disponible` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `disponibilidad`
--

INSERT INTO `disponibilidad` (`id`, `empresa_id`, `inicio`, `fin`, `disponible`, `created_at`, `updated_at`) VALUES
(3, 2, '2025-05-28 16:27:00', '2025-06-11 19:30:00', 1, '2025-05-27 12:27:39', '2025-05-27 15:17:44'),
(6, 2, '2025-05-28 00:12:00', '2025-06-05 00:17:00', 1, '2025-05-27 15:13:03', '2025-05-29 15:23:25'),
(8, 2, '2025-05-03 19:19:00', '2025-05-30 19:19:00', 1, '2025-05-27 15:19:59', '2025-05-29 16:07:24'),
(9, 2, '2025-05-18 22:22:00', '2025-05-30 19:22:00', 1, '2025-05-27 15:22:45', '2025-05-27 15:23:23'),
(10, 3, '2025-06-01 09:00:00', '2025-06-01 13:00:00', 1, '2025-05-29 17:52:24', '2025-05-29 17:52:24'),
(11, 3, '2025-06-01 14:00:00', '2025-06-01 18:00:00', 1, '2025-05-29 17:52:24', '2025-05-29 17:52:24'),
(12, 4, '2025-06-02 09:00:00', '2025-06-02 13:00:00', 1, '2025-05-29 17:52:24', '2025-05-29 17:52:24'),
(13, 4, '2025-06-02 14:00:00', '2025-06-02 18:00:00', 1, '2025-05-29 17:52:24', '2025-05-29 17:52:24'),
(14, 5, '2025-06-03 09:00:00', '2025-06-03 13:00:00', 1, '2025-05-29 17:52:24', '2025-05-29 17:52:24'),
(15, 5, '2025-06-03 14:00:00', '2025-06-03 18:00:00', 1, '2025-05-29 17:52:24', '2025-05-29 17:52:24'),
(16, 6, '2025-06-04 09:00:00', '2025-06-04 13:00:00', 1, '2025-05-29 17:52:24', '2025-05-29 17:52:24'),
(17, 6, '2025-06-04 14:00:00', '2025-06-04 18:00:00', 1, '2025-05-29 17:52:24', '2025-05-29 17:52:24'),
(18, 7, '2025-06-05 09:00:00', '2025-06-05 13:00:00', 1, '2025-05-29 17:52:24', '2025-05-29 17:52:24'),
(19, 7, '2025-06-05 14:00:00', '2025-06-05 18:00:00', 1, '2025-05-29 17:52:24', '2025-05-29 17:52:24'),
(20, 8, '2025-06-06 09:00:00', '2025-06-06 13:00:00', 1, '2025-05-29 17:52:24', '2025-05-29 17:52:24'),
(21, 8, '2025-06-06 14:00:00', '2025-06-06 18:00:00', 1, '2025-05-29 17:52:24', '2025-05-29 17:52:24'),
(22, 9, '2025-06-07 09:00:00', '2025-06-07 13:00:00', 1, '2025-05-29 17:52:24', '2025-05-29 17:52:24'),
(23, 9, '2025-06-07 14:00:00', '2025-06-07 18:00:00', 1, '2025-05-29 17:52:24', '2025-05-29 17:52:24'),
(24, 10, '2025-06-08 09:00:00', '2025-06-08 13:00:00', 1, '2025-05-29 17:52:24', '2025-05-31 10:55:39'),
(25, 10, '2025-06-08 14:00:00', '2025-06-08 18:00:00', 1, '2025-05-29 17:52:24', '2025-05-29 17:52:24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresas`
--

CREATE TABLE `empresas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `usuario_id` bigint(20) UNSIGNED NOT NULL,
  `sector_id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `empresas`
--

INSERT INTO `empresas` (`id`, `usuario_id`, `sector_id`, `nombre`, `descripcion`, `direccion`, `telefono`, `created_at`, `updated_at`) VALUES
(2, 4, 1, 'EmpresaX1', 'Servicios médicos ...', 'Calle Salud 33', '111222333444', '2025-05-27 12:27:26', '2025-05-29 15:55:45'),
(3, 7, 6, 'EmpresaX2', '', '', '', '2025-05-29 14:07:37', '2025-05-29 14:08:23'),
(4, 8, 1, 'SaludCorp', 'Servicios médicos integrales', 'Calle Salud 123', '600100200', '2025-05-29 17:48:18', '2025-05-29 17:48:18'),
(5, 9, 2, 'TechSolutions', 'Desarrollo y soporte TI', 'Av. Tecnología 45', '600200300', '2025-05-29 17:48:19', '2025-05-29 17:48:19'),
(6, 10, 3, 'FinanzasPlus', 'Asesoría y auditoría financiera', 'Calle Capital 8', '600300400', '2025-05-29 17:48:19', '2025-05-29 17:48:19'),
(7, 11, 4, 'InmobiliaPro', 'Gestión integral de inmuebles', 'Plaza Propiedad 12', '600400500', '2025-05-29 17:48:19', '2025-05-29 17:48:19'),
(8, 12, 5, 'TransporteYA', 'Servicios de mudanza y logística', 'Camino Ruta 77', '600500600', '2025-05-29 17:48:19', '2025-05-29 17:48:19'),
(9, 13, 6, 'TurismoAct', 'Experiencias y transferes turísticos', 'Calle Viaje 5', '600600700', '2025-05-29 17:48:20', '2025-05-29 17:48:20'),
(10, 14, 7, 'Consultora360', 'Análisis y estudios de mercado', 'Av. Consultoría 33', '600700800', '2025-05-29 17:48:20', '2025-05-29 17:48:20'),
(11, 15, 8, 'BellezaEstética', 'Servicios de spa y estética', 'Calle Belleza 21', '600800900', '2025-05-29 17:48:20', '2025-05-29 17:48:20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresas_servicios`
--

CREATE TABLE `empresas_servicios` (
  `empresa_id` bigint(20) UNSIGNED NOT NULL,
  `servicio_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `empresas_servicios`
--

INSERT INTO `empresas_servicios` (`empresa_id`, `servicio_id`) VALUES
(2, 1),
(2, 3),
(2, 5),
(3, 22),
(3, 23),
(3, 24),
(3, 25),
(4, 1),
(4, 2),
(4, 3),
(4, 4),
(4, 5),
(4, 6),
(5, 7),
(5, 8),
(5, 9),
(5, 10),
(6, 11),
(6, 12),
(6, 13),
(6, 14),
(7, 15),
(7, 16),
(7, 17),
(7, 18),
(8, 19),
(8, 20),
(8, 21),
(9, 22),
(9, 23),
(9, 24),
(9, 25),
(10, 26),
(10, 27),
(11, 28),
(11, 29),
(11, 30),
(11, 31),
(11, 32),
(11, 33);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'cliente', '2025-05-27 12:22:55', '2025-05-27 12:22:55'),
(2, 'empresa', '2025-05-27 12:22:55', '2025-05-27 12:22:55'),
(3, 'admin', '2025-05-27 12:22:55', '2025-05-27 12:22:55');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sectores`
--

CREATE TABLE `sectores` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sectores`
--

INSERT INTO `sectores` (`id`, `nombre`, `imagen`, `created_at`, `updated_at`) VALUES
(1, 'Salud', 'salud.jpg', '2025-05-27 12:22:55', '2025-05-27 12:22:55'),
(2, 'Tecnología', 'tecnologia.jpg', '2025-05-27 12:22:55', '2025-05-27 12:22:55'),
(3, 'Finanzas', 'finanzas.jpg', '2025-05-27 12:22:55', '2025-05-27 12:22:55'),
(4, 'Inmobiliario', 'inmobiliario.jpg', '2025-05-27 12:22:55', '2025-05-27 12:22:55'),
(5, 'Transporte', 'transporte.jpg', '2025-05-27 12:22:56', '2025-05-27 12:22:56'),
(6, 'Turismo', 'turismo.jpg', '2025-05-27 12:22:56', '2025-05-27 12:22:56'),
(7, 'Consultoría', 'consultoria.jpg', '2025-05-27 12:22:56', '2025-05-27 12:22:56'),
(8, 'Belleza y Estetica', 'belleza_estetica.jpg', '2025-05-27 12:22:56', '2025-05-27 12:22:56');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicios`
--

CREATE TABLE `servicios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `servicios`
--

INSERT INTO `servicios` (`id`, `nombre`, `descripcion`, `created_at`, `updated_at`) VALUES
(1, 'Consulta médica general', 'Atención primaria para diagnóstico y tratamiento de dolencias habituales', '2025-05-27 12:22:56', '2025-05-27 12:22:56'),
(2, 'Teleconsulta con especialista', 'Sesión virtual con un profesional sanitario para seguimiento y diagnóstico', '2025-05-27 12:22:57', '2025-05-27 12:22:57'),
(3, 'Análisis de sangre y bioquímica', 'Extracción y análisis de muestras para evaluar parámetros clínicos', '2025-05-27 12:22:57', '2025-05-27 12:22:57'),
(4, 'Diagnóstico por imagen', 'Obtención de radiografías, ecografías o TAC para estudio interno de tejidos', '2025-05-27 12:22:57', '2025-05-27 12:22:57'),
(5, 'Fisioterapia y rehabilitación', 'Terapias físicas y ejercicios para recuperar movilidad y función', '2025-05-27 12:22:57', '2025-05-27 12:22:57'),
(6, 'Asesoría nutricional', 'Planes de alimentación personalizados y seguimiento dietético', '2025-05-27 12:22:57', '2025-05-27 12:22:57'),
(7, 'Desarrollo de aplicación móvil', 'Diseño, codificación y publicación de apps nativas o multiplataforma', '2025-05-27 12:22:57', '2025-05-27 12:22:57'),
(8, 'Diseño y maquetación web', 'Creación de sitios web responsivos, usables y optimizados', '2025-05-27 12:22:57', '2025-05-27 12:22:57'),
(9, 'Auditoría de ciberseguridad', 'Evaluación de vulnerabilidades, pruebas de penetración y refuerzo de sistemas', '2025-05-27 12:22:57', '2025-05-27 12:22:57'),
(10, 'Soporte técnico 24/7', 'Atención y resolución de incidencias informáticas en cualquier momento', '2025-05-27 12:22:57', '2025-05-27 12:22:57'),
(11, 'Elaboración de contabilidad mensual', 'Registro, conciliación y cierre de asientos contables periódicos', '2025-05-27 12:22:57', '2025-05-27 12:22:57'),
(12, 'Asesoría fiscal y tributaria', 'Planificación y presentación de impuestos para optimizar la carga fiscal', '2025-05-27 12:22:57', '2025-05-27 12:22:57'),
(13, 'Gestión de nóminas y RR. HH.', 'Cálculo de salarios, contratos y trámites laborales', '2025-05-27 12:22:57', '2025-05-27 12:22:57'),
(14, 'Auditoría financiera interna', 'Revisión de procesos y estados financieros para control de riesgos', '2025-05-27 12:22:57', '2025-05-27 12:22:57'),
(15, 'Intermediación compraventa', 'Asesoría y gestión de operaciones de compra-venta de inmuebles', '2025-05-27 12:22:57', '2025-05-27 12:22:57'),
(16, 'Administración de alquileres', 'Cobro de rentas, redacción de contratos y mantenimiento básico', '2025-05-27 12:22:58', '2025-05-27 12:22:58'),
(17, 'Promoción y construcción', 'Desarrollo de proyectos residenciales o comerciales desde cero', '2025-05-27 12:22:58', '2025-05-27 12:22:58'),
(18, 'Consultoría urbanística', 'Estudios de viabilidad y planificación de suelos y desarrollos', '2025-05-27 12:22:58', '2025-05-27 12:22:58'),
(19, 'Servicio de mudanzas', 'Embalaje, carga, transporte y descarga de mobiliario y enseres', '2025-05-27 12:22:58', '2025-05-27 12:22:58'),
(20, 'Paquetería exprés', 'Entrega rápida de paquetes con seguimiento en tiempo real', '2025-05-27 12:22:58', '2025-05-27 12:22:58'),
(21, 'Logística de almacén', 'Cross-docking, gestión de stock y preparación de pedidos', '2025-05-28 22:00:00', '2025-05-28 22:00:00'),
(22, 'Tours guiados temáticos', 'Rutas especializadas (históricas, gastronómicas, de aventura)', '2025-05-28 22:00:00', '2025-05-28 22:00:00'),
(23, 'Transfer al aeropuerto', 'Servicio de recogida y traslado desde/hacia aeropuertos', '2025-05-28 22:00:00', '2025-05-28 22:00:00'),
(24, 'Seguros de viaje', 'Cobertura médica y de imprevistos durante el desplazamiento', '2025-05-28 22:00:00', '2025-05-28 22:00:00'),
(25, 'Alquiler de vehículos', 'Reserva de coches, motos o furgonetas para excursiones', '2025-05-28 22:00:00', '2025-05-28 22:00:00'),
(26, 'Plan de negocio', 'Elaboración de estudios de viabilidad y modelos financieros', '2025-05-28 22:00:00', '2025-05-28 22:00:00'),
(27, 'Estudios de mercado', 'Investigación cuantitativa y cualitativa para toma de decisiones', '2025-05-28 22:00:00', '2025-05-28 22:00:00'),
(28, 'Corte y coloración', 'Servicios de estilismo, tintes y tratamientos capilares', '2025-05-28 22:00:00', '2025-05-28 22:00:00'),
(29, 'Tratamientos faciales', 'Limpieza profunda, peelings y microdermoabrasión', '2025-05-28 22:00:00', '2025-05-28 22:00:00'),
(30, 'Depilación láser', 'Eliminación duradera del vello con tecnología láser o luz pulsada', '2025-05-28 22:00:00', '2025-05-28 22:00:00'),
(31, 'Manicura y pedicura', 'Cuidado de uñas y aplicación de esmaltado semipermanente', '2025-05-28 22:00:00', '2025-05-28 22:00:00'),
(32, 'Masajes terapéuticos', 'Técnicas de relajación, descontracturantes y drenantes', '2025-05-28 22:00:00', '2025-05-28 22:00:00'),
(33, 'Maquillaje profesional', 'Asesoría de imagen y servicios para eventos especiales', '2025-05-28 22:00:00', '2025-05-28 22:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `email`, `password_hash`, `role_id`, `created_at`, `updated_at`) VALUES
(3, 'ClienteX1', 'clienteX1@gmail.com', '$2y$10$9ad.AIl7xk4.Swven.fLhuAo.5QH58ZbUE3ia5Th.22/8BLnDiuaq', 1, '2025-05-27 12:26:53', '2025-05-27 12:26:53'),
(4, 'EmpresaX1', 'EmpresaX1@gmail.com', '$2y$10$A2LLzOIOA63E1OmABNEYLucrmflHS2POYOIxgud9.64O8lPJmV63O', 2, '2025-05-27 12:27:25', '2025-05-27 12:27:25'),
(5, 'Daniel Freite Cliente', 'danielfralv@gmail.com', '$2y$10$u3GsTSnIkYloffdtr7TOF.D6DLSyWidKtTmdkGs0y5lDvCYAy83Sm', 1, '2025-05-29 13:44:34', '2025-05-29 13:44:34'),
(7, 'EmpresaX2', 'EmpresaX2@gmail.com', '$2y$10$yQOvUOpqxiRQC1v6QpwI.uO4/map6/pwVhlyDCIwTCeG3nAWE6HY2', 2, '2025-05-29 14:07:37', '2025-05-29 14:07:37'),
(8, 'Empresa Salud', 'salud@linkup.com', '$2b$12$bZ8IqycTvzmAblqInmj8AehbqGYLQn9/BHIPbTxzjicq6UzFHD./e', 2, '2025-05-29 17:48:18', '2025-05-29 17:48:18'),
(9, 'TechSolutions', 'tecnologia@linkup.com', '$2b$12$bZ8IqycTvzmAblqInmj8AehbqGYLQn9/BHIPbTxzjicq6UzFHD./e', 2, '2025-05-29 17:48:19', '2025-05-29 17:48:19'),
(10, 'FinanzasPlus', 'finanzas@linkup.com', '$2b$12$bZ8IqycTvzmAblqInmj8AehbqGYLQn9/BHIPbTxzjicq6UzFHD./e', 2, '2025-05-29 17:48:19', '2025-05-29 17:48:19'),
(11, 'InmobiliaPro', 'inmobiliario@linkup.com', '$2b$12$bZ8IqycTvzmAblqInmj8AehbqGYLQn9/BHIPbTxzjicq6UzFHD./e', 2, '2025-05-29 17:48:19', '2025-05-29 17:48:19'),
(12, 'TransporteYA', 'transporte@linkup.com', '$2b$12$bZ8IqycTvzmAblqInmj8AehbqGYLQn9/BHIPbTxzjicq6UzFHD./e', 2, '2025-05-29 17:48:19', '2025-05-29 17:48:19'),
(13, 'TurismoAct', 'turismo@linkup.com', '$2b$12$bZ8IqycTvzmAblqInmj8AehbqGYLQn9/BHIPbTxzjicq6UzFHD./e', 2, '2025-05-29 17:48:19', '2025-05-29 17:48:19'),
(14, 'Consultora360', 'consultoria@linkup.com', '$2b$12$bZ8IqycTvzmAblqInmj8AehbqGYLQn9/BHIPbTxzjicq6UzFHD./e', 2, '2025-05-29 17:48:20', '2025-05-29 17:48:20'),
(15, 'BellezaEstética', 'belleza@linkup.com', '$2b$12$bZ8IqycTvzmAblqInmj8AehbqGYLQn9/BHIPbTxzjicq6UzFHD./e', 2, '2025-05-29 17:48:20', '2025-05-29 17:48:20');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `citas`
--
ALTER TABLE `citas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `citas_cliente_id_foreign` (`cliente_id`),
  ADD KEY `citas_empresa_id_foreign` (`empresa_id`),
  ADD KEY `citas_servicio_id_foreign` (`servicio_id`);

--
-- Indices de la tabla `disponibilidad`
--
ALTER TABLE `disponibilidad`
  ADD PRIMARY KEY (`id`),
  ADD KEY `disponibilidad_empresa_id_foreign` (`empresa_id`);

--
-- Indices de la tabla `empresas`
--
ALTER TABLE `empresas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `empresas_usuario_id_foreign` (`usuario_id`),
  ADD KEY `empresas_sector_id_foreign` (`sector_id`);

--
-- Indices de la tabla `empresas_servicios`
--
ALTER TABLE `empresas_servicios`
  ADD PRIMARY KEY (`empresa_id`,`servicio_id`),
  ADD KEY `empresas_servicios_servicio_id_foreign` (`servicio_id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_nombre_unique` (`nombre`);

--
-- Indices de la tabla `sectores`
--
ALTER TABLE `sectores`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sectores_nombre_unique` (`nombre`);

--
-- Indices de la tabla `servicios`
--
ALTER TABLE `servicios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `usuarios_email_unique` (`email`),
  ADD KEY `usuarios_role_id_foreign` (`role_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `citas`
--
ALTER TABLE `citas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `disponibilidad`
--
ALTER TABLE `disponibilidad`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `empresas`
--
ALTER TABLE `empresas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `sectores`
--
ALTER TABLE `sectores`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `servicios`
--
ALTER TABLE `servicios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `citas`
--
ALTER TABLE `citas`
  ADD CONSTRAINT `citas_cliente_id_foreign` FOREIGN KEY (`cliente_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `citas_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `empresas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `citas_servicio_id_foreign` FOREIGN KEY (`servicio_id`) REFERENCES `servicios` (`id`);

--
-- Filtros para la tabla `disponibilidad`
--
ALTER TABLE `disponibilidad`
  ADD CONSTRAINT `disponibilidad_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `empresas` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `empresas`
--
ALTER TABLE `empresas`
  ADD CONSTRAINT `empresas_sector_id_foreign` FOREIGN KEY (`sector_id`) REFERENCES `sectores` (`id`),
  ADD CONSTRAINT `empresas_usuario_id_foreign` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `empresas_servicios`
--
ALTER TABLE `empresas_servicios`
  ADD CONSTRAINT `empresas_servicios_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `empresas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `empresas_servicios_servicio_id_foreign` FOREIGN KEY (`servicio_id`) REFERENCES `servicios` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
