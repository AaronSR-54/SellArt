-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 27, 2022 at 05:36 PM
-- Server version: 5.7.24
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sellart`
--

-- --------------------------------------------------------

--
-- Table structure for table `accesorio_tipos`
--

CREATE TABLE `accesorio_tipos` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `accesorio_tipos`
--

INSERT INTO `accesorio_tipos` (`id`, `name`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'Ropa', '2022-05-14 18:45:19.633000', '2022-05-14 18:45:21.328000', '2022-05-14 18:45:21.325000', 1, 1),
(2, 'Llavero', '2022-05-14 18:45:29.328000', '2022-05-14 19:05:48.508000', '2022-05-14 19:05:48.505000', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `admin_permissions`
--

CREATE TABLE `admin_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `action` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `properties` json DEFAULT NULL,
  `conditions` json DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `action`, `subject`, `properties`, `conditions`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'plugin::upload.read', NULL, '{}', '[]', '2022-05-11 19:45:59.816000', '2022-05-11 19:45:59.816000', NULL, NULL),
(2, 'plugin::upload.assets.create', NULL, '{}', '[]', '2022-05-11 19:45:59.823000', '2022-05-11 19:45:59.823000', NULL, NULL),
(3, 'plugin::upload.assets.update', NULL, '{}', '[]', '2022-05-11 19:45:59.828000', '2022-05-11 19:45:59.828000', NULL, NULL),
(4, 'plugin::upload.assets.download', NULL, '{}', '[]', '2022-05-11 19:45:59.830000', '2022-05-11 19:45:59.830000', NULL, NULL),
(5, 'plugin::upload.assets.copy-link', NULL, '{}', '[]', '2022-05-11 19:45:59.834000', '2022-05-11 19:45:59.834000', NULL, NULL),
(6, 'plugin::upload.read', NULL, '{}', '[\"admin::is-creator\"]', '2022-05-11 19:45:59.839000', '2022-05-11 19:45:59.839000', NULL, NULL),
(7, 'plugin::upload.assets.create', NULL, '{}', '[]', '2022-05-11 19:45:59.842000', '2022-05-11 19:45:59.842000', NULL, NULL),
(8, 'plugin::upload.assets.update', NULL, '{}', '[\"admin::is-creator\"]', '2022-05-11 19:45:59.845000', '2022-05-11 19:45:59.845000', NULL, NULL),
(9, 'plugin::upload.assets.download', NULL, '{}', '[]', '2022-05-11 19:45:59.848000', '2022-05-11 19:45:59.848000', NULL, NULL),
(10, 'plugin::upload.assets.copy-link', NULL, '{}', '[]', '2022-05-11 19:45:59.851000', '2022-05-11 19:45:59.851000', NULL, NULL),
(14, 'plugin::content-manager.explorer.delete', 'plugin::users-permissions.user', '{}', '[]', '2022-05-11 19:45:59.880000', '2022-05-11 19:45:59.880000', NULL, NULL),
(15, 'plugin::content-manager.single-types.configure-view', NULL, '{}', '[]', '2022-05-11 19:45:59.885000', '2022-05-11 19:45:59.885000', NULL, NULL),
(16, 'plugin::content-manager.collection-types.configure-view', NULL, '{}', '[]', '2022-05-11 19:45:59.888000', '2022-05-11 19:45:59.888000', NULL, NULL),
(17, 'plugin::content-manager.components.configure-layout', NULL, '{}', '[]', '2022-05-11 19:45:59.892000', '2022-05-11 19:45:59.892000', NULL, NULL),
(18, 'plugin::content-type-builder.read', NULL, '{}', '[]', '2022-05-11 19:45:59.896000', '2022-05-11 19:45:59.896000', NULL, NULL),
(19, 'plugin::email.settings.read', NULL, '{}', '[]', '2022-05-11 19:45:59.900000', '2022-05-11 19:45:59.900000', NULL, NULL),
(20, 'plugin::upload.read', NULL, '{}', '[]', '2022-05-11 19:45:59.904000', '2022-05-11 19:45:59.904000', NULL, NULL),
(21, 'plugin::upload.assets.create', NULL, '{}', '[]', '2022-05-11 19:45:59.908000', '2022-05-11 19:45:59.908000', NULL, NULL),
(22, 'plugin::upload.assets.update', NULL, '{}', '[]', '2022-05-11 19:45:59.910000', '2022-05-11 19:45:59.910000', NULL, NULL),
(23, 'plugin::upload.assets.download', NULL, '{}', '[]', '2022-05-11 19:45:59.914000', '2022-05-11 19:45:59.914000', NULL, NULL),
(24, 'plugin::upload.assets.copy-link', NULL, '{}', '[]', '2022-05-11 19:45:59.917000', '2022-05-11 19:45:59.917000', NULL, NULL),
(25, 'plugin::upload.settings.read', NULL, '{}', '[]', '2022-05-11 19:45:59.922000', '2022-05-11 19:45:59.922000', NULL, NULL),
(26, 'plugin::users-permissions.roles.create', NULL, '{}', '[]', '2022-05-11 19:45:59.925000', '2022-05-11 19:45:59.925000', NULL, NULL),
(27, 'plugin::users-permissions.roles.read', NULL, '{}', '[]', '2022-05-11 19:45:59.929000', '2022-05-11 19:45:59.929000', NULL, NULL),
(28, 'plugin::users-permissions.roles.update', NULL, '{}', '[]', '2022-05-11 19:45:59.932000', '2022-05-11 19:45:59.932000', NULL, NULL),
(29, 'plugin::users-permissions.roles.delete', NULL, '{}', '[]', '2022-05-11 19:45:59.936000', '2022-05-11 19:45:59.936000', NULL, NULL),
(30, 'plugin::users-permissions.providers.read', NULL, '{}', '[]', '2022-05-11 19:45:59.939000', '2022-05-11 19:45:59.939000', NULL, NULL),
(31, 'plugin::users-permissions.providers.update', NULL, '{}', '[]', '2022-05-11 19:45:59.943000', '2022-05-11 19:45:59.943000', NULL, NULL),
(32, 'plugin::users-permissions.email-templates.read', NULL, '{}', '[]', '2022-05-11 19:45:59.945000', '2022-05-11 19:45:59.945000', NULL, NULL),
(33, 'plugin::users-permissions.email-templates.update', NULL, '{}', '[]', '2022-05-11 19:45:59.949000', '2022-05-11 19:45:59.949000', NULL, NULL),
(34, 'plugin::users-permissions.advanced-settings.read', NULL, '{}', '[]', '2022-05-11 19:45:59.953000', '2022-05-11 19:45:59.953000', NULL, NULL),
(35, 'plugin::users-permissions.advanced-settings.update', NULL, '{}', '[]', '2022-05-11 19:45:59.958000', '2022-05-11 19:45:59.958000', NULL, NULL),
(36, 'plugin::i18n.locale.create', NULL, '{}', '[]', '2022-05-11 19:45:59.961000', '2022-05-11 19:45:59.961000', NULL, NULL),
(37, 'plugin::i18n.locale.read', NULL, '{}', '[]', '2022-05-11 19:45:59.965000', '2022-05-11 19:45:59.965000', NULL, NULL),
(38, 'plugin::i18n.locale.update', NULL, '{}', '[]', '2022-05-11 19:45:59.968000', '2022-05-11 19:45:59.968000', NULL, NULL),
(39, 'plugin::i18n.locale.delete', NULL, '{}', '[]', '2022-05-11 19:45:59.973000', '2022-05-11 19:45:59.973000', NULL, NULL),
(40, 'admin::marketplace.read', NULL, '{}', '[]', '2022-05-11 19:45:59.976000', '2022-05-11 19:45:59.976000', NULL, NULL),
(41, 'admin::marketplace.plugins.install', NULL, '{}', '[]', '2022-05-11 19:45:59.980000', '2022-05-11 19:45:59.980000', NULL, NULL),
(42, 'admin::marketplace.plugins.uninstall', NULL, '{}', '[]', '2022-05-11 19:45:59.983000', '2022-05-11 19:45:59.983000', NULL, NULL),
(43, 'admin::webhooks.create', NULL, '{}', '[]', '2022-05-11 19:45:59.987000', '2022-05-11 19:45:59.987000', NULL, NULL),
(44, 'admin::webhooks.read', NULL, '{}', '[]', '2022-05-11 19:45:59.990000', '2022-05-11 19:45:59.990000', NULL, NULL),
(45, 'admin::webhooks.update', NULL, '{}', '[]', '2022-05-11 19:45:59.994000', '2022-05-11 19:45:59.994000', NULL, NULL),
(46, 'admin::webhooks.delete', NULL, '{}', '[]', '2022-05-11 19:45:59.997000', '2022-05-11 19:45:59.997000', NULL, NULL),
(47, 'admin::users.create', NULL, '{}', '[]', '2022-05-11 19:46:00.000000', '2022-05-11 19:46:00.000000', NULL, NULL),
(48, 'admin::users.read', NULL, '{}', '[]', '2022-05-11 19:46:00.003000', '2022-05-11 19:46:00.003000', NULL, NULL),
(49, 'admin::users.update', NULL, '{}', '[]', '2022-05-11 19:46:00.007000', '2022-05-11 19:46:00.007000', NULL, NULL),
(50, 'admin::users.delete', NULL, '{}', '[]', '2022-05-11 19:46:00.010000', '2022-05-11 19:46:00.010000', NULL, NULL),
(51, 'admin::roles.create', NULL, '{}', '[]', '2022-05-11 19:46:00.014000', '2022-05-11 19:46:00.014000', NULL, NULL),
(52, 'admin::roles.read', NULL, '{}', '[]', '2022-05-11 19:46:00.016000', '2022-05-11 19:46:00.016000', NULL, NULL),
(53, 'admin::roles.update', NULL, '{}', '[]', '2022-05-11 19:46:00.020000', '2022-05-11 19:46:00.020000', NULL, NULL),
(54, 'admin::roles.delete', NULL, '{}', '[]', '2022-05-11 19:46:00.023000', '2022-05-11 19:46:00.023000', NULL, NULL),
(55, 'admin::api-tokens.create', NULL, '{}', '[]', '2022-05-11 19:46:00.026000', '2022-05-11 19:46:00.026000', NULL, NULL),
(56, 'admin::api-tokens.read', NULL, '{}', '[]', '2022-05-11 19:46:00.029000', '2022-05-11 19:46:00.029000', NULL, NULL),
(57, 'admin::api-tokens.update', NULL, '{}', '[]', '2022-05-11 19:46:00.033000', '2022-05-11 19:46:00.033000', NULL, NULL),
(58, 'admin::api-tokens.delete', NULL, '{}', '[]', '2022-05-11 19:46:00.037000', '2022-05-11 19:46:00.037000', NULL, NULL),
(62, 'plugin::content-manager.explorer.delete', 'api::tipos-figura.tipos-figura', '{}', '[]', '2022-05-13 18:51:05.866000', '2022-05-13 18:51:05.866000', NULL, NULL),
(63, 'plugin::content-manager.explorer.publish', 'api::tipos-figura.tipos-figura', '{}', '[]', '2022-05-13 18:51:05.869000', '2022-05-13 18:51:05.869000', NULL, NULL),
(83, 'plugin::content-manager.explorer.delete', 'api::pintura-tipo.pintura-tipo', '{}', '[]', '2022-05-14 11:34:09.221000', '2022-05-14 11:34:09.221000', NULL, NULL),
(84, 'plugin::content-manager.explorer.publish', 'api::pintura-tipo.pintura-tipo', '{}', '[]', '2022-05-14 11:34:09.226000', '2022-05-14 11:34:09.226000', NULL, NULL),
(93, 'plugin::content-manager.explorer.delete', 'api::accesorio-tipo.accesorio-tipo', '{}', '[]', '2022-05-14 11:35:20.244000', '2022-05-14 11:35:20.244000', NULL, NULL),
(94, 'plugin::content-manager.explorer.publish', 'api::accesorio-tipo.accesorio-tipo', '{}', '[]', '2022-05-14 11:35:20.248000', '2022-05-14 11:35:20.248000', NULL, NULL),
(207, 'plugin::content-manager.explorer.delete', 'api::producto.producto', '{}', '[]', '2022-05-19 19:20:33.495000', '2022-05-19 19:20:33.495000', NULL, NULL),
(208, 'plugin::content-manager.explorer.publish', 'api::producto.producto', '{}', '[]', '2022-05-19 19:20:33.498000', '2022-05-19 19:20:33.498000', NULL, NULL),
(212, 'plugin::content-manager.explorer.delete', 'api::producto-tipo.producto-tipo', '{}', '[]', '2022-05-19 19:21:22.217000', '2022-05-19 19:21:22.217000', NULL, NULL),
(213, 'plugin::content-manager.explorer.publish', 'api::producto-tipo.producto-tipo', '{}', '[]', '2022-05-19 19:21:22.220000', '2022-05-19 19:21:22.220000', NULL, NULL),
(215, 'plugin::content-manager.explorer.create', 'api::producto-tipo.producto-tipo', '{\"fields\": [\"name\", \"productos\"]}', '[]', '2022-05-19 19:22:04.714000', '2022-05-19 19:22:04.714000', NULL, NULL),
(217, 'plugin::content-manager.explorer.read', 'api::producto-tipo.producto-tipo', '{\"fields\": [\"name\", \"productos\"]}', '[]', '2022-05-19 19:22:04.722000', '2022-05-19 19:22:04.722000', NULL, NULL),
(219, 'plugin::content-manager.explorer.update', 'api::producto-tipo.producto-tipo', '{\"fields\": [\"name\", \"productos\"]}', '[]', '2022-05-19 19:22:04.742000', '2022-05-19 19:22:04.742000', NULL, NULL),
(221, 'plugin::content-manager.explorer.create', 'api::pintura-tipo.pintura-tipo', '{\"fields\": [\"name\", \"productos\"]}', '[]', '2022-05-19 19:30:01.310000', '2022-05-19 19:30:01.310000', NULL, NULL),
(223, 'plugin::content-manager.explorer.read', 'api::pintura-tipo.pintura-tipo', '{\"fields\": [\"name\", \"productos\"]}', '[]', '2022-05-19 19:30:01.318000', '2022-05-19 19:30:01.318000', NULL, NULL),
(225, 'plugin::content-manager.explorer.update', 'api::pintura-tipo.pintura-tipo', '{\"fields\": [\"name\", \"productos\"]}', '[]', '2022-05-19 19:30:01.325000', '2022-05-19 19:30:01.325000', NULL, NULL),
(227, 'plugin::content-manager.explorer.create', 'api::tipos-figura.tipos-figura', '{\"fields\": [\"name\", \"productos\"]}', '[]', '2022-05-19 19:30:12.332000', '2022-05-19 19:30:12.332000', NULL, NULL),
(229, 'plugin::content-manager.explorer.read', 'api::tipos-figura.tipos-figura', '{\"fields\": [\"name\", \"productos\"]}', '[]', '2022-05-19 19:30:12.339000', '2022-05-19 19:30:12.339000', NULL, NULL),
(231, 'plugin::content-manager.explorer.update', 'api::tipos-figura.tipos-figura', '{\"fields\": [\"name\", \"productos\"]}', '[]', '2022-05-19 19:30:12.347000', '2022-05-19 19:30:12.347000', NULL, NULL),
(233, 'plugin::content-manager.explorer.create', 'api::accesorio-tipo.accesorio-tipo', '{\"fields\": [\"name\", \"productos\"]}', '[]', '2022-05-19 19:30:27.632000', '2022-05-19 19:30:27.632000', NULL, NULL),
(235, 'plugin::content-manager.explorer.read', 'api::accesorio-tipo.accesorio-tipo', '{\"fields\": [\"name\", \"productos\"]}', '[]', '2022-05-19 19:30:27.640000', '2022-05-19 19:30:27.640000', NULL, NULL),
(237, 'plugin::content-manager.explorer.update', 'api::accesorio-tipo.accesorio-tipo', '{\"fields\": [\"name\", \"productos\"]}', '[]', '2022-05-19 19:30:27.648000', '2022-05-19 19:30:27.648000', NULL, NULL),
(260, 'plugin::content-manager.explorer.create', 'api::producto.producto', '{\"fields\": [\"name\", \"image\", \"price\", \"description\", \"accesorio_tipo\", \"figura_tipo\", \"pintura_tipo\", \"producto_tipo\", \"pedido\"]}', '[]', '2022-05-27 17:26:30.486000', '2022-05-27 17:26:30.486000', NULL, NULL),
(262, 'plugin::content-manager.explorer.read', 'api::producto.producto', '{\"fields\": [\"name\", \"image\", \"price\", \"description\", \"accesorio_tipo\", \"figura_tipo\", \"pintura_tipo\", \"producto_tipo\", \"pedido\"]}', '[]', '2022-05-27 17:26:30.499000', '2022-05-27 17:26:30.499000', NULL, NULL),
(264, 'plugin::content-manager.explorer.update', 'api::producto.producto', '{\"fields\": [\"name\", \"image\", \"price\", \"description\", \"accesorio_tipo\", \"figura_tipo\", \"pintura_tipo\", \"producto_tipo\", \"pedido\"]}', '[]', '2022-05-27 17:26:30.513000', '2022-05-27 17:26:30.513000', NULL, NULL),
(265, 'plugin::content-manager.explorer.delete', 'api::pedido.pedido', '{}', '[]', '2022-05-27 17:26:30.522000', '2022-05-27 17:26:30.522000', NULL, NULL),
(266, 'plugin::content-manager.explorer.publish', 'api::pedido.pedido', '{}', '[]', '2022-05-27 17:26:30.531000', '2022-05-27 17:26:30.531000', NULL, NULL),
(267, 'plugin::content-manager.explorer.create', 'plugin::users-permissions.user', '{\"fields\": [\"username\", \"email\", \"provider\", \"password\", \"resetPasswordToken\", \"confirmationToken\", \"confirmed\", \"blocked\", \"role\", \"avatar\", \"biography\", \"productos\", \"pedidos\"]}', '[]', '2022-05-27 17:26:56.719000', '2022-05-27 17:26:56.719000', NULL, NULL),
(268, 'plugin::content-manager.explorer.create', 'api::pedido.pedido', '{\"fields\": [\"productos\", \"user\"]}', '[]', '2022-05-27 17:26:56.725000', '2022-05-27 17:26:56.725000', NULL, NULL),
(269, 'plugin::content-manager.explorer.read', 'plugin::users-permissions.user', '{\"fields\": [\"username\", \"email\", \"provider\", \"password\", \"resetPasswordToken\", \"confirmationToken\", \"confirmed\", \"blocked\", \"role\", \"avatar\", \"biography\", \"productos\", \"pedidos\"]}', '[]', '2022-05-27 17:26:56.733000', '2022-05-27 17:26:56.733000', NULL, NULL),
(270, 'plugin::content-manager.explorer.read', 'api::pedido.pedido', '{\"fields\": [\"productos\", \"user\"]}', '[]', '2022-05-27 17:26:56.740000', '2022-05-27 17:26:56.740000', NULL, NULL),
(271, 'plugin::content-manager.explorer.update', 'plugin::users-permissions.user', '{\"fields\": [\"username\", \"email\", \"provider\", \"password\", \"resetPasswordToken\", \"confirmationToken\", \"confirmed\", \"blocked\", \"role\", \"avatar\", \"biography\", \"productos\", \"pedidos\"]}', '[]', '2022-05-27 17:26:56.750000', '2022-05-27 17:26:56.750000', NULL, NULL),
(272, 'plugin::content-manager.explorer.update', 'api::pedido.pedido', '{\"fields\": [\"productos\", \"user\"]}', '[]', '2022-05-27 17:26:56.762000', '2022-05-27 17:26:56.762000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_permissions_role_links`
--

CREATE TABLE `admin_permissions_role_links` (
  `permission_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin_permissions_role_links`
--

INSERT INTO `admin_permissions_role_links` (`permission_id`, `role_id`) VALUES
(1, 2),
(2, 2),
(3, 2),
(4, 2),
(5, 2),
(6, 3),
(7, 3),
(8, 3),
(9, 3),
(10, 3),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(62, 1),
(63, 1),
(83, 1),
(84, 1),
(93, 1),
(94, 1),
(207, 1),
(208, 1),
(212, 1),
(213, 1),
(215, 1),
(217, 1),
(219, 1),
(221, 1),
(223, 1),
(225, 1),
(227, 1),
(229, 1),
(231, 1),
(233, 1),
(235, 1),
(237, 1),
(260, 1),
(262, 1),
(264, 1),
(265, 1),
(266, 1),
(267, 1),
(268, 1),
(269, 1),
(270, 1),
(271, 1),
(272, 1);

-- --------------------------------------------------------

--
-- Table structure for table `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `code`, `description`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'Super Admin', 'strapi-super-admin', 'Super Admins can access and manage all features and settings.', '2022-05-11 19:45:59.805000', '2022-05-11 19:45:59.805000', NULL, NULL),
(2, 'Editor', 'strapi-editor', 'Editors can manage and publish contents including those of other users.', '2022-05-11 19:45:59.810000', '2022-05-11 19:45:59.810000', NULL, NULL),
(3, 'Author', 'strapi-author', 'Authors can manage the content they have created.', '2022-05-11 19:45:59.812000', '2022-05-11 19:45:59.812000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `reset_password_token` varchar(255) DEFAULT NULL,
  `registration_token` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `prefered_language` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `firstname`, `lastname`, `username`, `email`, `password`, `reset_password_token`, `registration_token`, `is_active`, `blocked`, `prefered_language`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'Aaron', 'Sanz Roca', NULL, 'aaron541000@gmail.com', '$2a$10$fmpRIYfkoHEGUswZVpubxOp9rJ4kfaci0d9fMg8J0ybfzt02Wi.5q', NULL, NULL, 1, 0, NULL, '2022-05-11 19:47:06.187000', '2022-05-11 20:01:27.598000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_users_roles_links`
--

CREATE TABLE `admin_users_roles_links` (
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin_users_roles_links`
--

INSERT INTO `admin_users_roles_links` (`user_id`, `role_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `alternative_text` varchar(255) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `formats` json DEFAULT NULL,
  `hash` varchar(255) DEFAULT NULL,
  `ext` varchar(255) DEFAULT NULL,
  `mime` varchar(255) DEFAULT NULL,
  `size` decimal(10,2) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `preview_url` varchar(255) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `provider_metadata` json DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `name`, `alternative_text`, `caption`, `width`, `height`, `formats`, `hash`, `ext`, `mime`, `size`, `url`, `preview_url`, `provider`, `provider_metadata`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(4, 'ssrco,classic_tee,womens,fafafa_ca443f4786,front_alt,square_product,600x600.jpg', 'ssrco,classic_tee,womens,fafafa_ca443f4786,front_alt,square_product,600x600.jpg', 'ssrco,classic_tee,womens,fafafa_ca443f4786,front_alt,square_product,600x600.jpg', 600, 599, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_ssrco_classic_tee_womens_fafafa_ca443f4786_front_alt_square_product_600x600_4dc782cb58.jpg\", \"hash\": \"small_ssrco_classic_tee_womens_fafafa_ca443f4786_front_alt_square_product_600x600_4dc782cb58\", \"mime\": \"image/jpeg\", \"name\": \"small_ssrco,classic_tee,womens,fafafa_ca443f4786,front_alt,square_product,600x600.jpg\", \"path\": null, \"size\": 37.56, \"width\": 500, \"height\": 499}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_ssrco_classic_tee_womens_fafafa_ca443f4786_front_alt_square_product_600x600_4dc782cb58.jpg\", \"hash\": \"thumbnail_ssrco_classic_tee_womens_fafafa_ca443f4786_front_alt_square_product_600x600_4dc782cb58\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_ssrco,classic_tee,womens,fafafa_ca443f4786,front_alt,square_product,600x600.jpg\", \"path\": null, \"size\": 5.19, \"width\": 157, \"height\": 156}}', 'ssrco_classic_tee_womens_fafafa_ca443f4786_front_alt_square_product_600x600_4dc782cb58', '.jpg', 'image/jpeg', '52.35', '/uploads/ssrco_classic_tee_womens_fafafa_ca443f4786_front_alt_square_product_600x600_4dc782cb58.jpg', NULL, 'local', NULL, '2022-05-14 18:46:05.085000', '2022-05-14 18:46:05.085000', 1, 1),
(5, 'maxresdefault.jpg', 'maxresdefault.jpg', 'maxresdefault.jpg', 1280, 720, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_maxresdefault_3744f0b5ba.jpg\", \"hash\": \"large_maxresdefault_3744f0b5ba\", \"mime\": \"image/jpeg\", \"name\": \"large_maxresdefault.jpg\", \"path\": null, \"size\": 92.83, \"width\": 1000, \"height\": 563}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_maxresdefault_3744f0b5ba.jpg\", \"hash\": \"small_maxresdefault_3744f0b5ba\", \"mime\": \"image/jpeg\", \"name\": \"small_maxresdefault.jpg\", \"path\": null, \"size\": 29.72, \"width\": 500, \"height\": 281}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_maxresdefault_3744f0b5ba.jpg\", \"hash\": \"medium_maxresdefault_3744f0b5ba\", \"mime\": \"image/jpeg\", \"name\": \"medium_maxresdefault.jpg\", \"path\": null, \"size\": 56.82, \"width\": 750, \"height\": 422}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_maxresdefault_3744f0b5ba.jpg\", \"hash\": \"thumbnail_maxresdefault_3744f0b5ba\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_maxresdefault.jpg\", \"path\": null, \"size\": 9.61, \"width\": 245, \"height\": 138}}', 'maxresdefault_3744f0b5ba', '.jpg', 'image/jpeg', '144.03', '/uploads/maxresdefault_3744f0b5ba.jpg', NULL, 'local', NULL, '2022-05-14 18:47:36.382000', '2022-05-14 18:47:36.382000', 1, 1),
(6, 'Coleccion_Retro_Cinta_I3D.jpg', 'Coleccion_Retro_Cinta_I3D.jpg', 'Coleccion_Retro_Cinta_I3D.jpg', 2000, 1500, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_Coleccion_Retro_Cinta_I3_D_a44aa0daec.jpg\", \"hash\": \"large_Coleccion_Retro_Cinta_I3_D_a44aa0daec\", \"mime\": \"image/jpeg\", \"name\": \"large_Coleccion_Retro_Cinta_I3D.jpg\", \"path\": null, \"size\": 66.05, \"width\": 1000, \"height\": 750}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_Coleccion_Retro_Cinta_I3_D_a44aa0daec.jpg\", \"hash\": \"small_Coleccion_Retro_Cinta_I3_D_a44aa0daec\", \"mime\": \"image/jpeg\", \"name\": \"small_Coleccion_Retro_Cinta_I3D.jpg\", \"path\": null, \"size\": 17.53, \"width\": 500, \"height\": 375}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_Coleccion_Retro_Cinta_I3_D_a44aa0daec.jpg\", \"hash\": \"medium_Coleccion_Retro_Cinta_I3_D_a44aa0daec\", \"mime\": \"image/jpeg\", \"name\": \"medium_Coleccion_Retro_Cinta_I3D.jpg\", \"path\": null, \"size\": 37.51, \"width\": 750, \"height\": 563}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_Coleccion_Retro_Cinta_I3_D_a44aa0daec.jpg\", \"hash\": \"thumbnail_Coleccion_Retro_Cinta_I3_D_a44aa0daec\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_Coleccion_Retro_Cinta_I3D.jpg\", \"path\": null, \"size\": 4.16, \"width\": 209, \"height\": 156}}', 'Coleccion_Retro_Cinta_I3_D_a44aa0daec', '.jpg', 'image/jpeg', '237.05', '/uploads/Coleccion_Retro_Cinta_I3_D_a44aa0daec.jpg', NULL, 'local', NULL, '2022-05-14 18:48:52.620000', '2022-05-14 18:48:52.620000', 1, 1),
(7, 'juguetes-breaking-bad.jpg', 'juguetes-breaking-bad.jpg', 'juguetes-breaking-bad.jpg', 640, 300, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_juguetes_breaking_bad_ab4d2845d9.jpg\", \"hash\": \"small_juguetes_breaking_bad_ab4d2845d9\", \"mime\": \"image/jpeg\", \"name\": \"small_juguetes-breaking-bad.jpg\", \"path\": null, \"size\": 28.01, \"width\": 500, \"height\": 234}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_juguetes_breaking_bad_ab4d2845d9.jpg\", \"hash\": \"thumbnail_juguetes_breaking_bad_ab4d2845d9\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_juguetes-breaking-bad.jpg\", \"path\": null, \"size\": 9.4, \"width\": 245, \"height\": 115}}', 'juguetes_breaking_bad_ab4d2845d9', '.jpg', 'image/jpeg', '31.33', '/uploads/juguetes_breaking_bad_ab4d2845d9.jpg', NULL, 'local', NULL, '2022-05-14 18:50:03.221000', '2022-05-14 18:50:03.221000', 1, 1),
(8, '113-Cuadro-de-madera-vintage-ONLY-BMW-PARKING-scaled.jpg', '113-Cuadro-de-madera-vintage-ONLY-BMW-PARKING-scaled.jpg', '113-Cuadro-de-madera-vintage-ONLY-BMW-PARKING-scaled.jpg', 1885, 2560, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_113_Cuadro_de_madera_vintage_ONLY_BMW_PARKING_scaled_e7656d085f.jpg\", \"hash\": \"large_113_Cuadro_de_madera_vintage_ONLY_BMW_PARKING_scaled_e7656d085f\", \"mime\": \"image/jpeg\", \"name\": \"large_113-Cuadro-de-madera-vintage-ONLY-BMW-PARKING-scaled.jpg\", \"path\": null, \"size\": 168.94, \"width\": 736, \"height\": 1000}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_113_Cuadro_de_madera_vintage_ONLY_BMW_PARKING_scaled_e7656d085f.jpg\", \"hash\": \"small_113_Cuadro_de_madera_vintage_ONLY_BMW_PARKING_scaled_e7656d085f\", \"mime\": \"image/jpeg\", \"name\": \"small_113-Cuadro-de-madera-vintage-ONLY-BMW-PARKING-scaled.jpg\", \"path\": null, \"size\": 47.27, \"width\": 368, \"height\": 500}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_113_Cuadro_de_madera_vintage_ONLY_BMW_PARKING_scaled_e7656d085f.jpg\", \"hash\": \"medium_113_Cuadro_de_madera_vintage_ONLY_BMW_PARKING_scaled_e7656d085f\", \"mime\": \"image/jpeg\", \"name\": \"medium_113-Cuadro-de-madera-vintage-ONLY-BMW-PARKING-scaled.jpg\", \"path\": null, \"size\": 99.61, \"width\": 552, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_113_Cuadro_de_madera_vintage_ONLY_BMW_PARKING_scaled_e7656d085f.jpg\", \"hash\": \"thumbnail_113_Cuadro_de_madera_vintage_ONLY_BMW_PARKING_scaled_e7656d085f\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_113-Cuadro-de-madera-vintage-ONLY-BMW-PARKING-scaled.jpg\", \"path\": null, \"size\": 7.01, \"width\": 115, \"height\": 156}}', '113_Cuadro_de_madera_vintage_ONLY_BMW_PARKING_scaled_e7656d085f', '.jpg', 'image/jpeg', '661.47', '/uploads/113_Cuadro_de_madera_vintage_ONLY_BMW_PARKING_scaled_e7656d085f.jpg', NULL, 'local', NULL, '2022-05-14 18:51:38.666000', '2022-05-14 18:51:38.666000', 1, 1),
(9, 'infinite-crisis-superman.jpg', 'infinite-crisis-superman.jpg', 'infinite-crisis-superman.jpg', 1000, 1549, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_infinite_crisis_superman_c0891447a4.jpg\", \"hash\": \"large_infinite_crisis_superman_c0891447a4\", \"mime\": \"image/jpeg\", \"name\": \"large_infinite-crisis-superman.jpg\", \"path\": null, \"size\": 162.49, \"width\": 646, \"height\": 1000}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_infinite_crisis_superman_c0891447a4.jpg\", \"hash\": \"small_infinite_crisis_superman_c0891447a4\", \"mime\": \"image/jpeg\", \"name\": \"small_infinite-crisis-superman.jpg\", \"path\": null, \"size\": 56.82, \"width\": 323, \"height\": 500}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_infinite_crisis_superman_c0891447a4.jpg\", \"hash\": \"medium_infinite_crisis_superman_c0891447a4\", \"mime\": \"image/jpeg\", \"name\": \"medium_infinite-crisis-superman.jpg\", \"path\": null, \"size\": 105.89, \"width\": 484, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_infinite_crisis_superman_c0891447a4.jpg\", \"hash\": \"thumbnail_infinite_crisis_superman_c0891447a4\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_infinite-crisis-superman.jpg\", \"path\": null, \"size\": 8.29, \"width\": 101, \"height\": 156}}', 'infinite_crisis_superman_c0891447a4', '.jpg', 'image/jpeg', '213.06', '/uploads/infinite_crisis_superman_c0891447a4.jpg', NULL, 'local', NULL, '2022-05-14 18:52:48.931000', '2022-05-14 18:52:48.931000', 1, 1),
(10, 'figura-gurren-lagann-tengen-toppa-gurren-lagann-ccs-toys-01.jpg', 'figura-gurren-lagann-tengen-toppa-gurren-lagann-ccs-toys-01.jpg', 'figura-gurren-lagann-tengen-toppa-gurren-lagann-ccs-toys-01.jpg', 1000, 1500, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_figura_gurren_lagann_tengen_toppa_gurren_lagann_ccs_toys_01_9a377e4069.jpg\", \"hash\": \"large_figura_gurren_lagann_tengen_toppa_gurren_lagann_ccs_toys_01_9a377e4069\", \"mime\": \"image/jpeg\", \"name\": \"large_figura-gurren-lagann-tengen-toppa-gurren-lagann-ccs-toys-01.jpg\", \"path\": null, \"size\": 110.23, \"width\": 667, \"height\": 1000}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_figura_gurren_lagann_tengen_toppa_gurren_lagann_ccs_toys_01_9a377e4069.jpg\", \"hash\": \"small_figura_gurren_lagann_tengen_toppa_gurren_lagann_ccs_toys_01_9a377e4069\", \"mime\": \"image/jpeg\", \"name\": \"small_figura-gurren-lagann-tengen-toppa-gurren-lagann-ccs-toys-01.jpg\", \"path\": null, \"size\": 34.54, \"width\": 333, \"height\": 500}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_figura_gurren_lagann_tengen_toppa_gurren_lagann_ccs_toys_01_9a377e4069.jpg\", \"hash\": \"medium_figura_gurren_lagann_tengen_toppa_gurren_lagann_ccs_toys_01_9a377e4069\", \"mime\": \"image/jpeg\", \"name\": \"medium_figura-gurren-lagann-tengen-toppa-gurren-lagann-ccs-toys-01.jpg\", \"path\": null, \"size\": 69.28, \"width\": 500, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_figura_gurren_lagann_tengen_toppa_gurren_lagann_ccs_toys_01_9a377e4069.jpg\", \"hash\": \"thumbnail_figura_gurren_lagann_tengen_toppa_gurren_lagann_ccs_toys_01_9a377e4069\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_figura-gurren-lagann-tengen-toppa-gurren-lagann-ccs-toys-01.jpg\", \"path\": null, \"size\": 5.03, \"width\": 104, \"height\": 156}}', 'figura_gurren_lagann_tengen_toppa_gurren_lagann_ccs_toys_01_9a377e4069', '.jpg', 'image/jpeg', '182.60', '/uploads/figura_gurren_lagann_tengen_toppa_gurren_lagann_ccs_toys_01_9a377e4069.jpg', NULL, 'local', NULL, '2022-05-14 20:32:47.999000', '2022-05-14 20:32:47.999000', 1, 1),
(11, 'Perfil.jpeg', 'Perfil.jpeg', 'Perfil.jpeg', 2048, 2048, '{\"large\": {\"ext\": \".jpeg\", \"url\": \"/uploads/large_Perfil_29443672ab.jpeg\", \"hash\": \"large_Perfil_29443672ab\", \"mime\": \"image/jpeg\", \"name\": \"large_Perfil.jpeg\", \"path\": null, \"size\": 54.07, \"width\": 1000, \"height\": 1000}, \"small\": {\"ext\": \".jpeg\", \"url\": \"/uploads/small_Perfil_29443672ab.jpeg\", \"hash\": \"small_Perfil_29443672ab\", \"mime\": \"image/jpeg\", \"name\": \"small_Perfil.jpeg\", \"path\": null, \"size\": 20.81, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".jpeg\", \"url\": \"/uploads/medium_Perfil_29443672ab.jpeg\", \"hash\": \"medium_Perfil_29443672ab\", \"mime\": \"image/jpeg\", \"name\": \"medium_Perfil.jpeg\", \"path\": null, \"size\": 36, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpeg\", \"url\": \"/uploads/thumbnail_Perfil_29443672ab.jpeg\", \"hash\": \"thumbnail_Perfil_29443672ab\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_Perfil.jpeg\", \"path\": null, \"size\": 4.24, \"width\": 156, \"height\": 156}}', 'Perfil_29443672ab', '.jpeg', 'image/jpeg', '127.52', '/uploads/Perfil_29443672ab.jpeg', NULL, 'local', NULL, '2022-05-18 18:44:34.421000', '2022-05-18 18:44:34.421000', 1, 1),
(13, 'Avatar-predefinido.png', 'Avatar-predefinido.png', 'Avatar-predefinido.png', 1000, 1000, '{\"small\": {\"ext\": \".png\", \"url\": \"/uploads/small_Avatar_predefinido_6afa8361d1.png\", \"hash\": \"small_Avatar_predefinido_6afa8361d1\", \"mime\": \"image/png\", \"name\": \"small_Avatar-predefinido.png\", \"path\": null, \"size\": 11.64, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".png\", \"url\": \"/uploads/medium_Avatar_predefinido_6afa8361d1.png\", \"hash\": \"medium_Avatar_predefinido_6afa8361d1\", \"mime\": \"image/png\", \"name\": \"medium_Avatar-predefinido.png\", \"path\": null, \"size\": 20.16, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_Avatar_predefinido_6afa8361d1.png\", \"hash\": \"thumbnail_Avatar_predefinido_6afa8361d1\", \"mime\": \"image/png\", \"name\": \"thumbnail_Avatar-predefinido.png\", \"path\": null, \"size\": 3.72, \"width\": 156, \"height\": 156}}', 'Avatar_predefinido_6afa8361d1', '.png', 'image/png', '7.09', '/uploads/Avatar_predefinido_6afa8361d1.png', NULL, 'local', NULL, '2022-05-18 20:16:41.135000', '2022-05-18 20:16:41.135000', 1, 1),
(14, 'n8zmp.jpg', 'n8zmp.jpg', 'n8zmp.jpg', 528, 407, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_n8zmp_1c30430abc.jpg\", \"hash\": \"small_n8zmp_1c30430abc\", \"mime\": \"image/jpeg\", \"name\": \"small_n8zmp.jpg\", \"path\": null, \"size\": 27.14, \"width\": 500, \"height\": 385}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_n8zmp_1c30430abc.jpg\", \"hash\": \"thumbnail_n8zmp_1c30430abc\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_n8zmp.jpg\", \"path\": null, \"size\": 6.19, \"width\": 202, \"height\": 156}}', 'n8zmp_1c30430abc', '.jpg', 'image/jpeg', '29.06', '/uploads/n8zmp_1c30430abc.jpg', NULL, 'local', NULL, '2022-05-20 20:31:48.811000', '2022-05-20 20:31:48.811000', 1, 1),
(15, '4ad0475bec5a613d3d5f5a1f60d18a15--fanart-tmnt-mikey-sad.jpg', '4ad0475bec5a613d3d5f5a1f60d18a15--fanart-tmnt-mikey-sad.jpg', '4ad0475bec5a613d3d5f5a1f60d18a15--fanart-tmnt-mikey-sad.jpg', 700, 928, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_4ad0475bec5a613d3d5f5a1f60d18a15_fanart_tmnt_mikey_sad_5e337126a4.jpg\", \"hash\": \"small_4ad0475bec5a613d3d5f5a1f60d18a15_fanart_tmnt_mikey_sad_5e337126a4\", \"mime\": \"image/jpeg\", \"name\": \"small_4ad0475bec5a613d3d5f5a1f60d18a15--fanart-tmnt-mikey-sad.jpg\", \"path\": null, \"size\": 48.87, \"width\": 377, \"height\": 500}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_4ad0475bec5a613d3d5f5a1f60d18a15_fanart_tmnt_mikey_sad_5e337126a4.jpg\", \"hash\": \"medium_4ad0475bec5a613d3d5f5a1f60d18a15_fanart_tmnt_mikey_sad_5e337126a4\", \"mime\": \"image/jpeg\", \"name\": \"medium_4ad0475bec5a613d3d5f5a1f60d18a15--fanart-tmnt-mikey-sad.jpg\", \"path\": null, \"size\": 105.9, \"width\": 566, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_4ad0475bec5a613d3d5f5a1f60d18a15_fanart_tmnt_mikey_sad_5e337126a4.jpg\", \"hash\": \"thumbnail_4ad0475bec5a613d3d5f5a1f60d18a15_fanart_tmnt_mikey_sad_5e337126a4\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_4ad0475bec5a613d3d5f5a1f60d18a15--fanart-tmnt-mikey-sad.jpg\", \"path\": null, \"size\": 6.03, \"width\": 118, \"height\": 156}}', '4ad0475bec5a613d3d5f5a1f60d18a15_fanart_tmnt_mikey_sad_5e337126a4', '.jpg', 'image/jpeg', '152.19', '/uploads/4ad0475bec5a613d3d5f5a1f60d18a15_fanart_tmnt_mikey_sad_5e337126a4.jpg', NULL, 'local', NULL, '2022-05-20 20:34:10.261000', '2022-05-20 20:34:10.261000', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `files_related_morphs`
--

CREATE TABLE `files_related_morphs` (
  `file_id` int(10) UNSIGNED DEFAULT NULL,
  `related_id` int(10) UNSIGNED DEFAULT NULL,
  `related_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `files_related_morphs`
--

INSERT INTO `files_related_morphs` (`file_id`, `related_id`, `related_type`, `field`, `order`) VALUES
(8, 1, 'api::pintura.pintura', 'image', 1),
(9, 2, 'api::pintura.pintura', 'image', 1),
(6, 2, 'api::accesorio.accesorio', 'image', 1),
(4, 1, 'api::accesorio.accesorio', 'image', 1),
(5, 4, 'api::figura.figura', 'image', 1),
(10, 6, 'api::figura.figura', 'image', 1),
(7, 5, 'api::figura.figura', 'image', 1),
(4, 1, 'api::producto.producto', 'image', 1),
(7, 3, 'api::producto.producto', 'image', 1),
(6, 2, 'api::producto.producto', 'image', 1),
(10, 4, 'api::producto.producto', 'image', 1),
(5, 5, 'api::producto.producto', 'image', 1),
(8, 6, 'api::producto.producto', 'image', 1),
(9, 7, 'api::producto.producto', 'image', 1),
(11, 2, 'plugin::users-permissions.user', 'avatar', 1),
(14, 4, 'plugin::users-permissions.user', 'avatar', 1),
(15, 8, 'api::producto.producto', 'image', 1);

-- --------------------------------------------------------

--
-- Table structure for table `i18n_locale`
--

CREATE TABLE `i18n_locale` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `i18n_locale`
--

INSERT INTO `i18n_locale` (`id`, `name`, `code`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'English (en)', 'en', '2022-05-11 19:45:59.764000', '2022-05-11 19:45:59.764000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pedidos`
--

CREATE TABLE `pedidos` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pedidos_user_links`
--

CREATE TABLE `pedidos_user_links` (
  `pedido_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pintura_tipos`
--

CREATE TABLE `pintura_tipos` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pintura_tipos`
--

INSERT INTO `pintura_tipos` (`id`, `name`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`) VALUES
(3, 'Anime', '2022-05-14 11:54:19.123000', '2022-05-14 11:54:46.702000', '2022-05-14 11:54:46.700000', 1, 1),
(4, 'Cómic', '2022-05-14 11:54:23.797000', '2022-05-14 11:54:44.506000', '2022-05-14 11:54:44.502000', 1, 1),
(5, 'Serie TV', '2022-05-14 11:54:33.791000', '2022-05-14 11:54:50.483000', '2022-05-14 11:54:50.481000', 1, 1),
(6, 'Miscelánea', '2022-05-14 11:54:42.381000', '2022-05-14 11:54:48.656000', '2022-05-14 11:54:48.653000', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `productos`
--

CREATE TABLE `productos` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `description` longtext,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `productos`
--

INSERT INTO `productos` (`id`, `name`, `price`, `description`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'Camiseta OG\'s', '15.99', NULL, '2022-05-19 19:24:57.856000', '2022-05-19 19:26:32.244000', '2022-05-19 19:26:32.240000', 1, 1),
(2, 'Llavero Retro', '2.99', NULL, '2022-05-19 19:26:27.237000', '2022-05-19 19:27:33.564000', '2022-05-19 19:26:28.029000', 1, 1),
(3, 'Breakin Bad', '40.50', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus porttitor tortor et mauris cursus ultrices. NipsLorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus porttitor tortor et mauris cursus ultrices. NipsLorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus porttitor tortor et mauris cursus ultrices. NipsLorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus porttitor tortor et mauris cursus ultrices. NipsLorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus porttitor tortor et mauris cursus ultrices. Nips', '2022-05-19 19:27:03.461000', '2022-05-19 19:27:17.726000', '2022-05-19 19:27:04.210000', 1, 1),
(4, 'Mecha TTGL', '355.99', NULL, '2022-05-19 19:27:58.998000', '2022-05-19 19:28:00.572000', '2022-05-19 19:28:00.570000', 1, 1),
(5, 'Todoroki', '30.99', NULL, '2022-05-19 19:28:20.220000', '2022-05-19 19:28:20.956000', '2022-05-19 19:28:20.954000', 1, 1),
(6, 'BMW Parking Only', '10.00', NULL, '2022-05-19 19:29:05.043000', '2022-05-19 19:29:05.842000', '2022-05-19 19:29:05.839000', 1, 1),
(7, 'Portada Cómic Superman', '10.99', NULL, '2022-05-19 19:29:29.062000', '2022-05-19 19:29:29.940000', '2022-05-19 19:29:29.937000', 1, 1),
(8, 'aullando una luna de hormigon', '10.50', 'ta triste', '2022-05-20 20:34:18.154000', '2022-05-20 20:36:01.675000', '2022-05-20 20:34:18.841000', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `productos_accesorio_tipo_links`
--

CREATE TABLE `productos_accesorio_tipo_links` (
  `producto_id` int(10) UNSIGNED DEFAULT NULL,
  `accesorio_tipo_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `productos_accesorio_tipo_links`
--

INSERT INTO `productos_accesorio_tipo_links` (`producto_id`, `accesorio_tipo_id`) VALUES
(1, 1),
(2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `productos_figura_tipo_links`
--

CREATE TABLE `productos_figura_tipo_links` (
  `producto_id` int(10) UNSIGNED DEFAULT NULL,
  `tipos_figura_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `productos_figura_tipo_links`
--

INSERT INTO `productos_figura_tipo_links` (`producto_id`, `tipos_figura_id`) VALUES
(3, 5),
(4, 1),
(5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `productos_pedido_links`
--

CREATE TABLE `productos_pedido_links` (
  `producto_id` int(10) UNSIGNED DEFAULT NULL,
  `pedido_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `productos_pintura_tipo_links`
--

CREATE TABLE `productos_pintura_tipo_links` (
  `producto_id` int(10) UNSIGNED DEFAULT NULL,
  `pintura_tipo_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `productos_pintura_tipo_links`
--

INSERT INTO `productos_pintura_tipo_links` (`producto_id`, `pintura_tipo_id`) VALUES
(6, 6),
(7, 4),
(8, 4);

-- --------------------------------------------------------

--
-- Table structure for table `productos_producto_tipo_links`
--

CREATE TABLE `productos_producto_tipo_links` (
  `producto_id` int(10) UNSIGNED DEFAULT NULL,
  `producto_tipo_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `productos_producto_tipo_links`
--

INSERT INTO `productos_producto_tipo_links` (`producto_id`, `producto_tipo_id`) VALUES
(1, 1),
(3, 2),
(2, 1),
(4, 2),
(5, 2),
(6, 3),
(7, 3),
(8, 3);

-- --------------------------------------------------------

--
-- Table structure for table `producto_tipos`
--

CREATE TABLE `producto_tipos` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `producto_tipos`
--

INSERT INTO `producto_tipos` (`id`, `name`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'Accesorio', '2022-05-19 19:23:42.150000', '2022-05-19 19:23:53.579000', '2022-05-19 19:23:53.577000', 1, 1),
(2, 'Figura', '2022-05-19 19:24:02.239000', '2022-05-19 19:24:03.084000', '2022-05-19 19:24:03.081000', 1, 1),
(3, 'Pintura', '2022-05-19 19:24:10.670000', '2022-05-19 19:24:11.511000', '2022-05-19 19:24:11.509000', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `strapi_api_tokens`
--

CREATE TABLE `strapi_api_tokens` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `access_key` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_core_store_settings`
--

CREATE TABLE `strapi_core_store_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` longtext,
  `type` varchar(255) DEFAULT NULL,
  `environment` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `strapi_core_store_settings`
--

INSERT INTO `strapi_core_store_settings` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(1, 'strapi_content_types_schema', '{\"admin::permission\":{\"collectionName\":\"admin_permissions\",\"info\":{\"name\":\"Permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"subject\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false},\"properties\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"conditions\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"role\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::role\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_permissions\",\"info\":{\"name\":\"Permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"subject\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false},\"properties\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"conditions\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"role\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::role\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"permission\",\"connection\":\"default\",\"uid\":\"admin::permission\",\"plugin\":\"admin\",\"globalId\":\"AdminPermission\"},\"admin::user\":{\"collectionName\":\"admin_users\",\"info\":{\"name\":\"User\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"firstname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"lastname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"username\":{\"type\":\"string\",\"unique\":false,\"configurable\":false,\"required\":false},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true,\"unique\":true,\"private\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"required\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"registrationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"isActive\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"roles\":{\"configurable\":false,\"private\":true,\"type\":\"relation\",\"relation\":\"manyToMany\",\"inversedBy\":\"users\",\"target\":\"admin::role\",\"collectionName\":\"strapi_users_roles\"},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"preferedLanguage\":{\"type\":\"string\",\"configurable\":false,\"required\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_users\",\"info\":{\"name\":\"User\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"firstname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"lastname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"username\":{\"type\":\"string\",\"unique\":false,\"configurable\":false,\"required\":false},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true,\"unique\":true,\"private\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"required\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"registrationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"isActive\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"roles\":{\"configurable\":false,\"private\":true,\"type\":\"relation\",\"relation\":\"manyToMany\",\"inversedBy\":\"users\",\"target\":\"admin::role\",\"collectionName\":\"strapi_users_roles\"},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"preferedLanguage\":{\"type\":\"string\",\"configurable\":false,\"required\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"user\",\"connection\":\"default\",\"uid\":\"admin::user\",\"plugin\":\"admin\",\"globalId\":\"AdminUser\"},\"admin::role\":{\"collectionName\":\"admin_roles\",\"info\":{\"name\":\"Role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"code\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"configurable\":false},\"users\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToMany\",\"mappedBy\":\"roles\",\"target\":\"admin::user\"},\"permissions\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"mappedBy\":\"role\",\"target\":\"admin::permission\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_roles\",\"info\":{\"name\":\"Role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"code\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"configurable\":false},\"users\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToMany\",\"mappedBy\":\"roles\",\"target\":\"admin::user\"},\"permissions\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"mappedBy\":\"role\",\"target\":\"admin::permission\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"role\",\"connection\":\"default\",\"uid\":\"admin::role\",\"plugin\":\"admin\",\"globalId\":\"AdminRole\"},\"admin::api-token\":{\"collectionName\":\"strapi_api_tokens\",\"info\":{\"name\":\"Api Token\",\"singularName\":\"api-token\",\"pluralName\":\"api-tokens\",\"displayName\":\"Api Token\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"type\":{\"type\":\"enumeration\",\"enum\":[\"read-only\",\"full-access\"],\"configurable\":false,\"required\":false,\"default\":\"read-only\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_api_tokens\",\"info\":{\"name\":\"Api Token\",\"singularName\":\"api-token\",\"pluralName\":\"api-tokens\",\"displayName\":\"Api Token\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"type\":{\"type\":\"enumeration\",\"enum\":[\"read-only\",\"full-access\"],\"configurable\":false,\"required\":false,\"default\":\"read-only\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"api-token\",\"connection\":\"default\",\"uid\":\"admin::api-token\",\"plugin\":\"admin\",\"globalId\":\"AdminApiToken\"},\"plugin::upload.file\":{\"collectionName\":\"files\",\"info\":{\"singularName\":\"file\",\"pluralName\":\"files\",\"displayName\":\"File\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"string\",\"configurable\":false},\"caption\":{\"type\":\"string\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"string\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"type\":\"relation\",\"relation\":\"morphToMany\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"files\",\"info\":{\"singularName\":\"file\",\"pluralName\":\"files\",\"displayName\":\"File\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"string\",\"configurable\":false},\"caption\":{\"type\":\"string\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"string\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"type\":\"relation\",\"relation\":\"morphToMany\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"file\",\"connection\":\"default\",\"uid\":\"plugin::upload.file\",\"plugin\":\"upload\",\"globalId\":\"UploadFile\"},\"plugin::users-permissions.permission\":{\"collectionName\":\"up_permissions\",\"info\":{\"name\":\"permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"permissions\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"up_permissions\",\"info\":{\"name\":\"permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"permissions\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"permission\",\"connection\":\"default\",\"uid\":\"plugin::users-permissions.permission\",\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsPermission\"},\"plugin::users-permissions.role\":{\"collectionName\":\"up_roles\",\"info\":{\"name\":\"role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.permission\",\"mappedBy\":\"role\",\"configurable\":false},\"users\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.user\",\"mappedBy\":\"role\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"up_roles\",\"info\":{\"name\":\"role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.permission\",\"mappedBy\":\"role\",\"configurable\":false},\"users\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.user\",\"mappedBy\":\"role\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"role\",\"connection\":\"default\",\"uid\":\"plugin::users-permissions.role\",\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsRole\"},\"plugin::users-permissions.user\":{\"collectionName\":\"up_users\",\"info\":{\"name\":\"user\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"options\":{\"draftAndPublish\":false,\"timestamps\":true},\"attributes\":{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"users\",\"configurable\":false},\"avatar\":{\"type\":\"media\",\"multiple\":false,\"required\":false,\"allowedTypes\":[\"images\",\"files\",\"videos\",\"audios\"]},\"biography\":{\"type\":\"text\"},\"productos\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::producto.producto\"},\"pedidos\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::pedido.pedido\",\"mappedBy\":\"user\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"config\":{\"attributes\":{\"resetPasswordToken\":{\"hidden\":true},\"confirmationToken\":{\"hidden\":true},\"provider\":{\"hidden\":true}}},\"kind\":\"collectionType\",\"__filename__\":\"schema.json\",\"__schema__\":{\"collectionName\":\"up_users\",\"info\":{\"name\":\"user\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"options\":{\"draftAndPublish\":false,\"timestamps\":true},\"attributes\":{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"users\",\"configurable\":false},\"avatar\":{\"type\":\"media\",\"multiple\":false,\"required\":false,\"allowedTypes\":[\"images\",\"files\",\"videos\",\"audios\"]},\"biography\":{\"type\":\"text\"},\"productos\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::producto.producto\"},\"pedidos\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::pedido.pedido\",\"mappedBy\":\"user\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"user\",\"connection\":\"default\",\"uid\":\"plugin::users-permissions.user\",\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsUser\"},\"plugin::i18n.locale\":{\"info\":{\"singularName\":\"locale\",\"pluralName\":\"locales\",\"collectionName\":\"locales\",\"displayName\":\"Locale\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"max\":50,\"configurable\":false},\"code\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"info\":{\"singularName\":\"locale\",\"pluralName\":\"locales\",\"collectionName\":\"locales\",\"displayName\":\"Locale\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"max\":50,\"configurable\":false},\"code\":{\"type\":\"string\",\"unique\":true,\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"locale\",\"connection\":\"default\",\"uid\":\"plugin::i18n.locale\",\"plugin\":\"i18n\",\"collectionName\":\"i18n_locale\",\"globalId\":\"I18NLocale\"},\"api::accesorio-tipo.accesorio-tipo\":{\"kind\":\"collectionType\",\"collectionName\":\"accesorio_tipos\",\"info\":{\"singularName\":\"accesorio-tipo\",\"pluralName\":\"accesorio-tipos\",\"displayName\":\"AccesorioTipo\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\"},\"productos\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::producto.producto\",\"mappedBy\":\"accesorio_tipo\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"accesorio_tipos\",\"info\":{\"singularName\":\"accesorio-tipo\",\"pluralName\":\"accesorio-tipos\",\"displayName\":\"AccesorioTipo\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\"},\"productos\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::producto.producto\",\"mappedBy\":\"accesorio_tipo\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"accesorio-tipo\",\"connection\":\"default\",\"uid\":\"api::accesorio-tipo.accesorio-tipo\",\"apiName\":\"accesorio-tipo\",\"globalId\":\"AccesorioTipo\",\"actions\":{},\"lifecycles\":{}},\"api::pedido.pedido\":{\"kind\":\"collectionType\",\"collectionName\":\"pedidos\",\"info\":{\"singularName\":\"pedido\",\"pluralName\":\"pedidos\",\"displayName\":\"Pedido\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"productos\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::producto.producto\",\"mappedBy\":\"pedido\"},\"user\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.user\",\"inversedBy\":\"pedidos\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"pedidos\",\"info\":{\"singularName\":\"pedido\",\"pluralName\":\"pedidos\",\"displayName\":\"Pedido\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"productos\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::producto.producto\",\"mappedBy\":\"pedido\"},\"user\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.user\",\"inversedBy\":\"pedidos\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"pedido\",\"connection\":\"default\",\"uid\":\"api::pedido.pedido\",\"apiName\":\"pedido\",\"globalId\":\"Pedido\",\"actions\":{},\"lifecycles\":{}},\"api::pintura-tipo.pintura-tipo\":{\"kind\":\"collectionType\",\"collectionName\":\"pintura_tipos\",\"info\":{\"singularName\":\"pintura-tipo\",\"pluralName\":\"pintura-tipos\",\"displayName\":\"PinturaTipo\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\"},\"productos\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::producto.producto\",\"mappedBy\":\"pintura_tipo\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"pintura_tipos\",\"info\":{\"singularName\":\"pintura-tipo\",\"pluralName\":\"pintura-tipos\",\"displayName\":\"PinturaTipo\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\"},\"productos\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::producto.producto\",\"mappedBy\":\"pintura_tipo\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"pintura-tipo\",\"connection\":\"default\",\"uid\":\"api::pintura-tipo.pintura-tipo\",\"apiName\":\"pintura-tipo\",\"globalId\":\"PinturaTipo\",\"actions\":{},\"lifecycles\":{}},\"api::producto.producto\":{\"kind\":\"collectionType\",\"collectionName\":\"productos\",\"info\":{\"singularName\":\"producto\",\"pluralName\":\"productos\",\"displayName\":\"Producto\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\"},\"image\":{\"type\":\"media\",\"multiple\":false,\"required\":false,\"allowedTypes\":[\"images\",\"files\",\"videos\",\"audios\"]},\"price\":{\"type\":\"decimal\"},\"description\":{\"type\":\"text\"},\"accesorio_tipo\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::accesorio-tipo.accesorio-tipo\",\"inversedBy\":\"productos\"},\"figura_tipo\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::tipos-figura.tipos-figura\",\"inversedBy\":\"productos\"},\"pintura_tipo\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::pintura-tipo.pintura-tipo\",\"inversedBy\":\"productos\"},\"producto_tipo\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::producto-tipo.producto-tipo\",\"inversedBy\":\"productos\"},\"pedido\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::pedido.pedido\",\"inversedBy\":\"productos\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"productos\",\"info\":{\"singularName\":\"producto\",\"pluralName\":\"productos\",\"displayName\":\"Producto\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\"},\"image\":{\"type\":\"media\",\"multiple\":false,\"required\":false,\"allowedTypes\":[\"images\",\"files\",\"videos\",\"audios\"]},\"price\":{\"type\":\"decimal\"},\"description\":{\"type\":\"text\"},\"accesorio_tipo\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::accesorio-tipo.accesorio-tipo\",\"inversedBy\":\"productos\"},\"figura_tipo\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::tipos-figura.tipos-figura\",\"inversedBy\":\"productos\"},\"pintura_tipo\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::pintura-tipo.pintura-tipo\",\"inversedBy\":\"productos\"},\"producto_tipo\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::producto-tipo.producto-tipo\",\"inversedBy\":\"productos\"},\"pedido\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::pedido.pedido\",\"inversedBy\":\"productos\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"producto\",\"connection\":\"default\",\"uid\":\"api::producto.producto\",\"apiName\":\"producto\",\"globalId\":\"Producto\",\"actions\":{},\"lifecycles\":{}},\"api::producto-tipo.producto-tipo\":{\"kind\":\"collectionType\",\"collectionName\":\"producto_tipos\",\"info\":{\"singularName\":\"producto-tipo\",\"pluralName\":\"producto-tipos\",\"displayName\":\"ProductoTipo\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\"},\"productos\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::producto.producto\",\"mappedBy\":\"producto_tipo\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"producto_tipos\",\"info\":{\"singularName\":\"producto-tipo\",\"pluralName\":\"producto-tipos\",\"displayName\":\"ProductoTipo\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\"},\"productos\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::producto.producto\",\"mappedBy\":\"producto_tipo\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"producto-tipo\",\"connection\":\"default\",\"uid\":\"api::producto-tipo.producto-tipo\",\"apiName\":\"producto-tipo\",\"globalId\":\"ProductoTipo\",\"actions\":{},\"lifecycles\":{}},\"api::tipos-figura.tipos-figura\":{\"kind\":\"collectionType\",\"collectionName\":\"tipos_figuras\",\"info\":{\"singularName\":\"tipos-figura\",\"pluralName\":\"tipos-figuras\",\"displayName\":\"FiguraTipo\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\"},\"productos\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::producto.producto\",\"mappedBy\":\"figura_tipo\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"tipos_figuras\",\"info\":{\"singularName\":\"tipos-figura\",\"pluralName\":\"tipos-figuras\",\"displayName\":\"FiguraTipo\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\"},\"productos\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::producto.producto\",\"mappedBy\":\"figura_tipo\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"tipos-figura\",\"connection\":\"default\",\"uid\":\"api::tipos-figura.tipos-figura\",\"apiName\":\"tipos-figura\",\"globalId\":\"TiposFigura\",\"actions\":{},\"lifecycles\":{}}}', 'object', NULL, NULL),
(2, 'plugin_content_manager_configuration_content_types::admin::permission', '{\"uid\":\"admin::permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"subject\":{\"edit\":{\"label\":\"subject\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"subject\",\"searchable\":true,\"sortable\":true}},\"properties\":{\"edit\":{\"label\":\"properties\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"properties\",\"searchable\":false,\"sortable\":false}},\"conditions\":{\"edit\":{\"label\":\"conditions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"conditions\",\"searchable\":false,\"sortable\":false}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"subject\",\"role\"],\"editRelations\":[\"role\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"subject\",\"size\":6}],[{\"name\":\"properties\",\"size\":12}],[{\"name\":\"conditions\",\"size\":12}]]}}', 'object', NULL, NULL),
(3, 'plugin_content_manager_configuration_content_types::admin::role', '{\"uid\":\"admin::role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"code\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"users\":{\"edit\":{\"label\":\"users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"users\",\"searchable\":false,\"sortable\":false}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"description\"],\"editRelations\":[\"users\",\"permissions\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}],[{\"name\":\"description\",\"size\":6}]]}}', 'object', NULL, NULL),
(4, 'plugin_content_manager_configuration_content_types::admin::user', '{\"uid\":\"admin::user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"firstname\",\"defaultSortBy\":\"firstname\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"firstname\":{\"edit\":{\"label\":\"firstname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"firstname\",\"searchable\":true,\"sortable\":true}},\"lastname\":{\"edit\":{\"label\":\"lastname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lastname\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"email\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"resetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"resetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"registrationToken\":{\"edit\":{\"label\":\"registrationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"registrationToken\",\"searchable\":true,\"sortable\":true}},\"isActive\":{\"edit\":{\"label\":\"isActive\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"isActive\",\"searchable\":true,\"sortable\":true}},\"roles\":{\"edit\":{\"label\":\"roles\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"roles\",\"searchable\":false,\"sortable\":false}},\"blocked\":{\"edit\":{\"label\":\"blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"blocked\",\"searchable\":true,\"sortable\":true}},\"preferedLanguage\":{\"edit\":{\"label\":\"preferedLanguage\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"preferedLanguage\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"firstname\",\"lastname\",\"username\"],\"editRelations\":[\"roles\"],\"edit\":[[{\"name\":\"firstname\",\"size\":6},{\"name\":\"lastname\",\"size\":6}],[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"resetPasswordToken\",\"size\":6}],[{\"name\":\"registrationToken\",\"size\":6},{\"name\":\"isActive\",\"size\":4}],[{\"name\":\"blocked\",\"size\":4},{\"name\":\"preferedLanguage\",\"size\":6}]]}}', 'object', NULL, NULL),
(5, 'plugin_content_manager_configuration_content_types::admin::api-token', '{\"uid\":\"admin::api-token\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"type\",\"searchable\":true,\"sortable\":true}},\"accessKey\":{\"edit\":{\"label\":\"accessKey\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"accessKey\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"type\"],\"editRelations\":[],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"type\",\"size\":6},{\"name\":\"accessKey\",\"size\":6}]]}}', 'object', NULL, NULL),
(6, 'plugin_content_manager_configuration_content_types::plugin::users-permissions.role', '{\"uid\":\"plugin::users-permissions.role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"type\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"users\":{\"edit\":{\"label\":\"users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"users\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"type\"],\"editRelations\":[\"permissions\",\"users\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"type\",\"size\":6}]]}}', 'object', NULL, NULL);
INSERT INTO `strapi_core_store_settings` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(7, 'plugin_content_manager_configuration_content_types::plugin::upload.file', '{\"uid\":\"plugin::upload.file\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"alternativeText\":{\"edit\":{\"label\":\"alternativeText\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"alternativeText\",\"searchable\":true,\"sortable\":true}},\"caption\":{\"edit\":{\"label\":\"caption\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"caption\",\"searchable\":true,\"sortable\":true}},\"width\":{\"edit\":{\"label\":\"width\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"width\",\"searchable\":true,\"sortable\":true}},\"height\":{\"edit\":{\"label\":\"height\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"height\",\"searchable\":true,\"sortable\":true}},\"formats\":{\"edit\":{\"label\":\"formats\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"formats\",\"searchable\":false,\"sortable\":false}},\"hash\":{\"edit\":{\"label\":\"hash\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"hash\",\"searchable\":true,\"sortable\":true}},\"ext\":{\"edit\":{\"label\":\"ext\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ext\",\"searchable\":true,\"sortable\":true}},\"mime\":{\"edit\":{\"label\":\"mime\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"mime\",\"searchable\":true,\"sortable\":true}},\"size\":{\"edit\":{\"label\":\"size\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"size\",\"searchable\":true,\"sortable\":true}},\"url\":{\"edit\":{\"label\":\"url\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"url\",\"searchable\":true,\"sortable\":true}},\"previewUrl\":{\"edit\":{\"label\":\"previewUrl\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"previewUrl\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"provider\",\"searchable\":true,\"sortable\":true}},\"provider_metadata\":{\"edit\":{\"label\":\"provider_metadata\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"provider_metadata\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"alternativeText\",\"caption\"],\"editRelations\":[],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"alternativeText\",\"size\":6}],[{\"name\":\"caption\",\"size\":6},{\"name\":\"width\",\"size\":4}],[{\"name\":\"height\",\"size\":4}],[{\"name\":\"formats\",\"size\":12}],[{\"name\":\"hash\",\"size\":6},{\"name\":\"ext\",\"size\":6}],[{\"name\":\"mime\",\"size\":6},{\"name\":\"size\",\"size\":4}],[{\"name\":\"url\",\"size\":6},{\"name\":\"previewUrl\",\"size\":6}],[{\"name\":\"provider\",\"size\":6}],[{\"name\":\"provider_metadata\",\"size\":12}]]}}', 'object', NULL, NULL),
(8, 'plugin_content_manager_configuration_content_types::plugin::users-permissions.permission', '{\"uid\":\"plugin::users-permissions.permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"role\",\"createdAt\"],\"editRelations\":[\"role\"],\"edit\":[[{\"name\":\"action\",\"size\":6}]]}}', 'object', NULL, NULL),
(9, 'plugin_content_manager_configuration_content_types::plugin::users-permissions.user', '{\"uid\":\"plugin::users-permissions.user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"username\",\"defaultSortBy\":\"username\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"email\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"provider\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"resetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"resetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"confirmationToken\":{\"edit\":{\"label\":\"confirmationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"confirmationToken\",\"searchable\":true,\"sortable\":true}},\"confirmed\":{\"edit\":{\"label\":\"confirmed\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"confirmed\",\"searchable\":true,\"sortable\":true}},\"blocked\":{\"edit\":{\"label\":\"blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"blocked\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"avatar\":{\"edit\":{\"label\":\"avatar\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"avatar\",\"searchable\":false,\"sortable\":false}},\"biography\":{\"edit\":{\"label\":\"biography\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"biography\",\"searchable\":true,\"sortable\":true}},\"productos\":{\"edit\":{\"label\":\"productos\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"productos\",\"searchable\":false,\"sortable\":false}},\"pedidos\":{\"edit\":{\"label\":\"pedidos\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"pedidos\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"username\",\"email\",\"confirmed\"],\"edit\":[[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"confirmed\",\"size\":4}],[{\"name\":\"blocked\",\"size\":4},{\"name\":\"avatar\",\"size\":6}],[{\"name\":\"biography\",\"size\":6}]],\"editRelations\":[\"role\",\"productos\",\"pedidos\"]}}', 'object', NULL, NULL),
(10, 'plugin_content_manager_configuration_content_types::plugin::i18n.locale', '{\"uid\":\"plugin::i18n.locale\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"code\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"createdAt\"],\"editRelations\":[],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}]]}}', 'object', NULL, NULL),
(11, 'plugin_upload_settings', '{\"sizeOptimization\":true,\"responsiveDimensions\":true,\"autoOrientation\":false}', 'object', NULL, NULL),
(12, 'plugin_users-permissions_grant', '{\"email\":{\"enabled\":true,\"icon\":\"envelope\"},\"discord\":{\"enabled\":false,\"icon\":\"discord\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/discord/callback\",\"scope\":[\"identify\",\"email\"]},\"facebook\":{\"enabled\":false,\"icon\":\"facebook-square\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/facebook/callback\",\"scope\":[\"email\"]},\"google\":{\"enabled\":false,\"icon\":\"google\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/google/callback\",\"scope\":[\"email\"]},\"github\":{\"enabled\":false,\"icon\":\"github\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/github/callback\",\"scope\":[\"user\",\"user:email\"]},\"microsoft\":{\"enabled\":false,\"icon\":\"windows\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/microsoft/callback\",\"scope\":[\"user.read\"]},\"twitter\":{\"enabled\":false,\"icon\":\"twitter\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/twitter/callback\"},\"instagram\":{\"enabled\":false,\"icon\":\"instagram\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/instagram/callback\",\"scope\":[\"user_profile\"]},\"vk\":{\"enabled\":false,\"icon\":\"vk\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/vk/callback\",\"scope\":[\"email\"]},\"twitch\":{\"enabled\":false,\"icon\":\"twitch\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/twitch/callback\",\"scope\":[\"user:read:email\"]},\"linkedin\":{\"enabled\":false,\"icon\":\"linkedin\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/linkedin/callback\",\"scope\":[\"r_liteprofile\",\"r_emailaddress\"]},\"cognito\":{\"enabled\":false,\"icon\":\"aws\",\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my.subdomain.com\",\"callback\":\"api/auth/cognito/callback\",\"scope\":[\"email\",\"openid\",\"profile\"]},\"reddit\":{\"enabled\":false,\"icon\":\"reddit\",\"key\":\"\",\"secret\":\"\",\"state\":true,\"callback\":\"api/auth/reddit/callback\",\"scope\":[\"identity\"]},\"auth0\":{\"enabled\":false,\"icon\":\"\",\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my-tenant.eu\",\"callback\":\"api/auth/auth0/callback\",\"scope\":[\"openid\",\"email\",\"profile\"]},\"cas\":{\"enabled\":false,\"icon\":\"book\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/cas/callback\",\"scope\":[\"openid email\"],\"subdomain\":\"my.subdomain.com/cas\"}}', 'object', NULL, NULL),
(13, 'plugin_users-permissions_email', '{\"reset_password\":{\"display\":\"Email.template.reset_password\",\"icon\":\"sync\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Reset password\",\"message\":\"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>\"}},\"email_confirmation\":{\"display\":\"Email.template.email_confirmation\",\"icon\":\"check-square\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Account confirmation\",\"message\":\"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>\"}}}', 'object', NULL, NULL),
(14, 'plugin_users-permissions_advanced', '{\"unique_email\":true,\"allow_register\":true,\"email_confirmation\":false,\"email_reset_password\":null,\"email_confirmation_redirection\":null,\"default_role\":\"authenticated\"}', 'object', NULL, NULL),
(15, 'plugin_i18n_default_locale', '\"en\"', 'string', NULL, NULL),
(16, 'core_admin_auth', '{\"providers\":{\"autoRegister\":false,\"defaultRole\":null}}', 'object', NULL, NULL),
(17, 'plugin_content_manager_configuration_content_types::api::tipos-figura.tipos-figura', '{\"uid\":\"api::tipos-figura.tipos-figura\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"productos\":{\"edit\":{\"label\":\"productos\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"productos\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"createdAt\",\"updatedAt\"],\"edit\":[[{\"name\":\"name\",\"size\":6}]],\"editRelations\":[\"productos\"]}}', 'object', NULL, NULL),
(20, 'plugin_content_manager_configuration_content_types::api::pintura-tipo.pintura-tipo', '{\"uid\":\"api::pintura-tipo.pintura-tipo\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"productos\":{\"edit\":{\"label\":\"productos\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"productos\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"createdAt\",\"updatedAt\"],\"edit\":[[{\"name\":\"name\",\"size\":6}]],\"editRelations\":[\"productos\"]}}', 'object', NULL, NULL),
(22, 'plugin_content_manager_configuration_content_types::api::accesorio-tipo.accesorio-tipo', '{\"uid\":\"api::accesorio-tipo.accesorio-tipo\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"productos\":{\"edit\":{\"label\":\"productos\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"productos\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"createdAt\",\"updatedAt\"],\"edit\":[[{\"name\":\"name\",\"size\":6}]],\"editRelations\":[\"productos\"]}}', 'object', NULL, NULL),
(23, 'plugin_content_manager_configuration_content_types::api::producto.producto', '{\"uid\":\"api::producto.producto\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"image\":{\"edit\":{\"label\":\"image\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"image\",\"searchable\":false,\"sortable\":false}},\"price\":{\"edit\":{\"label\":\"price\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"price\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"accesorio_tipo\":{\"edit\":{\"label\":\"accesorio_tipo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"accesorio_tipo\",\"searchable\":true,\"sortable\":true}},\"figura_tipo\":{\"edit\":{\"label\":\"figura_tipo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"figura_tipo\",\"searchable\":true,\"sortable\":true}},\"pintura_tipo\":{\"edit\":{\"label\":\"pintura_tipo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"pintura_tipo\",\"searchable\":true,\"sortable\":true}},\"producto_tipo\":{\"edit\":{\"label\":\"producto_tipo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"producto_tipo\",\"searchable\":true,\"sortable\":true}},\"pedido\":{\"edit\":{\"label\":\"pedido\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"pedido\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"image\",\"price\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"image\",\"size\":6}],[{\"name\":\"price\",\"size\":4},{\"name\":\"description\",\"size\":6}]],\"editRelations\":[\"accesorio_tipo\",\"figura_tipo\",\"pintura_tipo\",\"producto_tipo\",\"pedido\"]}}', 'object', NULL, NULL),
(24, 'plugin_content_manager_configuration_content_types::api::producto-tipo.producto-tipo', '{\"uid\":\"api::producto-tipo.producto-tipo\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"productos\":{\"edit\":{\"label\":\"productos\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"productos\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"createdAt\",\"updatedAt\"],\"edit\":[[{\"name\":\"name\",\"size\":6}]],\"editRelations\":[\"productos\"]}}', 'object', NULL, NULL),
(25, 'plugin_content_manager_configuration_content_types::api::pedido.pedido', '{\"uid\":\"api::pedido.pedido\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"productos\":{\"edit\":{\"label\":\"productos\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"productos\",\"searchable\":false,\"sortable\":false}},\"user\":{\"edit\":{\"label\":\"user\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"user\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"productos\",\"createdAt\",\"updatedAt\"],\"edit\":[],\"editRelations\":[\"productos\",\"user\"]}}', 'object', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `strapi_database_schema`
--

CREATE TABLE `strapi_database_schema` (
  `id` int(10) UNSIGNED NOT NULL,
  `schema` json DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `hash` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `strapi_database_schema`
--

INSERT INTO `strapi_database_schema` (`id`, `schema`, `time`, `hash`) VALUES
(42, '{\"tables\": [{\"name\": \"strapi_core_store_settings\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"key\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"value\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"environment\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"tag\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"strapi_webhooks\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"url\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"headers\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"events\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"enabled\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"admin_permissions\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"action\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"subject\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"properties\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"conditions\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"admin_permissions_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"admin_permissions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"admin_permissions_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"admin_permissions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"admin_users\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"firstname\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"lastname\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"username\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"email\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"password\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"reset_password_token\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"registration_token\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"is_active\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"blocked\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"prefered_language\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"admin_users_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"admin_users_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"admin_users_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"admin_users_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"admin_roles\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"code\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"description\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"admin_roles_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"admin_roles_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"admin_roles_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"admin_roles_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"strapi_api_tokens\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"description\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"access_key\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"strapi_api_tokens_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"strapi_api_tokens_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"strapi_api_tokens_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"strapi_api_tokens_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"files\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"alternative_text\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"caption\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"width\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"height\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"formats\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"hash\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"ext\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"mime\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [10, 2], \"name\": \"size\", \"type\": \"decimal\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"url\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"preview_url\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"provider\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"provider_metadata\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"files_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"files_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"files_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"files_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"up_permissions\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"action\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"up_permissions_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"up_permissions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"up_permissions_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"up_permissions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"up_roles\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"description\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"up_roles_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"up_roles_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"up_roles_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"up_roles_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"up_users\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"username\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"email\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"provider\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"password\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"reset_password_token\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"confirmation_token\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"confirmed\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"blocked\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"biography\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"up_users_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"up_users_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"up_users_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"up_users_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"i18n_locale\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"code\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"i18n_locale_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"i18n_locale_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"i18n_locale_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"i18n_locale_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"accesorio_tipos\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"accesorio_tipos_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"accesorio_tipos_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"accesorio_tipos_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"accesorio_tipos_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"pedidos\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"pedidos_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"pedidos_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"pedidos_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"pedidos_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"pintura_tipos\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"pintura_tipos_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"pintura_tipos_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"pintura_tipos_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"pintura_tipos_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"productos\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [10, 2], \"name\": \"price\", \"type\": \"decimal\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"description\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"productos_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"productos_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"productos_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"productos_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"producto_tipos\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"producto_tipos_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"producto_tipos_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"producto_tipos_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"producto_tipos_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"tipos_figuras\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"tipos_figuras_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"tipos_figuras_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"tipos_figuras_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"tipos_figuras_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"admin_permissions_role_links\", \"columns\": [{\"args\": [], \"name\": \"permission_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"role_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"admin_permissions_role_links_fk\", \"columns\": [\"permission_id\"]}, {\"name\": \"admin_permissions_role_links_inv_fk\", \"columns\": [\"role_id\"]}], \"foreignKeys\": [{\"name\": \"admin_permissions_role_links_fk\", \"columns\": [\"permission_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"admin_permissions\", \"referencedColumns\": [\"id\"]}, {\"name\": \"admin_permissions_role_links_inv_fk\", \"columns\": [\"role_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"admin_roles\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"admin_users_roles_links\", \"columns\": [{\"args\": [], \"name\": \"user_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"role_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"admin_users_roles_links_fk\", \"columns\": [\"user_id\"]}, {\"name\": \"admin_users_roles_links_inv_fk\", \"columns\": [\"role_id\"]}], \"foreignKeys\": [{\"name\": \"admin_users_roles_links_fk\", \"columns\": [\"user_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"admin_users_roles_links_inv_fk\", \"columns\": [\"role_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"admin_roles\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"files_related_morphs\", \"columns\": [{\"args\": [], \"name\": \"file_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"related_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"related_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"files_related_morphs_fk\", \"columns\": [\"file_id\"]}], \"foreignKeys\": [{\"name\": \"files_related_morphs_fk\", \"columns\": [\"file_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"files\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"up_permissions_role_links\", \"columns\": [{\"args\": [], \"name\": \"permission_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"role_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"up_permissions_role_links_fk\", \"columns\": [\"permission_id\"]}, {\"name\": \"up_permissions_role_links_inv_fk\", \"columns\": [\"role_id\"]}], \"foreignKeys\": [{\"name\": \"up_permissions_role_links_fk\", \"columns\": [\"permission_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"up_permissions\", \"referencedColumns\": [\"id\"]}, {\"name\": \"up_permissions_role_links_inv_fk\", \"columns\": [\"role_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"up_roles\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"up_users_role_links\", \"columns\": [{\"args\": [], \"name\": \"user_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"role_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"up_users_role_links_fk\", \"columns\": [\"user_id\"]}, {\"name\": \"up_users_role_links_inv_fk\", \"columns\": [\"role_id\"]}], \"foreignKeys\": [{\"name\": \"up_users_role_links_fk\", \"columns\": [\"user_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"up_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"up_users_role_links_inv_fk\", \"columns\": [\"role_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"up_roles\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"up_users_productos_links\", \"columns\": [{\"args\": [], \"name\": \"user_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"producto_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"up_users_productos_links_fk\", \"columns\": [\"user_id\"]}, {\"name\": \"up_users_productos_links_inv_fk\", \"columns\": [\"producto_id\"]}], \"foreignKeys\": [{\"name\": \"up_users_productos_links_fk\", \"columns\": [\"user_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"up_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"up_users_productos_links_inv_fk\", \"columns\": [\"producto_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"productos\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"pedidos_user_links\", \"columns\": [{\"args\": [], \"name\": \"pedido_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"user_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"pedidos_user_links_fk\", \"columns\": [\"pedido_id\"]}, {\"name\": \"pedidos_user_links_inv_fk\", \"columns\": [\"user_id\"]}], \"foreignKeys\": [{\"name\": \"pedidos_user_links_fk\", \"columns\": [\"pedido_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"pedidos\", \"referencedColumns\": [\"id\"]}, {\"name\": \"pedidos_user_links_inv_fk\", \"columns\": [\"user_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"up_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"productos_accesorio_tipo_links\", \"columns\": [{\"args\": [], \"name\": \"producto_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"accesorio_tipo_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"productos_accesorio_tipo_links_fk\", \"columns\": [\"producto_id\"]}, {\"name\": \"productos_accesorio_tipo_links_inv_fk\", \"columns\": [\"accesorio_tipo_id\"]}], \"foreignKeys\": [{\"name\": \"productos_accesorio_tipo_links_fk\", \"columns\": [\"producto_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"productos\", \"referencedColumns\": [\"id\"]}, {\"name\": \"productos_accesorio_tipo_links_inv_fk\", \"columns\": [\"accesorio_tipo_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"accesorio_tipos\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"productos_figura_tipo_links\", \"columns\": [{\"args\": [], \"name\": \"producto_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"tipos_figura_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"productos_figura_tipo_links_fk\", \"columns\": [\"producto_id\"]}, {\"name\": \"productos_figura_tipo_links_inv_fk\", \"columns\": [\"tipos_figura_id\"]}], \"foreignKeys\": [{\"name\": \"productos_figura_tipo_links_fk\", \"columns\": [\"producto_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"productos\", \"referencedColumns\": [\"id\"]}, {\"name\": \"productos_figura_tipo_links_inv_fk\", \"columns\": [\"tipos_figura_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"tipos_figuras\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"productos_pintura_tipo_links\", \"columns\": [{\"args\": [], \"name\": \"producto_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"pintura_tipo_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"productos_pintura_tipo_links_fk\", \"columns\": [\"producto_id\"]}, {\"name\": \"productos_pintura_tipo_links_inv_fk\", \"columns\": [\"pintura_tipo_id\"]}], \"foreignKeys\": [{\"name\": \"productos_pintura_tipo_links_fk\", \"columns\": [\"producto_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"productos\", \"referencedColumns\": [\"id\"]}, {\"name\": \"productos_pintura_tipo_links_inv_fk\", \"columns\": [\"pintura_tipo_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"pintura_tipos\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"productos_producto_tipo_links\", \"columns\": [{\"args\": [], \"name\": \"producto_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"producto_tipo_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"productos_producto_tipo_links_fk\", \"columns\": [\"producto_id\"]}, {\"name\": \"productos_producto_tipo_links_inv_fk\", \"columns\": [\"producto_tipo_id\"]}], \"foreignKeys\": [{\"name\": \"productos_producto_tipo_links_fk\", \"columns\": [\"producto_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"productos\", \"referencedColumns\": [\"id\"]}, {\"name\": \"productos_producto_tipo_links_inv_fk\", \"columns\": [\"producto_tipo_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"producto_tipos\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"productos_pedido_links\", \"columns\": [{\"args\": [], \"name\": \"producto_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"pedido_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"productos_pedido_links_fk\", \"columns\": [\"producto_id\"]}, {\"name\": \"productos_pedido_links_inv_fk\", \"columns\": [\"pedido_id\"]}], \"foreignKeys\": [{\"name\": \"productos_pedido_links_fk\", \"columns\": [\"producto_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"productos\", \"referencedColumns\": [\"id\"]}, {\"name\": \"productos_pedido_links_inv_fk\", \"columns\": [\"pedido_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"pedidos\", \"referencedColumns\": [\"id\"]}]}]}', '2022-05-27 17:26:56', '60b1c1487340a48fe6d51c019c21063e');

-- --------------------------------------------------------

--
-- Table structure for table `strapi_migrations`
--

CREATE TABLE `strapi_migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_webhooks`
--

CREATE TABLE `strapi_webhooks` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `url` longtext,
  `headers` json DEFAULT NULL,
  `events` json DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tipos_figuras`
--

CREATE TABLE `tipos_figuras` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tipos_figuras`
--

INSERT INTO `tipos_figuras` (`id`, `name`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'Anime', '2022-05-13 18:54:52.630000', '2022-05-13 18:54:55.410000', '2022-05-13 18:54:55.407000', 1, 1),
(4, 'Cómic', '2022-05-14 11:48:01.587000', '2022-05-14 11:49:39.369000', '2022-05-14 11:48:09.745000', 1, 1),
(5, 'Serie TV', '2022-05-14 11:49:06.460000', '2022-05-14 11:50:40.482000', '2022-05-14 11:50:16.296000', 1, 1),
(6, 'Miscelánea', '2022-05-14 11:51:48.783000', '2022-05-14 11:52:06.598000', '2022-05-14 11:52:06.596000', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `up_permissions`
--

CREATE TABLE `up_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `action` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `up_permissions`
--

INSERT INTO `up_permissions` (`id`, `action`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'plugin::users-permissions.auth.connect', '2022-05-11 19:45:59.738000', '2022-05-11 19:45:59.738000', NULL, NULL),
(2, 'plugin::users-permissions.user.me', '2022-05-11 19:45:59.738000', '2022-05-11 19:45:59.738000', NULL, NULL),
(5, 'plugin::users-permissions.auth.callback', '2022-05-11 19:45:59.746000', '2022-05-11 19:45:59.746000', NULL, NULL),
(6, 'plugin::users-permissions.auth.register', '2022-05-11 19:45:59.746000', '2022-05-11 19:45:59.746000', NULL, NULL),
(9, 'plugin::users-permissions.auth.connect', '2022-05-11 19:45:59.746000', '2022-05-11 19:45:59.746000', NULL, NULL),
(10, 'plugin::users-permissions.user.me', '2022-05-11 19:45:59.746000', '2022-05-11 19:45:59.746000', NULL, NULL),
(16, 'api::accesorio-tipo.accesorio-tipo.find', '2022-05-14 11:56:45.977000', '2022-05-14 11:56:45.977000', NULL, NULL),
(19, 'api::accesorio-tipo.accesorio-tipo.update', '2022-05-14 11:56:45.977000', '2022-05-14 11:56:45.977000', NULL, NULL),
(23, 'api::accesorio-tipo.accesorio-tipo.create', '2022-05-14 11:56:45.977000', '2022-05-14 11:56:45.977000', NULL, NULL),
(24, 'api::accesorio-tipo.accesorio-tipo.findOne', '2022-05-14 11:56:45.977000', '2022-05-14 11:56:45.977000', NULL, NULL),
(25, 'api::accesorio-tipo.accesorio-tipo.delete', '2022-05-14 11:56:45.977000', '2022-05-14 11:56:45.977000', NULL, NULL),
(36, 'api::pintura-tipo.pintura-tipo.find', '2022-05-14 11:56:45.977000', '2022-05-14 11:56:45.977000', NULL, NULL),
(37, 'api::pintura-tipo.pintura-tipo.findOne', '2022-05-14 11:56:45.977000', '2022-05-14 11:56:45.977000', NULL, NULL),
(38, 'api::pintura-tipo.pintura-tipo.create', '2022-05-14 11:56:45.977000', '2022-05-14 11:56:45.977000', NULL, NULL),
(39, 'api::pintura-tipo.pintura-tipo.update', '2022-05-14 11:56:45.977000', '2022-05-14 11:56:45.977000', NULL, NULL),
(40, 'api::pintura-tipo.pintura-tipo.delete', '2022-05-14 11:56:45.977000', '2022-05-14 11:56:45.977000', NULL, NULL),
(41, 'api::tipos-figura.tipos-figura.find', '2022-05-14 11:56:45.977000', '2022-05-14 11:56:45.977000', NULL, NULL),
(42, 'api::tipos-figura.tipos-figura.findOne', '2022-05-14 11:56:45.977000', '2022-05-14 11:56:45.977000', NULL, NULL),
(43, 'api::tipos-figura.tipos-figura.create', '2022-05-14 11:56:45.977000', '2022-05-14 11:56:45.977000', NULL, NULL),
(44, 'api::tipos-figura.tipos-figura.update', '2022-05-14 11:56:45.977000', '2022-05-14 11:56:45.977000', NULL, NULL),
(45, 'api::tipos-figura.tipos-figura.delete', '2022-05-14 11:56:45.977000', '2022-05-14 11:56:45.977000', NULL, NULL),
(46, 'plugin::content-type-builder.components.getComponents', '2022-05-14 11:56:45.977000', '2022-05-14 11:56:45.977000', NULL, NULL),
(47, 'plugin::content-type-builder.components.getComponent', '2022-05-14 11:56:45.977000', '2022-05-14 11:56:45.977000', NULL, NULL),
(48, 'plugin::content-type-builder.content-types.getContentTypes', '2022-05-14 11:56:45.977000', '2022-05-14 11:56:45.977000', NULL, NULL),
(49, 'plugin::content-type-builder.content-types.getContentType', '2022-05-14 11:56:45.977000', '2022-05-14 11:56:45.977000', NULL, NULL),
(50, 'plugin::email.email.send', '2022-05-14 11:56:45.977000', '2022-05-14 11:56:45.977000', NULL, NULL),
(51, 'plugin::upload.content-api.find', '2022-05-14 11:56:45.977000', '2022-05-14 11:56:45.977000', NULL, NULL),
(52, 'plugin::upload.content-api.findOne', '2022-05-14 11:56:45.977000', '2022-05-14 11:56:45.977000', NULL, NULL),
(53, 'plugin::upload.content-api.count', '2022-05-14 11:56:45.977000', '2022-05-14 11:56:45.977000', NULL, NULL),
(54, 'plugin::upload.content-api.destroy', '2022-05-14 11:56:45.977000', '2022-05-14 11:56:45.977000', NULL, NULL),
(55, 'plugin::upload.content-api.upload', '2022-05-14 11:56:45.977000', '2022-05-14 11:56:45.977000', NULL, NULL),
(56, 'plugin::users-permissions.auth.callback', '2022-05-14 11:56:45.977000', '2022-05-14 11:56:45.977000', NULL, NULL),
(57, 'plugin::users-permissions.auth.resetPassword', '2022-05-14 11:56:45.977000', '2022-05-14 11:56:45.977000', NULL, NULL),
(58, 'plugin::users-permissions.auth.forgotPassword', '2022-05-14 11:56:45.977000', '2022-05-14 11:56:45.977000', NULL, NULL),
(59, 'plugin::users-permissions.auth.register', '2022-05-14 11:56:45.977000', '2022-05-14 11:56:45.977000', NULL, NULL),
(60, 'plugin::users-permissions.auth.emailConfirmation', '2022-05-14 11:56:45.977000', '2022-05-14 11:56:45.977000', NULL, NULL),
(61, 'plugin::users-permissions.auth.sendEmailConfirmation', '2022-05-14 11:56:45.977000', '2022-05-14 11:56:45.977000', NULL, NULL),
(62, 'plugin::users-permissions.user.create', '2022-05-14 11:56:45.977000', '2022-05-14 11:56:45.977000', NULL, NULL),
(63, 'plugin::users-permissions.user.update', '2022-05-14 11:56:45.977000', '2022-05-14 11:56:45.977000', NULL, NULL),
(64, 'plugin::users-permissions.user.find', '2022-05-14 11:56:45.977000', '2022-05-14 11:56:45.977000', NULL, NULL),
(65, 'plugin::users-permissions.user.findOne', '2022-05-14 11:56:45.977000', '2022-05-14 11:56:45.977000', NULL, NULL),
(66, 'plugin::users-permissions.user.count', '2022-05-14 11:56:45.977000', '2022-05-14 11:56:45.977000', NULL, NULL),
(67, 'plugin::users-permissions.user.destroy', '2022-05-14 11:56:45.977000', '2022-05-14 11:56:45.977000', NULL, NULL),
(68, 'plugin::users-permissions.role.createRole', '2022-05-14 11:56:45.977000', '2022-05-14 11:56:45.977000', NULL, NULL),
(69, 'plugin::users-permissions.role.findOne', '2022-05-14 11:56:45.977000', '2022-05-14 11:56:45.977000', NULL, NULL),
(70, 'plugin::users-permissions.role.find', '2022-05-14 11:56:45.977000', '2022-05-14 11:56:45.977000', NULL, NULL),
(71, 'plugin::users-permissions.role.updateRole', '2022-05-14 11:56:45.977000', '2022-05-14 11:56:45.977000', NULL, NULL),
(72, 'plugin::users-permissions.role.deleteRole', '2022-05-14 11:56:45.977000', '2022-05-14 11:56:45.977000', NULL, NULL),
(73, 'plugin::users-permissions.permissions.getPermissions', '2022-05-14 11:56:45.977000', '2022-05-14 11:56:45.977000', NULL, NULL),
(74, 'plugin::i18n.locales.listLocales', '2022-05-14 11:56:45.977000', '2022-05-14 11:56:45.977000', NULL, NULL),
(80, 'api::accesorio-tipo.accesorio-tipo.delete', '2022-05-14 11:57:52.401000', '2022-05-14 11:57:52.401000', NULL, NULL),
(81, 'api::accesorio-tipo.accesorio-tipo.find', '2022-05-14 11:57:52.401000', '2022-05-14 11:57:52.401000', NULL, NULL),
(82, 'api::accesorio-tipo.accesorio-tipo.findOne', '2022-05-14 11:57:52.401000', '2022-05-14 11:57:52.401000', NULL, NULL),
(84, 'api::accesorio-tipo.accesorio-tipo.create', '2022-05-14 11:57:52.401000', '2022-05-14 11:57:52.401000', NULL, NULL),
(86, 'api::accesorio-tipo.accesorio-tipo.update', '2022-05-14 11:57:52.401000', '2022-05-14 11:57:52.401000', NULL, NULL),
(100, 'api::pintura-tipo.pintura-tipo.find', '2022-05-14 11:57:52.401000', '2022-05-14 11:57:52.401000', NULL, NULL),
(101, 'api::pintura-tipo.pintura-tipo.findOne', '2022-05-14 11:57:52.401000', '2022-05-14 11:57:52.401000', NULL, NULL),
(102, 'api::pintura-tipo.pintura-tipo.create', '2022-05-14 11:57:52.401000', '2022-05-14 11:57:52.401000', NULL, NULL),
(103, 'api::pintura-tipo.pintura-tipo.update', '2022-05-14 11:57:52.401000', '2022-05-14 11:57:52.401000', NULL, NULL),
(104, 'api::pintura-tipo.pintura-tipo.delete', '2022-05-14 11:57:52.401000', '2022-05-14 11:57:52.401000', NULL, NULL),
(105, 'api::tipos-figura.tipos-figura.find', '2022-05-14 11:57:52.401000', '2022-05-14 11:57:52.401000', NULL, NULL),
(106, 'api::tipos-figura.tipos-figura.findOne', '2022-05-14 11:57:52.401000', '2022-05-14 11:57:52.401000', NULL, NULL),
(107, 'api::tipos-figura.tipos-figura.create', '2022-05-14 11:57:52.401000', '2022-05-14 11:57:52.401000', NULL, NULL),
(108, 'api::tipos-figura.tipos-figura.update', '2022-05-14 11:57:52.401000', '2022-05-14 11:57:52.401000', NULL, NULL),
(109, 'api::tipos-figura.tipos-figura.delete', '2022-05-14 11:57:52.401000', '2022-05-14 11:57:52.401000', NULL, NULL),
(110, 'plugin::content-type-builder.components.getComponents', '2022-05-14 11:57:52.401000', '2022-05-14 11:57:52.401000', NULL, NULL),
(111, 'plugin::content-type-builder.components.getComponent', '2022-05-14 11:57:52.401000', '2022-05-14 11:57:52.401000', NULL, NULL),
(112, 'plugin::content-type-builder.content-types.getContentTypes', '2022-05-14 11:57:52.401000', '2022-05-14 11:57:52.401000', NULL, NULL),
(113, 'plugin::content-type-builder.content-types.getContentType', '2022-05-14 11:57:52.401000', '2022-05-14 11:57:52.401000', NULL, NULL),
(114, 'plugin::email.email.send', '2022-05-14 11:57:52.401000', '2022-05-14 11:57:52.401000', NULL, NULL),
(115, 'plugin::upload.content-api.find', '2022-05-14 11:57:52.401000', '2022-05-14 11:57:52.401000', NULL, NULL),
(116, 'plugin::upload.content-api.findOne', '2022-05-14 11:57:52.401000', '2022-05-14 11:57:52.401000', NULL, NULL),
(117, 'plugin::upload.content-api.count', '2022-05-14 11:57:52.401000', '2022-05-14 11:57:52.401000', NULL, NULL),
(118, 'plugin::upload.content-api.destroy', '2022-05-14 11:57:52.401000', '2022-05-14 11:57:52.401000', NULL, NULL),
(119, 'plugin::upload.content-api.upload', '2022-05-14 11:57:52.401000', '2022-05-14 11:57:52.401000', NULL, NULL),
(120, 'plugin::users-permissions.auth.resetPassword', '2022-05-14 11:57:52.401000', '2022-05-14 11:57:52.401000', NULL, NULL),
(121, 'plugin::users-permissions.auth.forgotPassword', '2022-05-14 11:57:52.401000', '2022-05-14 11:57:52.401000', NULL, NULL),
(122, 'plugin::users-permissions.auth.emailConfirmation', '2022-05-14 11:57:52.401000', '2022-05-14 11:57:52.401000', NULL, NULL),
(123, 'plugin::users-permissions.auth.sendEmailConfirmation', '2022-05-14 11:57:52.401000', '2022-05-14 11:57:52.401000', NULL, NULL),
(124, 'plugin::users-permissions.user.create', '2022-05-14 11:57:52.401000', '2022-05-14 11:57:52.401000', NULL, NULL),
(125, 'plugin::users-permissions.user.update', '2022-05-14 11:57:52.401000', '2022-05-14 11:57:52.401000', NULL, NULL),
(126, 'plugin::users-permissions.user.find', '2022-05-14 11:57:52.401000', '2022-05-14 11:57:52.401000', NULL, NULL),
(127, 'plugin::users-permissions.user.findOne', '2022-05-14 11:57:52.401000', '2022-05-14 11:57:52.401000', NULL, NULL),
(128, 'plugin::users-permissions.user.count', '2022-05-14 11:57:52.401000', '2022-05-14 11:57:52.401000', NULL, NULL),
(129, 'plugin::users-permissions.user.destroy', '2022-05-14 11:57:52.401000', '2022-05-14 11:57:52.401000', NULL, NULL),
(130, 'plugin::users-permissions.role.createRole', '2022-05-14 11:57:52.401000', '2022-05-14 11:57:52.401000', NULL, NULL),
(131, 'plugin::users-permissions.role.findOne', '2022-05-14 11:57:52.401000', '2022-05-14 11:57:52.401000', NULL, NULL),
(132, 'plugin::users-permissions.role.find', '2022-05-14 11:57:52.401000', '2022-05-14 11:57:52.401000', NULL, NULL),
(133, 'plugin::users-permissions.role.updateRole', '2022-05-14 11:57:52.401000', '2022-05-14 11:57:52.401000', NULL, NULL),
(134, 'plugin::users-permissions.role.deleteRole', '2022-05-14 11:57:52.401000', '2022-05-14 11:57:52.401000', NULL, NULL),
(135, 'plugin::users-permissions.permissions.getPermissions', '2022-05-14 11:57:52.401000', '2022-05-14 11:57:52.401000', NULL, NULL),
(136, 'plugin::i18n.locales.listLocales', '2022-05-14 11:57:52.401000', '2022-05-14 11:57:52.401000', NULL, NULL),
(137, 'api::producto.producto.find', '2022-05-19 19:32:45.239000', '2022-05-19 19:32:45.239000', NULL, NULL),
(138, 'api::producto.producto.findOne', '2022-05-19 19:32:45.239000', '2022-05-19 19:32:45.239000', NULL, NULL),
(139, 'api::producto.producto.create', '2022-05-19 19:32:45.239000', '2022-05-19 19:32:45.239000', NULL, NULL),
(140, 'api::producto.producto.update', '2022-05-19 19:32:45.239000', '2022-05-19 19:32:45.239000', NULL, NULL),
(141, 'api::producto.producto.delete', '2022-05-19 19:32:45.239000', '2022-05-19 19:32:45.239000', NULL, NULL),
(142, 'api::producto-tipo.producto-tipo.find', '2022-05-19 19:37:15.141000', '2022-05-19 19:37:15.141000', NULL, NULL),
(143, 'api::producto-tipo.producto-tipo.create', '2022-05-19 19:37:15.141000', '2022-05-19 19:37:15.141000', NULL, NULL),
(144, 'api::producto-tipo.producto-tipo.findOne', '2022-05-19 19:37:15.141000', '2022-05-19 19:37:15.141000', NULL, NULL),
(145, 'api::producto-tipo.producto-tipo.update', '2022-05-19 19:37:15.141000', '2022-05-19 19:37:15.141000', NULL, NULL),
(146, 'api::producto-tipo.producto-tipo.delete', '2022-05-19 19:37:15.141000', '2022-05-19 19:37:15.141000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `up_permissions_role_links`
--

CREATE TABLE `up_permissions_role_links` (
  `permission_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `up_permissions_role_links`
--

INSERT INTO `up_permissions_role_links` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(6, 2),
(9, 2),
(5, 2),
(10, 2),
(16, 1),
(19, 1),
(24, 1),
(25, 1),
(23, 1),
(36, 1),
(43, 1),
(44, 1),
(41, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(42, 1),
(45, 1),
(46, 1),
(50, 1),
(47, 1),
(48, 1),
(49, 1),
(55, 1),
(52, 1),
(56, 1),
(53, 1),
(54, 1),
(51, 1),
(57, 1),
(58, 1),
(59, 1),
(65, 1),
(61, 1),
(60, 1),
(63, 1),
(62, 1),
(66, 1),
(64, 1),
(67, 1),
(69, 1),
(68, 1),
(71, 1),
(72, 1),
(73, 1),
(70, 1),
(74, 1),
(81, 2),
(84, 2),
(82, 2),
(80, 2),
(86, 2),
(100, 2),
(101, 2),
(102, 2),
(107, 2),
(106, 2),
(105, 2),
(104, 2),
(103, 2),
(110, 2),
(109, 2),
(112, 2),
(108, 2),
(111, 2),
(113, 2),
(116, 2),
(114, 2),
(115, 2),
(117, 2),
(119, 2),
(121, 2),
(122, 2),
(118, 2),
(120, 2),
(123, 2),
(125, 2),
(127, 2),
(124, 2),
(126, 2),
(128, 2),
(129, 2),
(130, 2),
(132, 2),
(131, 2),
(136, 2),
(135, 2),
(133, 2),
(134, 2),
(137, 2),
(138, 2),
(139, 2),
(141, 2),
(140, 2),
(142, 2),
(143, 2),
(146, 2),
(144, 2),
(145, 2);

-- --------------------------------------------------------

--
-- Table structure for table `up_roles`
--

CREATE TABLE `up_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `up_roles`
--

INSERT INTO `up_roles` (`id`, `name`, `description`, `type`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'Cliente', 'El cliente puede comprar obras.', 'authenticated', '2022-05-11 19:45:59.728000', '2022-05-14 11:56:45.972000', NULL, NULL),
(2, 'Publico', 'Puede acceder al contenido pero no puede comprar nada.', 'public', '2022-05-11 19:45:59.732000', '2022-05-19 19:37:15.136000', NULL, NULL),
(3, 'Artista', 'El artista puede enviar obras, y tiene un apartado para ello\n', 'artista', '2022-05-11 20:00:50.837000', '2022-05-11 20:00:50.837000', NULL, NULL),
(4, 'Administrator', 'El administrador puede hacer cualquier cosa', 'administrator', '2022-05-11 20:01:08.765000', '2022-05-11 20:01:08.765000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `up_users`
--

CREATE TABLE `up_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `reset_password_token` varchar(255) DEFAULT NULL,
  `confirmation_token` varchar(255) DEFAULT NULL,
  `confirmed` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `biography` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `up_users`
--

INSERT INTO `up_users` (`id`, `username`, `email`, `provider`, `password`, `reset_password_token`, `confirmation_token`, `confirmed`, `blocked`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`, `biography`) VALUES
(1, 'alberto', 'alberto22@gmail.com', 'local', '$2a$10$gmqUK4g6IbtuW7yB6M6Y.uOdiUlVL6hhYHfY.KTXaVc8Zb5AsAOa6', NULL, NULL, 1, 0, '2022-05-11 20:02:13.235000', '2022-05-19 22:43:17.228000', 1, 1, NULL),
(2, 'AaronSR', 'aaron@email.com', 'local', '$2a$10$Hqj9TWrmHWRpCDnyGYN6JObdAZAvqWAiRKc1T8hYwmMIIwqD0kBXO', NULL, NULL, 1, 0, '2022-05-18 18:45:19.877000', '2022-05-19 22:46:08.811000', 1, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus porttitor tortor et mauris cursus ultrices. NipsLorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus porttitor tortor et mauris cursus ultrices. NipsLorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus porttitor tortor et mauris cursus ultrices. NipsLorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus porttitor tortor et mauris cursus ultrices. NipsLorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus porttitor tortor et mauris cursus ultrices. Nips'),
(3, 'patata', 'patata@email.com', 'local', '$2a$10$N5fv/qMTQoLvzsPWrqdNyOBDdn2PVlPQURgaiC6.M/.hmIkrLWqw2', NULL, NULL, 1, 0, '2022-05-20 19:34:04.798000', '2022-05-20 19:34:04.798000', 1, 1, NULL),
(4, 'lionardo', 'ma@email.com', 'local', '$2a$10$5IorDZz6PjdXVefAv4tQz.2PsPKhL801j1hIefkXOzB3kbbtc0sUm', NULL, NULL, 1, 0, '2022-05-20 20:32:25.276000', '2022-05-20 20:34:36.019000', 1, 1, 'asesino a la muerte si me la cruso');

-- --------------------------------------------------------

--
-- Table structure for table `up_users_productos_links`
--

CREATE TABLE `up_users_productos_links` (
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `producto_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `up_users_productos_links`
--

INSERT INTO `up_users_productos_links` (`user_id`, `producto_id`) VALUES
(2, 1),
(2, 3),
(2, 5),
(2, 4),
(4, 8);

-- --------------------------------------------------------

--
-- Table structure for table `up_users_role_links`
--

CREATE TABLE `up_users_role_links` (
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `up_users_role_links`
--

INSERT INTO `up_users_role_links` (`user_id`, `role_id`) VALUES
(1, 1),
(2, 3),
(3, 1),
(4, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accesorio_tipos`
--
ALTER TABLE `accesorio_tipos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `accesorio_tipos_created_by_id_fk` (`created_by_id`),
  ADD KEY `accesorio_tipos_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_permissions_created_by_id_fk` (`created_by_id`),
  ADD KEY `admin_permissions_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `admin_permissions_role_links`
--
ALTER TABLE `admin_permissions_role_links`
  ADD KEY `admin_permissions_role_links_fk` (`permission_id`),
  ADD KEY `admin_permissions_role_links_inv_fk` (`role_id`);

--
-- Indexes for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_roles_created_by_id_fk` (`created_by_id`),
  ADD KEY `admin_roles_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_users_created_by_id_fk` (`created_by_id`),
  ADD KEY `admin_users_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `admin_users_roles_links`
--
ALTER TABLE `admin_users_roles_links`
  ADD KEY `admin_users_roles_links_fk` (`user_id`),
  ADD KEY `admin_users_roles_links_inv_fk` (`role_id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `files_created_by_id_fk` (`created_by_id`),
  ADD KEY `files_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `files_related_morphs`
--
ALTER TABLE `files_related_morphs`
  ADD KEY `files_related_morphs_fk` (`file_id`);

--
-- Indexes for table `i18n_locale`
--
ALTER TABLE `i18n_locale`
  ADD PRIMARY KEY (`id`),
  ADD KEY `i18n_locale_created_by_id_fk` (`created_by_id`),
  ADD KEY `i18n_locale_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pedidos_created_by_id_fk` (`created_by_id`),
  ADD KEY `pedidos_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `pedidos_user_links`
--
ALTER TABLE `pedidos_user_links`
  ADD KEY `pedidos_user_links_fk` (`pedido_id`),
  ADD KEY `pedidos_user_links_inv_fk` (`user_id`);

--
-- Indexes for table `pintura_tipos`
--
ALTER TABLE `pintura_tipos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pintura_tipos_created_by_id_fk` (`created_by_id`),
  ADD KEY `pintura_tipos_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productos_created_by_id_fk` (`created_by_id`),
  ADD KEY `productos_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `productos_accesorio_tipo_links`
--
ALTER TABLE `productos_accesorio_tipo_links`
  ADD KEY `productos_accesorio_tipo_links_fk` (`producto_id`),
  ADD KEY `productos_accesorio_tipo_links_inv_fk` (`accesorio_tipo_id`);

--
-- Indexes for table `productos_figura_tipo_links`
--
ALTER TABLE `productos_figura_tipo_links`
  ADD KEY `productos_figura_tipo_links_fk` (`producto_id`),
  ADD KEY `productos_figura_tipo_links_inv_fk` (`tipos_figura_id`);

--
-- Indexes for table `productos_pedido_links`
--
ALTER TABLE `productos_pedido_links`
  ADD KEY `productos_pedido_links_fk` (`producto_id`),
  ADD KEY `productos_pedido_links_inv_fk` (`pedido_id`);

--
-- Indexes for table `productos_pintura_tipo_links`
--
ALTER TABLE `productos_pintura_tipo_links`
  ADD KEY `productos_pintura_tipo_links_fk` (`producto_id`),
  ADD KEY `productos_pintura_tipo_links_inv_fk` (`pintura_tipo_id`);

--
-- Indexes for table `productos_producto_tipo_links`
--
ALTER TABLE `productos_producto_tipo_links`
  ADD KEY `productos_producto_tipo_links_fk` (`producto_id`),
  ADD KEY `productos_producto_tipo_links_inv_fk` (`producto_tipo_id`);

--
-- Indexes for table `producto_tipos`
--
ALTER TABLE `producto_tipos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `producto_tipos_created_by_id_fk` (`created_by_id`),
  ADD KEY `producto_tipos_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `strapi_api_tokens`
--
ALTER TABLE `strapi_api_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_api_tokens_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_api_tokens_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `strapi_core_store_settings`
--
ALTER TABLE `strapi_core_store_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `strapi_database_schema`
--
ALTER TABLE `strapi_database_schema`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `strapi_migrations`
--
ALTER TABLE `strapi_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `strapi_webhooks`
--
ALTER TABLE `strapi_webhooks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tipos_figuras`
--
ALTER TABLE `tipos_figuras`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tipos_figuras_created_by_id_fk` (`created_by_id`),
  ADD KEY `tipos_figuras_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `up_permissions`
--
ALTER TABLE `up_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `up_permissions_created_by_id_fk` (`created_by_id`),
  ADD KEY `up_permissions_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `up_permissions_role_links`
--
ALTER TABLE `up_permissions_role_links`
  ADD KEY `up_permissions_role_links_fk` (`permission_id`),
  ADD KEY `up_permissions_role_links_inv_fk` (`role_id`);

--
-- Indexes for table `up_roles`
--
ALTER TABLE `up_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `up_roles_created_by_id_fk` (`created_by_id`),
  ADD KEY `up_roles_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `up_users`
--
ALTER TABLE `up_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `up_users_created_by_id_fk` (`created_by_id`),
  ADD KEY `up_users_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `up_users_productos_links`
--
ALTER TABLE `up_users_productos_links`
  ADD KEY `up_users_productos_links_fk` (`user_id`),
  ADD KEY `up_users_productos_links_inv_fk` (`producto_id`);

--
-- Indexes for table `up_users_role_links`
--
ALTER TABLE `up_users_role_links`
  ADD KEY `up_users_role_links_fk` (`user_id`),
  ADD KEY `up_users_role_links_inv_fk` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accesorio_tipos`
--
ALTER TABLE `accesorio_tipos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=273;

--
-- AUTO_INCREMENT for table `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `i18n_locale`
--
ALTER TABLE `i18n_locale`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pintura_tipos`
--
ALTER TABLE `pintura_tipos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `producto_tipos`
--
ALTER TABLE `producto_tipos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `strapi_api_tokens`
--
ALTER TABLE `strapi_api_tokens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_core_store_settings`
--
ALTER TABLE `strapi_core_store_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `strapi_database_schema`
--
ALTER TABLE `strapi_database_schema`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `strapi_migrations`
--
ALTER TABLE `strapi_migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_webhooks`
--
ALTER TABLE `strapi_webhooks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tipos_figuras`
--
ALTER TABLE `tipos_figuras`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `up_permissions`
--
ALTER TABLE `up_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT for table `up_roles`
--
ALTER TABLE `up_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `up_users`
--
ALTER TABLE `up_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accesorio_tipos`
--
ALTER TABLE `accesorio_tipos`
  ADD CONSTRAINT `accesorio_tipos_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `accesorio_tipos_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD CONSTRAINT `admin_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `admin_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `admin_permissions_role_links`
--
ALTER TABLE `admin_permissions_role_links`
  ADD CONSTRAINT `admin_permissions_role_links_fk` FOREIGN KEY (`permission_id`) REFERENCES `admin_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `admin_permissions_role_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `admin_roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD CONSTRAINT `admin_roles_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `admin_roles_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD CONSTRAINT `admin_users_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `admin_users_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `admin_users_roles_links`
--
ALTER TABLE `admin_users_roles_links`
  ADD CONSTRAINT `admin_users_roles_links_fk` FOREIGN KEY (`user_id`) REFERENCES `admin_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `admin_users_roles_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `admin_roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `files`
--
ALTER TABLE `files`
  ADD CONSTRAINT `files_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `files_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `files_related_morphs`
--
ALTER TABLE `files_related_morphs`
  ADD CONSTRAINT `files_related_morphs_fk` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `i18n_locale`
--
ALTER TABLE `i18n_locale`
  ADD CONSTRAINT `i18n_locale_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `i18n_locale_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `pedidos_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `pedidos_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `pedidos_user_links`
--
ALTER TABLE `pedidos_user_links`
  ADD CONSTRAINT `pedidos_user_links_fk` FOREIGN KEY (`pedido_id`) REFERENCES `pedidos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pedidos_user_links_inv_fk` FOREIGN KEY (`user_id`) REFERENCES `up_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pintura_tipos`
--
ALTER TABLE `pintura_tipos`
  ADD CONSTRAINT `pintura_tipos_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `pintura_tipos_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `productos_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `productos_accesorio_tipo_links`
--
ALTER TABLE `productos_accesorio_tipo_links`
  ADD CONSTRAINT `productos_accesorio_tipo_links_fk` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `productos_accesorio_tipo_links_inv_fk` FOREIGN KEY (`accesorio_tipo_id`) REFERENCES `accesorio_tipos` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `productos_figura_tipo_links`
--
ALTER TABLE `productos_figura_tipo_links`
  ADD CONSTRAINT `productos_figura_tipo_links_fk` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `productos_figura_tipo_links_inv_fk` FOREIGN KEY (`tipos_figura_id`) REFERENCES `tipos_figuras` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `productos_pedido_links`
--
ALTER TABLE `productos_pedido_links`
  ADD CONSTRAINT `productos_pedido_links_fk` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `productos_pedido_links_inv_fk` FOREIGN KEY (`pedido_id`) REFERENCES `pedidos` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `productos_pintura_tipo_links`
--
ALTER TABLE `productos_pintura_tipo_links`
  ADD CONSTRAINT `productos_pintura_tipo_links_fk` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `productos_pintura_tipo_links_inv_fk` FOREIGN KEY (`pintura_tipo_id`) REFERENCES `pintura_tipos` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `productos_producto_tipo_links`
--
ALTER TABLE `productos_producto_tipo_links`
  ADD CONSTRAINT `productos_producto_tipo_links_fk` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `productos_producto_tipo_links_inv_fk` FOREIGN KEY (`producto_tipo_id`) REFERENCES `producto_tipos` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `producto_tipos`
--
ALTER TABLE `producto_tipos`
  ADD CONSTRAINT `producto_tipos_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `producto_tipos_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `strapi_api_tokens`
--
ALTER TABLE `strapi_api_tokens`
  ADD CONSTRAINT `strapi_api_tokens_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_api_tokens_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `tipos_figuras`
--
ALTER TABLE `tipos_figuras`
  ADD CONSTRAINT `tipos_figuras_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `tipos_figuras_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `up_permissions`
--
ALTER TABLE `up_permissions`
  ADD CONSTRAINT `up_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `up_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `up_permissions_role_links`
--
ALTER TABLE `up_permissions_role_links`
  ADD CONSTRAINT `up_permissions_role_links_fk` FOREIGN KEY (`permission_id`) REFERENCES `up_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `up_permissions_role_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `up_roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `up_roles`
--
ALTER TABLE `up_roles`
  ADD CONSTRAINT `up_roles_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `up_roles_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `up_users`
--
ALTER TABLE `up_users`
  ADD CONSTRAINT `up_users_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `up_users_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `up_users_productos_links`
--
ALTER TABLE `up_users_productos_links`
  ADD CONSTRAINT `up_users_productos_links_fk` FOREIGN KEY (`user_id`) REFERENCES `up_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `up_users_productos_links_inv_fk` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `up_users_role_links`
--
ALTER TABLE `up_users_role_links`
  ADD CONSTRAINT `up_users_role_links_fk` FOREIGN KEY (`user_id`) REFERENCES `up_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `up_users_role_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `up_roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
