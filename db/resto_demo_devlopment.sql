-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 15, 2018 at 08:15 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `resto_demo`
--

-- --------------------------------------------------------

--
-- Table structure for table `ok_activities`
--

CREATE TABLE `ok_activities` (
  `activity_id` int(11) NOT NULL,
  `domain` varchar(10) NOT NULL,
  `context` varchar(128) NOT NULL,
  `user` varchar(10) NOT NULL,
  `user_id` int(11) NOT NULL,
  `action` varchar(32) NOT NULL,
  `message` text NOT NULL,
  `status` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ok_activities`
--

INSERT INTO `ok_activities` (`activity_id`, `domain`, `context`, `user`, `user_id`, `action`, `message`, `status`, `date_added`) VALUES
(11, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-01-23 19:58:28'),
(12, 'admin', 'extensions', 'staff', 11, 'installed', 'Admin OnlineKatta <b>installed</b> module extension <b>Banners.</b>', 0, '2018-01-24 01:41:04'),
(13, 'admin', 'extensions', 'staff', 11, 'installed', 'Admin OnlineKatta <b>installed</b> module extension <b>Featured Menu Items.</b>', 0, '2018-01-24 01:41:12'),
(14, 'admin', 'extensions', 'staff', 11, 'installed', 'Admin OnlineKatta <b>installed</b> module extension <b>Newsletter.</b>', 0, '2018-01-24 01:41:16'),
(15, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-01-24 01:43:09'),
(16, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-01-24 20:08:47'),
(17, 'admin', 'staffs', 'staff', 11, 'updated their', 'Admin OnlineKatta <b>updated their</b> staff <b>details.</b>', 0, '2018-01-24 20:09:31'),
(18, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-01-24 20:09:36'),
(19, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-01-24 20:09:41'),
(20, 'admin', 'locations', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Baner Branch.</b></a>', 0, '2018-01-24 20:16:08'),
(21, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Baner Branch.</b></a>', 0, '2018-01-24 20:17:06'),
(22, 'module', 'extensions', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> payment extension <b>Cash On Delivery.</b>', 0, '2018-01-24 20:17:55'),
(23, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Baner Branch.</b></a>', 0, '2018-01-24 20:18:23'),
(24, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Baner Branch.</b></a>', 0, '2018-01-24 20:19:59'),
(25, 'admin', 'permissions', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> permission <b>Site.Pages.</b>', 0, '2018-01-24 22:05:39'),
(26, 'admin', 'permissions', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> permission <b>Site.Pages.</b>', 0, '2018-01-24 22:05:40'),
(27, 'module', 'extensions', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> module extension <b>Slideshow.</b>', 0, '2018-01-24 22:10:18'),
(28, 'module', 'extensions', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> module extension <b>Slideshow.</b>', 0, '2018-01-24 22:19:07'),
(29, 'module', 'extensions', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> module extension <b>Slideshow.</b>', 0, '2018-01-24 22:19:23'),
(30, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-01-25 01:02:24'),
(31, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-01-25 01:02:37'),
(32, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-01-25 01:03:25'),
(33, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-01-25 01:03:50'),
(34, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-01-29 17:08:07'),
(35, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-01-30 14:20:51'),
(36, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-01-30 15:20:21'),
(37, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-01-30 15:25:56'),
(38, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-01-30 23:59:02'),
(39, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-01-31 00:17:21'),
(40, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-01-31 00:23:05'),
(41, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-01-31 00:36:03'),
(42, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-01-31 10:48:25'),
(43, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-01-31 15:31:04'),
(44, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-02-01 12:12:08'),
(45, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-02-02 12:23:59'),
(46, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-02-02 18:46:02'),
(47, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-02-10 21:48:47'),
(48, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-02-10 21:54:30'),
(49, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"http://onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-02-26 17:25:41'),
(50, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-03-01 19:20:16'),
(51, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-03-04 22:31:59'),
(52, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-03-04 22:32:11'),
(53, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-03-05 23:16:48'),
(54, 'admin', 'locations', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=15\"><b>Demo Smart Restro.</b></a>', 0, '2018-03-05 23:58:08'),
(55, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=15\"><b>Demo Smart Restro.</b></a>', 0, '2018-03-06 00:01:01'),
(56, 'admin', 'menus', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/menus/edit?id=11\"><b>idli.</b></a>', 0, '2018-03-06 00:27:24'),
(57, 'admin', 'menus', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/menus/edit?id=12\"><b>dosa.</b></a>', 0, '2018-03-06 00:27:58'),
(58, 'admin', 'menus', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/menus/edit?id=13\"><b>veg biryani.</b></a>', 0, '2018-03-06 00:29:08'),
(59, 'admin', 'menus', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/menus/edit?id=14\"><b>egg biryani.</b></a>', 0, '2018-03-06 00:29:36'),
(60, 'admin', 'menus', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/menus/edit?id=15\"><b>murg biryani.</b></a>', 0, '2018-03-06 00:30:44'),
(61, 'admin', 'menus', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/menus/edit?id=16\"><b>chole bhature.</b></a>', 0, '2018-03-06 00:31:38'),
(62, 'admin', 'menus', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/menus/edit?id=17\"><b>kachori samosa.</b></a>', 0, '2018-03-06 00:32:32'),
(63, 'main', 'customers', 'staff', 11, 'registered', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/customers/edit?id=11\">Prajyot Dhanokar</a> <b>registered</b> an <b>account.</b>', 0, '2018-03-06 00:37:12'),
(64, 'main', 'customers', 'customer', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/customers/edit?id=11\">Prajyot Dhanokar</a> <b>logged</b> in.', 0, '2018-03-06 00:37:27'),
(65, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=15\"><b>Demo Smart Restro.</b></a>', 0, '2018-03-06 00:52:38'),
(66, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-03-06 14:49:45'),
(67, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-03-06 14:57:16'),
(68, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-03-07 14:06:56'),
(69, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-03-07 14:20:47'),
(70, 'admin', 'extensions', 'staff', 11, 'uninstalled', 'Admin OnlineKatta <b>uninstalled</b> module extension <b>Account.</b>', 0, '2018-03-07 15:12:24'),
(71, 'admin', 'extensions', 'staff', 11, 'installed', 'Admin OnlineKatta <b>installed</b> module extension <b>Account.</b>', 0, '2018-03-07 15:12:29'),
(72, 'admin', 'locations', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=16\"><b>BG\'s.</b></a>', 0, '2018-03-07 15:30:43'),
(73, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=16\"><b>BG\'s.</b></a>', 0, '2018-03-07 15:31:46'),
(74, 'module', 'extensions', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> payment extension <b>Cash On Delivery.</b>', 0, '2018-03-07 15:32:56'),
(75, 'module', 'extensions', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> module extension <b>Slideshow.</b>', 0, '2018-03-07 16:02:08'),
(76, 'module', 'extensions', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> module extension <b>Slideshow.</b>', 0, '2018-03-07 16:04:11'),
(77, 'module', 'extensions', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> module extension <b>Slideshow.</b>', 0, '2018-03-07 16:04:42'),
(78, 'module', 'extensions', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> module extension <b>Cart.</b>', 0, '2018-03-07 16:18:50'),
(79, 'module', 'extensions', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> module extension <b>Cart.</b>', 0, '2018-03-07 16:21:24'),
(80, 'module', 'extensions', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> module extension <b>Cart.</b>', 0, '2018-03-07 16:21:43'),
(81, 'module', 'extensions', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> module extension <b>Banners.</b>', 0, '2018-03-07 16:30:15'),
(82, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-03-07 23:23:30'),
(83, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-03-08 10:13:14'),
(84, 'admin', 'staffs', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> staff <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit\"><b>waiters.</b></a>', 0, '2018-03-10 14:59:50'),
(85, 'admin', 'staffs', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> staff <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=12\"><b>waiters.</b></a>', 0, '2018-03-10 15:00:32'),
(86, 'admin', 'staffs', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> staff <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=12\"><b>shambhu.</b></a>', 0, '2018-03-10 15:01:25'),
(87, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-03-10 15:22:16'),
(88, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-03-12 11:42:58'),
(89, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-03-12 13:08:52'),
(90, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-03-12 15:08:00'),
(91, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-03-12 16:04:11'),
(92, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-03-12 16:05:45'),
(93, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-03-12 16:07:18'),
(94, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-03-13 13:23:04'),
(95, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-03-13 14:36:42'),
(96, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-03-13 17:09:19'),
(97, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-03-13 17:33:00'),
(98, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-03-17 13:27:52'),
(99, 'main', 'customers', 'staff', 12, 'registered', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/customers/edit?id=12\">vijay kumar</a> <b>registered</b> an <b>account.</b>', 0, '2018-03-17 13:43:34'),
(100, 'main', 'customers', 'customer', 12, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/customers/edit?id=12\">vijay kumar</a> <b>logged</b> in.', 0, '2018-03-17 13:43:58'),
(101, 'admin', 'staffs', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> staff <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit\"><b>ram.</b></a>', 0, '2018-03-17 13:55:16'),
(102, 'main', 'customers', 'customer', 12, 'logged out', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/customers/edit?id=12\">vijay kumar</a> <b>logged</b> out.', 0, '2018-03-17 13:55:26'),
(103, 'admin', 'staffs', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> staff <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=13\"><b>cook1.</b></a>', 0, '2018-03-17 13:57:23'),
(104, 'admin', 'customers', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in as <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/customers/edit?id=11\">Prajyot Dhanokar</a>.', 0, '2018-03-17 14:01:27'),
(105, 'admin', 'customers', 'staff', 12, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in as <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/customers/edit?id=12\">vijay kumar</a>.', 0, '2018-03-17 14:02:02'),
(106, 'main', 'customers', 'customer', 12, 'logged out', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/customers/edit?id=12\">vijay kumar</a> <b>logged</b> out.', 0, '2018-03-17 14:28:29'),
(107, 'main', 'customers', 'customer', 12, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/customers/edit?id=12\">vijay kumar</a> <b>logged</b> in.', 0, '2018-03-17 14:29:51'),
(108, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-03-17 14:37:59'),
(109, 'main', 'customers', 'customer', 12, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/customers/edit?id=12\">vijay kumar</a> <b>logged</b> in.', 0, '2018-03-17 15:11:17'),
(110, 'main', 'customers', 'customer', 12, 'logged out', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/customers/edit?id=12\">vijay kumar</a> <b>logged</b> out.', 0, '2018-03-17 15:27:22'),
(111, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-03-18 23:39:17'),
(112, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-03-19 01:18:14'),
(113, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-03-19 16:54:12'),
(114, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-03-19 20:57:46'),
(115, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-03-20 07:59:13'),
(116, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-03-20 10:28:19'),
(117, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-03-20 12:26:22'),
(118, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-03-20 12:35:12'),
(119, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-03-20 13:25:52'),
(120, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-03-20 13:42:51'),
(121, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-03-20 20:27:45'),
(122, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-03-20 20:31:37'),
(123, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-03-20 20:40:31'),
(124, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-03-20 21:02:55'),
(125, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-03-22 08:46:33'),
(126, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-03-22 20:12:52'),
(127, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-03-23 09:23:21'),
(128, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-03-23 20:46:22'),
(129, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-03-24 05:17:42'),
(130, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-03-24 09:03:11'),
(131, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-03-24 11:44:00'),
(132, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-03-24 12:20:05'),
(133, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-03-24 13:09:03'),
(134, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-03-24 13:20:44'),
(135, 'admin', 'menus', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/menus/edit?id=11\"><b>idli.</b></a>', 0, '2018-03-24 13:43:33'),
(136, 'admin', 'menus', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/menus/edit?id=11\"><b>idli.</b></a>', 0, '2018-03-24 13:43:33'),
(137, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-03-24 14:04:26'),
(138, 'module', 'extensions', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> module extension <b>Slideshow.</b>', 0, '2018-03-24 14:47:10'),
(139, 'module', 'extensions', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> module extension <b>Slideshow.</b>', 0, '2018-03-24 14:48:52'),
(140, 'admin', 'menus', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/menus/edit?id=13\"><b>veg biryani.</b></a>', 0, '2018-03-24 14:51:57'),
(141, 'admin', 'menus', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/menus/edit?id=12\"><b>dosa.</b></a>', 0, '2018-03-24 14:52:43'),
(142, 'admin', 'menus', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/menus/edit?id=12\"><b>dosa.</b></a>', 0, '2018-03-24 14:53:20'),
(143, 'admin', 'menus', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/menus/edit?id=11\"><b>idli.</b></a>', 0, '2018-03-24 14:54:11'),
(144, 'module', 'extensions', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> module extension <b>Featured Menu Items.</b>', 0, '2018-03-24 14:54:26'),
(145, 'module', 'extensions', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> module extension <b>Featured Menu Items.</b>', 0, '2018-03-24 14:54:52'),
(146, 'module', 'extensions', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> module extension <b>Featured Menu Items.</b>', 0, '2018-03-24 14:56:07'),
(147, 'module', 'extensions', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> module extension <b>Featured Menu Items.</b>', 0, '2018-03-24 14:56:44'),
(148, 'module', 'extensions', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> module extension <b>Featured Menu Items.</b>', 0, '2018-03-24 14:56:51'),
(149, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-03-24 15:06:23'),
(150, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-03-24 15:07:44'),
(151, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-03-24 15:32:23'),
(152, 'admin', 'menus', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/menus/edit?id=18\"><b>Green Tea.</b></a>', 0, '2018-03-24 15:35:23'),
(153, 'admin', 'menus', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/menus/edit?id=11\"><b>idli.</b></a>', 0, '2018-03-24 15:35:33'),
(154, 'admin', 'menus', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/menus/edit?id=11\"><b>idli.</b></a>', 0, '2018-03-24 15:35:37'),
(155, 'admin', 'menus', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/menus/edit?id=12\"><b>dosa.</b></a>', 0, '2018-03-24 15:35:53'),
(156, 'admin', 'menus', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/menus/edit?id=13\"><b>veg biryani.</b></a>', 0, '2018-03-24 15:36:02'),
(157, 'admin', 'menus', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/menus/edit?id=14\"><b>egg biryani.</b></a>', 0, '2018-03-24 15:36:12'),
(158, 'admin', 'menus', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/menus/edit?id=15\"><b>murg biryani.</b></a>', 0, '2018-03-24 15:36:18'),
(159, 'admin', 'menus', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/menus/edit?id=16\"><b>chole bhature.</b></a>', 0, '2018-03-24 15:36:23'),
(160, 'admin', 'menus', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/menus/edit?id=17\"><b>kachori samosa.</b></a>', 0, '2018-03-24 15:36:29'),
(161, 'admin', 'menus', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/menus/edit?id=17\"><b>kachori samosa.</b></a>', 0, '2018-03-24 15:36:53'),
(162, 'admin', 'menus', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/menus/edit?id=11\"><b>idli.</b></a>', 0, '2018-03-24 15:51:09'),
(163, 'admin', 'menus', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/menus/edit?id=12\"><b>dosa.</b></a>', 0, '2018-03-24 15:51:20'),
(164, 'admin', 'menus', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/menus/edit?id=13\"><b>veg biryani.</b></a>', 0, '2018-03-24 15:51:30'),
(165, 'admin', 'menus', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/menus/edit?id=14\"><b>egg biryani.</b></a>', 0, '2018-03-24 15:51:38'),
(166, 'admin', 'menus', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/menus/edit?id=15\"><b>murg biryani.</b></a>', 0, '2018-03-24 15:51:50'),
(167, 'admin', 'menus', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/menus/edit?id=16\"><b>chole bhature.</b></a>', 0, '2018-03-24 15:52:05'),
(168, 'admin', 'menus', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/menus/edit?id=17\"><b>kachori samosa.</b></a>', 0, '2018-03-24 15:52:28'),
(169, 'admin', 'menus', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/menus/edit?id=18\"><b>Green Tea.</b></a>', 0, '2018-03-24 15:52:53'),
(170, 'module', 'extensions', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> module extension <b>Featured Menu Items.</b>', 0, '2018-03-24 15:54:14'),
(171, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-03-24 15:55:49'),
(172, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-03-24 15:56:25'),
(173, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-03-26 14:22:52'),
(174, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-03-26 14:30:03'),
(175, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-03-26 14:32:06'),
(176, 'module', 'orders', 'staff', 0, 'created', 'Aman Puranik <b>created</b> a new order <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/orders/edit?id=20001\"><b>#20001.</b></a>', 0, '2018-03-26 14:32:17'),
(177, 'admin', 'orders', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> order <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/orders/edit?id=20001\"><b>#20001.</b></a>', 0, '2018-03-26 14:34:08'),
(178, 'admin', 'orders', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> order <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/orders/edit?id=20001\"><b>#20001.</b></a>', 0, '2018-03-26 14:34:47'),
(179, 'admin', 'orders', 'staff', 11, 'assigned', 'Admin OnlineKatta <b>assigned</b> order <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/orders/edit?id=20001\"><b>#20001</b></a> to <b><a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=13\">cook1</a>.</b>', 0, '2018-03-26 14:34:47'),
(180, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-03-26 14:50:52'),
(181, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-03-26 14:50:52'),
(182, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-03-26 14:53:15'),
(183, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-03-26 14:53:45'),
(184, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-03-26 14:53:59'),
(185, 'module', 'orders', 'staff', 0, 'created', 'vaibhav rastogi <b>created</b> a new order <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/orders/edit?id=20002\"><b>#20002.</b></a>', 0, '2018-03-26 14:55:32'),
(186, 'admin', 'orders', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> order <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/orders/edit?id=20002\"><b>#20002.</b></a>', 0, '2018-03-26 14:56:33'),
(187, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-03-26 14:58:11'),
(188, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-03-26 16:49:48'),
(189, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-03-26 17:28:35'),
(190, 'module', 'orders', 'staff', 0, 'created', 'Sachin Dharia <b>created</b> a new order <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/orders/edit?id=20003\"><b>#20003.</b></a>', 0, '2018-03-26 17:38:05'),
(191, 'admin', 'orders', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> order <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/orders/edit?id=20003\"><b>#20003.</b></a>', 0, '2018-03-26 17:38:54'),
(192, 'module', 'extensions', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> module extension <b>Slideshow.</b>', 0, '2018-03-26 17:43:39'),
(193, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-03-26 18:04:32'),
(194, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-03-26 18:05:36'),
(195, 'admin', 'permissions', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> permission <b>Module.PagesModule.</b>', 0, '2018-03-26 18:09:28'),
(196, 'admin', 'extensions', 'staff', 11, 'uninstalled', 'Admin OnlineKatta <b>uninstalled</b> module extension <b>Pages.</b>', 0, '2018-03-26 18:09:39'),
(197, 'admin', 'extensions', 'staff', 11, 'installed', 'Admin OnlineKatta <b>installed</b> module extension <b>Pages.</b>', 0, '2018-03-26 18:09:43'),
(198, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-03-28 11:30:12'),
(199, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-03-28 11:32:28'),
(200, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-03-28 17:16:51'),
(201, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-03-28 17:16:53'),
(202, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-03-30 12:23:55'),
(203, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-03-30 23:34:12'),
(204, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-03-31 18:31:32'),
(205, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-04-02 13:03:40'),
(206, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-04-03 12:28:51'),
(207, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-04-03 12:38:39'),
(208, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-04-03 12:49:05'),
(209, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-04-03 13:40:32'),
(210, 'admin', 'menus', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/menus/edit?id=19\"><b>momos.</b></a>', 0, '2018-04-03 14:39:19'),
(211, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-04-03 14:40:17'),
(212, 'admin', 'coupons', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> coupon <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/coupons/edit?id=11\"><b>summer splash.</b></a>', 0, '2018-04-03 14:47:55'),
(213, 'admin', 'locations', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=17\"><b>oak launge.</b></a>', 0, '2018-04-03 14:51:30'),
(214, 'admin', 'menus', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/menus/edit?id=20\"><b>Pooran poli.</b></a>', 0, '2018-04-03 14:52:09'),
(215, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=17\"><b>oak launge.</b></a>', 0, '2018-04-03 14:54:04'),
(216, 'admin', 'coupons', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> coupon <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/coupons/edit?id=12\"><b>35%OFF.</b></a>', 0, '2018-04-03 15:02:42'),
(217, 'admin', 'coupons', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> coupon <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/coupons/edit?id=12\"><b>35%OFF.</b></a>', 0, '2018-04-03 15:02:45'),
(218, 'admin', 'tables', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> table <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/tables/edit\"><b>royal.</b></a>', 0, '2018-04-03 15:04:28'),
(219, 'admin', 'tables', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> table <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/tables/edit?id=17\"><b>royal.</b></a>', 0, '2018-04-03 15:04:34'),
(220, 'main', 'customers', 'staff', 13, 'registered', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/customers/edit?id=13\">Sandeep Patel</a> <b>registered</b> an <b>account.</b>', 0, '2018-04-03 15:05:41'),
(221, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-04-03 19:32:41'),
(222, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-04-04 15:31:54'),
(223, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-04-07 13:56:47'),
(224, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-04-09 22:41:33'),
(225, 'admin', 'inventory', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/items/edit?id=2\"><b>Rice.</b></a>', 0, '2018-04-09 23:11:29'),
(226, 'admin', 'inventory', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/items/edit?id=2\"><b>Rice.</b></a>', 0, '2018-04-09 23:11:55'),
(227, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-04-09 23:21:25'),
(228, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-04-10 15:22:54'),
(229, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-04-11 12:06:52'),
(230, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-04-11 12:08:05'),
(231, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-04-11 12:08:38'),
(232, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-04-11 17:02:03'),
(233, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-04-11 22:03:11'),
(234, 'admin', 'inventory', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/items/edit?id=2\"><b>Rice.</b></a>', 0, '2018-04-11 22:41:40'),
(235, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-04-11 23:11:29'),
(236, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-04-12 01:07:47'),
(237, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-04-12 01:42:49'),
(238, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-04-12 13:01:31'),
(239, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-04-12 13:03:54'),
(240, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-04-14 14:20:55'),
(241, 'admin', 'inventory', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/items/edit?id=2\"><b>Rice.</b></a>', 0, '2018-04-14 14:22:19'),
(242, 'admin', 'inventory', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/items/edit?id=2\"><b>Rice.</b></a>', 0, '2018-04-14 14:22:46'),
(243, 'module', 'orders', 'staff', 0, 'created', 'Alhad Deshpande <b>created</b> a new order <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/orders/edit?id=20004\"><b>#20004.</b></a>', 0, '2018-04-14 14:24:08'),
(244, 'admin', 'orders', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> order <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/orders/edit?id=20004\"><b>#20004.</b></a>', 0, '2018-04-14 14:24:35'),
(245, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-04-14 15:54:15'),
(246, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-04-14 15:54:35'),
(247, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-04-14 22:32:49'),
(248, 'admin', 'orders', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> order <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/orders/edit?id=20004\"><b>#20004.</b></a>', 0, '2018-04-14 22:41:17'),
(249, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-04-15 14:36:46'),
(250, 'admin', 'inventory', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/items/edit?id=2\"><b>Rice.</b></a>', 0, '2018-04-15 14:36:53'),
(251, 'admin', 'orders', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> order <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/orders/edit?id=20004\"><b>#20004.</b></a>', 0, '2018-04-15 14:37:45'),
(252, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-04-15 14:37:59'),
(253, 'module', 'orders', 'staff', 0, 'created', 'aman puranik <b>created</b> a new order <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/orders/edit?id=20005\"><b>#20005.</b></a>', 0, '2018-04-16 10:58:49');
INSERT INTO `ok_activities` (`activity_id`, `domain`, `context`, `user`, `user_id`, `action`, `message`, `status`, `date_added`) VALUES
(254, 'admin', 'orders', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> order <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/orders/edit?id=20005\"><b>#20005.</b></a>', 0, '2018-04-16 10:59:44'),
(255, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-04-16 12:14:06'),
(256, 'admin', 'inventory', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/items/edit?id=2\"><b>Rice.</b></a>', 0, '2018-04-16 12:18:18'),
(257, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-04-16 14:38:21'),
(258, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=15\"><b>Demo Smart Restro.</b></a>', 0, '2018-04-16 14:49:28'),
(259, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=15\"><b>Demo Smart Restro.</b></a>', 0, '2018-04-16 14:52:56'),
(260, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-04-16 20:16:27'),
(261, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-04-17 10:10:24'),
(262, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-04-17 10:14:56'),
(263, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-04-18 20:08:57'),
(264, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-04-21 18:08:19'),
(265, 'admin', 'inventory', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/items/edit?id=2\"><b>Rice.</b></a>', 0, '2018-04-21 18:11:15'),
(266, 'module', 'orders', 'staff', 0, 'created', 'Sachin Dharia <b>created</b> a new order <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/orders/edit?id=20006\"><b>#20006.</b></a>', 0, '2018-04-21 18:14:40'),
(267, 'admin', 'orders', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> order <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/orders/edit?id=20006\"><b>#20006.</b></a>', 0, '2018-04-21 18:15:57'),
(268, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-04-21 22:15:41'),
(269, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-04-23 19:23:32'),
(270, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-04-23 22:33:10'),
(271, 'main', 'customers', 'customer', 12, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/customers/edit?id=12\">vijay kumar</a> <b>logged</b> in.', 0, '2018-05-02 14:25:34'),
(272, 'main', 'customers', 'customer', 12, 'updated', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/customers/edit?id=12\">vijay kumar</a> <b>updated</b> their <b>account details.</b>', 0, '2018-05-02 14:27:00'),
(273, 'main', 'customers', 'customer', 12, 'updated', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/customers/edit?id=12\">vijay kumar</a> <b>changed</b> their <b>account password.</b>', 0, '2018-05-02 14:27:00'),
(274, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-05-07 10:58:38'),
(275, 'module', 'orders', 'staff', 0, 'created', 'aman puranik <b>created</b> a new order <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/orders/edit?id=20007\"><b>#20007.</b></a>', 0, '2018-05-07 11:24:33'),
(276, 'admin', 'orders', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> order <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/orders/edit?id=20007\"><b>#20007.</b></a>', 0, '2018-05-07 11:25:18'),
(277, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-05-07 12:06:54'),
(278, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-05-07 12:21:11'),
(279, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-05-07 12:22:28'),
(280, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-05-07 12:52:11'),
(281, 'admin', 'locations', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=18\"><b>foodista.</b></a>', 0, '2018-05-07 12:52:55'),
(282, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=18\"><b>foodista.</b></a>', 0, '2018-05-07 12:53:21'),
(283, 'module', 'extensions', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> payment extension <b>Cash On Delivery.</b>', 0, '2018-05-07 12:55:40'),
(284, 'module', 'extensions', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> payment extension <b>Cash On Delivery.</b>', 0, '2018-05-07 12:55:44'),
(285, 'admin', 'tables', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> table <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/tables/edit\"><b>Alfa.</b></a>', 0, '2018-05-07 12:57:22'),
(286, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-05-07 17:12:39'),
(287, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-05-07 17:16:20'),
(288, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-05-07 19:59:17'),
(289, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-05-07 23:20:45'),
(290, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-05-08 09:41:49'),
(291, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-05-09 09:47:13'),
(292, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-05-09 17:53:53'),
(293, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-05-09 17:53:54'),
(294, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-05-11 12:22:56'),
(295, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-05-12 14:56:21'),
(296, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-05-13 18:38:59'),
(297, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-05-13 19:45:37'),
(298, 'admin', 'staffs', 'staff', 11, 'updated their', 'Admin OnlineKatta <b>updated their</b> staff <b>details.</b>', 0, '2018-05-13 19:46:05'),
(299, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-05-13 19:46:09'),
(300, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-05-13 19:46:30'),
(301, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-05-13 19:46:58'),
(302, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-05-14 11:48:31'),
(303, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-05-14 12:36:55'),
(304, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-05-15 14:29:00'),
(305, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-05-15 17:22:33'),
(306, 'main', 'customers', 'staff', 14, 'registered', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/customers/edit?id=14\">tanuja ghodekar</a> <b>registered</b> an <b>account.</b>', 0, '2018-05-17 16:07:12'),
(307, 'main', 'customers', 'customer', 14, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/customers/edit?id=14\">tanuja ghodekar</a> <b>logged</b> in.', 0, '2018-05-17 16:07:21'),
(308, 'module', 'orders', 'customer', 14, 'created', 'tanuja ghodekar <b>created</b> a new order <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/orders/edit?id=20008\"><b>#20008.</b></a>', 0, '2018-05-17 16:09:50'),
(309, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-05-19 13:13:36'),
(310, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-05-19 14:29:25'),
(311, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-05-23 15:21:01'),
(312, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-05-24 10:13:04'),
(313, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-05-24 10:44:12'),
(314, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-05-24 10:46:14'),
(315, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-05-24 10:48:19'),
(316, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-05-24 11:11:50'),
(317, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-05-24 11:45:44'),
(318, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-05-24 12:05:06'),
(319, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-05-25 12:55:50'),
(320, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"http://onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-05-25 15:31:48'),
(321, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-05-26 11:06:23'),
(322, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-05-26 11:10:46'),
(323, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-05-26 11:11:43'),
(324, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-05-26 11:21:04'),
(325, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-05-26 14:06:27'),
(326, 'admin', 'menus', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/menus/edit?id=11\"><b>idli idli idliidliidliidliidliidliidliidliidliidliidliidliidliidliidliidliidliidliidliidliidliidliidliidliidli.</b></a>', 0, '2018-05-26 14:09:32'),
(327, 'admin', 'orders', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> order <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/orders/edit?id=20007\"><b>#20007.</b></a>', 0, '2018-05-26 14:10:08'),
(328, 'admin', 'orders', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> order <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/orders/edit?id=20007\"><b>#20007.</b></a>', 0, '2018-05-26 14:10:22'),
(329, 'admin', 'orders', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> order <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/orders/edit?id=20013\"><b>#20013.</b></a>', 0, '2018-05-26 14:18:21'),
(330, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-05-26 14:25:35'),
(331, 'admin', 'menus', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/menus/edit?id=11\"><b>idli idli idliidliidli idliidliidliidliidliid liidl iidliidl iidliidlii dliidli idliidliid liidliidliidliidliidliidli.</b></a>', 0, '2018-05-26 14:30:45'),
(332, 'admin', 'orders', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> order <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/orders/edit?id=20013\"><b>#20013.</b></a>', 0, '2018-05-26 14:31:03'),
(333, 'admin', 'orders', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> order <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/orders/edit?id=20013\"><b>#20013.</b></a>', 0, '2018-05-26 14:31:15'),
(334, 'admin', 'orders', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> order <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/orders/edit?id=20014\"><b>#20014.</b></a>', 0, '2018-05-26 14:32:57'),
(335, 'admin', 'orders', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> order <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/orders/edit?id=20015\"><b>#20015.</b></a>', 0, '2018-05-26 14:41:28'),
(336, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"http://onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-05-26 14:43:10'),
(337, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-05-26 14:49:04'),
(338, 'admin', 'menus', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/menus/edit?id=11\"><b>idliidliidliidliidliidliidliidliidliidliidliidliidliidliidliidliidliidliidliidliidliidliidliidliidliidliidli.</b></a>', 0, '2018-05-26 14:50:54'),
(339, 'admin', 'orders', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> order <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/orders/edit?id=20016\"><b>#20016.</b></a>', 0, '2018-05-26 14:51:48'),
(340, 'admin', 'menus', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> menu item <a href=\"http://onlinekatta.com/Smart-Resto-demo/admin/menus/edit?id=14\"><b>egg biryani egg biryani egg biryani egg biryani egg biryani egg biryani.</b></a>', 0, '2018-05-26 15:30:58'),
(341, 'admin', 'orders', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> order <a href=\"http://onlinekatta.com/Smart-Resto-demo/admin/orders/edit?id=20017\"><b>#20017.</b></a>', 0, '2018-05-26 15:31:51'),
(342, 'admin', 'menus', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> menu item <a href=\"http://onlinekatta.com/Smart-Resto-demo/admin/menus/edit?id=21\"><b>Samosa Samosa SamosaSamosaSamosaSamosaSamosaSamosa.</b></a>', 0, '2018-05-26 15:38:27'),
(343, 'admin', 'orders', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> order <a href=\"http://onlinekatta.com/Smart-Resto-demo/admin/orders/edit?id=20018\"><b>#20018.</b></a>', 0, '2018-05-26 15:40:51'),
(344, 'admin', 'orders', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> order <a href=\"http://onlinekatta.com/Smart-Resto-demo/admin/orders/edit?id=20019\"><b>#20019.</b></a>', 0, '2018-05-26 15:47:36'),
(345, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"http://onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-05-26 16:45:51'),
(346, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-05-29 13:48:42'),
(347, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-05-29 14:00:44'),
(348, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-05-29 14:09:56'),
(349, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"http://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-05-29 15:45:26'),
(350, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"http://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-05-29 18:24:32'),
(351, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-05-29 18:31:25'),
(352, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-05-30 09:22:52'),
(353, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-05-30 14:06:06'),
(354, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-05-31 11:35:58'),
(355, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-05-31 15:21:01'),
(356, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-05-31 16:43:57'),
(357, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-06-01 10:16:38'),
(358, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-06-02 11:28:09'),
(359, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-06-04 13:24:08'),
(360, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-06-05 12:51:05'),
(361, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-06-05 17:57:17'),
(362, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-06-05 18:20:50'),
(363, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-06-06 11:37:13'),
(364, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-06-06 13:59:44'),
(365, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-06-06 14:32:45'),
(366, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-06-06 15:02:56'),
(367, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-06-06 15:23:27'),
(368, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-06-06 17:01:37'),
(369, 'admin', 'menus', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/menus/edit?id=11\"><b>idliidliidliidliidliidliidliidliidliidliidliidliidliidliidliidliidliidliidliidliidliidliidliidliidliidliidli.</b></a>', 0, '2018-06-07 14:49:47'),
(370, 'admin', 'menus', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/menus/edit?id=12\"><b>dosa.</b></a>', 0, '2018-06-07 14:50:04'),
(371, 'admin', 'menus', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/menus/edit?id=14\"><b>egg biryani egg biryani egg biryani egg biryani egg biryani egg biryani.</b></a>', 0, '2018-06-07 14:50:22'),
(372, 'admin', 'menus', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/menus/edit?id=13\"><b>veg biryani.</b></a>', 0, '2018-06-07 14:50:40'),
(373, 'admin', 'menus', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/menus/edit?id=11\"><b>idli.</b></a>', 0, '2018-06-07 14:50:56'),
(374, 'admin', 'menus', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/menus/edit?id=14\"><b>egg biryani.</b></a>', 0, '2018-06-07 14:51:06'),
(375, 'admin', 'menus', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/menus/edit?id=15\"><b>murg biryani.</b></a>', 0, '2018-06-07 14:51:20'),
(376, 'admin', 'menus', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/menus/edit?id=20\"><b>Pooran poli.</b></a>', 0, '2018-06-07 14:51:35'),
(377, 'admin', 'menus', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/menus/edit?id=19\"><b>momos.</b></a>', 0, '2018-06-07 14:51:51'),
(378, 'admin', 'menus', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/menus/edit?id=16\"><b>chole bhature.</b></a>', 0, '2018-06-07 14:52:20'),
(379, 'admin', 'menus', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/menus/edit?id=17\"><b>kachori samosa.</b></a>', 0, '2018-06-07 14:52:29'),
(380, 'admin', 'menus', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/menus/edit?id=21\"><b>Samosa.</b></a>', 0, '2018-06-07 14:52:40'),
(381, 'admin', 'orders', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> order <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/orders/edit?id=20020\"><b>#20020.</b></a>', 0, '2018-06-07 14:55:20'),
(382, 'admin', 'orders', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> order <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/orders/edit?id=20021\"><b>#20021.</b></a>', 0, '2018-06-07 14:58:20'),
(383, 'admin', 'inventory', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/items/edit?id=3\"><b>Tomatos.</b></a>', 0, '2018-06-07 15:10:28'),
(384, 'admin', 'inventory', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/items/edit?id=4\"><b>main kakat.</b></a>', 0, '2018-06-07 15:17:56'),
(385, 'admin', 'menus', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/menus/edit?id=11\"><b>idli.</b></a>', 0, '2018-06-07 15:20:03'),
(386, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-06-07 17:26:50'),
(387, 'admin', 'menus', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/menus/edit?id=11\"><b>idli.</b></a>', 0, '2018-06-07 17:40:23'),
(388, 'admin', 'inventory', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/items/edit?id=5\"><b>potatos.</b></a>', 0, '2018-06-08 13:32:48'),
(389, 'admin', 'orders', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> order <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/orders/edit?id=20022\"><b>#20022.</b></a>', 0, '2018-06-08 13:34:32'),
(390, 'admin', 'menus', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/menus/edit?id=22\"><b>Beans Meal.</b></a>', 0, '2018-06-08 14:48:47'),
(391, 'admin', 'orders', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> order <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/orders/edit?id=20023\"><b>#20023.</b></a>', 0, '2018-06-08 14:53:43'),
(392, 'admin', 'inventory', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/items/edit?id=6\"><b>Beans.</b></a>', 0, '2018-06-08 14:56:24'),
(393, 'admin', 'inventory', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/items/edit?id=6\"><b>Beans.</b></a>', 0, '2018-06-08 14:56:54'),
(394, 'admin', 'orders', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> order <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/orders/edit?id=20024\"><b>#20024.</b></a>', 0, '2018-06-08 14:57:59'),
(395, 'admin', 'inventory', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/items/edit?id=6\"><b>Beans.</b></a>', 0, '2018-06-08 16:58:56'),
(396, 'admin', 'inventory', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/items/edit?id=2\"><b>Rice.</b></a>', 0, '2018-06-08 18:14:41'),
(397, 'admin', 'inventory', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/items/edit?id=2\"><b>Rice.</b></a>', 0, '2018-06-08 18:15:41'),
(398, 'admin', 'inventory', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/items/edit?id=6\"><b>Beans.</b></a>', 0, '2018-06-08 18:16:07'),
(399, 'admin', 'inventory', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/items/edit?id=7\"><b>Chicken.</b></a>', 0, '2018-06-08 18:17:47'),
(400, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-06-09 11:05:05'),
(401, 'admin', 'orders', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> order <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/orders/edit?id=20007\"><b>#20007.</b></a>', 0, '2018-06-09 11:18:35'),
(402, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-06-09 16:01:20'),
(403, 'admin', 'menus', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/menus/edit?id=11\"><b>idli.</b></a>', 0, '2018-06-09 16:29:37'),
(404, 'admin', 'orders', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> order <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/orders/edit?id=20025\"><b>#20025.</b></a>', 0, '2018-06-09 16:31:47'),
(405, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-06-11 12:13:58'),
(406, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-06-11 12:22:01'),
(407, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-06-13 11:37:16'),
(408, 'module', 'extensions', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> module extension <b>Slideshow.</b>', 0, '2018-06-13 12:18:28'),
(409, 'module', 'extensions', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> module extension <b>Slideshow.</b>', 0, '2018-06-13 12:20:17'),
(410, 'module', 'extensions', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> module extension <b>Slideshow.</b>', 0, '2018-06-13 12:21:12'),
(411, 'module', 'extensions', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> module extension <b>Slideshow.</b>', 0, '2018-06-13 12:22:42'),
(412, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-06-13 14:56:01'),
(413, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-06-14 12:13:21'),
(414, 'admin', 'locations', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=19\"><b>Payal.</b></a>', 0, '2018-06-14 13:32:30'),
(415, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=19\"><b>Payal.</b></a>', 0, '2018-06-14 13:33:19'),
(416, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=19\"><b>Payal.</b></a>', 0, '2018-06-14 13:33:24'),
(417, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=19\"><b>Payal.</b></a>', 0, '2018-06-14 17:14:48'),
(418, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-06-15 16:44:00'),
(419, 'admin', 'staffs', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> staff <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit\"><b>Nikhil.</b></a>', 0, '2018-06-15 16:50:43'),
(420, 'admin', 'staffs', 'staff', 14, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=14\">Nikhil</a> <b>logged</b> in.', 0, '2018-06-15 16:51:13'),
(421, 'module', 'orders', 'staff', 0, 'created', 'Prajyot Dhanokar <b>created</b> a new order <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/orders/edit?id=20026\"><b>#20026.</b></a>', 0, '2018-06-15 16:57:40'),
(422, 'admin', 'tables', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> table <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/tables/edit\"><b>got1.</b></a>', 0, '2018-06-15 16:59:45'),
(423, 'admin', 'orders', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> order <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/orders/edit?id=20026\"><b>#20026.</b></a>', 0, '2018-06-15 17:08:40'),
(424, 'admin', 'orders', 'staff', 11, 'assigned', 'Admin OnlineKatta <b>assigned</b> order <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/orders/edit?id=20026\"><b>#20026</b></a> to <b><a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=13\">cook1</a>.</b>', 0, '2018-06-15 17:08:40'),
(425, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-06-16 11:12:04'),
(426, 'admin', 'inventory', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/items/edit?id=8\"><b>lemongrass.</b></a>', 0, '2018-06-16 11:32:25'),
(427, 'admin', 'inventory', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/items/edit?id=9\"><b>Mustard.</b></a>', 0, '2018-06-16 11:33:18'),
(428, 'admin', 'inventory', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/items/edit?id=10\"><b>Garam massala.</b></a>', 0, '2018-06-16 11:33:51'),
(429, 'admin', 'inventory', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/items/edit?id=11\"><b>Saffron.</b></a>', 0, '2018-06-16 11:34:21'),
(430, 'admin', 'inventory', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/items/edit?id=12\"><b>Rosemary.</b></a>', 0, '2018-06-16 11:34:55'),
(431, 'admin', 'inventory', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/items/edit?id=13\"><b>Spinach.</b></a>', 0, '2018-06-16 11:35:25'),
(432, 'admin', 'inventory', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/items/edit?id=14\"><b>Pepper.</b></a>', 0, '2018-06-16 11:36:01'),
(433, 'admin', 'inventory', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/items/edit?id=15\"><b>Chilly.</b></a>', 0, '2018-06-16 11:36:45'),
(434, 'admin', 'inventory', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/items/edit?id=16\"><b>Garlic.</b></a>', 0, '2018-06-16 11:37:27'),
(435, 'admin', 'inventory', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/items/edit?id=17\"><b>Resin.</b></a>', 0, '2018-06-16 11:38:00'),
(436, 'admin', 'inventory', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/items/edit?id=18\"><b>Celery.</b></a>', 0, '2018-06-16 11:38:36'),
(437, 'admin', 'inventory', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/items/edit?id=19\"><b>Oil.</b></a>', 0, '2018-06-16 11:39:31'),
(438, 'admin', 'inventory', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/items/edit?id=4\"><b>Onions.</b></a>', 0, '2018-06-16 11:40:23'),
(439, 'admin', 'inventory', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/items/edit?id=4\"><b>Onions.</b></a>', 0, '2018-06-16 11:40:38'),
(440, 'admin', 'inventory', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/items/edit?id=20\"><b>Lemon.</b></a>', 0, '2018-06-16 11:41:05'),
(441, 'admin', 'inventory', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/items/edit?id=19\"><b>Oil.</b></a>', 0, '2018-06-16 11:41:15'),
(442, 'admin', 'inventory', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/items/edit?id=8\"><b>Lemongrass.</b></a>', 0, '2018-06-16 11:41:38'),
(443, 'admin', 'inventory', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/items/edit?id=7\"><b>Chicken.</b></a>', 0, '2018-06-16 11:42:04'),
(444, 'admin', 'inventory', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/items/edit?id=2\"><b>Rice.</b></a>', 0, '2018-06-16 11:45:41'),
(445, 'admin', 'orders', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> order <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/orders/edit?id=20027\"><b>#20027.</b></a>', 0, '2018-06-16 11:46:37'),
(446, 'module', 'orders', 'staff', 0, 'created', 'Safari Mupe <b>created</b> a new order <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/orders/edit?id=20028\"><b>#20028.</b></a>', 0, '2018-06-16 11:49:43'),
(447, 'admin', 'orders', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> order <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/orders/edit?id=20028\"><b>#20028.</b></a>', 0, '2018-06-16 11:50:55'),
(448, 'admin', 'orders', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> order <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/orders/edit?id=20028\"><b>#20028.</b></a>', 0, '2018-06-16 11:51:11'),
(449, 'admin', 'inventory', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/items/edit?id=2\"><b>Rice.</b></a>', 0, '2018-06-16 11:51:58'),
(450, 'admin', 'inventory', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/items/edit?id=2\"><b>Rice.</b></a>', 0, '2018-06-16 11:59:28'),
(451, 'admin', 'inventory', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/items/edit?id=5\"><b>Potatos.</b></a>', 0, '2018-06-16 11:59:47'),
(452, 'admin', 'inventory', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/items/edit?id=4\"><b>Onions.</b></a>', 0, '2018-06-16 12:01:28'),
(453, 'admin', 'inventory', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/items/edit?id=5\"><b>Potatos.</b></a>', 0, '2018-06-16 12:01:42'),
(454, 'admin', 'inventory', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/items/edit?id=4\"><b>Onions.</b></a>', 0, '2018-06-16 12:01:52'),
(455, 'admin', 'inventory', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/items/edit?id=2\"><b>Rice.</b></a>', 0, '2018-06-16 12:02:08'),
(456, 'admin', 'menus', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/menus/edit?id=23\"><b>Chicken Fried Rice.</b></a>', 0, '2018-06-16 12:03:50'),
(457, 'admin', 'menus', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/menus/edit?id=11\"><b>idli.</b></a>', 0, '2018-06-16 12:18:20'),
(458, 'admin', 'menus', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/menus/edit?id=12\"><b>dosa.</b></a>', 0, '2018-06-16 12:18:32'),
(459, 'admin', 'menus', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/menus/edit?id=13\"><b>veg biryani.</b></a>', 0, '2018-06-16 12:18:42'),
(460, 'admin', 'menus', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/menus/edit?id=14\"><b>egg biryani.</b></a>', 0, '2018-06-16 12:18:53'),
(461, 'admin', 'menus', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/menus/edit?id=15\"><b>murg biryani.</b></a>', 0, '2018-06-16 12:19:06'),
(462, 'admin', 'menus', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/menus/edit?id=23\"><b>Chicken Fried Rice.</b></a>', 0, '2018-06-16 12:19:18'),
(463, 'admin', 'menus', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/menus/edit?id=22\"><b>Beans Meal.</b></a>', 0, '2018-06-16 12:19:28'),
(464, 'admin', 'menus', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/menus/edit?id=21\"><b>Samosa.</b></a>', 0, '2018-06-16 12:19:44'),
(465, 'admin', 'menus', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/menus/edit?id=12\"><b>dosa.</b></a>', 0, '2018-06-16 12:19:55'),
(466, 'admin', 'menus', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/menus/edit?id=13\"><b>veg biryani.</b></a>', 0, '2018-06-16 12:20:05'),
(467, 'admin', 'menus', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/menus/edit?id=13\"><b>Veg biryani.</b></a>', 0, '2018-06-16 12:20:18'),
(468, 'admin', 'menus', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/menus/edit?id=12\"><b>Dosa.</b></a>', 0, '2018-06-16 12:20:39'),
(469, 'admin', 'menus', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/menus/edit?id=20\"><b>Pooran poli.</b></a>', 0, '2018-06-16 12:21:05'),
(470, 'admin', 'menus', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/menus/edit?id=16\"><b>chole bhature.</b></a>', 0, '2018-06-16 12:21:27'),
(471, 'admin', 'menus', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/menus/edit?id=17\"><b>kachori samosa.</b></a>', 0, '2018-06-16 12:22:45'),
(472, 'module', 'orders', 'staff', 0, 'created', 'Safarin Mupe <b>created</b> a new order <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/orders/edit?id=20029\"><b>#20029.</b></a>', 0, '2018-06-16 12:27:03'),
(473, 'admin', 'orders', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> order <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/orders/edit?id=20029\"><b>#20029.</b></a>', 0, '2018-06-16 12:27:36'),
(474, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-06-16 14:27:42'),
(475, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-06-18 17:54:17'),
(476, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-06-18 19:36:42'),
(477, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=19\"><b>Payal.</b></a>', 0, '2018-06-18 20:54:56'),
(478, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=19\"><b>Payal Resto.</b></a>', 0, '2018-06-18 20:55:07'),
(479, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-06-18 20:56:30'),
(480, 'admin', 'orders', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> order <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/orders/edit?id=20031\"><b>#20031.</b></a>', 0, '2018-06-18 20:59:06'),
(481, 'admin', 'orders', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> order <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/orders/edit?id=20030\"><b>#20030.</b></a>', 0, '2018-06-18 21:05:22'),
(482, 'admin', 'orders', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> order <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/orders/edit?id=20033\"><b>#20033.</b></a>', 0, '2018-06-18 21:14:53'),
(483, 'admin', 'orders', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> order <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/orders/edit?id=20033\"><b>#20033.</b></a>', 0, '2018-06-18 21:16:45'),
(484, 'admin', 'orders', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> order <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/orders/edit?id=20033\"><b>#20033.</b></a>', 0, '2018-06-18 23:32:18'),
(485, 'admin', 'orders', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> order <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/orders/edit?id=20033\"><b>#20033.</b></a>', 0, '2018-06-18 23:32:49'),
(486, 'admin', 'orders', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> order <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/orders/edit?id=20034\"><b>#20034.</b></a>', 0, '2018-06-18 23:40:51'),
(487, 'admin', 'inventory', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/items/edit?id=2\"><b>Rice.</b></a>', 0, '2018-06-18 23:44:46');
INSERT INTO `ok_activities` (`activity_id`, `domain`, `context`, `user`, `user_id`, `action`, `message`, `status`, `date_added`) VALUES
(488, 'admin', 'inventory', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/items/edit?id=2\"><b>Rice.</b></a>', 0, '2018-06-18 23:45:03'),
(489, 'admin', 'orders', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> order <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/orders/edit?id=20035\"><b>#20035.</b></a>', 0, '2018-06-18 23:46:28'),
(490, 'admin', 'inventory', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/items/edit?id=2\"><b>Rice.</b></a>', 0, '2018-06-18 23:47:24'),
(491, 'admin', 'orders', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> order <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/orders/edit?id=20036\"><b>#20036.</b></a>', 0, '2018-06-18 23:48:55'),
(492, 'admin', 'inventory', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/items/edit?id=2\"><b>Rice.</b></a>', 0, '2018-06-18 23:50:21'),
(493, 'admin', 'orders', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> order <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/orders/edit?id=20038\"><b>#20038.</b></a>', 0, '2018-06-19 00:12:39'),
(494, 'admin', 'orders', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> order <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/orders/edit?id=20039\"><b>#20039.</b></a>', 0, '2018-06-19 09:46:18'),
(495, 'admin', 'orders', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> order <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/orders/edit?id=20040\"><b>#20040.</b></a>', 0, '2018-06-19 10:57:54'),
(496, 'admin', 'orders', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> order <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/orders/edit?id=20041\"><b>#20041.</b></a>', 0, '2018-06-19 11:03:34'),
(497, 'admin', 'orders', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> order <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/orders/edit?id=20042\"><b>#20042.</b></a>', 0, '2018-06-19 11:06:58'),
(498, 'admin', 'orders', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> order <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/orders/edit?id=20043\"><b>#20043.</b></a>', 0, '2018-06-19 11:12:39'),
(499, 'admin', 'orders', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> order <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/orders/edit?id=20044\"><b>#20044.</b></a>', 0, '2018-06-19 11:16:28'),
(500, 'admin', 'orders', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> order <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/orders/edit?id=20045\"><b>#20045.</b></a>', 0, '2018-06-19 11:17:13'),
(501, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-06-19 11:23:42'),
(502, 'admin', 'orders', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> order <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/orders/edit?id=20046\"><b>#20046.</b></a>', 0, '2018-06-19 11:27:35'),
(503, 'admin', 'orders', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> order <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/orders/edit?id=20047\"><b>#20047.</b></a>', 0, '2018-06-19 11:33:04'),
(504, 'admin', 'orders', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> order <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/orders/edit?id=20048\"><b>#20048.</b></a>', 0, '2018-06-19 11:43:08'),
(505, 'admin', 'orders', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> order <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/orders/edit?id=20049\"><b>#20049.</b></a>', 0, '2018-06-19 11:45:43'),
(506, 'admin', 'orders', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> order <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/orders/edit?id=20050\"><b>#20050.</b></a>', 0, '2018-06-19 12:16:04'),
(507, 'admin', 'orders', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> order <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/orders/edit?id=20051\"><b>#20051.</b></a>', 0, '2018-06-19 12:31:58'),
(508, 'admin', 'orders', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> order <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/orders/edit?id=20052\"><b>#20052.</b></a>', 0, '2018-06-19 12:35:13'),
(509, 'admin', 'orders', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> order <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/orders/edit?id=20053\"><b>#20053.</b></a>', 0, '2018-06-19 12:38:30'),
(510, 'admin', 'menus', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/menus/edit?id=24\"><b>Chikech kabuli.</b></a>', 0, '2018-06-19 13:30:28'),
(511, 'admin', 'inventory', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/items/edit?id=2\"><b>Rice.</b></a>', 0, '2018-06-19 13:32:19'),
(512, 'admin', 'inventory', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/items/edit?id=21\"><b>Sauce Red.</b></a>', 0, '2018-06-19 13:33:09'),
(513, 'admin', 'inventory', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/items/edit?id=21\"><b>Sauce Red.</b></a>', 0, '2018-06-19 13:34:20'),
(514, 'admin', 'inventory', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/items/edit?id=21\"><b>Sauce Red.</b></a>', 0, '2018-06-19 13:35:33'),
(515, 'admin', 'orders', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> order <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/orders/edit?id=20054\"><b>#20054.</b></a>', 0, '2018-06-19 13:39:05'),
(516, 'admin', 'inventory', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/items/edit?id=21\"><b>Sauce Red.</b></a>', 0, '2018-06-19 13:41:16'),
(517, 'admin', 'orders', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> order <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/orders/edit?id=20055\"><b>#20055.</b></a>', 0, '2018-06-19 13:42:16'),
(518, 'admin', 'orders', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> order <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/orders/edit?id=20056\"><b>#20056.</b></a>', 0, '2018-06-19 13:51:32'),
(519, 'admin', 'orders', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> order <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/orders/edit?id=20057\"><b>#20057.</b></a>', 0, '2018-06-19 13:56:40'),
(520, 'admin', 'inventory', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/items/edit?id=22\"><b>Honey.</b></a>', 0, '2018-06-19 14:25:18'),
(521, 'admin', 'inventory', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/items/edit?id=22\"><b>Honey.</b></a>', 0, '2018-06-19 14:25:57'),
(522, 'admin', 'inventory', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/items/edit?id=23\"><b>test.</b></a>', 0, '2018-06-19 14:44:22'),
(523, 'admin', 'inventory', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/items/edit?id=24\"><b>Eggs.</b></a>', 0, '2018-06-19 15:14:52'),
(524, 'admin', 'inventory', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/items/edit?id=23\"><b>Masala Rice Powder.</b></a>', 0, '2018-06-19 15:15:56'),
(525, 'admin', 'menus', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/menus/edit?id=25\"><b>French Rice.</b></a>', 0, '2018-06-19 15:17:03'),
(526, 'admin', 'orders', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> order <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/orders/edit?id=20059\"><b>#20059.</b></a>', 0, '2018-06-19 15:27:16'),
(527, 'admin', 'orders', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> order <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/orders/edit?id=20060\"><b>#20060.</b></a>', 0, '2018-06-19 15:48:10'),
(528, 'admin', 'orders', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> order <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/orders/edit?id=20061\"><b>#20061.</b></a>', 0, '2018-06-19 15:52:39'),
(529, 'admin', 'orders', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> order <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/orders/edit?id=20062\"><b>#20062.</b></a>', 0, '2018-06-19 15:57:10'),
(530, 'admin', 'inventory', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/items/edit?id=5\"><b>Potatos.</b></a>', 0, '2018-06-19 15:58:37'),
(531, 'admin', 'inventory', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/items/edit?id=25\"><b>Chilly green.</b></a>', 0, '2018-06-19 16:08:57'),
(532, 'admin', 'orders', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> order <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/orders/edit?id=20063\"><b>#20063.</b></a>', 0, '2018-06-19 16:10:26'),
(533, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-06-22 14:51:21'),
(534, 'admin', 'menus', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> menu item <a href=\"https://onlinekatta.com/Smart-Resto-demo/admin/menus/edit?id=11\"><b>idli.</b></a>', 0, '2018-06-25 15:04:14'),
(535, 'admin', 'menus', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> menu item <a href=\"https://onlinekatta.com/Smart-Resto-demo/admin/menus/edit?id=11\"><b>Idli.</b></a>', 0, '2018-06-25 15:23:37'),
(536, 'admin', 'menus', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> menu item <a href=\"https://onlinekatta.com/Smart-Resto-demo/admin/menus/edit?id=11\"><b>Idli.</b></a>', 0, '2018-06-25 15:27:19'),
(537, 'admin', 'menus', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> menu item <a href=\"https://onlinekatta.com/Smart-Resto-demo/admin/menus/edit?id=11\"><b>Idli.</b></a>', 0, '2018-06-25 15:39:34'),
(538, 'admin', 'menus', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> menu item <a href=\"https://onlinekatta.com/Smart-Resto-demo/admin/menus/edit?id=11\"><b>Idli.</b></a>', 0, '2018-06-25 15:39:56'),
(539, 'admin', 'menus', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> menu item <a href=\"https://onlinekatta.com/Smart-Resto-demo/admin/menus/edit?id=11\"><b>Idli.</b></a>', 0, '2018-06-25 15:40:07'),
(540, 'module', 'orders', 'staff', 0, 'created', 'Alexander Kahn <b>created</b> a new order <a href=\"https://onlinekatta.com/Smart-Resto-demo/admin/orders/edit?id=20067\"><b>#20067.</b></a>', 0, '2018-06-25 18:27:45'),
(541, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-06-26 17:26:33'),
(542, 'admin', 'orders', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> order <a href=\"https://onlinekatta.com/Smart-Resto-demo/admin/orders/edit?id=20068\"><b>#20068.</b></a>', 0, '2018-06-26 17:36:20'),
(543, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=17\"><b>Oak Launge.</b></a>', 0, '2018-06-26 17:37:35'),
(544, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=18\"><b>Foodista.</b></a>', 0, '2018-06-26 17:38:58'),
(545, 'admin', 'menus', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> menu item <a href=\"https://onlinekatta.com/Smart-Resto-demo/admin/menus/edit?id=26\"><b>Idli.</b></a>', 0, '2018-06-26 17:40:13'),
(546, 'admin', 'menus', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> menu item <a href=\"https://onlinekatta.com/Smart-Resto-demo/admin/menus/edit?id=27\"><b>Green Tea.</b></a>', 0, '2018-06-26 17:41:07'),
(547, 'admin', 'menus', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> menu item <a href=\"https://onlinekatta.com/Smart-Resto-demo/admin/menus/edit?id=28\"><b>Chicken Masala.</b></a>', 0, '2018-06-26 17:42:42'),
(548, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-06-29 15:37:59'),
(549, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-06-29 17:09:33'),
(550, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-06-30 14:03:21'),
(551, 'admin', 'locations', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=20\"><b>Baner Braanch.</b></a>', 0, '2018-06-30 14:06:06'),
(552, 'admin', 'tables', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> table <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/tables/edit\"><b>AB12.</b></a>', 0, '2018-06-30 14:06:30'),
(553, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=20\"><b>Baner Braanch.</b></a>', 0, '2018-06-30 14:09:42'),
(554, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-06-30 19:14:23'),
(555, 'admin', 'tables', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> table <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/tables/edit?id=7\"><b>EW77.</b></a>', 0, '2018-06-30 19:20:49'),
(556, 'admin', 'tables', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> table <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/tables/edit?id=9\"><b>NE8.</b></a>', 0, '2018-06-30 19:21:01'),
(557, 'admin', 'tables', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> table <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/tables/edit?id=10\"><b>SW55.</b></a>', 0, '2018-06-30 19:21:09'),
(558, 'admin', 'tables', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> table <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/tables/edit?id=16\"><b>SSW77.</b></a>', 0, '2018-06-30 19:21:18'),
(559, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-07-03 19:35:35'),
(560, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-07-03 19:36:13'),
(561, 'admin', 'menus', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/menus/edit?id=29\"><b>Chicken Biryani.</b></a>', 0, '2018-07-03 20:53:50'),
(562, 'admin', 'inventory', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/items/edit?id=2\"><b>Rice.</b></a>', 0, '2018-07-03 20:54:30'),
(563, 'admin', 'inventory', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/items/edit?id=4\"><b>Onions.</b></a>', 0, '2018-07-03 20:56:47'),
(564, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-07-03 22:20:29'),
(565, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-07-03 22:22:21'),
(566, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-07-03 22:24:06'),
(567, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-07-03 22:41:30'),
(568, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-07-04 07:48:43'),
(569, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-07-04 07:50:49'),
(570, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-07-04 07:53:13'),
(571, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-07-04 07:55:37'),
(572, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-07-04 08:17:34'),
(573, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-07-04 09:44:34'),
(574, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-07-04 10:09:27'),
(575, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-07-04 10:11:20'),
(576, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-07-04 10:17:27'),
(577, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-07-04 10:21:01'),
(578, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-07-04 11:16:27'),
(579, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-07-04 11:18:12'),
(580, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-07-04 11:19:21'),
(581, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-07-04 12:50:29'),
(582, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-07-04 12:50:57'),
(583, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-07-04 13:01:10'),
(584, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-07-04 13:03:16'),
(585, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-07-04 13:05:09'),
(586, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-07-04 13:07:02'),
(587, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-07-04 13:08:19'),
(588, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-07-04 13:11:20'),
(589, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-07-04 13:12:21'),
(590, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-07-04 13:13:38'),
(591, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-07-04 13:16:31'),
(592, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-07-04 13:17:00'),
(593, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-07-04 13:18:10'),
(594, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-07-04 13:30:37'),
(595, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-07-04 13:32:12'),
(596, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-07-04 13:34:22'),
(597, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-07-04 13:36:07'),
(598, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-07-04 13:38:12'),
(599, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-07-04 13:39:12'),
(600, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-07-04 13:50:43'),
(601, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-07-04 13:51:12'),
(602, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-07-04 14:05:28'),
(603, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-07-04 14:05:47'),
(604, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-07-04 14:10:28'),
(605, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-07-04 14:14:29'),
(606, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-07-04 14:16:33'),
(607, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-07-04 14:17:38'),
(608, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-07-04 14:21:06'),
(609, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-07-04 14:22:22'),
(610, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-07-04 14:22:49'),
(611, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-07-04 14:23:53'),
(612, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-07-04 14:36:40'),
(613, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-07-04 14:59:33'),
(614, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-07-04 15:03:26'),
(615, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-07-04 15:04:38'),
(616, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-07-04 15:06:52'),
(617, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-07-04 15:13:23'),
(618, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-07-04 15:43:10'),
(619, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-07-04 15:43:33'),
(620, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-07-04 15:52:20'),
(621, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-07-04 15:54:17'),
(622, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-07-04 15:56:18'),
(623, 'admin', 'tables', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> table <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/tables/edit\"><b>AA43.</b></a>', 0, '2018-07-04 17:21:33'),
(624, 'admin', 'tables', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> table <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/tables/edit\"><b>AA42.</b></a>', 0, '2018-07-04 17:22:03'),
(625, 'admin', 'tables', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> table <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/tables/edit\"><b>AA43.</b></a>', 0, '2018-07-04 17:22:46'),
(626, 'admin', 'tables', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> table <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/tables/edit\"><b>Rounded Table.</b></a>', 0, '2018-07-04 17:23:22'),
(627, 'admin', 'tables', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> table <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/tables/edit\"><b>Long Bridge.</b></a>', 0, '2018-07-04 17:23:59'),
(628, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-07-04 17:28:21'),
(629, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-07-04 17:29:24'),
(630, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-07-04 18:11:30'),
(631, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-07-04 18:16:15'),
(632, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-07-04 18:17:05'),
(633, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-07-04 18:17:32'),
(634, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-07-04 18:19:30'),
(635, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-07-04 22:02:26'),
(636, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-07-04 22:03:17'),
(637, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-07-05 09:13:35'),
(638, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-07-05 09:23:07'),
(639, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-07-05 09:25:19'),
(640, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-07-05 10:32:35'),
(641, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-07-05 11:30:46'),
(642, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-07-07 16:09:35'),
(643, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-07-08 13:52:17'),
(644, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-07-09 14:19:10'),
(645, 'admin', 'orders', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> order <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/orders/edit?id=20069\"><b>#20069.</b></a>', 0, '2018-07-09 14:58:48'),
(646, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"http://onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-07-09 15:14:24'),
(647, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-07-09 15:16:00'),
(648, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"http://onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-07-09 15:19:26'),
(649, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"http://onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-07-09 15:20:58'),
(650, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"http://onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-07-10 18:22:55'),
(651, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"http://onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-07-10 18:23:11'),
(652, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"http://onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-07-10 18:24:00'),
(653, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"http://onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-07-10 18:24:35'),
(654, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"http://onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-07-10 22:57:29'),
(655, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"http://onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-07-10 22:58:18'),
(656, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"http://onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-07-10 22:58:37'),
(657, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-07-11 12:33:57'),
(658, 'admin', 'inventory', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/items/edit?id=2\"><b>Rice.</b></a>', 0, '2018-07-11 12:52:10'),
(659, 'admin', 'permissions', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> permission <b>Admin.Orders.</b>', 0, '2018-07-11 18:13:12'),
(660, 'admin', 'permissions', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> permission <b>Admin.Orders.</b>', 0, '2018-07-11 18:13:57'),
(661, 'admin', 'staffs', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> staff <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit\"><b>Safari Mupe.</b></a>', 0, '2018-07-11 18:15:28'),
(662, 'admin', 'permissions', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> permission <b>Payment.Orders.</b>', 0, '2018-07-11 18:18:18'),
(663, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-07-13 14:21:18'),
(664, 'admin', 'menus', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/menus/edit?id=30\"><b>ponga.</b></a>', 0, '2018-07-13 15:24:51'),
(665, 'admin', 'menus', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/menus/edit?id=30\"><b>Ponga.</b></a>', 0, '2018-07-13 15:27:38'),
(666, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-07-16 10:11:20'),
(667, 'admin', 'menus', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/menus/edit?id=31\"><b>vadai.</b></a>', 0, '2018-07-16 10:13:52'),
(668, 'admin', 'inventory', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/items/edit?id=26\"><b>Horse Gram.</b></a>', 0, '2018-07-16 10:42:52'),
(669, 'admin', 'inventory', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/items/edit?id=26\"><b>Horse Gram.</b></a>', 0, '2018-07-16 10:43:56'),
(670, 'admin', 'coupons', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> coupon <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/coupons/edit?id=13\"><b>CRAKING DIWALI.</b></a>', 0, '2018-07-16 11:16:26'),
(671, 'admin', 'coupons', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> coupon <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/coupons/edit?id=13\"><b>CRAKING DIWALI.</b></a>', 0, '2018-07-16 11:17:04'),
(672, 'module', 'extensions', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> payment extension <b>Cash On Delivery.</b>', 0, '2018-07-16 11:55:21'),
(673, 'admin', 'locations', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=21\"><b>KonguNadu.</b></a>', 0, '2018-07-16 12:04:09'),
(674, 'admin', 'tables', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> table <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/tables/edit\"><b>KonguNadu.</b></a>', 0, '2018-07-16 12:05:15'),
(675, 'admin', 'tables', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> table <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/tables/edit?id=26\"><b>KN001.</b></a>', 0, '2018-07-16 12:05:46'),
(676, 'admin', 'customers', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> customer <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/customers/edit?id=15\"><b>Ravi Kumar.</b></a>', 0, '2018-07-16 12:47:22'),
(677, 'admin', 'customers', 'staff', 15, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in as <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/customers/edit?id=15\">Ravi Kumar</a>.', 0, '2018-07-16 12:48:04'),
(678, 'main', 'customers', 'customer', 15, 'logged out', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/customers/edit?id=15\">Ravi Kumar</a> <b>logged</b> out.', 0, '2018-07-16 12:48:16'),
(679, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-07-16 13:10:03'),
(680, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-07-17 12:34:33'),
(681, 'admin', 'orders', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> order <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/orders/edit?id=20070\"><b>#20070.</b></a>', 0, '2018-07-17 12:41:35'),
(682, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-07-27 22:05:13'),
(683, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-07-27 22:49:30'),
(684, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-07-28 21:32:30'),
(685, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-08-03 14:28:26'),
(686, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-08-04 11:25:35'),
(687, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-08-04 11:27:36'),
(688, 'admin', 'permissions', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> permission <b>Payment.Orders.</b>', 0, '2018-08-04 11:31:49'),
(689, 'admin', 'staffs', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> staff <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit\"><b>safari05.</b></a>', 0, '2018-08-04 11:34:20'),
(690, 'admin', 'staffs', 'staff', 16, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=16\">safari05</a> <b>logged</b> in.', 0, '2018-08-04 11:34:48'),
(691, 'admin', 'staffs', 'staff', 16, 'logged out', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=16\">safari05</a> <b>logged</b> out.', 0, '2018-08-04 11:37:55'),
(692, 'admin', 'staffs', 'staff', 16, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=16\">safari05</a> <b>logged</b> in.', 0, '2018-08-04 11:38:05'),
(693, 'admin', 'staffs', 'staff', 16, 'logged out', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=16\">safari05</a> <b>logged</b> out.', 0, '2018-08-04 11:38:33'),
(694, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-08-04 11:38:57'),
(695, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-08-04 11:39:04'),
(696, 'admin', 'staffs', 'staff', 16, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=16\">safari05</a> <b>logged</b> in.', 0, '2018-08-04 11:39:15'),
(697, 'admin', 'staffs', 'staff', 16, 'logged out', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=16\">safari05</a> <b>logged</b> out.', 0, '2018-08-04 11:42:44'),
(698, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-08-04 11:42:53'),
(699, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-08-04 11:43:18'),
(700, 'admin', 'staffs', 'staff', 16, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=16\">safari05</a> <b>logged</b> in.', 0, '2018-08-04 11:43:27'),
(701, 'admin', 'staffs', 'staff', 16, 'logged out', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=16\">safari05</a> <b>logged</b> out.', 0, '2018-08-04 11:43:44'),
(702, 'admin', 'staffs', 'staff', 16, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=16\">safari05</a> <b>logged</b> in.', 0, '2018-08-04 11:43:52'),
(703, 'admin', 'staffs', 'staff', 16, 'logged out', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=16\">safari05</a> <b>logged</b> out.', 0, '2018-08-04 11:44:13'),
(704, 'admin', 'staffs', 'staff', 16, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=16\">safari05</a> <b>logged</b> in.', 0, '2018-08-04 11:44:21'),
(705, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-08-04 11:44:38'),
(706, 'admin', 'staffs', 'staff', 16, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=16\">safari05</a> <b>logged</b> in.', 0, '2018-08-04 11:44:45'),
(707, 'admin', 'staffs', 'staff', 16, 'logged out', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=16\">safari05</a> <b>logged</b> out.', 0, '2018-08-04 11:44:53'),
(708, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-08-04 11:45:01'),
(709, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-08-04 11:45:08'),
(710, 'admin', 'staffs', 'staff', 16, 'logged out', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=16\">safari05</a> <b>logged</b> out.', 0, '2018-08-04 11:46:25'),
(711, 'admin', 'staffs', 'staff', 16, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=16\">safari05</a> <b>logged</b> in.', 0, '2018-08-04 11:46:32'),
(712, 'admin', 'staffs', 'staff', 16, 'logged out', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=16\">safari05</a> <b>logged</b> out.', 0, '2018-08-04 11:47:03');
INSERT INTO `ok_activities` (`activity_id`, `domain`, `context`, `user`, `user_id`, `action`, `message`, `status`, `date_added`) VALUES
(713, 'admin', 'staffs', 'staff', 16, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=16\">safari05</a> <b>logged</b> in.', 0, '2018-08-04 11:47:10'),
(714, 'admin', 'staffs', 'staff', 16, 'logged out', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=16\">safari05</a> <b>logged</b> out.', 0, '2018-08-04 11:47:32'),
(715, 'admin', 'staffs', 'staff', 16, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=16\">safari05</a> <b>logged</b> in.', 0, '2018-08-04 11:47:39'),
(716, 'admin', 'staffs', 'staff', 16, 'logged out', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=16\">safari05</a> <b>logged</b> out.', 0, '2018-08-04 11:49:11'),
(717, 'admin', 'staffs', 'staff', 16, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=16\">safari05</a> <b>logged</b> in.', 0, '2018-08-04 11:49:17'),
(718, 'admin', 'staffs', 'staff', 16, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=16\">safari05</a> <b>logged</b> in.', 0, '2018-08-04 11:50:26'),
(719, 'admin', 'staffs', 'staff', 16, 'logged out', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=16\">safari05</a> <b>logged</b> out.', 0, '2018-08-04 11:50:31'),
(720, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-08-04 11:50:40'),
(721, 'admin', 'staffs', 'staff', 16, 'logged out', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=16\">safari05</a> <b>logged</b> out.', 0, '2018-08-04 11:58:21'),
(722, 'admin', 'staffs', 'staff', 16, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=16\">safari05</a> <b>logged</b> in.', 0, '2018-08-04 11:58:31'),
(723, 'admin', 'orders', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> order <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/orders/edit?id=20072\"><b>#20072.</b></a>', 0, '2018-08-04 12:33:00'),
(724, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-08-04 12:40:10'),
(725, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-08-05 19:21:50'),
(726, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/customers/edit?id=15\"><b>Ravi Kumar.</b></a>', 0, '2018-08-05 19:32:53'),
(727, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-08-05 20:05:23'),
(728, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-08-06 00:45:14'),
(729, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-08-06 00:49:26'),
(730, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-08-06 16:01:14'),
(731, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-08-06 16:02:20'),
(732, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-08-06 16:03:06'),
(733, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/customers/edit?id=13\"><b>Sandeep Patel.</b></a>', 0, '2018-08-06 16:04:25'),
(734, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/customers/edit?id=12\"><b>vijay kumar.</b></a>', 0, '2018-08-06 16:04:31'),
(735, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/customers/edit?id=11\"><b>Prajyot Dhanokar.</b></a>', 0, '2018-08-06 16:05:08'),
(736, 'admin', 'customers', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> customer <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/customers/edit?id=16\"><b>safari Mupe.</b></a>', 0, '2018-08-06 16:07:28'),
(737, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/customers/edit?id=16\"><b>Safari Mupe.</b></a>', 0, '2018-08-06 16:12:20'),
(738, 'admin', 'customers', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> customer <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/customers/edit?id=17\"><b>Rohit Mithrapa.</b></a>', 0, '2018-08-06 16:14:02'),
(739, 'admin', 'inventory', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/items/edit?id=2\"><b>Rice.</b></a>', 0, '2018-08-06 17:22:01'),
(740, 'admin', 'orders', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> order <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/orders/edit?id=20073\"><b>#20073.</b></a>', 0, '2018-08-06 18:24:10'),
(741, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=20\"><b>Baner Branch.</b></a>', 0, '2018-08-06 18:32:10'),
(742, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-08-07 18:58:37'),
(743, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-08-08 10:35:25'),
(744, 'admin', 'menus', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> menu item <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/menus/edit?id=32\"><b>Egg Bhurja.</b></a>', 0, '2018-08-08 15:13:19'),
(745, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-08-08 15:15:06'),
(746, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-08-08 15:16:23'),
(747, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-08-14 09:07:11'),
(748, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/customers/edit?id=16\"><b>Safari Mupe.</b></a>', 0, '2018-08-14 09:15:05'),
(749, 'main', 'customers', 'customer', 16, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/customers/edit?id=16\">Safari Mupe</a> <b>logged</b> in.', 0, '2018-08-14 09:15:23'),
(750, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-08-14 09:46:34'),
(751, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-08-14 10:06:27'),
(752, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-08-14 10:09:37'),
(753, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-08-14 10:13:09'),
(754, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/customers/edit?id=16\"><b>Safari Mupe.</b></a>', 0, '2018-08-14 10:31:39'),
(755, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/customers/edit?id=16\"><b>Safari Mupe.</b></a>', 0, '2018-08-14 10:32:58'),
(756, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-08-14 13:44:54'),
(757, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-08-14 18:40:03'),
(758, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-08-15 18:47:29'),
(759, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-08-18 14:11:37'),
(760, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-08-20 11:44:44'),
(761, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-08-20 17:39:01'),
(762, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-08-20 17:42:11'),
(763, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-08-20 17:42:36'),
(764, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-08-23 10:34:08'),
(765, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/customers/edit?id=16\"><b>Safari Mupe.</b></a>', 0, '2018-08-23 15:41:19'),
(766, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=15\"><b>Demo Smart Restro.</b></a>', 0, '2018-08-23 17:42:07'),
(767, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/customers/edit?id=16\"><b>Safari Mupe.</b></a>', 0, '2018-08-23 17:42:48'),
(768, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-08-25 13:09:29'),
(769, 'admin', 'customers', 'staff', 16, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in as <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/customers/edit?id=16\">Safari Mupe</a>.', 0, '2018-08-25 13:13:56'),
(770, 'admin', 'customers', 'staff', 16, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in as <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/customers/edit?id=16\">Safari Mupe</a>.', 0, '2018-08-25 13:14:55'),
(771, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"http://onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-08-25 14:06:57'),
(772, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-08-30 21:11:37'),
(773, 'admin', 'customers', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> customer <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/customers/edit?id=19\"><b>prajyot dhanokar.</b></a>', 0, '2018-08-30 21:14:01'),
(774, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/customers/edit?id=19\"><b>prajyot dhanokar.</b></a>', 0, '2018-08-30 21:14:17'),
(775, 'admin', 'customers', 'staff', 19, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in as <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/customers/edit?id=19\">prajyot dhanokar</a>.', 0, '2018-08-30 21:14:31'),
(776, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=19\"><b>dnyanai Mess.</b></a>', 0, '2018-08-30 21:22:39'),
(777, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=19\"><b>dnyanai Mess.</b></a>', 0, '2018-08-30 21:23:15'),
(778, 'admin', 'customers', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> customer <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/customers/edit?id=20\"><b>Anuj Dhanokar.</b></a>', 0, '2018-08-30 21:25:57'),
(779, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/customers/edit?id=20\"><b>Anuj Dhanokar.</b></a>', 0, '2018-08-30 21:26:23'),
(780, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/customers/edit?id=20\"><b>Anuj Dhanokar.</b></a>', 0, '2018-08-30 21:26:57'),
(781, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/customers/edit?id=20\"><b>Anuj Dhanokar.</b></a>', 0, '2018-08-30 21:27:14'),
(782, 'admin', 'customers', 'staff', 20, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in as <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/customers/edit?id=20\">Anuj Dhanokar</a>.', 0, '2018-08-30 21:28:10'),
(783, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/customers/edit?id=19\"><b>prajyot dhanokar.</b></a>', 0, '2018-08-30 21:31:36'),
(784, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/customers/edit?id=19\"><b>prajyot dhanokar.</b></a>', 0, '2018-08-30 21:31:58'),
(785, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/customers/edit?id=20\"><b>Anuj Dhanokar.</b></a>', 0, '2018-08-30 21:34:57'),
(786, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/customers/edit?id=20\"><b>Anuj Dhanokar.</b></a>', 0, '2018-08-30 21:34:59'),
(787, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-08-30 21:41:52'),
(788, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-09-01 12:32:36'),
(789, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-09-01 12:33:08'),
(790, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-09-01 12:33:19'),
(791, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/customers/edit?id=19\"><b>prajyot dhanokar.</b></a>', 0, '2018-09-01 12:33:39'),
(792, 'admin', 'customers', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> customer <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/customers/edit?id=21\"><b>alhad deshpande.</b></a>', 0, '2018-09-01 12:34:32'),
(793, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/customers/edit?id=21\"><b>alhad deshpande.</b></a>', 0, '2018-09-01 12:35:22'),
(794, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-09-01 15:52:59'),
(795, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-09-01 21:07:48'),
(796, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-09-01 21:14:31'),
(797, 'admin', 'customers', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> customer <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/customers/edit?id=22\"><b>Sanket Pasdasd.</b></a>', 0, '2018-09-01 21:18:35'),
(798, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/customers/edit?id=19\"><b>prajyot dhanokar.</b></a>', 0, '2018-09-01 21:23:14'),
(799, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-09-01 21:23:59'),
(800, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-09-01 21:25:11'),
(801, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-09-01 21:25:43'),
(802, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-09-01 21:34:49'),
(803, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-09-02 11:33:32'),
(804, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-09-02 19:20:12'),
(805, 'admin', 'customers', 'staff', 21, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in as <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/customers/edit?id=21\">alhad deshpande</a>.', 0, '2018-09-02 20:25:48'),
(806, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-09-02 20:30:27'),
(807, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-09-04 22:02:15'),
(808, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=19\"><b>dnyanai Mess.</b></a>', 0, '2018-09-04 22:29:53'),
(809, 'admin', 'customers', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> customer <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/customers/edit?id=23\"><b>MANOJ BIRADAR.</b></a>', 0, '2018-09-04 22:30:59'),
(810, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/customers/edit?id=23\"><b>MANOJ BIRADAR.</b></a>', 0, '2018-09-04 22:31:42'),
(811, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/customers/edit?id=23\"><b>MANOJ BIRADAR.</b></a>', 0, '2018-09-04 22:32:12'),
(812, 'admin', 'customers', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> customer <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/customers/edit?id=24\"><b>dummy test.</b></a>', 0, '2018-09-04 22:44:02'),
(813, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/customers/edit?id=24\"><b>dummy test.</b></a>', 0, '2018-09-04 22:44:49'),
(814, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/customers/edit?id=24\"><b>dummy test.</b></a>', 0, '2018-09-04 22:45:07'),
(815, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-09-06 22:29:49'),
(816, 'admin', 'customers', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> customer <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/customers/edit?id=25\"><b>Subodh Nagpur.</b></a>', 0, '2018-09-06 22:35:38'),
(817, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/customers/edit?id=25\"><b>Subodh Nagpur.</b></a>', 0, '2018-09-06 22:37:00'),
(818, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-09-07 19:57:19'),
(819, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"http://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-09-08 20:11:56'),
(820, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://www.onlinekatta.com/Smart-Resto-demo/admin/customers/edit?id=25\"><b>Subodh Nagpur.</b></a>', 0, '2018-09-08 20:15:32'),
(821, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://www.onlinekatta.com/Smart-Resto-demo/admin/customers/edit?id=25\"><b>Subodh Nagpur.</b></a>', 0, '2018-09-08 20:15:38'),
(822, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://www.onlinekatta.com/Smart-Resto-demo/admin/customers/edit?id=25\"><b>Subodh Nagpur.</b></a>', 0, '2018-09-08 20:51:14'),
(823, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://www.onlinekatta.com/Smart-Resto-demo/admin/customers/edit?id=25\"><b>Subodh Nagpur.</b></a>', 0, '2018-09-08 20:54:03'),
(824, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://www.onlinekatta.com/Smart-Resto-demo/admin/customers/edit?id=25\"><b>Subodh Nagpur.</b></a>', 0, '2018-09-08 20:54:25'),
(825, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://www.onlinekatta.com/Smart-Resto-demo/admin/customers/edit?id=25\"><b>Subodh Nagpur.</b></a>', 0, '2018-09-08 20:55:17'),
(826, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://www.onlinekatta.com/Smart-Resto-demo/admin/customers/edit?id=25\"><b>Subodh Nagpur.</b></a>', 0, '2018-09-08 20:59:25'),
(827, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://www.onlinekatta.com/Smart-Resto-demo/admin/customers/edit?id=25\"><b>Subodh Nagpur.</b></a>', 0, '2018-09-08 21:12:51'),
(828, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://www.onlinekatta.com/Smart-Resto-demo/admin/customers/edit?id=25\"><b>Subodh Nagpur.</b></a>', 0, '2018-09-08 21:30:04'),
(829, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://www.onlinekatta.com/Smart-Resto-demo/admin/customers/edit?id=25\"><b>Subodh Nagpur.</b></a>', 0, '2018-09-08 21:50:10'),
(830, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://www.onlinekatta.com/Smart-Resto-demo/admin/customers/edit?id=25\"><b>Subodh Nagpur.</b></a>', 0, '2018-09-08 21:50:22'),
(831, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://www.onlinekatta.com/Smart-Resto-demo/admin/customers/edit?id=25\"><b>Subodh Nagpur.</b></a>', 0, '2018-09-08 21:52:20'),
(832, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://www.onlinekatta.com/Smart-Resto-demo/admin/customers/edit?id=25\"><b>Subodh Nagpur.</b></a>', 0, '2018-09-08 21:59:03'),
(833, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://www.onlinekatta.com/Smart-Resto-demo/admin/customers/edit?id=25\"><b>Subodh Nagpur.</b></a>', 0, '2018-09-08 22:01:54'),
(834, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://www.onlinekatta.com/Smart-Resto-demo/admin/customers/edit?id=25\"><b>Subodh Nagpur.</b></a>', 0, '2018-09-08 22:01:58'),
(835, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://www.onlinekatta.com/Smart-Resto-demo/admin/customers/edit?id=25\"><b>Subodh Nagpur.</b></a>', 0, '2018-09-08 22:02:02'),
(836, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://www.onlinekatta.com/Smart-Resto-demo/admin/customers/edit?id=25\"><b>Subodh Nagpur.</b></a>', 0, '2018-09-08 22:02:06'),
(837, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://www.onlinekatta.com/Smart-Resto-demo/admin/customers/edit?id=25\"><b>Subodh Nagpur.</b></a>', 0, '2018-09-08 22:02:11'),
(838, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://www.onlinekatta.com/Smart-Resto-demo/admin/customers/edit?id=25\"><b>Subodh Nagpur.</b></a>', 0, '2018-09-08 22:02:15'),
(839, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://www.onlinekatta.com/Smart-Resto-demo/admin/customers/edit?id=25\"><b>Subodh Nagpur.</b></a>', 0, '2018-09-08 22:02:18'),
(840, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://www.onlinekatta.com/Smart-Resto-demo/admin/customers/edit?id=25\"><b>Subodh Nagpur.</b></a>', 0, '2018-09-08 22:02:23'),
(841, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://www.onlinekatta.com/Smart-Resto-demo/admin/customers/edit?id=25\"><b>Subodh Nagpur.</b></a>', 0, '2018-09-08 22:02:27'),
(842, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://www.onlinekatta.com/Smart-Resto-demo/admin/customers/edit?id=25\"><b>Subodh Nagpur.</b></a>', 0, '2018-09-08 22:03:00'),
(843, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://www.onlinekatta.com/Smart-Resto-demo/admin/customers/edit?id=25\"><b>Subodh Nagpur.</b></a>', 0, '2018-09-08 22:03:03'),
(844, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://www.onlinekatta.com/Smart-Resto-demo/admin/customers/edit?id=25\"><b>Subodh Nagpur.</b></a>', 0, '2018-09-08 22:03:25'),
(845, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://www.onlinekatta.com/Smart-Resto-demo/admin/customers/edit?id=25\"><b>Subodh Nagpur.</b></a>', 0, '2018-09-08 22:03:27'),
(846, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://www.onlinekatta.com/Smart-Resto-demo/admin/customers/edit?id=23\"><b>MANOJ BIRADAR.</b></a>', 0, '2018-09-08 22:03:37'),
(847, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://www.onlinekatta.com/Smart-Resto-demo/admin/customers/edit?id=23\"><b>MANOJ BIRADAR.</b></a>', 0, '2018-09-08 22:03:41'),
(848, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-09-12 20:11:30'),
(849, 'admin', 'customers', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> customer <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/customers/edit?id=26\"><b>Kenil Shah.</b></a>', 0, '2018-09-12 20:16:41'),
(850, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/customers/edit?id=25\"><b>Subodh Nagpur.</b></a>', 0, '2018-09-12 20:21:02'),
(851, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-09-12 20:21:27'),
(852, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-09-12 20:21:32'),
(853, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/customers/edit?id=26\"><b>Kenil Shah.</b></a>', 0, '2018-09-12 20:21:49'),
(854, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-09-12 22:21:52'),
(855, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-09-12 23:44:07'),
(856, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/customers/edit?id=26\"><b>Kenil Shah.</b></a>', 0, '2018-09-12 23:57:41'),
(857, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/customers/edit?id=26\"><b>Kenil Shah.</b></a>', 0, '2018-09-12 23:59:12'),
(858, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/customers/edit?id=26\"><b>Kenil Shah.</b></a>', 0, '2018-09-12 23:59:27'),
(859, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/customers/edit?id=26\"><b>Kenil Shah.</b></a>', 0, '2018-09-13 00:00:55'),
(860, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-09-13 09:07:56'),
(861, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-09-13 10:12:44'),
(862, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/customers/edit?id=26\"><b>Kenil Shah.</b></a>', 0, '2018-09-13 10:17:29'),
(863, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/customers/edit?id=26\"><b>Kenil Shah.</b></a>', 0, '2018-09-13 10:23:58'),
(864, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-09-13 20:52:28'),
(865, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/customers/edit?id=26\"><b>Kenil Shah.</b></a>', 0, '2018-09-13 21:19:51'),
(866, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/customers/edit?id=26\"><b>Kenil Shah.</b></a>', 0, '2018-09-13 21:19:55'),
(867, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/customers/edit?id=26\"><b>Kenil Shah.</b></a>', 0, '2018-09-13 21:20:02'),
(868, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/customers/edit?id=26\"><b>Kenil Shah.</b></a>', 0, '2018-09-13 22:58:15'),
(869, 'admin', 'tables', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> table <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/tables/edit?id=1\"><b>EE10.</b></a>', 0, '2018-09-13 23:05:11'),
(870, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-09-13 23:05:26'),
(871, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-09-13 23:06:27'),
(872, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-09-13 23:06:40'),
(873, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-09-13 23:07:34'),
(874, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-09-13 23:07:40'),
(875, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-09-13 23:08:00'),
(876, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-09-13 23:08:04'),
(877, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-09-13 23:08:26'),
(878, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-09-13 23:08:30'),
(879, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/customers/edit?id=26\"><b>Kenil Shah.</b></a>', 0, '2018-09-13 23:08:39'),
(880, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-09-13 23:08:49'),
(881, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-09-13 23:08:53'),
(882, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-09-13 23:19:14'),
(883, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-09-13 23:19:18'),
(884, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-09-13 23:19:50'),
(885, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-09-13 23:20:02'),
(886, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-09-13 23:20:12'),
(887, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-09-13 23:20:39'),
(888, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=15\"><b>Demo Smart Restro.</b></a>', 0, '2018-09-13 23:20:52'),
(889, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/customers/edit?id=26\"><b>Kenil Shah.</b></a>', 0, '2018-09-13 23:22:17'),
(890, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/customers/edit?id=26\"><b>Kenil Shah.</b></a>', 0, '2018-09-13 23:24:26'),
(891, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/customers/edit?id=26\"><b>Kenil Shah.</b></a>', 0, '2018-09-13 23:25:08'),
(892, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/customers/edit?id=26\"><b>Kenil Shah.</b></a>', 0, '2018-09-13 23:46:11'),
(893, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/customers/edit?id=26\"><b>Kenil Shah.</b></a>', 0, '2018-09-13 23:46:24'),
(894, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-09-14 08:47:31'),
(895, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-09-14 08:50:49'),
(896, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-09-14 23:10:24'),
(897, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-09-15 09:25:51'),
(898, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-09-15 11:26:40'),
(899, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-09-15 11:44:58'),
(900, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-09-15 12:04:26'),
(901, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-09-21 17:24:36'),
(902, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-09-29 13:20:59'),
(903, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-09-29 15:27:10'),
(904, 'admin', 'customers', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> customer <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/customers/edit?id=27\"><b>Karan Bahsin.</b></a>', 0, '2018-09-29 15:34:30'),
(905, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/customers/edit?id=27\"><b>Karan Bahsin.</b></a>', 0, '2018-09-29 15:38:18'),
(906, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-09-29 15:38:35'),
(907, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-09-29 15:38:43'),
(908, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/customers/edit?id=27\"><b>Karan Bahsin.</b></a>', 0, '2018-09-29 15:38:56'),
(909, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-09-29 16:01:04'),
(910, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-10-05 18:49:57'),
(911, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-10-08 12:27:16'),
(912, 'admin', 'customers', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> customer <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/customers/edit?id=28\"><b>Pratham Kul.</b></a>', 0, '2018-10-08 12:39:41'),
(913, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"https://www.onlinekatta.com/Smart-Resto-demo/admin/customers/edit?id=28\"><b>Pratham Kul.</b></a>', 0, '2018-10-08 12:45:58'),
(914, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-10-08 14:26:37'),
(915, 'admin', 'customers', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=29\"><b>Testing testing1.</b></a>', 0, '2018-10-08 14:31:50'),
(916, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=29\"><b>Testing testing1.</b></a>', 0, '2018-10-08 14:32:02'),
(917, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=29\"><b>Testing testing1.</b></a>', 0, '2018-10-08 14:32:16'),
(918, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=29\"><b>Testing testing1.</b></a>', 0, '2018-10-08 14:32:18'),
(919, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=29\"><b>testing testing1.</b></a>', 0, '2018-10-08 14:32:59'),
(920, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=29\"><b>testing testing1.</b></a>', 0, '2018-10-08 14:33:10'),
(921, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=28\"><b>Pratham Kul.</b></a>', 0, '2018-10-08 14:35:05'),
(922, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=28\"><b>Pratham Kul.</b></a>', 0, '2018-10-08 14:35:11'),
(923, 'admin', 'customers', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=30\"><b>testing1 testing2.</b></a>', 0, '2018-10-08 14:39:46'),
(924, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=30\"><b>testing1 testing2.</b></a>', 0, '2018-10-08 14:41:45'),
(925, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-10-08 14:42:15'),
(926, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-10-08 15:10:02'),
(927, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-10-08 15:10:14'),
(928, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=28\"><b>Pratham Kul.</b></a>', 0, '2018-10-08 15:10:52'),
(929, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=28\"><b>Pratham Kul.</b></a>', 0, '2018-10-08 15:30:54'),
(930, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=28\"><b>Pratham Kul.</b></a>', 0, '2018-10-08 16:16:05'),
(931, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=28\"><b>Pratham Kul.</b></a>', 0, '2018-10-08 16:18:16'),
(932, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=28\"><b>Pratham Kul.</b></a>', 0, '2018-10-08 16:41:18');
INSERT INTO `ok_activities` (`activity_id`, `domain`, `context`, `user`, `user_id`, `action`, `message`, `status`, `date_added`) VALUES
(933, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=28\"><b>Pratham Kul.</b></a>', 0, '2018-10-08 16:41:40'),
(934, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=28\"><b>Pratham Kul.</b></a>', 0, '2018-10-08 16:45:33'),
(935, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=28\"><b>Pratham Kul.</b></a>', 0, '2018-10-08 16:46:31'),
(936, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=28\"><b>Pratham Kul.</b></a>', 0, '2018-10-08 16:48:09'),
(937, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=28\"><b>Pratham Kul.</b></a>', 0, '2018-10-08 16:53:36'),
(938, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=28\"><b>Pratham Kul.</b></a>', 0, '2018-10-08 16:53:48'),
(939, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=28\"><b>Pratham Kul.</b></a>', 0, '2018-10-08 16:56:14'),
(940, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=28\"><b>Pratham Kul.</b></a>', 0, '2018-10-08 16:56:25'),
(941, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=28\"><b>Pratham Kul.</b></a>', 0, '2018-10-08 16:56:42'),
(942, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=28\"><b>Pratham Kul.</b></a>', 0, '2018-10-08 17:34:44'),
(943, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=30\"><b>testing1 testing2.</b></a>', 0, '2018-10-08 17:39:09'),
(944, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=28\"><b>Pratham Kul.</b></a>', 0, '2018-10-08 17:40:44'),
(945, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=28\"><b>Pratham Kul.</b></a>', 0, '2018-10-08 17:44:01'),
(946, 'admin', 'customers', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=31\"><b>demo demo2.</b></a>', 0, '2018-10-08 17:45:07'),
(947, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=31\"><b>demo demo2.</b></a>', 0, '2018-10-08 17:45:25'),
(948, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=31\"><b>demo demo2.</b></a>', 0, '2018-10-08 17:45:32'),
(949, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=31\"><b>demo demo2.</b></a>', 0, '2018-10-08 17:46:20'),
(950, 'admin', 'customers', 'staff', 31, 'logged in', '<a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in as <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=31\">demo demo2</a>.', 0, '2018-10-08 17:54:15'),
(951, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-10-08 17:55:00'),
(952, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=31\"><b>demo demo2.</b></a>', 0, '2018-10-08 17:59:49'),
(953, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=28\"><b>Pratham Kul.</b></a>', 0, '2018-10-08 18:00:59'),
(954, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=28\"><b>Pratham Kul.</b></a>', 0, '2018-10-08 18:11:57'),
(955, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=28\"><b>Pratham Kul.</b></a>', 0, '2018-10-08 18:12:00'),
(956, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=28\"><b>Pratham1 Kul.</b></a>', 0, '2018-10-08 18:12:04'),
(957, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=28\"><b>Pratham1 Kul.</b></a>', 0, '2018-10-08 18:16:50'),
(958, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=28\"><b>Pratham1 Kul.</b></a>', 0, '2018-10-08 18:16:57'),
(959, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-10-08 18:23:00'),
(960, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-10-09 09:18:19'),
(961, 'admin', 'customers', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=32\"><b>Testing testing1.</b></a>', 0, '2018-10-09 09:28:29'),
(962, 'admin', 'customers', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=33\"><b>Testing testing1.</b></a>', 0, '2018-10-09 09:31:33'),
(963, 'admin', 'customers', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=34\"><b>Testing testing1.</b></a>', 0, '2018-10-09 09:37:10'),
(964, 'admin', 'customers', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=35\"><b>Testing testing1.</b></a>', 0, '2018-10-09 09:38:34'),
(965, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-10-09 09:48:35'),
(966, 'admin', 'customers', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=36\"><b>testing1 testing1.</b></a>', 0, '2018-10-09 10:02:53'),
(967, 'admin', 'customers', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=37\"><b>testing1 testing1.</b></a>', 0, '2018-10-09 10:05:34'),
(968, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=28\"><b>Pratham1 Kul.</b></a>', 0, '2018-10-09 10:24:56'),
(969, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=28\"><b>Pratham1 Kul.</b></a>', 0, '2018-10-09 10:33:05'),
(970, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=28\"><b>Pratham1 Kul.</b></a>', 0, '2018-10-09 10:38:37'),
(971, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=28\"><b>Pratham1 Kul.</b></a>', 0, '2018-10-09 10:42:41'),
(972, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=28\"><b>Pratham1 Kul.</b></a>', 0, '2018-10-09 11:04:09'),
(973, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=28\"><b>Pratham1 Kul.</b></a>', 0, '2018-10-09 11:04:23'),
(974, 'admin', 'customers', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=38\"><b>testing1 testing2.</b></a>', 0, '2018-10-09 11:11:21'),
(975, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=38\"><b>testing1 testing2.</b></a>', 0, '2018-10-09 11:15:25'),
(976, 'admin', 'customers', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=39\"><b>asdasd asdasd.</b></a>', 0, '2018-10-09 11:40:49'),
(977, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=28\"><b>Pratham1 Kul.</b></a>', 0, '2018-10-09 11:46:36'),
(978, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=39\"><b>asdasd asdasd.</b></a>', 0, '2018-10-09 11:50:11'),
(979, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=38\"><b>testing1 testing2.</b></a>', 0, '2018-10-09 12:18:59'),
(980, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=26\"><b>Kenil Shah.</b></a>', 0, '2018-10-09 12:24:07'),
(981, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=28\"><b>Pratham1 Kul.</b></a>', 0, '2018-10-09 12:30:59'),
(982, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=28\"><b>Prathamesh Kulkulkarni.</b></a>', 0, '2018-10-09 12:55:35'),
(983, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=28\"><b>Prathamesh1 Kulkulkarni1.</b></a>', 0, '2018-10-09 12:56:32'),
(984, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=28\"><b>Prathamesh Kulkulkarni.</b></a>', 0, '2018-10-09 12:57:59'),
(985, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=28\"><b>Prathamesh Kulkulkarni.</b></a>', 0, '2018-10-09 12:58:51'),
(986, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=28\"><b>Prathamesh1 Kulkulkarni1.</b></a>', 0, '2018-10-09 13:06:54'),
(987, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=28\"><b>Prathamesh1 Kulkulkarni1.</b></a>', 0, '2018-10-09 13:09:44'),
(988, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=28\"><b>Prathamesh Kulkulkarni.</b></a>', 0, '2018-10-09 13:16:01'),
(989, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=26\"><b>Kenil1 Shah1.</b></a>', 0, '2018-10-09 13:21:06'),
(990, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=28\"><b>Prathamesh Kulkulkarni.</b></a>', 0, '2018-10-09 13:22:13'),
(991, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=28\"><b>Prathamesh Kulkulkarni.</b></a>', 0, '2018-10-09 13:26:41'),
(992, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=28\"><b>Prathamesh Kulkulkarni.</b></a>', 0, '2018-10-09 13:29:12'),
(993, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=28\"><b>Prathamesh Kulkulkarni.</b></a>', 0, '2018-10-09 13:33:18'),
(994, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=28\"><b>Prathamesh Kulkulkarni.</b></a>', 0, '2018-10-09 13:38:15'),
(995, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=28\"><b>Prathamesh Kulkulkarni.</b></a>', 0, '2018-10-09 13:38:22'),
(996, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=28\"><b>Prathamesh Kulkulkarni.</b></a>', 0, '2018-10-09 13:38:27'),
(997, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=28\"><b>Prathamesh Kulkulkarni.</b></a>', 0, '2018-10-09 13:43:48'),
(998, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=28\"><b>Prathamesh Kulkulkarni.</b></a>', 0, '2018-10-09 13:44:10'),
(999, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=28\"><b>Prathamesh Kulkulkarni.</b></a>', 0, '2018-10-09 13:45:48'),
(1000, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=28\"><b>Prathamesh Kulkulkarni.</b></a>', 0, '2018-10-09 13:56:12'),
(1001, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=28\"><b>Prathamesh Kulkulkarni.</b></a>', 0, '2018-10-09 14:05:33'),
(1002, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=28\"><b>Prathamesh Kulkulkarni.</b></a>', 0, '2018-10-09 14:13:36'),
(1003, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=28\"><b>Prathamesh Kulkulkarni.</b></a>', 0, '2018-10-09 14:14:13'),
(1004, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=28\"><b>Prathamesh Kulkulkarni.</b></a>', 0, '2018-10-09 14:16:07'),
(1005, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=28\"><b>Prathamesh Kulkulkarni.</b></a>', 0, '2018-10-09 14:18:18'),
(1006, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=28\"><b>Prathamesh Kulkulkarni.</b></a>', 0, '2018-10-09 14:28:53'),
(1007, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=28\"><b>Prathamesh Kulkulkarni.</b></a>', 0, '2018-10-09 14:31:13'),
(1008, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=28\"><b>Prathamesh Kulkulkarni.</b></a>', 0, '2018-10-09 14:31:55'),
(1009, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=28\"><b>Prathamesh Kulkulkarni.</b></a>', 0, '2018-10-09 14:34:07'),
(1010, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=28\"><b>Prathamesh Kulkulkarni.</b></a>', 0, '2018-10-09 14:34:24'),
(1011, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=28\"><b>Prathamesh Kulkulkarni.</b></a>', 0, '2018-10-09 14:36:52'),
(1012, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=28\"><b>Prathamesh Kulkulkarni.</b></a>', 0, '2018-10-09 14:46:02'),
(1013, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=28\"><b>Prathamesh Kulkulkarni.</b></a>', 0, '2018-10-09 14:54:33'),
(1014, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=28\"><b>Prathamesh Kulkulkarni.</b></a>', 0, '2018-10-09 15:02:38'),
(1015, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=28\"><b>Prathamesh Kulkulkarni.</b></a>', 0, '2018-10-09 15:19:28'),
(1016, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=28\"><b>Prathamesh1 Kulkulkarni.</b></a>', 0, '2018-10-09 15:21:13'),
(1017, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=28\"><b>Prathamesh1 Kulkulkarni.</b></a>', 0, '2018-10-09 15:55:36'),
(1018, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=28\"><b>Prathamesh1 Kulkulkarni.</b></a>', 0, '2018-10-09 16:14:10'),
(1019, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=28\"><b>Prathamesh1 Kulkulkarni.</b></a>', 0, '2018-10-09 16:46:50'),
(1020, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=28\"><b>Prathamesh1 Kulkulkarni.</b></a>', 0, '2018-10-09 17:09:55'),
(1021, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=28\"><b>Prathamesh1 Kulkulkarni.</b></a>', 0, '2018-10-09 17:19:14'),
(1022, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=28\"><b>Prathamesh1 Kulkulkarni.</b></a>', 0, '2018-10-09 17:19:27'),
(1023, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=28\"><b>Prathamesh123 Kulkulkarni.</b></a>', 0, '2018-10-09 17:19:35'),
(1024, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=28\"><b>Prathamesh123 Kulkulkarni.</b></a>', 0, '2018-10-09 17:20:05'),
(1025, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=28\"><b>Prathamesh123 Kulkulkarni.</b></a>', 0, '2018-10-09 17:21:05'),
(1026, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=28\"><b>Prathamesh123 Kulkulkarni.</b></a>', 0, '2018-10-09 17:24:27'),
(1027, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-10-09 17:31:11'),
(1028, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-10-09 17:31:13'),
(1029, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=28\"><b>Prathamesh123 Kulkulkarni.</b></a>', 0, '2018-10-09 17:32:06'),
(1030, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=28\"><b>Prathamesh123 Kulkulkarni.</b></a>', 0, '2018-10-09 17:35:41'),
(1031, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=28\"><b>Prathamesh123 Kulkulkarni.</b></a>', 0, '2018-10-09 17:41:36'),
(1032, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=28\"><b>Prathamesh Kulkulkarni.</b></a>', 0, '2018-10-09 17:44:14'),
(1033, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=28\"><b>Prathamesh Kulkulkarni.</b></a>', 0, '2018-10-09 17:44:41'),
(1034, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=28\"><b>Prathamesh Kulkulkarni.</b></a>', 0, '2018-10-09 17:47:17'),
(1035, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=28\"><b>Prathamesh Kulkulkarni.</b></a>', 0, '2018-10-09 17:50:28'),
(1036, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=28\"><b>Prathamesh Kulkulkarni.</b></a>', 0, '2018-10-09 18:04:38'),
(1037, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=28\"><b>Prathamesh Kulkulkarni.</b></a>', 0, '2018-10-09 18:07:18'),
(1038, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=28\"><b>Prathamesh Kulkulkarni.</b></a>', 0, '2018-10-09 18:10:47'),
(1039, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=28\"><b>Prathamesh Kulkulkarni.</b></a>', 0, '2018-10-09 18:11:06'),
(1040, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-10-10 09:15:11'),
(1041, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=28\"><b>Prathamesh Kulkulkarni.</b></a>', 0, '2018-10-10 09:17:58'),
(1042, 'admin', 'customers', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=40\"><b>prathamesh kulkarni.</b></a>', 0, '2018-10-10 09:23:15'),
(1043, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=40\"><b>prathamesh kulkarni.</b></a>', 0, '2018-10-10 09:23:36'),
(1044, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=40\"><b>prathamesh kulkarni.</b></a>', 0, '2018-10-10 09:23:52'),
(1045, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=40\"><b>prathamesh kulkarni.</b></a>', 0, '2018-10-10 09:35:12'),
(1046, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=38\"><b>testing1 testing2.</b></a>', 0, '2018-10-10 09:35:49'),
(1047, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=40\"><b>prathamesh kulkarni.</b></a>', 0, '2018-10-10 09:46:04'),
(1048, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=40\"><b>prathamesh kulkarni.</b></a>', 0, '2018-10-10 09:46:42'),
(1049, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=39\"><b>asdasd asdasd.</b></a>', 0, '2018-10-10 09:47:34'),
(1050, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=27\"><b>Karan Bahsin.</b></a>', 0, '2018-10-10 09:48:26'),
(1051, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-10-10 09:56:24'),
(1052, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=40\"><b>prathamesh kulkarni.</b></a>', 0, '2018-10-10 11:03:09'),
(1053, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/locations/edit?id=21\"><b>KonguNadu.</b></a>', 0, '2018-10-10 14:31:38'),
(1054, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/locations/edit?id=21\"><b>KonguNadu.</b></a>', 0, '2018-10-10 14:32:09'),
(1055, 'admin', 'customers', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=41\"><b>prathamesh testing.</b></a>', 0, '2018-10-10 14:34:34'),
(1056, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=41\"><b>prathamesh testing.</b></a>', 0, '2018-10-10 14:37:13'),
(1057, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-10-10 14:38:23'),
(1058, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=41\"><b>prathamesh testing.</b></a>', 0, '2018-10-10 15:34:55'),
(1059, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=40\"><b>prathamesh kulkarni.</b></a>', 0, '2018-10-10 15:58:38'),
(1060, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-10-11 09:31:43'),
(1061, 'admin', 'customers', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=42\"><b>new customer.</b></a>', 0, '2018-10-11 11:56:23'),
(1062, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=42\"><b>new customer.</b></a>', 0, '2018-10-11 11:57:01'),
(1063, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-10-12 12:13:01'),
(1064, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-10-12 14:37:36'),
(1065, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=11\"><b>Prajyot Dhanokar.</b></a>', 0, '2018-10-12 15:18:07'),
(1066, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-10-12 16:20:17'),
(1067, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=42\"><b>new customer.</b></a>', 0, '2018-10-12 16:50:06'),
(1068, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=42\"><b>new customer.</b></a>', 0, '2018-10-12 16:50:09'),
(1069, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=42\"><b>new customer.</b></a>', 0, '2018-10-12 16:50:19'),
(1070, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=42\"><b>new1 customer.</b></a>', 0, '2018-10-12 16:50:30'),
(1071, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=42\"><b>new1 customer.</b></a>', 0, '2018-10-12 16:50:54'),
(1072, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=42\"><b>new1 customer.</b></a>', 0, '2018-10-12 16:51:00'),
(1073, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-10-13 09:18:05'),
(1074, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-10-15 14:04:45'),
(1075, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-10-15 15:40:43'),
(1076, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-10-16 09:32:25'),
(1077, 'admin', 'customers', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=43\"><b>dhiraj Chowdhari.</b></a>', 0, '2018-10-16 10:15:43'),
(1078, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=43\"><b>dhiraj Chowdhari.</b></a>', 0, '2018-10-16 10:18:09'),
(1079, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/prathamesh/Smart-Resto-demo/admin/customers/edit?id=43\"><b>dhiraj Chowdhari.</b></a>', 0, '2018-10-16 10:19:35'),
(1080, 'admin', 'customers', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=1\"><b>dhiraj chaudhari.</b></a>', 0, '2018-10-16 17:43:59'),
(1081, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-10-16 17:45:54'),
(1082, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=1\"><b>dhiraj chaudhari.</b></a>', 0, '2018-10-16 17:46:41'),
(1083, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=1\"><b>dhiraj chaudhari.</b></a>', 0, '2018-10-16 17:47:02'),
(1084, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=1\"><b>dhiraj chaudhari.</b></a>', 0, '2018-10-16 17:48:32'),
(1085, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=1\"><b>dhiraj chaudhari.</b></a>', 0, '2018-10-16 17:48:33'),
(1086, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-10-17 11:31:55'),
(1087, 'admin', 'extensions', 'staff', 11, 'uninstalled', 'Admin OnlineKatta <b>uninstalled</b> module extension <b>Account.</b>', 0, '2018-10-17 11:44:02'),
(1088, 'admin', 'extensions', 'staff', 11, 'installed', 'Admin OnlineKatta <b>installed</b> module extension <b>Account.</b>', 0, '2018-10-17 11:44:05'),
(1089, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-10-26 12:03:00'),
(1090, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-10-26 12:03:15'),
(1091, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-10-26 12:03:55'),
(1092, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-10-26 12:37:59'),
(1093, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-10-26 14:07:27'),
(1094, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-10-26 14:11:00'),
(1095, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-10-26 14:13:15'),
(1096, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-10-26 14:18:15'),
(1097, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-10-26 14:18:18'),
(1098, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-10-26 14:18:51'),
(1099, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-10-26 14:19:34'),
(1100, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-10-26 14:22:50'),
(1101, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-10-26 14:24:31'),
(1102, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-10-26 14:25:21'),
(1103, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-10-26 14:25:23'),
(1104, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-10-26 14:27:44'),
(1105, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-10-26 14:27:46'),
(1106, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-10-26 14:27:51'),
(1107, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-10-26 14:27:57'),
(1108, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-10-26 14:28:40'),
(1109, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-10-26 14:29:34'),
(1110, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-10-26 14:30:00'),
(1111, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-10-26 14:30:20'),
(1112, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-10-26 14:32:21'),
(1113, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-10-26 14:33:18'),
(1114, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-10-26 14:33:32'),
(1115, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-10-26 14:35:49'),
(1116, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-10-26 14:36:17'),
(1117, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-10-26 14:36:58'),
(1118, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-10-26 14:37:42'),
(1119, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-10-26 14:40:44'),
(1120, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-10-26 14:40:45'),
(1121, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-10-26 14:41:01'),
(1122, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-10-26 14:41:02'),
(1123, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-10-26 14:41:06'),
(1124, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-10-26 14:41:52'),
(1125, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-10-26 14:41:54'),
(1126, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-10-26 14:42:00'),
(1127, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-10-26 14:45:25'),
(1128, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-10-26 14:45:32'),
(1129, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-10-26 14:46:06'),
(1130, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-10-26 14:46:08'),
(1131, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-10-26 14:46:12'),
(1132, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-10-26 14:46:38'),
(1133, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-10-26 14:46:42'),
(1134, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-10-26 14:47:09'),
(1135, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-10-26 14:47:13'),
(1136, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-10-26 14:47:15'),
(1137, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-10-26 14:48:15'),
(1138, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-10-26 14:48:16'),
(1139, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-10-26 14:48:44'),
(1140, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-10-26 14:48:46'),
(1141, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-10-26 14:48:52'),
(1142, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-10-26 14:50:26'),
(1143, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-10-26 14:50:33'),
(1144, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-10-26 14:51:43'),
(1145, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-10-26 14:52:50'),
(1146, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-10-26 14:53:19'),
(1147, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-10-26 14:54:33'),
(1148, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-10-26 14:55:06'),
(1149, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-10-26 14:57:09'),
(1150, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-10-26 14:58:21'),
(1151, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-10-26 14:58:41'),
(1152, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-10-26 15:02:37'),
(1153, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-10-26 15:08:15'),
(1154, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-10-26 15:10:12'),
(1155, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-10-26 15:10:23'),
(1156, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-10-26 15:10:38'),
(1157, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-10-26 15:12:18'),
(1158, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-10-26 15:12:34'),
(1159, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-10-27 09:42:24'),
(1160, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-10-27 09:51:01'),
(1161, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-10-27 09:51:35'),
(1162, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-10-27 09:53:18'),
(1163, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-10-27 09:53:46');
INSERT INTO `ok_activities` (`activity_id`, `domain`, `context`, `user`, `user_id`, `action`, `message`, `status`, `date_added`) VALUES
(1164, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-10-27 09:54:30'),
(1165, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-10-27 09:57:52'),
(1166, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-10-27 09:59:02'),
(1167, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-10-27 10:00:13'),
(1168, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-10-27 10:02:08'),
(1169, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-10-27 10:02:11'),
(1170, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"http://192.168.0.104/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-10-27 10:03:23'),
(1171, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-10-27 10:04:24'),
(1172, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://192.168.0.104/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-10-27 10:05:05'),
(1173, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"http://192.168.0.104/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-10-27 10:05:27'),
(1174, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-10-27 10:05:47'),
(1175, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://192.168.0.104/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-10-27 10:06:24'),
(1176, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-10-27 10:06:25'),
(1177, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"http://192.168.0.104/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-10-27 10:06:30'),
(1178, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-10-27 10:10:03'),
(1179, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://192.168.0.104/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-10-27 10:10:17'),
(1180, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"http://192.168.0.104/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-10-27 10:10:24'),
(1181, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-10-27 10:11:40'),
(1182, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://192.168.0.104/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-10-27 10:11:53'),
(1183, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"http://192.168.0.104/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-10-27 10:12:00'),
(1184, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-10-27 10:12:51'),
(1185, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://192.168.0.104/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-10-27 10:14:04'),
(1186, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"http://192.168.0.104/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-10-27 10:14:08'),
(1187, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-10-27 10:16:13'),
(1188, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://192.168.0.104/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-10-27 10:17:07'),
(1189, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"http://192.168.0.104/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-10-27 10:17:10'),
(1190, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://192.168.0.104/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-10-27 10:18:27'),
(1191, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-10-27 10:18:29'),
(1192, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"http://192.168.0.104/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-10-27 10:18:39'),
(1193, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-10-27 10:19:09'),
(1194, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://192.168.0.104/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-10-27 10:22:55'),
(1195, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"http://192.168.0.104/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-10-27 10:22:59'),
(1196, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-10-27 10:24:45'),
(1197, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://192.168.0.104/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-10-27 10:25:19'),
(1198, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"http://192.168.0.104/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-10-27 10:25:25'),
(1199, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-10-27 10:25:47'),
(1200, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://192.168.0.104/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-10-27 10:26:41'),
(1201, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"http://192.168.0.104/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-10-27 10:26:57'),
(1202, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-10-27 10:27:17'),
(1203, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://192.168.0.104/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-10-27 10:28:01'),
(1204, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"http://192.168.0.104/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-10-27 10:28:06'),
(1205, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://192.168.0.104/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-10-27 10:30:56'),
(1206, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://192.168.0.104/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-10-27 10:31:55'),
(1207, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-10-27 10:32:40'),
(1208, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://192.168.0.104/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-10-27 10:34:23'),
(1209, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"http://192.168.0.104/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-10-27 10:34:31'),
(1210, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-10-27 10:35:05'),
(1211, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://192.168.0.104/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-10-27 10:36:20'),
(1212, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"http://192.168.0.104/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-10-27 10:36:45'),
(1213, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-10-27 10:37:38'),
(1214, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://192.168.0.104/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-10-27 10:38:50'),
(1215, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-10-27 10:38:58'),
(1216, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://192.168.0.104/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-10-27 10:39:34'),
(1217, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-10-27 10:39:41'),
(1218, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-10-27 10:39:47'),
(1219, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://192.168.0.104/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-10-27 10:43:30'),
(1220, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-10-27 10:44:22'),
(1221, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-10-27 10:44:32'),
(1222, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-10-27 10:45:38'),
(1223, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-10-27 10:45:44'),
(1224, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-10-27 11:02:15'),
(1225, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-10-27 11:02:54'),
(1226, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-10-27 11:08:19'),
(1227, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"http://192.168.0.104/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-10-27 11:08:19'),
(1228, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://192.168.0.104/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-10-27 11:08:41'),
(1229, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"http://192.168.0.104/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-10-27 11:08:58'),
(1230, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://192.168.0.104/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-10-27 11:15:01'),
(1231, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-10-27 11:15:06'),
(1232, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-10-27 11:15:16'),
(1233, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"http://192.168.0.104/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-10-27 11:16:03'),
(1234, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://192.168.0.104/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-10-27 11:18:56'),
(1235, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-10-27 12:21:57'),
(1236, 'admin', 'customers', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=2\"><b>dhiraj chaudhari.</b></a>', 0, '2018-10-27 12:38:07'),
(1237, 'admin', 'customers', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=3\"><b>dhiraj chaudhari.</b></a>', 0, '2018-10-27 12:38:44'),
(1238, 'admin', 'customers', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=4\"><b>dhiraj chaudhari.</b></a>', 0, '2018-10-27 12:39:10'),
(1239, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-10-27 13:30:39'),
(1240, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-10-27 13:30:40'),
(1241, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-10-27 13:33:00'),
(1242, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-10-27 13:33:03'),
(1243, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=15\"><b>Demo Smart Restro.</b></a>', 0, '2018-10-27 13:38:34'),
(1244, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-10-27 13:42:38'),
(1245, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=15\"><b>Demo Smart Restro.</b></a>', 0, '2018-10-27 13:43:52'),
(1246, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=15\"><b>Demo Smart Restro.</b></a>', 0, '2018-10-27 16:04:29'),
(1247, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=15\"><b>Demo Smart Restro.</b></a>', 0, '2018-10-27 16:04:41'),
(1248, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=15\"><b>Demo Smart Restro.</b></a>', 0, '2018-10-27 16:04:48'),
(1249, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=15\"><b>Demo Smart Restro.</b></a>', 0, '2018-10-27 16:05:01'),
(1250, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=15\"><b>Demo Smart Restro.</b></a>', 0, '2018-10-27 16:05:21'),
(1251, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=15\"><b>Demo Smart Restro.</b></a>', 0, '2018-10-27 16:05:29'),
(1252, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=20\"><b>Baner Branch.</b></a>', 0, '2018-10-27 16:05:55'),
(1253, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=4\"><b>dhiraj chaudhari.</b></a>', 0, '2018-10-27 17:17:41'),
(1254, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-10-29 11:11:10'),
(1255, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=4\"><b>dhiraj chaudhari.</b></a>', 0, '2018-10-29 12:08:18'),
(1256, 'admin', 'customers', 'staff', 4, 'logged in', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in as <a href=\"http://localhost/testing/admin/customers/edit?id=4\">dhiraj chaudhari</a>.', 0, '2018-10-29 12:08:27'),
(1257, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-10-29 16:54:54'),
(1258, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-10-29 19:28:55'),
(1259, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-10-29 20:18:31'),
(1260, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=4\"><b>dhiraj chaudhari.</b></a>', 0, '2018-10-29 20:44:43'),
(1261, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-10-30 09:30:56'),
(1262, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-10-30 09:30:57'),
(1263, 'admin', 'customers', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=5\"><b>ram patil.</b></a>', 0, '2018-10-30 09:48:48'),
(1264, 'admin', 'customers', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=6\"><b>dhiraj chaudhari chaudhari.</b></a>', 0, '2018-10-30 09:57:21'),
(1265, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=6\"><b>dhiraj chaudhari chaudhari.</b></a>', 0, '2018-10-30 09:58:41'),
(1266, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-10-30 11:06:23'),
(1267, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=5\"><b>ram patil.</b></a>', 0, '2018-10-30 11:10:09'),
(1268, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-10-30 12:16:10'),
(1269, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-10-31 09:35:13'),
(1270, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-10-31 09:36:59'),
(1271, 'admin', 'customers', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=7\"><b>prathamesh kulkarni.</b></a>', 0, '2018-10-31 09:37:48'),
(1272, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=7\"><b>prathamesh kulkarni.</b></a>', 0, '2018-10-31 09:38:43'),
(1273, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-10-31 11:42:09'),
(1274, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-10-31 11:42:19'),
(1275, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=5\"><b>ram1 patil.</b></a>', 0, '2018-10-31 12:09:00'),
(1276, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=5\"><b>ram1 patil.</b></a>', 0, '2018-10-31 12:10:42'),
(1277, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-10-31 12:26:45'),
(1278, 'admin', 'customers', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=8\"><b>abc abc.</b></a>', 0, '2018-10-31 12:57:22'),
(1279, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-10-31 16:51:01'),
(1280, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=7\"><b>prathamesh kulkarni.</b></a>', 0, '2018-10-31 16:54:47'),
(1281, 'admin', 'customers', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=9\"><b>alhad sir.</b></a>', 0, '2018-10-31 17:03:19'),
(1282, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=9\"><b>alhad sir.</b></a>', 0, '2018-10-31 17:03:32'),
(1283, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=9\"><b>alhad sir.</b></a>', 0, '2018-10-31 17:03:32'),
(1284, 'admin', 'staffs', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> staff <a href=\"http://localhost/testing/admin/staffs/edit\"><b>dhiraj.</b></a>', 0, '2018-10-31 17:37:10'),
(1285, 'admin', 'staffs', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> staff <a href=\"http://localhost/testing/admin/staffs/edit\"><b>dhiraj.</b></a>', 0, '2018-10-31 17:37:44'),
(1286, 'admin', 'staffs', 'staff', 18, 'logged in', '<a href=\"http://192.168.0.104/testing/admin/staffs/edit?id=18\">dhiraj</a> <b>logged</b> in.', 0, '2018-10-31 17:38:43'),
(1287, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-11-01 09:57:38'),
(1288, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"http://192.168.0.102/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-11-01 09:59:05'),
(1289, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-11-01 10:00:38'),
(1290, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-11-01 10:00:49'),
(1291, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"http://192.168.0.102/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-11-01 10:01:14'),
(1292, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-11-01 10:01:39'),
(1293, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-11-01 10:01:44'),
(1294, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-11-01 10:02:16'),
(1295, 'admin', 'staffs', 'staff', 18, 'logged in', '<a href=\"http://192.168.0.102/testing/admin/staffs/edit?id=18\">dhiraj</a> <b>logged</b> in.', 0, '2018-11-01 10:24:19'),
(1296, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-11-02 09:28:07'),
(1297, 'admin', 'customers', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=10\"><b>dhi chaudhari.</b></a>', 0, '2018-11-02 09:29:14'),
(1298, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=10\"><b>dhi chaudhari.</b></a>', 0, '2018-11-02 09:30:41'),
(1299, 'admin', 'staffs', 'staff', 18, 'logged in', '<a href=\"http://localhost/testing/admin/staffs/edit?id=18\">dhiraj</a> <b>logged</b> in.', 0, '2018-11-03 10:12:37'),
(1300, 'admin', 'locations', 'staff', 18, 'updated', 'dhiraj <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=14\"><b>Smart Restaurant - Dhayari.</b></a>', 0, '2018-11-03 12:43:28'),
(1301, 'admin', 'locations', 'staff', 18, 'updated', 'dhiraj <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=21\"><b>KonguNadu.</b></a>', 0, '2018-11-03 13:05:02'),
(1302, 'admin', 'locations', 'staff', 18, 'updated', 'dhiraj <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=21\"><b>qqqw.</b></a>', 0, '2018-11-03 13:54:06'),
(1303, 'admin', 'locations', 'staff', 18, 'updated', 'dhiraj <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=21\"><b>qqqw.</b></a>', 0, '2018-11-03 13:54:24'),
(1304, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-11-05 09:22:22'),
(1305, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=30\"><b>testing1.</b></a>', 0, '2018-11-05 10:11:13'),
(1306, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=30\"><b>testing1.</b></a>', 0, '2018-11-05 10:11:53'),
(1307, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=30\"><b>testing1.</b></a>', 0, '2018-11-05 10:12:43'),
(1308, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=31\"><b>testing.</b></a>', 0, '2018-11-05 10:22:19'),
(1309, 'admin', 'staffs', 'staff', 18, 'logged in', '<a href=\"http://192.168.0.102/testing/admin/staffs/edit?id=18\">dhiraj</a> <b>logged</b> in.', 0, '2018-11-05 10:24:12'),
(1310, 'admin', 'locations', 'staff', 18, 'updated', 'dhiraj <b>updated</b> location <a href=\"http://192.168.0.102/testing/admin/locations/edit?id=35\"><b>sam123.</b></a>', 0, '2018-11-05 10:30:54'),
(1311, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=38\"><b>testing1.</b></a>', 0, '2018-11-05 10:41:16'),
(1312, 'admin', 'locations', 'staff', 18, 'updated', 'dhiraj <b>updated</b> location <a href=\"http://192.168.0.102/testing/admin/locations/edit?id=39\"><b>rajshri.</b></a>', 0, '2018-11-05 10:43:58'),
(1313, 'admin', 'locations', 'staff', 18, 'updated', 'dhiraj <b>updated</b> location <a href=\"http://192.168.0.102/testing/admin/locations/edit?id=40\"><b>rajshri.</b></a>', 0, '2018-11-05 10:46:03'),
(1314, 'admin', 'locations', 'staff', 18, 'updated', 'dhiraj <b>updated</b> location <a href=\"http://192.168.0.102/testing/admin/locations/edit?id=40\"><b>rajshri.</b></a>', 0, '2018-11-05 10:46:05'),
(1315, 'admin', 'locations', 'staff', 18, 'updated', 'dhiraj <b>updated</b> location <a href=\"http://192.168.0.102/testing/admin/locations/edit?id=40\"><b>rajshri.</b></a>', 0, '2018-11-05 10:46:07'),
(1316, 'admin', 'locations', 'staff', 18, 'updated', 'dhiraj <b>updated</b> location <a href=\"http://192.168.0.102/testing/admin/locations/edit?id=40\"><b>rajshri.</b></a>', 0, '2018-11-05 10:46:09'),
(1317, 'admin', 'locations', 'staff', 18, 'updated', 'dhiraj <b>updated</b> location <a href=\"http://192.168.0.102/testing/admin/locations/edit?id=41\"><b>rrb.</b></a>', 0, '2018-11-05 10:46:50'),
(1318, 'admin', 'locations', 'staff', 18, 'updated', 'dhiraj <b>updated</b> location <a href=\"http://192.168.0.102/testing/admin/locations/edit?id=41\"><b>rrb.</b></a>', 0, '2018-11-05 10:46:52'),
(1319, 'admin', 'locations', 'staff', 18, 'updated', 'dhiraj <b>updated</b> location <a href=\"http://192.168.0.102/testing/admin/locations/edit?id=41\"><b>rrb.</b></a>', 0, '2018-11-05 10:46:55'),
(1320, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=42\"><b>online.</b></a>', 0, '2018-11-05 11:00:25'),
(1321, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=42\"><b>online.</b></a>', 0, '2018-11-05 11:00:37'),
(1322, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=42\"><b>online.</b></a>', 0, '2018-11-05 11:00:51'),
(1323, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=44\"><b>testing1.</b></a>', 0, '2018-11-05 11:05:08'),
(1324, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=44\"><b>testing1.</b></a>', 0, '2018-11-05 11:05:20'),
(1325, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=48\"><b>testing1.</b></a>', 0, '2018-11-05 11:37:50'),
(1326, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=48\"><b>testing1.</b></a>', 0, '2018-11-05 11:37:55'),
(1327, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=48\"><b>testing1.</b></a>', 0, '2018-11-05 11:38:03'),
(1328, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=48\"><b>testing1.</b></a>', 0, '2018-11-05 11:38:09'),
(1329, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=48\"><b>testing1.</b></a>', 0, '2018-11-05 11:38:13'),
(1330, 'admin', 'locations', 'staff', 18, 'updated', 'dhiraj <b>updated</b> location <a href=\"http://192.168.0.102/testing/admin/locations/edit?id=43\"><b>amir.</b></a>', 0, '2018-11-05 12:02:41'),
(1331, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=51\"><b>testing.</b></a>', 0, '2018-11-05 12:05:04'),
(1332, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=51\"><b>testing.</b></a>', 0, '2018-11-05 12:13:11'),
(1333, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=51\"><b>testing.</b></a>', 0, '2018-11-05 12:13:24'),
(1334, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=51\"><b>testing.</b></a>', 0, '2018-11-05 12:13:53'),
(1335, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=56\"><b>testing.</b></a>', 0, '2018-11-05 12:54:22'),
(1336, 'admin', 'locations', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=66\"><b>testing.</b></a>', 0, '2018-11-05 13:55:21'),
(1337, 'admin', 'locations', 'staff', 18, 'added', 'dhiraj <b>added</b> location <a href=\"http://192.168.0.102/testing/admin/locations/edit?id=67\"><b>purvi.</b></a>', 0, '2018-11-05 13:59:33'),
(1338, 'admin', 'locations', 'staff', 18, 'updated', 'dhiraj <b>updated</b> location <a href=\"http://192.168.0.102/testing/admin/locations/edit?id=67\"><b>purvi.</b></a>', 0, '2018-11-05 13:59:42'),
(1339, 'admin', 'locations', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=68\"><b>testing.</b></a>', 0, '2018-11-05 13:59:42'),
(1340, 'admin', 'locations', 'staff', 18, 'updated', 'dhiraj <b>updated</b> location <a href=\"http://192.168.0.102/testing/admin/locations/edit?id=67\"><b>purvi.</b></a>', 0, '2018-11-05 14:04:33'),
(1341, 'admin', 'locations', 'staff', 18, 'updated', 'dhiraj <b>updated</b> location <a href=\"http://192.168.0.102/testing/admin/locations/edit?id=67\"><b>purvi.</b></a>', 0, '2018-11-05 14:04:36'),
(1342, 'admin', 'locations', 'staff', 18, 'updated', 'dhiraj <b>updated</b> location <a href=\"http://192.168.0.102/testing/admin/locations/edit?id=67\"><b>purvi.</b></a>', 0, '2018-11-05 14:04:42'),
(1343, 'admin', 'customers', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=11\"><b>xyz xyz.</b></a>', 0, '2018-11-05 14:05:15'),
(1344, 'admin', 'locations', 'staff', 18, 'added', 'dhiraj <b>added</b> location <a href=\"http://192.168.0.102/testing/admin/locations/edit?id=69\"><b>rani.</b></a>', 0, '2018-11-05 14:12:12'),
(1345, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=11\"><b>xyz xyz.</b></a>', 0, '2018-11-05 14:17:01'),
(1346, 'admin', 'customers', 'staff', 18, 'added', 'dhiraj <b>added</b> customer <a href=\"http://192.168.0.102/testing/admin/customers/edit?id=12\"><b>sss gdp.</b></a>', 0, '2018-11-05 14:20:40'),
(1347, 'admin', 'customers', 'staff', 18, 'added', 'dhiraj <b>added</b> customer <a href=\"http://192.168.0.102/testing/admin/customers/edit?id=13\"><b>sss gdp.</b></a>', 0, '2018-11-05 14:20:45'),
(1348, 'admin', 'customers', 'staff', 18, 'added', 'dhiraj <b>added</b> customer <a href=\"http://192.168.0.102/testing/admin/customers/edit?id=14\"><b>sss gdp.</b></a>', 0, '2018-11-05 14:20:50'),
(1349, 'admin', 'customers', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=15\"><b>testing chaudhari.</b></a>', 0, '2018-11-05 14:21:28'),
(1350, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=15\"><b>testing chaudhari.</b></a>', 0, '2018-11-05 14:22:13'),
(1351, 'admin', 'customers', 'staff', 18, 'added', 'dhiraj <b>added</b> customer <a href=\"http://192.168.0.102/testing/admin/customers/edit?id=16\"><b>eon pam.</b></a>', 0, '2018-11-05 14:23:00'),
(1352, 'admin', 'customers', 'staff', 18, 'added', 'dhiraj <b>added</b> customer <a href=\"http://192.168.0.102/testing/admin/customers/edit?id=17\"><b>eon pam.</b></a>', 0, '2018-11-05 14:23:05'),
(1353, 'admin', 'customers', 'staff', 18, 'added', 'dhiraj <b>added</b> customer <a href=\"http://192.168.0.102/testing/admin/customers/edit?id=18\"><b>eon pam.</b></a>', 0, '2018-11-05 14:23:10'),
(1354, 'admin', 'customers', 'staff', 18, 'added', 'dhiraj <b>added</b> customer <a href=\"http://192.168.0.102/testing/admin/customers/edit?id=19\"><b>eon pam.</b></a>', 0, '2018-11-05 14:23:15'),
(1355, 'admin', 'customers', 'staff', 18, 'added', 'dhiraj <b>added</b> customer <a href=\"http://192.168.0.102/testing/admin/customers/edit?id=20\"><b>sam pam.</b></a>', 0, '2018-11-05 14:24:14'),
(1356, 'admin', 'customers', 'staff', 18, 'added', 'dhiraj <b>added</b> customer <a href=\"http://192.168.0.102/testing/admin/customers/edit?id=21\"><b>sam pam.</b></a>', 0, '2018-11-05 14:24:44'),
(1357, 'admin', 'customers', 'staff', 18, 'updated', 'dhiraj <b>updated</b> customer <a href=\"http://192.168.0.102/testing/admin/customers/edit?id=21\"><b>sam123456 pam.</b></a>', 0, '2018-11-05 14:24:59'),
(1358, 'admin', 'customers', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=22\"><b>bkc chaudhari.</b></a>', 0, '2018-11-05 14:25:58'),
(1359, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=22\"><b>bkc chaudhari.</b></a>', 0, '2018-11-05 14:26:32'),
(1360, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=69\"><b>ranis.</b></a>', 0, '2018-11-05 14:27:46'),
(1361, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=69\"><b>raniss.</b></a>', 0, '2018-11-05 14:28:26'),
(1362, 'admin', 'locations', 'staff', 18, 'added', 'dhiraj <b>added</b> location <a href=\"http://192.168.0.102/testing/admin/locations/edit?id=70\"><b>kothrud.</b></a>', 0, '2018-11-05 14:32:21'),
(1363, 'admin', 'inventory', 'staff', 18, 'added', 'dhiraj <b>added</b> menu item <a href=\"http://192.168.0.102/testing/admin/items/edit?id=27\"><b>Tomato.</b></a>', 0, '2018-11-05 16:18:30'),
(1364, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-11-05 16:37:01'),
(1365, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-11-05 16:46:55'),
(1366, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-11-05 16:47:48'),
(1367, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-11-05 16:49:33'),
(1368, 'admin', 'coupons', 'staff', 18, 'added', 'dhiraj <b>added</b> coupon <a href=\"http://192.168.0.102/testing/admin/coupons/edit?id=14\"><b>Diwali Offer.</b></a>', 0, '2018-11-05 16:52:52'),
(1369, 'admin', 'coupons', 'staff', 18, 'updated', 'dhiraj <b>updated</b> coupon <a href=\"http://192.168.0.102/testing/admin/coupons/edit?id=14\"><b>Diwali Offer.</b></a>', 0, '2018-11-05 16:52:55'),
(1370, 'admin', 'locations', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=72\"><b>.</b></a>', 0, '2018-11-05 17:01:25'),
(1371, 'admin', 'locations', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=73\"><b>testing.</b></a>', 0, '2018-11-05 17:03:06'),
(1372, 'admin', 'locations', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=74\"><b>testing.</b></a>', 0, '2018-11-05 17:03:38'),
(1373, 'admin', 'locations', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=75\"><b>testing.</b></a>', 0, '2018-11-05 17:04:21'),
(1374, 'admin', 'locations', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=76\"><b>testing.</b></a>', 0, '2018-11-05 17:05:05'),
(1375, 'admin', 'reviews', 'staff', 18, 'added', 'dhiraj <b>added</b> review <a href=\"http://192.168.0.102/testing/admin/reviews/edit\"><b>.</b></a>', 0, '2018-11-05 17:11:52'),
(1376, 'admin', 'reviews', 'staff', 18, 'updated', 'dhiraj <b>updated</b> review <a href=\"http://192.168.0.102/testing/admin/reviews/edit?id=12\"><b>12.</b></a>', 0, '2018-11-05 17:11:57'),
(1377, 'admin', 'locations', 'staff', 18, 'added', 'dhiraj <b>added</b> location <a href=\"http://192.168.0.102/testing/admin/locations/edit?id=77\"><b>katraj.</b></a>', 0, '2018-11-05 17:34:17'),
(1378, 'admin', 'locations', 'staff', 18, 'updated', 'dhiraj <b>updated</b> location <a href=\"http://192.168.0.102/testing/admin/locations/edit?id=77\"><b>katraj.</b></a>', 0, '2018-11-05 17:34:21'),
(1379, 'admin', 'locations', 'staff', 18, 'updated', 'dhiraj <b>updated</b> location <a href=\"http://192.168.0.102/testing/admin/locations/edit?id=77\"><b>katraj.</b></a>', 0, '2018-11-05 17:36:03'),
(1380, 'admin', 'locations', 'staff', 18, 'updated', 'dhiraj <b>updated</b> location <a href=\"http://192.168.0.102/testing/admin/locations/edit?id=77\"><b>katraj.</b></a>', 0, '2018-11-05 17:36:13'),
(1381, 'admin', 'tables', 'staff', 18, 'added', 'dhiraj <b>added</b> table <a href=\"http://192.168.0.102/testing/admin/tables/edit\"><b>sam.</b></a>', 0, '2018-11-05 17:43:05'),
(1382, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-11-05 17:44:55'),
(1383, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-11-05 17:47:41'),
(1384, 'admin', 'locations', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=78\"><b>testing.</b></a>', 0, '2018-11-05 17:52:05'),
(1385, 'admin', 'locations', 'staff', 18, 'added', 'dhiraj <b>added</b> location <a href=\"http://192.168.0.102/testing/admin/locations/edit?id=79\"><b>manapa.</b></a>', 0, '2018-11-05 17:55:55'),
(1386, 'admin', 'locations', 'staff', 18, 'updated', 'dhiraj <b>updated</b> location <a href=\"http://192.168.0.102/testing/admin/locations/edit?id=79\"><b>manapa.</b></a>', 0, '2018-11-05 17:57:52'),
(1387, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-11-05 17:58:33'),
(1388, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-11-06 10:07:39'),
(1389, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=79\"><b>manapaq.</b></a>', 0, '2018-11-06 10:10:03'),
(1390, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=15\"><b>Demo Smart Restroa.</b></a>', 0, '2018-11-06 10:17:30'),
(1391, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=15\"><b>Demo Smart Restro.</b></a>', 0, '2018-11-06 10:17:43'),
(1392, 'admin', 'locations', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=80\"><b>testing.</b></a>', 0, '2018-11-06 10:19:11'),
(1393, 'admin', 'locations', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=81\"><b>testing.</b></a>', 0, '2018-11-06 10:19:44'),
(1394, 'admin', 'locations', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=82\"><b>testing.</b></a>', 0, '2018-11-06 10:27:30'),
(1395, 'admin', 'locations', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=83\"><b>testing.</b></a>', 0, '2018-11-06 10:29:38'),
(1396, 'admin', 'locations', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=1\"><b>vijay raj.</b></a>', 0, '2018-11-06 10:40:12'),
(1397, 'admin', 'locations', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=2\"><b>testing.</b></a>', 0, '2018-11-06 10:42:17'),
(1398, 'admin', 'locations', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=3\"><b>testing.</b></a>', 0, '2018-11-06 10:42:17'),
(1399, 'admin', 'locations', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=4\"><b>testing.</b></a>', 0, '2018-11-06 10:42:33'),
(1400, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=1\"><b>vijay raj.</b></a>', 0, '2018-11-06 10:44:43'),
(1401, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=1\"><b>vijay raj.</b></a>', 0, '2018-11-06 10:49:23'),
(1402, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=1\"><b>vijay raj.</b></a>', 0, '2018-11-06 10:49:59'),
(1403, 'admin', 'staffs', 'staff', 18, 'logged in', '<a href=\"http://192.168.0.106/testing/admin/staffs/edit?id=18\">dhiraj</a> <b>logged</b> in.', 0, '2018-11-06 11:01:24'),
(1404, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=1\"><b>vijay raj.</b></a>', 0, '2018-11-06 11:36:24'),
(1405, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=1\"><b>vijay raj.</b></a>', 0, '2018-11-06 11:36:58'),
(1406, 'admin', 'customers', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=1\"><b>prathamesh kulkarni.</b></a>', 0, '2018-11-06 11:37:48'),
(1407, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=1\"><b>prathamesh kulkarni.</b></a>', 0, '2018-11-06 11:39:48'),
(1408, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=1\"><b>prathamesh kulkarni.</b></a>', 0, '2018-11-06 11:43:28'),
(1409, 'admin', 'customers', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=2\"><b>pj pj.</b></a>', 0, '2018-11-06 15:00:42'),
(1410, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=2\"><b>pj pj.</b></a>', 0, '2018-11-06 15:00:58'),
(1411, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=2\"><b>pj pj.</b></a>', 0, '2018-11-06 15:01:19'),
(1412, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=1\"><b>prathamesh kulkarni.</b></a>', 0, '2018-11-06 15:05:00'),
(1413, 'admin', 'customers', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=3\"><b>dj dj.</b></a>', 0, '2018-11-06 15:07:06'),
(1414, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=3\"><b>dj dj.</b></a>', 0, '2018-11-06 15:07:33'),
(1415, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=3\"><b>dj dj.</b></a>', 0, '2018-11-06 15:19:23'),
(1416, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=3\"><b>dj dj.</b></a>', 0, '2018-11-06 15:19:43'),
(1417, 'admin', 'customers', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=4\"><b>Demo Restro.</b></a>', 0, '2018-11-06 15:36:45'),
(1418, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=4\"><b>Demo Restro.</b></a>', 0, '2018-11-06 15:38:30');
INSERT INTO `ok_activities` (`activity_id`, `domain`, `context`, `user`, `user_id`, `action`, `message`, `status`, `date_added`) VALUES
(1419, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=4\"><b>Demo Restro.</b></a>', 0, '2018-11-06 15:41:07'),
(1420, 'admin', 'customers', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=5\"><b>new Restro.</b></a>', 0, '2018-11-06 15:44:57'),
(1421, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=5\"><b>new Restro.</b></a>', 0, '2018-11-06 15:48:55'),
(1422, 'admin', 'locations', 'staff', 18, 'added', 'dhiraj <b>added</b> location <a href=\"http://192.168.0.106/testing/admin/locations/edit?id=5\"><b>kothrud.</b></a>', 0, '2018-11-06 16:55:05'),
(1423, 'admin', 'customers', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=6\"><b>chetana patil.</b></a>', 0, '2018-11-06 17:10:44'),
(1424, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=6\"><b>chetana patil.</b></a>', 0, '2018-11-06 17:11:05'),
(1425, 'admin', 'menus', 'staff', 18, 'added', 'dhiraj <b>added</b> menu item <a href=\"http://192.168.0.106/testing/admin/menus/edit?id=33\"><b>hydrabadi-biryani.</b></a>', 0, '2018-11-06 17:14:19'),
(1426, 'admin', 'menus', 'staff', 18, 'added', 'dhiraj <b>added</b> menu item <a href=\"http://192.168.0.106/testing/admin/menus/edit?id=34\"><b>hydrabadi-biryani.</b></a>', 0, '2018-11-06 17:17:25'),
(1427, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=5\"><b>kothrud.</b></a>', 0, '2018-11-06 17:20:56'),
(1428, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=5\"><b>kothrud.</b></a>', 0, '2018-11-06 17:21:07'),
(1429, 'admin', 'customers', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=7\"><b>PRATHAMESH kulkarni.</b></a>', 0, '2018-11-06 17:24:52'),
(1430, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=7\"><b>PRATHAMESH kulkarni.</b></a>', 0, '2018-11-06 17:25:09'),
(1431, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=7\"><b>PRATHAMESH kulkarni.</b></a>', 0, '2018-11-06 17:25:35'),
(1432, 'admin', 'customers', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=8\"><b>prathamesh kulkarni.</b></a>', 0, '2018-11-06 17:36:38'),
(1433, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=8\"><b>prathamesh kulkarni.</b></a>', 0, '2018-11-06 17:37:00'),
(1434, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=8\"><b>prathamesh kulkarni.</b></a>', 0, '2018-11-06 17:41:15'),
(1435, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-11-06 18:07:20'),
(1436, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-11-09 09:57:27'),
(1437, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=8\"><b>prathamesh kulkarni.</b></a>', 0, '2018-11-09 10:09:22'),
(1438, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=8\"><b>prathamesh kulkarni.</b></a>', 0, '2018-11-09 10:14:00'),
(1439, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=8\"><b>prathamesh kulkarni.</b></a>', 0, '2018-11-09 10:15:14'),
(1440, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=8\"><b>prathamesh kulkarni.</b></a>', 0, '2018-11-09 10:17:44'),
(1441, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=8\"><b>prathamesh kulkarni.</b></a>', 0, '2018-11-09 11:16:38'),
(1442, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=8\"><b>prathamesh kulkarni.</b></a>', 0, '2018-11-09 11:28:54'),
(1443, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=8\"><b>prathamesh kulkarni.</b></a>', 0, '2018-11-09 11:36:57'),
(1444, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=8\"><b>prathamesh kulkarni.</b></a>', 0, '2018-11-09 11:45:32'),
(1445, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=8\"><b>prathamesh kulkarni.</b></a>', 0, '2018-11-09 11:56:51'),
(1446, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=8\"><b>prathamesh kulkarni.</b></a>', 0, '2018-11-09 12:02:17'),
(1447, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=8\"><b>prathamesh kulkarni.</b></a>', 0, '2018-11-09 12:02:40'),
(1448, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=8\"><b>prathamesh kulkarni.</b></a>', 0, '2018-11-09 12:07:45'),
(1449, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=8\"><b>prathamesh kulkarni.</b></a>', 0, '2018-11-09 12:07:47'),
(1450, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=8\"><b>prathamesh kulkarni.</b></a>', 0, '2018-11-09 12:18:20'),
(1451, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=8\"><b>prathamesh1 kulkarni.</b></a>', 0, '2018-11-09 12:28:08'),
(1452, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=8\"><b>prathamesh1 kulkarni.</b></a>', 0, '2018-11-09 12:37:11'),
(1453, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=8\"><b>prathamesh1 kulkarni.</b></a>', 0, '2018-11-09 12:37:12'),
(1454, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=8\"><b>prathamesh1 kulkarni.</b></a>', 0, '2018-11-09 12:37:13'),
(1455, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=8\"><b>prathamesh1 kulkarni.</b></a>', 0, '2018-11-09 12:37:13'),
(1456, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=8\"><b>prathamesh1 kulkarni.</b></a>', 0, '2018-11-09 12:41:31'),
(1457, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=8\"><b>prathamesh1 kulkarni.</b></a>', 0, '2018-11-09 12:41:35'),
(1458, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=8\"><b>prathamesh1 kulkarni.</b></a>', 0, '2018-11-09 12:41:40'),
(1459, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=8\"><b>prathamesh1 kulkarni.</b></a>', 0, '2018-11-09 12:55:59'),
(1460, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=8\"><b>prathamesh1 kulkarni.</b></a>', 0, '2018-11-09 12:56:06'),
(1461, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=8\"><b>prathamesh1 kulkarni.</b></a>', 0, '2018-11-09 13:10:35'),
(1462, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=8\"><b>prathamesh1 kulkarni.</b></a>', 0, '2018-11-09 13:38:12'),
(1463, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=8\"><b>prathamesh1 kulkarni.</b></a>', 0, '2018-11-09 13:45:47'),
(1464, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=8\"><b>prathamesh1 kulkarni.</b></a>', 0, '2018-11-09 13:48:25'),
(1465, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-11-09 13:53:01'),
(1466, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=8\"><b>prathamesh1 kulkarni.</b></a>', 0, '2018-11-09 13:57:08'),
(1467, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=8\"><b>prathamesh1 kulkarni.</b></a>', 0, '2018-11-09 14:01:38'),
(1468, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=8\"><b>prathamesh1 kulkarni.</b></a>', 0, '2018-11-09 14:07:32'),
(1469, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=8\"><b>prathamesh1 kulkarni.</b></a>', 0, '2018-11-09 14:08:09'),
(1470, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=8\"><b>prathamesh1 kulkarni.</b></a>', 0, '2018-11-09 14:08:54'),
(1471, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=8\"><b>prathamesh1 kulkarni.</b></a>', 0, '2018-11-09 14:09:53'),
(1472, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=8\"><b>prathamesh1 kulkarni.</b></a>', 0, '2018-11-09 14:10:04'),
(1473, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=8\"><b>prathamesh1 kulkarni.</b></a>', 0, '2018-11-09 14:20:07'),
(1474, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=8\"><b>prathamesh1 kulkarni.</b></a>', 0, '2018-11-09 14:20:17'),
(1475, 'admin', 'staffs', 'staff', 18, 'logged in', '<a href=\"http://192.168.0.102/testing/admin/staffs/edit?id=18\">dhiraj</a> <b>logged</b> in.', 0, '2018-11-09 14:23:33'),
(1476, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=8\"><b>prathamesh1 kulkarni.</b></a>', 0, '2018-11-09 14:32:22'),
(1477, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=8\"><b>prathamesh1 kulkarni.</b></a>', 0, '2018-11-09 14:54:30'),
(1478, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=8\"><b>prathamesh1 kulkarni.</b></a>', 0, '2018-11-09 14:55:41'),
(1479, 'admin', 'customers', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=9\"><b>Demo Restro.</b></a>', 0, '2018-11-09 14:56:46'),
(1480, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=9\"><b>Demo Restro.</b></a>', 0, '2018-11-09 14:57:07'),
(1481, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=8\"><b>prathamesh1 kulkarni.</b></a>', 0, '2018-11-09 14:57:56'),
(1482, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=8\"><b>prathamesh1 kulkarni.</b></a>', 0, '2018-11-09 14:59:03'),
(1483, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=9\"><b>Demo1 Restro.</b></a>', 0, '2018-11-09 15:03:50'),
(1484, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=9\"><b>Demo1 Restro.</b></a>', 0, '2018-11-09 15:09:43'),
(1485, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=9\"><b>Demo1 Restro.</b></a>', 0, '2018-11-09 15:11:22'),
(1486, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=9\"><b>Demo1 Restro.</b></a>', 0, '2018-11-09 15:11:39'),
(1487, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=9\"><b>Demo1 Restro.</b></a>', 0, '2018-11-09 15:38:52'),
(1488, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=9\"><b>Demo1 Restro.</b></a>', 0, '2018-11-09 15:38:53'),
(1489, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=9\"><b>Demo1 Restro.</b></a>', 0, '2018-11-09 15:38:54'),
(1490, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=9\"><b>Demo1 Restro.</b></a>', 0, '2018-11-09 15:39:08'),
(1491, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=9\"><b>Demo1 Restro.</b></a>', 0, '2018-11-09 15:39:22'),
(1492, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=9\"><b>Demo1 Restro.</b></a>', 0, '2018-11-09 15:42:50'),
(1493, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=9\"><b>Demo1 Restro.</b></a>', 0, '2018-11-09 15:42:52'),
(1494, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=9\"><b>Demo1 Restro.</b></a>', 0, '2018-11-09 15:42:54'),
(1495, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=9\"><b>Demo1 Restro.</b></a>', 0, '2018-11-09 15:43:15'),
(1496, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=9\"><b>Demo1 Restro.</b></a>', 0, '2018-11-09 15:43:53'),
(1497, 'admin', 'locations', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=6\"><b>testing.</b></a>', 0, '2018-11-09 15:44:49'),
(1498, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-11-09 15:53:53'),
(1499, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=9\"><b>Demo1 Restro.</b></a>', 0, '2018-11-09 15:54:42'),
(1500, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=9\"><b>Demo1 Restro.</b></a>', 0, '2018-11-09 15:54:50'),
(1501, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=9\"><b>Demo1 Restro.</b></a>', 0, '2018-11-09 15:55:17'),
(1502, 'admin', 'customers', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=10\"><b>abc abc.</b></a>', 0, '2018-11-09 16:20:59'),
(1503, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-11-09 17:27:17'),
(1504, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-11-10 09:29:20'),
(1505, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=9\"><b>Demo1 Restro.</b></a>', 0, '2018-11-10 10:19:32'),
(1506, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=9\"><b>Demo1 Restro.</b></a>', 0, '2018-11-10 10:20:41'),
(1507, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=9\"><b>Demo1 Restro.</b></a>', 0, '2018-11-10 10:21:06'),
(1508, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=9\"><b>Demo1 Restro.</b></a>', 0, '2018-11-10 10:21:07'),
(1509, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=9\"><b>Demo1 Restro.</b></a>', 0, '2018-11-10 10:22:38'),
(1510, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=9\"><b>Demo1 Restro.</b></a>', 0, '2018-11-10 10:22:39'),
(1511, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=9\"><b>Demo1 Restro.</b></a>', 0, '2018-11-10 10:24:20'),
(1512, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=9\"><b>Demo1 Restro.</b></a>', 0, '2018-11-10 10:31:18'),
(1513, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=9\"><b>Demo1 Restro.</b></a>', 0, '2018-11-10 10:32:18'),
(1514, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=9\"><b>Demo1 Restro.</b></a>', 0, '2018-11-10 10:39:09'),
(1515, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=9\"><b>Demo1 Restro.</b></a>', 0, '2018-11-10 10:39:19'),
(1516, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-11-10 10:40:45'),
(1517, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=8\"><b>prathamesh1 kulkarni.</b></a>', 0, '2018-11-10 10:41:10'),
(1518, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=8\"><b>prathamesh1 kulkarni.</b></a>', 0, '2018-11-10 10:41:44'),
(1519, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-11-10 10:49:50'),
(1520, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=8\"><b>prathamesh1 kulkarni.</b></a>', 0, '2018-11-10 10:50:23'),
(1521, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=8\"><b>prathamesh1 kulkarni.</b></a>', 0, '2018-11-10 10:50:33'),
(1522, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-11-10 11:23:55'),
(1523, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=8\"><b>prathamesh11 kulkarni.</b></a>', 0, '2018-11-10 11:28:02'),
(1524, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=8\"><b>prathamesh11 kulkarni.</b></a>', 0, '2018-11-10 11:28:08'),
(1525, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=8\"><b>prathamesh11 kulkarni.</b></a>', 0, '2018-11-10 11:28:48'),
(1526, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=8\"><b>prathamesh11 kulkarni.</b></a>', 0, '2018-11-10 11:29:17'),
(1527, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=8\"><b>prathamesh11 kulkarni.</b></a>', 0, '2018-11-10 11:29:21'),
(1528, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=8\"><b>prathamesh11 kulkarni.</b></a>', 0, '2018-11-10 11:29:36'),
(1529, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=8\"><b>prathamesh11 kulkarni.</b></a>', 0, '2018-11-10 11:29:42'),
(1530, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=8\"><b>prathamesh11 kulkarni.</b></a>', 0, '2018-11-10 11:33:21'),
(1531, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=8\"><b>prathamesh11 kulkarni.</b></a>', 0, '2018-11-10 11:35:27'),
(1532, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=10\"><b>abc abc.</b></a>', 0, '2018-11-10 11:42:36'),
(1533, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=8\"><b>prathamesh11 kulkarni.</b></a>', 0, '2018-11-10 12:07:37'),
(1534, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=8\"><b>prathamesh11 kulkarni.</b></a>', 0, '2018-11-10 12:07:46'),
(1535, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=8\"><b>prathamesh11 kulkarni.</b></a>', 0, '2018-11-10 12:08:07'),
(1536, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=9\"><b>Demo1 Restro.</b></a>', 0, '2018-11-10 12:15:44'),
(1537, 'admin', 'menus', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> menu item <a href=\"http://localhost/testing/admin/menus/edit?id=35\"><b>demo.</b></a>', 0, '2018-11-10 14:26:16'),
(1538, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-11-10 14:29:22'),
(1539, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-11-10 15:06:05'),
(1540, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=8\"><b>prathamesh11 kulkarni.</b></a>', 0, '2018-11-10 15:06:17'),
(1541, 'admin', 'menus', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> menu item <a href=\"http://localhost/testing/admin/menus/edit?id=35\"><b>Demo.</b></a>', 0, '2018-11-10 15:07:06'),
(1542, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=5\"><b>kothrud.</b></a>', 0, '2018-11-10 15:44:50'),
(1543, 'admin', 'locations', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=7\"><b>.</b></a>', 0, '2018-11-10 15:44:58'),
(1544, 'admin', 'customers', 'staff', 8, 'logged in', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in as <a href=\"http://localhost/testing/admin/customers/edit?id=8\">prathamesh11 kulkarni</a>.', 0, '2018-11-10 15:55:58'),
(1545, 'admin', 'locations', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=8\"><b>.</b></a>', 0, '2018-11-10 15:56:16'),
(1546, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=8\"><b>prathamesh11 kulkarni.</b></a>', 0, '2018-11-10 17:01:09'),
(1547, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-11-10 17:36:05'),
(1548, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-11-10 17:36:38'),
(1549, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-11-10 17:42:50'),
(1550, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-11-12 09:42:51'),
(1551, 'admin', 'staffs', 'staff', 18, 'logged in', '<a href=\"http://192.168.0.102/testing/admin/staffs/edit?id=18\">dhiraj</a> <b>logged</b> in.', 0, '2018-11-12 10:07:52'),
(1552, 'admin', 'orders', 'staff', 18, 'updated', 'dhiraj <b>updated</b> order <a href=\"http://192.168.0.102/testing/admin/orders/edit?id=20075\"><b>#20075.</b></a>', 0, '2018-11-12 10:37:08'),
(1553, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=5\"><b>kothrud.</b></a>', 0, '2018-11-12 10:53:15'),
(1554, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=5\"><b>kothrud.</b></a>', 0, '2018-11-12 10:56:01'),
(1555, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=5\"><b>kothrud.</b></a>', 0, '2018-11-12 10:56:14'),
(1556, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=5\"><b>kothrud.</b></a>', 0, '2018-11-12 10:56:54'),
(1557, 'admin', 'locations', 'staff', 18, 'updated', 'dhiraj <b>updated</b> location <a href=\"http://192.168.0.102/testing/admin/locations/edit?id=5\"><b>kothrud.</b></a>', 0, '2018-11-12 10:58:05'),
(1558, 'admin', 'locations', 'staff', 18, 'updated', 'dhiraj <b>updated</b> location <a href=\"http://192.168.0.102/testing/admin/locations/edit?id=5\"><b>kothrud.</b></a>', 0, '2018-11-12 10:58:11'),
(1559, 'admin', 'customers', 'staff', 8, 'logged in', '<a href=\"http://192.168.0.102/testing/admin/staffs/edit?id=18\">dhiraj</a> <b>logged</b> in as <a href=\"http://192.168.0.102/testing/admin/customers/edit?id=8\">prathamesh11 kulkarni</a>.', 0, '2018-11-12 11:02:02'),
(1560, 'admin', 'locations', 'staff', 18, 'added', 'dhiraj <b>added</b> location <a href=\"http://192.168.0.102/testing/admin/locations/edit?id=9\"><b>Karve Nagar.</b></a>', 0, '2018-11-12 11:09:21'),
(1561, 'admin', 'locations', 'staff', 18, 'updated', 'dhiraj <b>updated</b> location <a href=\"http://192.168.0.102/testing/admin/locations/edit?id=9\"><b>Karve Nagar.</b></a>', 0, '2018-11-12 11:13:05'),
(1562, 'admin', 'locations', 'staff', 18, 'updated', 'dhiraj <b>updated</b> location <a href=\"http://192.168.0.102/testing/admin/locations/edit?id=9\"><b>Karve Nagar.</b></a>', 0, '2018-11-12 11:13:48'),
(1563, 'admin', 'locations', 'staff', 18, 'updated', 'dhiraj <b>updated</b> location <a href=\"http://192.168.0.102/testing/admin/locations/edit?id=9\"><b>Karve Nagar.</b></a>', 0, '2018-11-12 11:14:41'),
(1564, 'admin', 'locations', 'staff', 18, 'updated', 'dhiraj <b>updated</b> location <a href=\"http://192.168.0.102/testing/admin/locations/edit?id=9\"><b>Karve Nagar.</b></a>', 0, '2018-11-12 11:16:13'),
(1565, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=1\"><b>vijay raj.</b></a>', 0, '2018-11-12 11:37:00'),
(1566, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=1\"><b>vijay raj.</b></a>', 0, '2018-11-12 11:37:13'),
(1567, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=1\"><b>vijay raj.</b></a>', 0, '2018-11-12 11:37:48'),
(1568, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=1\"><b>vijay raj.</b></a>', 0, '2018-11-12 11:37:58'),
(1569, 'admin', 'menus', 'staff', 18, 'added', 'dhiraj <b>added</b> menu item <a href=\"http://192.168.0.102/testing/admin/menus/edit?id=36\"><b>cdp.</b></a>', 0, '2018-11-12 11:43:07'),
(1570, 'admin', 'staffs', 'staff', 18, 'logged in', '<a href=\"http://192.168.0.105/testing/admin/staffs/edit?id=18\">dhiraj</a> <b>logged</b> in.', 0, '2018-11-12 15:10:23'),
(1571, 'admin', 'staffs', 'staff', 18, 'logged in', '<a href=\"http://192.168.0.105/testing/admin/staffs/edit?id=18\">dhiraj</a> <b>logged</b> in.', 0, '2018-11-12 15:11:19'),
(1572, 'admin', 'inventory', 'staff', 18, 'added', 'dhiraj <b>added</b> menu item <a href=\"http://192.168.0.105/testing/admin/items/edit?id=28\"><b>hbvkbk.</b></a>', 0, '2018-11-12 15:16:15'),
(1573, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-11-12 15:47:34'),
(1574, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-11-12 15:48:52'),
(1575, 'admin', 'inventory', 'staff', 18, 'added', 'dhiraj <b>added</b> menu item <a href=\"http://192.168.0.105/testing/admin/items/edit?id=29\"><b>cdp.</b></a>', 0, '2018-11-12 15:51:29'),
(1576, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-11-12 15:54:59'),
(1577, 'admin', 'inventory', 'staff', 18, 'added', 'dhiraj <b>added</b> menu item <a href=\"http://192.168.0.105/testing/admin/items/edit?id=30\"><b>garlic.</b></a>', 0, '2018-11-12 16:05:30'),
(1578, 'admin', 'inventory', 'staff', 18, 'added', 'dhiraj <b>added</b> menu item <a href=\"http://192.168.0.105/testing/admin/items/edit?id=31\"><b>fcnjgv.</b></a>', 0, '2018-11-12 16:06:16'),
(1579, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-11-12 16:11:36'),
(1580, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-11-12 16:50:42'),
(1581, 'admin', 'staffs', 'staff', 18, 'logged in', '<a href=\"http://localhost/testing/admin/staffs/edit?id=18\">dhiraj</a> <b>logged</b> in.', 0, '2018-11-13 09:53:20'),
(1582, 'admin', 'customers', 'staff', 18, 'added', 'dhiraj <b>added</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=11\"><b>xyz abc.</b></a>', 0, '2018-11-13 09:57:48'),
(1583, 'admin', 'customers', 'staff', 18, 'added', 'dhiraj <b>added</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=12\"><b>xyz abc.</b></a>', 0, '2018-11-13 09:57:53'),
(1584, 'admin', 'customers', 'staff', 18, 'added', 'dhiraj <b>added</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=13\"><b>xyz abc.</b></a>', 0, '2018-11-13 09:57:58'),
(1585, 'admin', 'customers', 'staff', 18, 'added', 'dhiraj <b>added</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=14\"><b>xyz abc.</b></a>', 0, '2018-11-13 09:58:03'),
(1586, 'admin', 'customers', 'staff', 18, 'added', 'dhiraj <b>added</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=15\"><b>xyz abc.</b></a>', 0, '2018-11-13 09:58:08'),
(1587, 'admin', 'customers', 'staff', 18, 'added', 'dhiraj <b>added</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=16\"><b>testing Restro.</b></a>', 0, '2018-11-13 10:01:57'),
(1588, 'admin', 'reviews', 'staff', 18, 'added', 'dhiraj <b>added</b> review <a href=\"http://localhost/testing/admin/reviews/edit\"><b>.</b></a>', 0, '2018-11-13 10:07:10'),
(1589, 'admin', 'inventory', 'staff', 18, 'added', 'dhiraj <b>added</b> menu item <a href=\"http://localhost/testing/admin/items/edit?id=31\"><b>tnp.</b></a>', 0, '2018-11-13 11:53:43'),
(1590, 'admin', 'inventory', 'staff', 18, 'added', 'dhiraj <b>added</b> menu item <a href=\"http://localhost/testing/admin/items/edit?id=32\"><b>cdp1.</b></a>', 0, '2018-11-13 11:56:30'),
(1591, 'admin', 'locations', 'staff', 18, 'updated', 'dhiraj <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=9\"><b>Karve Nagar.</b></a>', 0, '2018-11-13 14:01:03'),
(1592, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"http://192.168.0.106/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-11-13 14:02:35'),
(1593, 'admin', 'locations', 'staff', 18, 'updated', 'dhiraj <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=9\"><b>Karve Nagar.</b></a>', 0, '2018-11-13 14:07:00'),
(1594, 'admin', 'customers', 'staff', 18, 'updated', 'dhiraj <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=16\"><b>testing Restro.</b></a>', 0, '2018-11-13 14:07:25'),
(1595, 'admin', 'locations', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> location <a href=\"http://192.168.0.106/testing/admin/locations/edit?id=10\"><b>ram.</b></a>', 0, '2018-11-13 14:09:02'),
(1596, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"http://192.168.0.106/testing/admin/locations/edit?id=10\"><b>baner.</b></a>', 0, '2018-11-13 14:10:04'),
(1597, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"http://192.168.0.106/testing/admin/locations/edit?id=10\"><b>baner.</b></a>', 0, '2018-11-13 14:12:33'),
(1598, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"http://192.168.0.106/testing/admin/locations/edit?id=10\"><b>baner.</b></a>', 0, '2018-11-13 14:13:02'),
(1599, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"http://192.168.0.106/testing/admin/locations/edit?id=10\"><b>baner.</b></a>', 0, '2018-11-13 14:13:22'),
(1600, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"http://192.168.0.106/testing/admin/locations/edit?id=10\"><b>baner.</b></a>', 0, '2018-11-13 14:15:06'),
(1601, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"http://192.168.0.106/testing/admin/locations/edit?id=10\"><b>baner.</b></a>', 0, '2018-11-13 14:15:09'),
(1602, 'admin', 'locations', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> location <a href=\"http://192.168.0.106/testing/admin/locations/edit?id=11\"><b>FC .</b></a>', 0, '2018-11-13 14:19:19'),
(1603, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"http://192.168.0.106/testing/admin/locations/edit?id=11\"><b>FC .</b></a>', 0, '2018-11-13 14:19:52'),
(1604, 'admin', 'locations', 'staff', 18, 'added', 'dhiraj <b>added</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=12\"><b>devloper.</b></a>', 0, '2018-11-13 14:21:28'),
(1605, 'admin', 'locations', 'staff', 18, 'updated', 'dhiraj <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=12\"><b>devloper.</b></a>', 0, '2018-11-13 14:21:36'),
(1606, 'admin', 'locations', 'staff', 18, 'updated', 'dhiraj <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=12\"><b>devloper.</b></a>', 0, '2018-11-13 14:21:41'),
(1607, 'admin', 'locations', 'staff', 18, 'added', 'dhiraj <b>added</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=13\"><b>dev.</b></a>', 0, '2018-11-13 14:22:50'),
(1608, 'admin', 'locations', 'staff', 18, 'updated', 'dhiraj <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=13\"><b>dev.</b></a>', 0, '2018-11-13 14:23:00'),
(1609, 'admin', 'locations', 'staff', 18, 'updated', 'dhiraj <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=13\"><b>dev.</b></a>', 0, '2018-11-13 14:23:05'),
(1610, 'admin', 'locations', 'staff', 18, 'updated', 'dhiraj <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=13\"><b>dev.</b></a>', 0, '2018-11-13 14:23:09'),
(1611, 'admin', 'locations', 'staff', 18, 'updated', 'dhiraj <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=13\"><b>dev.</b></a>', 0, '2018-11-13 14:23:14'),
(1612, 'admin', 'locations', 'staff', 18, 'updated', 'dhiraj <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=13\"><b>dev.</b></a>', 0, '2018-11-13 14:23:22'),
(1613, 'admin', 'locations', 'staff', 18, 'updated', 'dhiraj <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=13\"><b>dev.</b></a>', 0, '2018-11-13 14:23:26'),
(1614, 'admin', 'locations', 'staff', 18, 'updated', 'dhiraj <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=13\"><b>dev.</b></a>', 0, '2018-11-13 14:23:33'),
(1615, 'admin', 'locations', 'staff', 18, 'updated', 'dhiraj <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=13\"><b>dev.</b></a>', 0, '2018-11-13 14:23:38'),
(1616, 'admin', 'locations', 'staff', 18, 'updated', 'dhiraj <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=13\"><b>dev.</b></a>', 0, '2018-11-13 14:23:42'),
(1617, 'admin', 'locations', 'staff', 18, 'updated', 'dhiraj <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=13\"><b>dev.</b></a>', 0, '2018-11-13 14:23:48'),
(1618, 'admin', 'locations', 'staff', 18, 'updated', 'dhiraj <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=13\"><b>dev.</b></a>', 0, '2018-11-13 14:23:52'),
(1619, 'admin', 'locations', 'staff', 18, 'updated', 'dhiraj <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=13\"><b>dev.</b></a>', 0, '2018-11-13 14:23:58'),
(1620, 'admin', 'locations', 'staff', 18, 'updated', 'dhiraj <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=13\"><b>dev.</b></a>', 0, '2018-11-13 14:24:02'),
(1621, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"http://192.168.0.106/testing/admin/locations/edit?id=11\"><b>FC .</b></a>', 0, '2018-11-13 14:37:50'),
(1622, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"http://192.168.0.106/testing/admin/locations/edit?id=11\"><b>FC .</b></a>', 0, '2018-11-13 14:38:14'),
(1623, 'admin', 'locations', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> location <a href=\"http://192.168.0.106/testing/admin/locations/edit?id=14\"><b>nb k,.</b></a>', 0, '2018-11-13 14:39:48'),
(1624, 'admin', 'locations', 'staff', 18, 'added', 'dhiraj <b>added</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=15\"><b>testing1234.</b></a>', 0, '2018-11-13 14:49:33'),
(1625, 'admin', 'locations', 'staff', 18, 'added', 'dhiraj <b>added</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=16\"><b>devloper.</b></a>', 0, '2018-11-13 14:53:55'),
(1626, 'admin', 'locations', 'staff', 18, 'added', 'dhiraj <b>added</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=17\"><b>dev.</b></a>', 0, '2018-11-13 14:54:18'),
(1627, 'admin', 'locations', 'staff', 18, 'added', 'dhiraj <b>added</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=18\"><b>.</b></a>', 0, '2018-11-13 14:54:52'),
(1628, 'admin', 'locations', 'staff', 18, 'added', 'dhiraj <b>added</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=19\"><b>dev.</b></a>', 0, '2018-11-13 14:59:56'),
(1629, 'admin', 'locations', 'staff', 18, 'updated', 'dhiraj <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=19\"><b>dev.</b></a>', 0, '2018-11-13 15:00:09'),
(1630, 'admin', 'locations', 'staff', 18, 'updated', 'dhiraj <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=19\"><b>dev.</b></a>', 0, '2018-11-13 15:00:22'),
(1631, 'admin', 'locations', 'staff', 18, 'updated', 'dhiraj <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=19\"><b>dev.</b></a>', 0, '2018-11-13 15:00:22'),
(1632, 'admin', 'tables', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> table <a href=\"http://192.168.0.106/testing/admin/tables/edit\"><b>12.</b></a>', 0, '2018-11-13 15:15:58'),
(1633, 'admin', 'locations', 'staff', 18, 'added', 'dhiraj <b>added</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=20\"><b>dev.</b></a>', 0, '2018-11-13 15:17:38'),
(1634, 'admin', 'locations', 'staff', 18, 'added', 'dhiraj <b>added</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=28\"><b>dev.</b></a>', 0, '2018-11-13 15:23:06'),
(1635, 'admin', 'locations', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> location <a href=\"http://192.168.0.106/testing/admin/locations/edit?id=29\"><b>cdp.</b></a>', 0, '2018-11-13 15:28:31'),
(1636, 'admin', 'locations', 'staff', 18, 'added', 'dhiraj <b>added</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=30\"><b>qq.</b></a>', 0, '2018-11-13 15:32:07'),
(1637, 'admin', 'locations', 'staff', 18, 'added', 'dhiraj <b>added</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=31\"><b>qq.</b></a>', 0, '2018-11-13 15:34:31'),
(1638, 'admin', 'tables', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> table <a href=\"http://192.168.0.106/testing/admin/tables/edit\"><b>EJ12.</b></a>', 0, '2018-11-13 15:38:58'),
(1639, 'admin', 'locations', 'staff', 18, 'added', 'dhiraj <b>added</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=32\"><b>eee.</b></a>', 0, '2018-11-13 16:03:54'),
(1640, 'admin', 'locations', 'staff', 18, 'added', 'dhiraj <b>added</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=33\"><b>qq.</b></a>', 0, '2018-11-13 16:05:54'),
(1641, 'admin', 'locations', 'staff', 18, 'added', 'dhiraj <b>added</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=34\"><b>.</b></a>', 0, '2018-11-13 16:15:05'),
(1642, 'admin', 'customers', 'staff', 18, 'updated', 'dhiraj <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=15\"><b>xyz abc.</b></a>', 0, '2018-11-13 16:34:38'),
(1643, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"http://192.168.0.106/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-11-13 17:06:59'),
(1644, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"http://192.168.0.106/testing/admin/locations/edit?id=1\"><b>vijay raj.</b></a>', 0, '2018-11-13 17:12:53'),
(1645, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"http://192.168.0.106/testing/admin/locations/edit?id=1\"><b>vijay raj.</b></a>', 0, '2018-11-13 17:16:02'),
(1646, 'admin', 'staffs', 'staff', 18, 'logged in', '<a href=\"http://localhost/testing/admin/staffs/edit?id=18\">dhiraj</a> <b>logged</b> in.', 0, '2018-11-13 17:16:11'),
(1647, 'admin', 'locations', 'staff', 18, 'updated', 'dhiraj <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=1\"><b>vijay raj.</b></a>', 0, '2018-11-13 17:20:31'),
(1648, 'admin', 'customers', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> customer <a href=\"http://192.168.0.106/testing/admin/customers/edit?id=17\"><b>Payment123 Patil.</b></a>', 0, '2018-11-13 17:22:12'),
(1649, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"http://192.168.0.106/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-11-13 17:25:59'),
(1650, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"http://192.168.0.106/testing/admin/locations/edit?id=1\"><b>vijay raj.</b></a>', 0, '2018-11-13 17:30:51'),
(1651, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"http://192.168.0.106/testing/admin/locations/edit?id=1\"><b>vijay raj.</b></a>', 0, '2018-11-13 17:31:29'),
(1652, 'admin', 'customers', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> customer <a href=\"http://192.168.0.106/testing/admin/customers/edit?id=18\"><b>TST ssdf.</b></a>', 0, '2018-11-13 17:34:36'),
(1653, 'admin', 'customers', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> customer <a href=\"http://192.168.0.106/testing/admin/customers/edit?id=19\"><b>TST ssdf.</b></a>', 0, '2018-11-13 17:34:41'),
(1654, 'admin', 'customers', 'staff', 18, 'added', 'dhiraj <b>added</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=20\"><b>testing payment.</b></a>', 0, '2018-11-13 17:51:15'),
(1655, 'admin', 'staffs', 'staff', 18, 'logged out', '<a href=\"http://localhost/testing/admin/staffs/edit?id=18\">dhiraj</a> <b>logged</b> out.', 0, '2018-11-13 18:01:58'),
(1656, 'admin', 'staffs', 'staff', 18, 'logged in', '<a href=\"http://localhost/testing/admin/staffs/edit?id=18\">dhiraj</a> <b>logged</b> in.', 0, '2018-11-14 09:27:15'),
(1657, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"http://192.168.0.101/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-11-14 09:39:59'),
(1658, 'admin', 'customers', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> customer <a href=\"http://192.168.0.101/testing/admin/customers/edit?id=21\"><b>sharad joshi.</b></a>', 0, '2018-11-14 09:47:05'),
(1659, 'admin', 'customers', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> customer <a href=\"http://192.168.0.101/testing/admin/customers/edit?id=22\"><b>sharad joshi.</b></a>', 0, '2018-11-14 09:47:10'),
(1660, 'admin', 'customers', 'staff', 18, 'added', 'dhiraj <b>added</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=23\"><b>chetana patil.</b></a>', 0, '2018-11-14 09:58:24'),
(1661, 'admin', 'customers', 'staff', 18, 'updated', 'dhiraj <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=23\"><b>chetana patil.</b></a>', 0, '2018-11-14 09:58:42'),
(1662, 'admin', 'staffs', 'staff', 18, 'logged out', '<a href=\"http://localhost/testing/admin/staffs/edit?id=18\">dhiraj</a> <b>logged</b> out.', 0, '2018-11-14 10:05:29'),
(1663, 'admin', 'staffs', 'staff', 18, 'logged in', '<a href=\"http://localhost/testing/admin/staffs/edit?id=18\">dhiraj</a> <b>logged</b> in.', 0, '2018-11-14 10:06:11');
INSERT INTO `ok_activities` (`activity_id`, `domain`, `context`, `user`, `user_id`, `action`, `message`, `status`, `date_added`) VALUES
(1664, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"http://192.168.0.101/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-11-14 10:16:07'),
(1665, 'admin', 'staffs', 'staff', 18, 'logged out', '<a href=\"http://localhost/testing/admin/staffs/edit?id=18\">dhiraj</a> <b>logged</b> out.', 0, '2018-11-14 10:23:06'),
(1666, 'admin', 'staffs', 'staff', 18, 'logged in', '<a href=\"http://localhost/testing/admin/staffs/edit?id=18\">dhiraj</a> <b>logged</b> in.', 0, '2018-11-14 10:23:41'),
(1667, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://192.168.0.101/testing/admin/customers/edit?id=23\"><b>chetana patil.</b></a>', 0, '2018-11-14 10:38:32'),
(1668, 'admin', 'locations', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> location <a href=\"http://192.168.0.101/testing/admin/locations/edit?id=35\"><b>sam.</b></a>', 0, '2018-11-14 10:41:12'),
(1669, 'admin', 'customers', 'staff', 18, 'updated', 'dhiraj <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=18\"><b>TST TTT.</b></a>', 0, '2018-11-14 10:49:53'),
(1670, 'admin', 'locations', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> location <a href=\"http://192.168.0.101/testing/admin/locations/edit?id=36\"><b>santosh.</b></a>', 0, '2018-11-14 10:53:44'),
(1671, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"http://192.168.0.101/testing/admin/locations/edit?id=36\"><b>santosh.</b></a>', 0, '2018-11-14 10:55:34'),
(1672, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"http://192.168.0.101/testing/admin/locations/edit?id=36\"><b>santosh.</b></a>', 0, '2018-11-14 11:03:56'),
(1673, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"http://192.168.0.101/testing/admin/locations/edit?id=36\"><b>santosh.</b></a>', 0, '2018-11-14 11:04:06'),
(1674, 'admin', 'locations', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> location <a href=\"http://192.168.0.101/testing/admin/locations/edit?id=37\"><b>manish.</b></a>', 0, '2018-11-14 11:04:34'),
(1675, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"http://192.168.0.101/testing/admin/locations/edit?id=37\"><b>manish.</b></a>', 0, '2018-11-14 11:04:35'),
(1676, 'admin', 'staffs', 'staff', 18, 'logged out', '<a href=\"http://localhost/testing/admin/staffs/edit?id=18\">dhiraj</a> <b>logged</b> out.', 0, '2018-11-14 11:17:19'),
(1677, 'admin', 'staffs', 'staff', 18, 'logged in', '<a href=\"http://localhost/testing/admin/staffs/edit?id=18\">dhiraj</a> <b>logged</b> in.', 0, '2018-11-14 11:20:12'),
(1678, 'admin', 'locations', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> location <a href=\"http://192.168.0.101/testing/admin/locations/edit?id=38\"><b>pimpri.</b></a>', 0, '2018-11-14 12:02:18'),
(1679, 'admin', 'locations', 'staff', 18, 'updated', 'dhiraj <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=38\"><b>pimpri.</b></a>', 0, '2018-11-14 12:05:31'),
(1680, 'admin', 'locations', 'staff', 18, 'updated', 'dhiraj <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=38\"><b>pimpri.</b></a>', 0, '2018-11-14 12:06:41'),
(1681, 'admin', 'locations', 'staff', 18, 'updated', 'dhiraj <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=38\"><b>pimpri.</b></a>', 0, '2018-11-14 12:07:32'),
(1682, 'admin', 'locations', 'staff', 18, 'updated', 'dhiraj <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=38\"><b>pimpri.</b></a>', 0, '2018-11-14 12:08:55'),
(1683, 'admin', 'locations', 'staff', 18, 'added', 'dhiraj <b>added</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=39\"><b>pimpari.</b></a>', 0, '2018-11-14 12:10:50'),
(1684, 'admin', 'locations', 'staff', 18, 'updated', 'dhiraj <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=39\"><b>pimpari.</b></a>', 0, '2018-11-14 12:11:22'),
(1685, 'admin', 'locations', 'staff', 18, 'updated', 'dhiraj <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=39\"><b>pimpari.</b></a>', 0, '2018-11-14 12:12:19'),
(1686, 'admin', 'locations', 'staff', 18, 'updated', 'dhiraj <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=9\"><b>Karve Nagar.</b></a>', 0, '2018-11-14 12:12:51'),
(1687, 'admin', 'locations', 'staff', 18, 'updated', 'dhiraj <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=9\"><b>Karve Nagar.</b></a>', 0, '2018-11-14 12:13:21'),
(1688, 'admin', 'locations', 'staff', 18, 'updated', 'dhiraj <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=39\"><b>pimpari.</b></a>', 0, '2018-11-14 12:14:00'),
(1689, 'admin', 'staffs', 'staff', 18, 'logged out', '<a href=\"http://localhost/testing/admin/staffs/edit?id=18\">dhiraj</a> <b>logged</b> out.', 0, '2018-11-14 12:14:49'),
(1690, 'admin', 'staffs', 'staff', 18, 'logged in', '<a href=\"http://localhost/testing/admin/staffs/edit?id=18\">dhiraj</a> <b>logged</b> in.', 0, '2018-11-14 12:14:58'),
(1691, 'admin', 'inventory', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> menu item <a href=\"http://192.168.0.101/testing/admin/items/edit?id=33\"><b>xyz.</b></a>', 0, '2018-11-14 12:16:56'),
(1692, 'admin', 'staffs', 'staff', 18, 'logged in', '<a href=\"http://localhost/testing/admin/staffs/edit?id=18\">dhiraj</a> <b>logged</b> in.', 0, '2018-11-14 12:20:25'),
(1693, 'admin', 'locations', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> location <a href=\"http://192.168.0.101/testing/admin/locations/edit?id=40\"><b>ankush.</b></a>', 0, '2018-11-14 12:20:42'),
(1694, 'admin', 'staffs', 'staff', 18, 'logged out', '<a href=\"http://localhost/testing/admin/staffs/edit?id=18\">dhiraj</a> <b>logged</b> out.', 0, '2018-11-14 13:38:07'),
(1695, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-11-14 13:39:58'),
(1696, 'admin', 'staffs', 'staff', 18, 'logged out', '<a href=\"http://localhost/testing/admin/staffs/edit?id=18\">dhiraj</a> <b>logged</b> out.', 0, '2018-11-14 13:41:15'),
(1697, 'admin', 'staffs', 'staff', 18, 'logged in', '<a href=\"http://localhost/testing/admin/staffs/edit?id=18\">dhiraj</a> <b>logged</b> in.', 0, '2018-11-14 13:41:24'),
(1698, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-11-14 13:41:58'),
(1699, 'admin', 'staffs', 'staff', 18, 'logged out', '<a href=\"http://localhost/testing/admin/staffs/edit?id=18\">dhiraj</a> <b>logged</b> out.', 0, '2018-11-14 13:42:39'),
(1700, 'admin', 'staffs', 'staff', 18, 'logged in', '<a href=\"http://localhost/testing/admin/staffs/edit?id=18\">dhiraj</a> <b>logged</b> in.', 0, '2018-11-14 13:42:41'),
(1701, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-11-14 13:42:53'),
(1702, 'admin', 'staffs', 'staff', 18, 'logged out', '<a href=\"http://localhost/testing/admin/staffs/edit?id=18\">dhiraj</a> <b>logged</b> out.', 0, '2018-11-14 13:46:13'),
(1703, 'admin', 'staffs', 'staff', 18, 'logged in', '<a href=\"http://localhost/testing/admin/staffs/edit?id=18\">dhiraj</a> <b>logged</b> in.', 0, '2018-11-14 13:46:15'),
(1704, 'admin', 'staffs', 'staff', 18, 'logged in', '<a href=\"http://localhost/testing/admin/staffs/edit?id=18\">dhiraj</a> <b>logged</b> in.', 0, '2018-11-14 13:46:38'),
(1705, 'admin', 'staffs', 'staff', 18, 'logged out', '<a href=\"http://localhost/testing/admin/staffs/edit?id=18\">dhiraj</a> <b>logged</b> out.', 0, '2018-11-14 13:46:43'),
(1706, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://192.168.0.101/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-11-14 13:47:02'),
(1707, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"http://192.168.0.101/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-11-14 13:47:08'),
(1708, 'admin', 'locations', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> location <a href=\"http://192.168.0.101/testing/admin/locations/edit?id=41\"><b>Deccan.</b></a>', 0, '2018-11-14 13:53:28'),
(1709, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"http://192.168.0.101/testing/admin/locations/edit?id=41\"><b>Deccan.</b></a>', 0, '2018-11-14 13:57:19'),
(1710, 'admin', 'customers', 'staff', 18, 'added', 'dhiraj <b>added</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=24\"><b>prathamesh kulkarni.</b></a>', 0, '2018-11-14 14:04:38'),
(1711, 'admin', 'locations', 'staff', 18, 'updated', 'dhiraj <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=9\"><b>Karve Nagar.</b></a>', 0, '2018-11-14 14:05:11'),
(1712, 'admin', 'locations', 'staff', 18, 'updated', 'dhiraj <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=11\"><b>FC .</b></a>', 0, '2018-11-14 14:07:45'),
(1713, 'admin', 'locations', 'staff', 18, 'added', 'dhiraj <b>added</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=42\"><b>Nisarag Hotel.</b></a>', 0, '2018-11-14 14:09:11'),
(1714, 'admin', 'locations', 'staff', 18, 'updated', 'dhiraj <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=42\"><b>Nisarag Hotel.</b></a>', 0, '2018-11-14 14:09:55'),
(1715, 'admin', 'locations', 'staff', 18, 'added', 'dhiraj <b>added</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=43\"><b>.</b></a>', 0, '2018-11-14 14:14:09'),
(1716, 'admin', 'locations', 'staff', 18, 'added', 'dhiraj <b>added</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=44\"><b>.</b></a>', 0, '2018-11-14 14:14:19'),
(1717, 'admin', 'staffs', 'staff', 18, 'logged in', '<a href=\"http://localhost/testing/admin/staffs/edit?id=18\">dhiraj</a> <b>logged</b> in.', 0, '2018-11-14 14:14:40'),
(1718, 'admin', 'locations', 'staff', 18, 'added', 'dhiraj <b>added</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=45\"><b>.</b></a>', 0, '2018-11-14 14:14:44'),
(1719, 'admin', 'locations', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> location <a href=\"http://192.168.0.101/testing/admin/locations/edit?id=46\"><b>sameer.</b></a>', 0, '2018-11-14 14:18:03'),
(1720, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"http://192.168.0.101/testing/admin/locations/edit?id=46\"><b>deccan.</b></a>', 0, '2018-11-14 14:18:18'),
(1721, 'admin', 'locations', 'staff', 18, 'updated', 'dhiraj <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=46\"><b>deccan.</b></a>', 0, '2018-11-14 14:20:40'),
(1722, 'admin', 'customers', 'staff', 18, 'added', 'dhiraj <b>added</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=25\"><b>prathamesh kulkarni.</b></a>', 0, '2018-11-14 14:46:10'),
(1723, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"http://192.168.0.101/testing/admin/locations/edit?id=46\"><b>deccan.</b></a>', 0, '2018-11-14 15:03:59'),
(1724, 'admin', 'customers', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> customer <a href=\"http://192.168.0.101/testing/admin/customers/edit?id=26\"><b>Testing atfc.</b></a>', 0, '2018-11-14 15:07:29'),
(1725, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://192.168.0.101/testing/admin/customers/edit?id=26\"><b>Testing atfc.</b></a>', 0, '2018-11-14 15:09:04'),
(1726, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://192.168.0.101/testing/admin/customers/edit?id=26\"><b>Testing atfc.</b></a>', 0, '2018-11-14 15:10:29'),
(1727, 'admin', 'customers', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> customer <a href=\"http://192.168.0.101/testing/admin/customers/edit?id=27\"><b>Sameer Patel.</b></a>', 0, '2018-11-14 15:44:31'),
(1728, 'admin', 'locations', 'staff', 18, 'added', 'dhiraj <b>added</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=49\"><b>.</b></a>', 0, '2018-11-14 15:49:07'),
(1729, 'admin', 'locations', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> location <a href=\"http://192.168.0.101/testing/admin/locations/edit?id=50\"><b>Karve Nagar.</b></a>', 0, '2018-11-14 15:52:03'),
(1730, 'admin', 'locations', 'staff', 18, 'added', 'dhiraj <b>added</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=53\"><b>.</b></a>', 0, '2018-11-14 15:58:50'),
(1731, 'admin', 'locations', 'staff', 18, 'added', 'dhiraj <b>added</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=54\"><b>.</b></a>', 0, '2018-11-14 15:59:03'),
(1732, 'admin', 'locations', 'staff', 18, 'added', 'dhiraj <b>added</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=55\"><b>demo.</b></a>', 0, '2018-11-14 15:59:34'),
(1733, 'admin', 'locations', 'staff', 18, 'added', 'dhiraj <b>added</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=56\"><b>demo.</b></a>', 0, '2018-11-14 15:59:55'),
(1734, 'admin', 'locations', 'staff', 18, 'added', 'dhiraj <b>added</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=57\"><b>demo.</b></a>', 0, '2018-11-14 16:02:10'),
(1735, 'admin', 'locations', 'staff', 18, 'added', 'dhiraj <b>added</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=58\"><b>demo.</b></a>', 0, '2018-11-14 16:02:31'),
(1736, 'admin', 'locations', 'staff', 18, 'added', 'dhiraj <b>added</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=59\"><b>demo.</b></a>', 0, '2018-11-14 16:03:15'),
(1737, 'admin', 'locations', 'staff', 18, 'added', 'dhiraj <b>added</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=60\"><b>demo.</b></a>', 0, '2018-11-14 16:04:49'),
(1738, 'admin', 'locations', 'staff', 18, 'added', 'dhiraj <b>added</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=61\"><b>demo.</b></a>', 0, '2018-11-14 16:06:01'),
(1739, 'admin', 'locations', 'staff', 18, 'added', 'dhiraj <b>added</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=62\"><b>demo.</b></a>', 0, '2018-11-14 16:06:17'),
(1740, 'admin', 'locations', 'staff', 18, 'added', 'dhiraj <b>added</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=63\"><b>demo.</b></a>', 0, '2018-11-14 16:09:04'),
(1741, 'admin', 'locations', 'staff', 18, 'added', 'dhiraj <b>added</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=64\"><b>demo.</b></a>', 0, '2018-11-14 16:09:43'),
(1742, 'admin', 'locations', 'staff', 18, 'added', 'dhiraj <b>added</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=65\"><b>demo.</b></a>', 0, '2018-11-14 16:10:36'),
(1743, 'admin', 'locations', 'staff', 18, 'added', 'dhiraj <b>added</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=67\"><b>demo.</b></a>', 0, '2018-11-14 16:14:52'),
(1744, 'admin', 'locations', 'staff', 18, 'added', 'dhiraj <b>added</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=68\"><b>demo.</b></a>', 0, '2018-11-14 16:16:36'),
(1745, 'admin', 'locations', 'staff', 18, 'added', 'dhiraj <b>added</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=69\"><b>demo.</b></a>', 0, '2018-11-14 16:18:40'),
(1746, 'admin', 'locations', 'staff', 18, 'added', 'dhiraj <b>added</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=70\"><b>demo.</b></a>', 0, '2018-11-14 16:25:06'),
(1747, 'admin', 'locations', 'staff', 18, 'added', 'dhiraj <b>added</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=71\"><b>demo.</b></a>', 0, '2018-11-14 16:25:26'),
(1748, 'admin', 'locations', 'staff', 18, 'updated', 'dhiraj <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=71\"><b>demo.</b></a>', 0, '2018-11-14 16:25:32'),
(1749, 'admin', 'locations', 'staff', 18, 'updated', 'dhiraj <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=71\"><b>demo.</b></a>', 0, '2018-11-14 16:25:38'),
(1750, 'admin', 'locations', 'staff', 18, 'added', 'dhiraj <b>added</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=72\"><b>demo.</b></a>', 0, '2018-11-14 16:26:13'),
(1751, 'admin', 'locations', 'staff', 18, 'added', 'dhiraj <b>added</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=73\"><b>demo.</b></a>', 0, '2018-11-14 16:26:37'),
(1752, 'admin', 'locations', 'staff', 18, 'added', 'dhiraj <b>added</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=74\"><b>demo.</b></a>', 0, '2018-11-14 16:27:41'),
(1753, 'admin', 'locations', 'staff', 18, 'added', 'dhiraj <b>added</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=75\"><b>demo.</b></a>', 0, '2018-11-14 16:28:08'),
(1754, 'admin', 'locations', 'staff', 18, 'added', 'dhiraj <b>added</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=76\"><b>demo.</b></a>', 0, '2018-11-14 16:28:47'),
(1755, 'admin', 'locations', 'staff', 18, 'added', 'dhiraj <b>added</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=77\"><b>demo.</b></a>', 0, '2018-11-14 16:29:36'),
(1756, 'admin', 'locations', 'staff', 18, 'added', 'dhiraj <b>added</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=78\"><b>demo.</b></a>', 0, '2018-11-14 16:29:57'),
(1757, 'admin', 'locations', 'staff', 18, 'added', 'dhiraj <b>added</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=79\"><b>demo.</b></a>', 0, '2018-11-14 16:31:00'),
(1758, 'admin', 'staffs', 'staff', 18, 'logged in', '<a href=\"http://localhost/testing/admin/staffs/edit?id=18\">dhiraj</a> <b>logged</b> in.', 0, '2018-11-14 16:37:24'),
(1759, 'admin', 'locations', 'staff', 18, 'added', 'dhiraj <b>added</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=80\"><b>demo.</b></a>', 0, '2018-11-14 16:37:41'),
(1760, 'admin', 'locations', 'staff', 18, 'added', 'dhiraj <b>added</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=81\"><b>demo.</b></a>', 0, '2018-11-14 16:49:53'),
(1761, 'admin', 'locations', 'staff', 18, 'updated', 'dhiraj <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=81\"><b>demo.</b></a>', 0, '2018-11-14 16:49:58'),
(1762, 'admin', 'locations', 'staff', 18, 'added', 'dhiraj <b>added</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=82\"><b>demo.</b></a>', 0, '2018-11-14 16:50:15'),
(1763, 'admin', 'locations', 'staff', 18, 'added', 'dhiraj <b>added</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=83\"><b>demo.</b></a>', 0, '2018-11-14 16:50:33'),
(1764, 'admin', 'staffs', 'staff', 18, 'logged in', '<a href=\"http://localhost/testing/admin/staffs/edit?id=18\">dhiraj</a> <b>logged</b> in.', 0, '2018-11-14 16:51:27'),
(1765, 'admin', 'locations', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> location <a href=\"http://192.168.0.101/testing/admin/locations/edit?id=84\"><b>Katraj.</b></a>', 0, '2018-11-14 16:55:20'),
(1766, 'admin', 'staffs', 'staff', 18, 'logged out', '<a href=\"http://localhost/testing/admin/staffs/edit?id=18\">dhiraj</a> <b>logged</b> out.', 0, '2018-11-14 16:55:26'),
(1767, 'admin', 'staffs', 'staff', 18, 'logged in', '<a href=\"http://localhost/testing/admin/staffs/edit?id=18\">dhiraj</a> <b>logged</b> in.', 0, '2018-11-14 16:55:28'),
(1768, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"http://192.168.0.101/testing/admin/locations/edit?id=84\"><b>Katraj.</b></a>', 0, '2018-11-14 16:56:12'),
(1769, 'admin', 'locations', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> location <a href=\"http://192.168.0.101/testing/admin/locations/edit?id=85\"><b>.</b></a>', 0, '2018-11-14 16:59:19'),
(1770, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"http://192.168.0.101/testing/admin/locations/edit?id=84\"><b>Katraj.</b></a>', 0, '2018-11-14 17:00:31'),
(1771, 'admin', 'locations', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> location <a href=\"http://192.168.0.101/testing/admin/locations/edit?id=86\"><b>Kothrud.</b></a>', 0, '2018-11-14 17:03:46'),
(1772, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"http://192.168.0.101/testing/admin/locations/edit?id=86\"><b>Kothrud.</b></a>', 0, '2018-11-14 17:05:36'),
(1773, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"http://192.168.0.101/testing/admin/locations/edit?id=86\"><b>Kothrud.</b></a>', 0, '2018-11-14 17:06:23'),
(1774, 'admin', 'locations', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> location <a href=\"http://192.168.0.101/testing/admin/locations/edit?id=87\"><b>Dhayari.</b></a>', 0, '2018-11-14 17:09:43'),
(1775, 'admin', 'locations', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> location <a href=\"http://192.168.0.101/testing/admin/locations/edit?id=88\"><b>Demo.</b></a>', 0, '2018-11-14 17:12:21'),
(1776, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"http://192.168.0.101/testing/admin/locations/edit?id=88\"><b>Demo.</b></a>', 0, '2018-11-14 17:12:59'),
(1777, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"http://192.168.0.101/testing/admin/locations/edit?id=88\"><b>Demo.</b></a>', 0, '2018-11-14 17:13:41'),
(1778, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"http://192.168.0.101/testing/admin/locations/edit?id=88\"><b>Demo.</b></a>', 0, '2018-11-14 17:14:20'),
(1779, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"http://192.168.0.101/testing/admin/locations/edit?id=88\"><b>Demo.</b></a>', 0, '2018-11-14 17:17:06'),
(1780, 'admin', 'locations', 'staff', 18, 'updated', 'dhiraj <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=88\"><b>Demo.</b></a>', 0, '2018-11-14 17:18:24'),
(1781, 'admin', 'locations', 'staff', 18, 'updated', 'dhiraj <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=88\"><b>Demo.</b></a>', 0, '2018-11-14 17:20:04'),
(1782, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"http://192.168.0.101/testing/admin/locations/edit?id=87\"><b>Dhayari.</b></a>', 0, '2018-11-14 17:20:32'),
(1783, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"http://192.168.0.101/testing/admin/locations/edit?id=87\"><b>Dhayari.</b></a>', 0, '2018-11-14 17:20:52'),
(1784, 'admin', 'locations', 'staff', 18, 'added', 'dhiraj <b>added</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=89\"><b>.</b></a>', 0, '2018-11-14 17:21:32'),
(1785, 'admin', 'locations', 'staff', 18, 'added', 'dhiraj <b>added</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=90\"><b>.</b></a>', 0, '2018-11-14 17:21:32'),
(1786, 'admin', 'locations', 'staff', 18, 'added', 'dhiraj <b>added</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=91\"><b>.</b></a>', 0, '2018-11-14 17:21:32'),
(1787, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"http://192.168.0.101/testing/admin/locations/edit?id=87\"><b>Dhayari.</b></a>', 0, '2018-11-14 17:22:48'),
(1788, 'admin', 'locations', 'staff', 18, 'updated', 'dhiraj <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=88\"><b>Demo.</b></a>', 0, '2018-11-14 17:22:55'),
(1789, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"http://192.168.0.101/testing/admin/locations/edit?id=87\"><b>Dhayari.</b></a>', 0, '2018-11-14 17:23:13'),
(1790, 'admin', 'locations', 'staff', 18, 'updated', 'dhiraj <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=88\"><b>Demo.</b></a>', 0, '2018-11-14 17:23:40'),
(1791, 'admin', 'locations', 'staff', 18, 'updated', 'dhiraj <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=88\"><b>Demo.</b></a>', 0, '2018-11-14 17:23:49'),
(1792, 'admin', 'locations', 'staff', 18, 'updated', 'dhiraj <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=88\"><b>Demo.</b></a>', 0, '2018-11-14 17:24:00'),
(1793, 'admin', 'locations', 'staff', 18, 'updated', 'dhiraj <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=88\"><b>Demo.</b></a>', 0, '2018-11-14 17:24:05'),
(1794, 'admin', 'staffs', 'staff', 18, 'logged out', '<a href=\"http://localhost/testing/admin/staffs/edit?id=18\">dhiraj</a> <b>logged</b> out.', 0, '2018-11-14 17:59:12'),
(1795, 'admin', 'staffs', 'staff', 18, 'logged in', '<a href=\"http://localhost/testing/admin/staffs/edit?id=18\">dhiraj</a> <b>logged</b> in.', 0, '2018-11-15 09:33:16'),
(1796, 'admin', 'locations', 'staff', 18, 'added', 'dhiraj <b>added</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=92\"><b>qqq.</b></a>', 0, '2018-11-15 09:40:30'),
(1797, 'admin', 'locations', 'staff', 18, 'updated', 'dhiraj <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=92\"><b>qqq.</b></a>', 0, '2018-11-15 09:40:42'),
(1798, 'admin', 'locations', 'staff', 18, 'updated', 'dhiraj <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=92\"><b>qqq.</b></a>', 0, '2018-11-15 09:40:50'),
(1799, 'admin', 'locations', 'staff', 18, 'updated', 'dhiraj <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=92\"><b>qqq.</b></a>', 0, '2018-11-15 09:40:55'),
(1800, 'admin', 'locations', 'staff', 18, 'updated', 'dhiraj <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=92\"><b>qqq.</b></a>', 0, '2018-11-15 09:41:00'),
(1801, 'admin', 'locations', 'staff', 18, 'updated', 'dhiraj <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=92\"><b>qqq.</b></a>', 0, '2018-11-15 09:41:03'),
(1802, 'admin', 'locations', 'staff', 18, 'updated', 'dhiraj <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=92\"><b>qqq.</b></a>', 0, '2018-11-15 09:41:57'),
(1803, 'admin', 'locations', 'staff', 18, 'updated', 'dhiraj <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=92\"><b>qqq.</b></a>', 0, '2018-11-15 09:42:58'),
(1804, 'admin', 'locations', 'staff', 18, 'updated', 'dhiraj <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=92\"><b>qqq.</b></a>', 0, '2018-11-15 09:43:04'),
(1805, 'admin', 'locations', 'staff', 18, 'updated', 'dhiraj <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=92\"><b>qqq.</b></a>', 0, '2018-11-15 09:43:10'),
(1806, 'admin', 'locations', 'staff', 18, 'updated', 'dhiraj <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=92\"><b>qqq.</b></a>', 0, '2018-11-15 09:43:14'),
(1807, 'admin', 'locations', 'staff', 18, 'updated', 'dhiraj <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=92\"><b>qqq.</b></a>', 0, '2018-11-15 09:43:19'),
(1808, 'admin', 'locations', 'staff', 18, 'updated', 'dhiraj <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=92\"><b>qqq.</b></a>', 0, '2018-11-15 09:43:24'),
(1809, 'admin', 'locations', 'staff', 18, 'updated', 'dhiraj <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=92\"><b>qqq.</b></a>', 0, '2018-11-15 09:43:29'),
(1810, 'admin', 'locations', 'staff', 18, 'updated', 'dhiraj <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=92\"><b>qqq.</b></a>', 0, '2018-11-15 09:43:31'),
(1811, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"http://192.168.0.106/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-11-15 09:46:34'),
(1812, 'admin', 'locations', 'staff', 18, 'updated', 'dhiraj <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=92\"><b>qqq.</b></a>', 0, '2018-11-15 09:46:43'),
(1813, 'admin', 'locations', 'staff', 18, 'updated', 'dhiraj <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=92\"><b>qqq.</b></a>', 0, '2018-11-15 09:46:46'),
(1814, 'admin', 'locations', 'staff', 18, 'updated', 'dhiraj <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=92\"><b>qqq.</b></a>', 0, '2018-11-15 09:54:14'),
(1815, 'admin', 'locations', 'staff', 18, 'updated', 'dhiraj <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=92\"><b>qqq.</b></a>', 0, '2018-11-15 09:54:55'),
(1816, 'admin', 'locations', 'staff', 18, 'updated', 'dhiraj <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=92\"><b>qqq.</b></a>', 0, '2018-11-15 09:56:31'),
(1817, 'admin', 'locations', 'staff', 18, 'updated', 'dhiraj <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=92\"><b>qqq.</b></a>', 0, '2018-11-15 09:56:37'),
(1818, 'admin', 'locations', 'staff', 18, 'updated', 'dhiraj <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=92\"><b>qqq.</b></a>', 0, '2018-11-15 09:58:27'),
(1819, 'admin', 'locations', 'staff', 18, 'updated', 'dhiraj <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=92\"><b>qqq.</b></a>', 0, '2018-11-15 09:58:30'),
(1820, 'admin', 'locations', 'staff', 18, 'updated', 'dhiraj <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=92\"><b>qqq.</b></a>', 0, '2018-11-15 10:01:45'),
(1821, 'admin', 'locations', 'staff', 18, 'updated', 'dhiraj <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=92\"><b>qqq.</b></a>', 0, '2018-11-15 10:01:52'),
(1822, 'admin', 'locations', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> location <a href=\"http://192.168.0.106/testing/admin/locations/edit?id=93\"><b>mayur.</b></a>', 0, '2018-11-15 10:03:05'),
(1823, 'admin', 'locations', 'staff', 18, 'updated', 'dhiraj <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=92\"><b>qqq.</b></a>', 0, '2018-11-15 10:03:06'),
(1824, 'admin', 'locations', 'staff', 18, 'updated', 'dhiraj <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=92\"><b>qqq.</b></a>', 0, '2018-11-15 10:03:10'),
(1825, 'admin', 'locations', 'staff', 18, 'updated', 'dhiraj <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=92\"><b>qqq.</b></a>', 0, '2018-11-15 10:03:13'),
(1826, 'admin', 'locations', 'staff', 18, 'updated', 'dhiraj <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=92\"><b>qqq.</b></a>', 0, '2018-11-15 10:03:18'),
(1827, 'admin', 'locations', 'staff', 18, 'updated', 'dhiraj <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=92\"><b>qqq.</b></a>', 0, '2018-11-15 10:03:22'),
(1828, 'admin', 'locations', 'staff', 18, 'updated', 'dhiraj <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=92\"><b>qqq.</b></a>', 0, '2018-11-15 10:06:19'),
(1829, 'admin', 'locations', 'staff', 18, 'updated', 'dhiraj <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=92\"><b>qqq.</b></a>', 0, '2018-11-15 10:06:31'),
(1830, 'admin', 'locations', 'staff', 18, 'updated', 'dhiraj <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=92\"><b>qqq.</b></a>', 0, '2018-11-15 10:06:35'),
(1831, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"http://192.168.0.106/testing/admin/locations/edit?id=93\"><b>mayur.</b></a>', 0, '2018-11-15 10:06:39'),
(1832, 'admin', 'locations', 'staff', 18, 'updated', 'dhiraj <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=92\"><b>qqq.</b></a>', 0, '2018-11-15 10:08:50'),
(1833, 'admin', 'locations', 'staff', 18, 'updated', 'dhiraj <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=92\"><b>qqq.</b></a>', 0, '2018-11-15 10:08:54'),
(1834, 'admin', 'locations', 'staff', 18, 'updated', 'dhiraj <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=92\"><b>qqq.</b></a>', 0, '2018-11-15 10:08:58'),
(1835, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"http://192.168.0.106/testing/admin/locations/edit?id=93\"><b>mayur.</b></a>', 0, '2018-11-15 10:10:00'),
(1836, 'admin', 'locations', 'staff', 18, 'updated', 'dhiraj <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=92\"><b>qqq.</b></a>', 0, '2018-11-15 10:11:59'),
(1837, 'admin', 'locations', 'staff', 18, 'updated', 'dhiraj <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=92\"><b>qqq.</b></a>', 0, '2018-11-15 10:12:03'),
(1838, 'admin', 'locations', 'staff', 18, 'updated', 'dhiraj <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=92\"><b>qqq.</b></a>', 0, '2018-11-15 10:12:07'),
(1839, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"http://192.168.0.106/testing/admin/locations/edit?id=93\"><b>mayur.</b></a>', 0, '2018-11-15 10:12:10'),
(1840, 'admin', 'locations', 'staff', 18, 'updated', 'dhiraj <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=92\"><b>qqq.</b></a>', 0, '2018-11-15 10:12:54'),
(1841, 'admin', 'locations', 'staff', 18, 'updated', 'dhiraj <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=46\"><b>deccan.</b></a>', 0, '2018-11-15 10:13:34'),
(1842, 'admin', 'locations', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> location <a href=\"http://192.168.0.106/testing/admin/locations/edit?id=94\"><b>Karve nagar.</b></a>', 0, '2018-11-15 10:23:59'),
(1843, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"http://192.168.0.106/testing/admin/locations/edit?id=94\"><b>Karve nagar.</b></a>', 0, '2018-11-15 10:27:38'),
(1844, 'admin', 'locations', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> location <a href=\"http://192.168.0.106/testing/admin/locations/edit?id=94\"><b>Karve nagar.</b></a>', 0, '2018-11-15 10:28:15'),
(1845, 'admin', 'customers', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> customer <a href=\"http://192.168.0.106/testing/admin/customers/edit?id=28\"><b>mahesh sharma.</b></a>', 0, '2018-11-15 10:39:43'),
(1846, 'admin', 'customers', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> customer <a href=\"http://192.168.0.106/testing/admin/customers/edit?id=29\"><b>demo demo.</b></a>', 0, '2018-11-15 10:41:25'),
(1847, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://192.168.0.106/testing/admin/customers/edit?id=29\"><b>demo demo.</b></a>', 0, '2018-11-15 10:41:47'),
(1848, 'admin', 'customers', 'staff', 18, 'added', 'dhiraj <b>added</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=30\"><b>demo demo.</b></a>', 0, '2018-11-15 10:47:43'),
(1849, 'admin', 'customers', 'staff', 18, 'updated', 'dhiraj <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=30\"><b>demo demo.</b></a>', 0, '2018-11-15 10:47:59'),
(1850, 'admin', 'tables', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> table <a href=\"http://192.168.0.106/testing/admin/tables/edit\"><b>Ej11.</b></a>', 0, '2018-11-15 10:58:00'),
(1851, 'admin', 'tables', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> table <a href=\"http://192.168.0.106/testing/admin/tables/edit\"><b>EJ112.</b></a>', 0, '2018-11-15 11:00:15'),
(1852, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-11-15 11:12:44'),
(1853, 'admin', 'customers', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=31\"><b>testing testing.</b></a>', 0, '2018-11-15 11:13:11'),
(1854, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=31\"><b>testing testing.</b></a>', 0, '2018-11-15 11:13:28'),
(1855, 'admin', 'customers', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=32\"><b>testing testing.</b></a>', 0, '2018-11-15 11:15:34'),
(1856, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=32\"><b>testing testing.</b></a>', 0, '2018-11-15 11:15:48'),
(1857, 'admin', 'customers', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=33\"><b>Demo Restro.</b></a>', 0, '2018-11-15 11:17:55'),
(1858, 'admin', 'customers', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=34\"><b>testing111 Restro.</b></a>', 0, '2018-11-15 11:19:49'),
(1859, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=34\"><b>testing111 Restro.</b></a>', 0, '2018-11-15 11:20:09'),
(1860, 'admin', 'customers', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=35\"><b>testing tes.</b></a>', 0, '2018-11-15 11:21:54'),
(1861, 'admin', 'customers', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=36\"><b>testing testing.</b></a>', 0, '2018-11-15 11:26:21'),
(1862, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=36\"><b>testing testing.</b></a>', 0, '2018-11-15 11:26:37'),
(1863, 'admin', 'customers', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=37\"><b>testing Restro.</b></a>', 0, '2018-11-15 11:28:02'),
(1864, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=37\"><b>testing Restro.</b></a>', 0, '2018-11-15 11:28:17'),
(1865, 'admin', 'customers', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=38\"><b>testing de.</b></a>', 0, '2018-11-15 11:31:35'),
(1866, 'admin', 'customers', 'staff', 11, 'updated', 'Admin OnlineKatta <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=38\"><b>testing de.</b></a>', 0, '2018-11-15 11:33:47'),
(1867, 'admin', 'customers', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=39\"><b>pppp Restro.</b></a>', 0, '2018-11-15 11:38:27'),
(1868, 'admin', 'customers', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=40\"><b>tttttttt Restro.</b></a>', 0, '2018-11-15 11:40:02'),
(1869, 'admin', 'customers', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=41\"><b>testing hhhhhhhhh.</b></a>', 0, '2018-11-15 11:41:32'),
(1870, 'admin', 'customers', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=42\"><b>testagain Restro.</b></a>', 0, '2018-11-15 11:45:17'),
(1871, 'admin', 'customers', 'staff', 11, 'added', 'Admin OnlineKatta <b>added</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=43\"><b>testing Restro.</b></a>', 0, '2018-11-15 11:54:15'),
(1872, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"http://192.168.0.106/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-11-15 11:59:52'),
(1873, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href=\"http://192.168.0.106/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> in.', 0, '2018-11-15 12:05:18'),
(1874, 'admin', 'staffs', 'staff', 18, 'logged in', '<a href=\"http://localhost/testing/admin/staffs/edit?id=18\">dhiraj</a> <b>logged</b> in.', 0, '2018-11-15 12:11:20'),
(1875, 'admin', 'locations', 'staff', 18, 'added', 'dhiraj <b>added</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=96\"><b>karve nagar.</b></a>', 0, '2018-11-15 12:12:31'),
(1876, 'admin', 'locations', 'staff', 18, 'added', 'dhiraj <b>added</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=97\"><b>abhishek pure veg.</b></a>', 0, '2018-11-15 12:20:42'),
(1877, 'admin', 'locations', 'staff', 18, 'added', 'dhiraj <b>added</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=98\"><b>abhishek pure veg.</b></a>', 0, '2018-11-15 12:20:54'),
(1878, 'admin', 'staffs', 'staff', 18, 'logged in', '<a href=\"http://localhost/testing/admin/staffs/edit?id=18\">dhiraj</a> <b>logged</b> in.', 0, '2018-11-15 12:24:20'),
(1879, 'admin', 'locations', 'staff', 18, 'updated', 'dhiraj <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=97\"><b>abhishek pure veg.</b></a>', 0, '2018-11-15 12:30:55'),
(1880, 'admin', 'customers', 'staff', 18, 'added', 'dhiraj <b>added</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=44\"><b>prathamesh kulkarni.</b></a>', 0, '2018-11-15 12:31:20'),
(1881, 'admin', 'customers', 'staff', 18, 'updated', 'dhiraj <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=44\"><b>prathamesh kulkarni.</b></a>', 0, '2018-11-15 12:31:35'),
(1882, 'admin', 'locations', 'staff', 18, 'updated', 'dhiraj <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=97\"><b>abhishek pure veg.</b></a>', 0, '2018-11-15 12:31:46'),
(1883, 'admin', 'locations', 'staff', 18, 'updated', 'dhiraj <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=97\"><b>abhishek pure veg.</b></a>', 0, '2018-11-15 12:31:59'),
(1884, 'admin', 'locations', 'staff', 18, 'updated', 'dhiraj <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=98\"><b>abhishek pure veg.</b></a>', 0, '2018-11-15 12:32:07'),
(1885, 'admin', 'locations', 'staff', 18, 'updated', 'dhiraj <b>updated</b> location <a href=\"http://localhost/testing/admin/locations/edit?id=97\"><b>abhishek pure veg.</b></a>', 0, '2018-11-15 12:32:47'),
(1886, 'admin', 'customers', 'staff', 18, 'updated', 'dhiraj <b>updated</b> customer <a href=\"http://localhost/testing/admin/customers/edit?id=44\"><b>prathamesh kulkarni.</b></a>', 0, '2018-11-15 12:33:13'),
(1887, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href=\"http://localhost/testing/admin/staffs/edit?id=11\">Admin OnlineKatta</a> <b>logged</b> out.', 0, '2018-11-15 12:44:59');

-- --------------------------------------------------------

--
-- Table structure for table `ok_addresses`
--

CREATE TABLE `ok_addresses` (
  `address_id` int(11) NOT NULL,
  `customer_id` int(15) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `state` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ok_addresses`
--

INSERT INTO `ok_addresses` (`address_id`, `customer_id`, `address_1`, `address_2`, `city`, `state`, `postcode`, `country_id`) VALUES
(11, 0, 'DSK Vishwa Road', 'Dhayari', 'Pune', 'Mahrashtra', '411041', 99),
(12, 0, 'tejas apartments', 'tejas nagar colony', 'Pune', 'Maharashtra', '411038', 99),
(13, 0, 'Saptasur', 'Dhayari', 'Pune', 'Maharashtra', '411041', 99),
(14, 0, 'Dhayari', '', 'Pune', 'Maharashtra', '411041', 99),
(15, 0, 'DSK Vishwa', '', 'Pune', 'Maharashtra', '411038', 99),
(16, 0, 'dhayari', 'dsk vishwa road', 'pune', 'maharashtra', '413307', 99),
(18, 0, 'the nook society', '', 'pune', 'maharashtra', '411066', 99),
(19, 0, 'asdasd', '', 'Pune', 'Maharashtra', '411041', 99),
(35, 0, 'Baner', '-', 'Pune', 'Maharashtra', '411048', 99),
(88, 0, 'Bavdhan', 'Behind Maharashtra Bank', 'Pune', 'Maharashtra', '411010', 99),
(58, 0, 'Baner', 'adsfasdf', 'Pune', 'Maharashtra', '411041', 99),
(73, 0, 'Baner', 'Katraj', 'Pune', 'Maharashtra', '411011', 99),
(74, 0, 'Wadgaon', 'Katraj', 'Pune', 'Maharashtra', '411011', 99),
(75, 0, 'Wadgaon', 'Budruck', 'sdfsdf', 'Maharashtra', '411011', 99),
(76, 0, 'Warje', 'Katraj', 'Pune', 'Maharashtra', '411046', 99),
(78, 0, 'asdfasdf', 'kashid park pimple gurav', 'Pune', 'Maharashtra', '411027', 99),
(79, 0, 'DSK', '', 'Pune', 'Maharashtra', '411041', 99),
(81, 0, 'Bavdhan', '', 'Pune', 'Maharashtra', '411021', 99),
(83, 0, 'Baner petrol pump', 'behind hospital', 'Pune', 'Maharashtra', '412012', 99);

-- --------------------------------------------------------

--
-- Table structure for table `ok_attendance`
--

CREATE TABLE `ok_attendance` (
  `attendance_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `checking_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `location_id` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ok_attendance`
--

INSERT INTO `ok_attendance` (`attendance_id`, `customer_id`, `checking_date`, `location_id`) VALUES
(1, 8, '2018-11-10 10:42:52', '5'),
(2, 10, '2018-11-10 10:44:20', '1'),
(3, 8, '2018-11-10 10:42:52', '5'),
(4, 10, '2018-11-10 10:44:20', '1'),
(5, 8, '2018-11-10 11:23:04', '1');

-- --------------------------------------------------------

--
-- Table structure for table `ok_banners`
--

CREATE TABLE `ok_banners` (
  `banner_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` char(8) NOT NULL,
  `click_url` varchar(255) NOT NULL,
  `language_id` int(11) NOT NULL,
  `alt_text` varchar(255) NOT NULL,
  `image_code` text NOT NULL,
  `custom_code` text NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ok_banners`
--

INSERT INTO `ok_banners` (`banner_id`, `name`, `type`, `click_url`, `language_id`, `alt_text`, `image_code`, `custom_code`, `status`) VALUES
(12, 'BG\'s', 'image', 'https://www.onlinekatta.com/Smart-Resto-demo/', 11, 'hhkjkjkjkj', 'a:1:{s:4:\"path\";s:19:\"data/images_(3).jpg\";}', '', 1),
(13, 'smart resto', 'image', 'https://www.onlinekatta.com/Smart-Resto-demo/', 11, 'biryani', 'a:1:{s:4:\"path\";s:21:\"data/download_(5).jpg\";}', '', 0),
(14, 'biryani', 'image', 'https://www.onlinekatta.com/Smart-Resto-demo', 11, 'biryani', 'a:1:{s:4:\"path\";s:21:\"data/download_(5).jpg\";}', '', 1),
(15, 'sp', 'image', 'hdtrdhyufut', 11, 'dcyufi', 'a:1:{s:4:\"path\";s:16:\"data/non-veg.jpg\";}', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ok_biometric`
--

CREATE TABLE `ok_biometric` (
  `id` int(11) NOT NULL,
  `current_user_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT '1 Default Fingerprint 2 Add biometric id 3  chnage 4 update biometric',
  `cretated_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `updated_at` datetime NOT NULL,
  `user_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ok_biometric`
--

INSERT INTO `ok_biometric` (`id`, `current_user_id`, `status`, `cretated_at`, `updated_at`, `user_id`) VALUES
(1, '16', '3', '2018-11-13 09:10:37.920378', '2018-11-13 14:40:37', '18'),
(2, '8', '1', '2018-11-13 08:44:47.000000', '0000-00-00 00:00:00', '18'),
(3, '29', '5', '2018-11-15 05:58:52.545716', '0000-00-00 00:00:00', '11');

-- --------------------------------------------------------

--
-- Table structure for table `ok_categories`
--

CREATE TABLE `ok_categories` (
  `category_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `parent_id` int(11) NOT NULL,
  `priority` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ok_categories`
--

INSERT INTO `ok_categories` (`category_id`, `name`, `description`, `parent_id`, `priority`, `image`, `status`) VALUES
(11, 'South Indian', 'south indian menu', 0, 1, 'data/download_(4).jpg', 1),
(12, 'North Indian', 'north indian cuisine', 0, 1, 'data/images_(3).jpg', 1),
(13, 'biryani', 'rice', 0, 1, 'data/download_(5).jpg', 0),
(14, 'Drinks', 'all drinks', 0, 3, 'data/drinks.jpg', 1),
(15, 'mocktails', 'mocktails', 14, 3, 'data/mocktails.jpg', 1),
(16, 'softy', 'vanilla,chocolate', 0, 1, 'data/softy.jpg', 1),
(17, 'Maharashtrian', 'All maharashtrian dishes', 0, 1, 'data/Menu-Chole-Bhature.jpg', 1),
(19, 'maharastrian', 'djutfiva', 17, 1, '', 1),
(20, 'Chinese', '', 0, 1, '', 0),
(21, 'Kolhapuri', '', 0, 1, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ok_countries`
--

CREATE TABLE `ok_countries` (
  `country_id` int(11) NOT NULL,
  `country_name` varchar(128) NOT NULL,
  `iso_code_2` varchar(2) NOT NULL,
  `iso_code_3` varchar(3) NOT NULL,
  `format` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `flag` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ok_countries`
--

INSERT INTO `ok_countries` (`country_id`, `country_name`, `iso_code_2`, `iso_code_3`, `format`, `status`, `flag`) VALUES
(99, 'India', 'IN', 'IND', '', 1, 'data/flags/in.png');

-- --------------------------------------------------------

--
-- Table structure for table `ok_coupons`
--

CREATE TABLE `ok_coupons` (
  `coupon_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(15) NOT NULL,
  `type` char(1) NOT NULL,
  `discount` decimal(15,4) DEFAULT NULL,
  `min_total` decimal(15,4) DEFAULT NULL,
  `redemptions` int(11) NOT NULL DEFAULT '0',
  `customer_redemptions` int(11) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` date NOT NULL,
  `validity` char(15) NOT NULL,
  `fixed_date` date DEFAULT NULL,
  `fixed_from_time` time DEFAULT NULL,
  `fixed_to_time` time DEFAULT NULL,
  `period_start_date` date DEFAULT NULL,
  `period_end_date` date DEFAULT NULL,
  `recurring_every` varchar(35) NOT NULL,
  `recurring_from_time` time DEFAULT NULL,
  `recurring_to_time` time DEFAULT NULL,
  `order_restriction` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ok_coupons`
--

INSERT INTO `ok_coupons` (`coupon_id`, `name`, `code`, `type`, `discount`, `min_total`, `redemptions`, `customer_redemptions`, `description`, `status`, `date_added`, `validity`, `fixed_date`, `fixed_from_time`, `fixed_to_time`, `period_start_date`, `period_end_date`, `recurring_every`, `recurring_from_time`, `recurring_to_time`, `order_restriction`) VALUES
(14, 'Diwali Offer', '1002', 'P', '50.0000', '800.0000', 0, 0, 'xyz', 1, '2018-11-05', 'period', NULL, NULL, NULL, '2018-11-06', '2018-11-11', '', NULL, NULL, 0),
(12, '35%OFF', '3500', 'P', '35.0000', '400.0000', 0, 0, 'this one is nice try this out', 1, '2018-04-03', 'forever', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 0),
(13, 'CRAKING DIWALI', 'CRADIW', 'P', '50.0000', '500.0000', 0, 3, 'HAPPY DIWALI', 1, '2018-07-16', 'forever', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ok_coupons_history`
--

CREATE TABLE `ok_coupons_history` (
  `coupon_history_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `code` varchar(15) NOT NULL,
  `min_total` decimal(15,4) DEFAULT NULL,
  `amount` decimal(15,4) DEFAULT NULL,
  `date_used` datetime NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ok_currencies`
--

CREATE TABLE `ok_currencies` (
  `currency_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `currency_name` varchar(32) NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `currency_symbol` varchar(3) NOT NULL,
  `currency_rate` decimal(15,8) NOT NULL,
  `symbol_position` tinyint(4) NOT NULL,
  `thousand_sign` char(1) NOT NULL,
  `decimal_sign` char(1) NOT NULL,
  `decimal_position` char(1) NOT NULL,
  `iso_alpha2` varchar(2) NOT NULL,
  `iso_alpha3` varchar(3) NOT NULL,
  `iso_numeric` int(11) NOT NULL,
  `flag` varchar(6) NOT NULL,
  `currency_status` int(1) NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ok_currencies`
--

INSERT INTO `ok_currencies` (`currency_id`, `country_id`, `currency_name`, `currency_code`, `currency_symbol`, `currency_rate`, `symbol_position`, `thousand_sign`, `decimal_sign`, `decimal_position`, `iso_alpha2`, `iso_alpha3`, `iso_numeric`, `flag`, `currency_status`, `date_modified`) VALUES
(1, 1, 'Afghani', 'AFN', '؋', '0.00000000', 0, ',', '.', '2', 'AF', 'AFG', 4, 'AF.png', 0, '2018-01-22 19:57:04'),
(2, 2, 'Lek', 'ALL', 'Lek', '0.00000000', 0, ',', '.', '2', 'AL', 'ALB', 8, 'AL.png', 0, '2018-01-22 19:57:04'),
(3, 3, 'Dinar', 'DZD', 'د.ج', '0.00000000', 0, ',', '.', '2', 'DZ', 'DZA', 12, 'DZ.png', 0, '2018-01-22 19:57:04'),
(4, 4, 'Dollar', 'USD', '$', '0.00000000', 0, ',', '.', '2', 'AS', 'ASM', 16, 'AS.png', 0, '2018-01-22 19:57:04'),
(5, 5, 'Euro', 'EUR', '€', '0.00000000', 0, ',', '.', '2', 'AD', 'AND', 20, 'AD.png', 0, '2018-01-22 19:57:04'),
(6, 6, 'Kwanza', 'AOA', 'Kz', '0.00000000', 0, ',', '.', '2', 'AO', 'AGO', 24, 'AO.png', 0, '2018-01-22 19:57:04'),
(7, 7, 'Dollar', 'XCD', '$', '0.00000000', 0, ',', '.', '2', 'AI', 'AIA', 660, 'AI.png', 0, '2018-01-22 19:57:04'),
(8, 8, 'Antarctican', 'AQD', 'A$', '0.00000000', 0, ',', '.', '2', 'AQ', 'ATA', 10, 'AQ.png', 0, '2018-01-22 19:57:04'),
(9, 9, 'Dollar', 'XCD', '$', '0.00000000', 0, ',', '.', '2', 'AG', 'ATG', 28, 'AG.png', 0, '2018-01-22 19:57:04'),
(10, 10, 'Peso', 'ARS', '$', '0.00000000', 0, ',', '.', '2', 'AR', 'ARG', 32, 'AR.png', 0, '2018-01-22 19:57:04'),
(11, 11, 'Dram', 'AMD', 'դր.', '0.00000000', 0, ',', '.', '2', 'AM', 'ARM', 51, 'AM.png', 0, '2018-01-22 19:57:04'),
(12, 12, 'Guilder', 'AWG', 'ƒ', '0.00000000', 0, ',', '.', '2', 'AW', 'ABW', 533, 'AW.png', 0, '2018-01-22 19:57:04'),
(13, 13, 'Dollar', 'AUD', '$', '0.00000000', 0, ',', '.', '2', 'AU', 'AUS', 36, 'AU.png', 0, '2018-01-22 19:57:04'),
(14, 14, 'Euro', 'EUR', '€', '0.00000000', 0, ',', '.', '2', 'AT', 'AUT', 40, 'AT.png', 0, '2018-01-22 19:57:04'),
(15, 15, 'Manat', 'AZN', 'ман', '0.00000000', 0, ',', '.', '2', 'AZ', 'AZE', 31, 'AZ.png', 0, '2018-01-22 19:57:04'),
(16, 16, 'Dollar', 'BSD', '$', '0.00000000', 0, ',', '.', '2', 'BS', 'BHS', 44, 'BS.png', 0, '2018-01-22 19:57:04'),
(17, 17, 'Dinar', 'BHD', '.د.', '0.00000000', 0, ',', '.', '2', 'BH', 'BHR', 48, 'BH.png', 0, '2018-01-22 19:57:04'),
(18, 18, 'Taka', 'BDT', '৳', '0.00000000', 0, ',', '.', '2', 'BD', 'BGD', 50, 'BD.png', 0, '2018-01-22 19:57:04'),
(19, 19, 'Dollar', 'BBD', '$', '0.00000000', 0, ',', '.', '2', 'BB', 'BRB', 52, 'BB.png', 0, '2018-01-22 19:57:04'),
(20, 20, 'Ruble', 'BYR', 'p.', '0.00000000', 0, ',', '.', '2', 'BY', 'BLR', 112, 'BY.png', 0, '2018-01-22 19:57:04'),
(21, 21, 'Euro', 'EUR', '€', '0.00000000', 0, ',', '.', '2', 'BE', 'BEL', 56, 'BE.png', 0, '2018-01-22 19:57:04'),
(22, 22, 'Dollar', 'BZD', 'BZ$', '0.00000000', 0, ',', '.', '2', 'BZ', 'BLZ', 84, 'BZ.png', 0, '2018-01-22 19:57:04'),
(23, 23, 'Franc', 'XOF', '', '0.00000000', 0, ',', '.', '2', 'BJ', 'BEN', 204, 'BJ.png', 0, '2018-01-22 19:57:04'),
(24, 24, 'Dollar', 'BMD', '$', '0.00000000', 0, ',', '.', '2', 'BM', 'BMU', 60, 'BM.png', 0, '2018-01-22 19:57:04'),
(25, 25, 'Ngultrum', 'BTN', 'Nu.', '0.00000000', 0, ',', '.', '2', 'BT', 'BTN', 64, 'BT.png', 0, '2018-01-22 19:57:04'),
(26, 26, 'Boliviano', 'BOB', '$b', '0.00000000', 0, ',', '.', '2', 'BO', 'BOL', 68, 'BO.png', 0, '2018-01-22 19:57:04'),
(27, 27, 'Marka', 'BAM', 'KM', '0.00000000', 0, ',', '.', '2', 'BA', 'BIH', 70, 'BA.png', 0, '2018-01-22 19:57:04'),
(28, 28, 'Pula', 'BWP', 'P', '0.00000000', 0, ',', '.', '2', 'BW', 'BWA', 72, 'BW.png', 0, '2018-01-22 19:57:04'),
(29, 29, 'Krone', 'NOK', 'kr', '0.00000000', 0, ',', '.', '2', 'BV', 'BVT', 74, 'BV.png', 0, '2018-01-22 19:57:04'),
(30, 30, 'Real', 'BRL', 'R$', '0.00000000', 0, ',', '.', '2', 'BR', 'BRA', 76, 'BR.png', 0, '2018-01-22 19:57:04'),
(31, 31, 'Dollar', 'USD', '$', '0.00000000', 0, ',', '.', '2', 'IO', 'IOT', 86, 'IO.png', 0, '2018-01-22 19:57:04'),
(32, 231, 'Dollar', 'USD', '$', '0.00000000', 0, ',', '.', '2', 'VG', 'VGB', 92, 'VG.png', 0, '2018-01-22 19:57:04'),
(33, 32, 'Dollar', 'BND', '$', '0.00000000', 0, ',', '.', '2', 'BN', 'BRN', 96, 'BN.png', 0, '2018-01-22 19:57:04'),
(34, 33, 'Lev', 'BGN', 'лв', '0.00000000', 0, ',', '.', '2', 'BG', 'BGR', 100, 'BG.png', 0, '2018-01-22 19:57:04'),
(35, 34, 'Franc', 'XOF', '', '0.00000000', 0, ',', '.', '2', 'BF', 'BFA', 854, 'BF.png', 0, '2018-01-22 19:57:04'),
(36, 35, 'Franc', 'BIF', 'Fr', '0.00000000', 0, ',', '.', '2', 'BI', 'BDI', 108, 'BI.png', 0, '2018-01-22 19:57:04'),
(37, 36, 'Riels', 'KHR', '៛', '0.00000000', 0, ',', '.', '2', 'KH', 'KHM', 116, 'KH.png', 0, '2018-01-22 19:57:04'),
(38, 37, 'Franc', 'XAF', 'FCF', '0.00000000', 0, ',', '.', '2', 'CM', 'CMR', 120, 'CM.png', 0, '2018-01-22 19:57:04'),
(39, 38, 'Dollar', 'CAD', '$', '0.00000000', 0, ',', '.', '2', 'CA', 'CAN', 124, 'CA.png', 0, '2018-01-22 19:57:04'),
(40, 39, 'Escudo', 'CVE', '', '0.00000000', 0, ',', '.', '2', 'CV', 'CPV', 132, 'CV.png', 0, '2018-01-22 19:57:04'),
(41, 40, 'Dollar', 'KYD', '$', '0.00000000', 0, ',', '.', '2', 'KY', 'CYM', 136, 'KY.png', 0, '2018-01-22 19:57:04'),
(42, 41, 'Franc', 'XAF', 'FCF', '0.00000000', 0, ',', '.', '2', 'CF', 'CAF', 140, 'CF.png', 0, '2018-01-22 19:57:04'),
(43, 42, 'Franc', 'XAF', '', '0.00000000', 0, ',', '.', '2', 'TD', 'TCD', 148, 'TD.png', 0, '2018-01-22 19:57:04'),
(44, 43, 'Peso', 'CLP', '', '0.00000000', 0, ',', '.', '2', 'CL', 'CHL', 152, 'CL.png', 0, '2018-01-22 19:57:04'),
(45, 44, 'Yuan Renminbi', 'CNY', '¥', '0.00000000', 0, ',', '.', '2', 'CN', 'CHN', 156, 'CN.png', 0, '2018-01-22 19:57:04'),
(46, 45, 'Dollar', 'AUD', '$', '0.00000000', 0, ',', '.', '2', 'CX', 'CXR', 162, 'CX.png', 0, '2018-01-22 19:57:04'),
(47, 46, 'Dollar', 'AUD', '$', '0.00000000', 0, ',', '.', '2', 'CC', 'CCK', 166, 'CC.png', 0, '2018-01-22 19:57:04'),
(48, 47, 'Peso', 'COP', '$', '0.00000000', 0, ',', '.', '2', 'CO', 'COL', 170, 'CO.png', 0, '2018-01-22 19:57:04'),
(49, 48, 'Franc', 'KMF', '', '0.00000000', 0, ',', '.', '2', 'KM', 'COM', 174, 'KM.png', 0, '2018-01-22 19:57:04'),
(50, 50, 'Dollar', 'NZD', '$', '0.00000000', 0, ',', '.', '2', 'CK', 'COK', 184, 'CK.png', 0, '2018-01-22 19:57:04'),
(51, 51, 'Colon', 'CRC', '₡', '0.00000000', 0, ',', '.', '2', 'CR', 'CRI', 188, 'CR.png', 0, '2018-01-22 19:57:04'),
(52, 53, 'Kuna', 'HRK', 'kn', '0.00000000', 0, ',', '.', '2', 'HR', 'HRV', 191, 'HR.png', 0, '2018-01-22 19:57:04'),
(53, 54, 'Peso', 'CUP', '₱', '0.00000000', 0, ',', '.', '2', 'CU', 'CUB', 192, 'CU.png', 0, '2018-01-22 19:57:04'),
(54, 55, 'Pound', 'CYP', '', '0.00000000', 0, ',', '.', '2', 'CY', 'CYP', 196, 'CY.png', 0, '2018-01-22 19:57:04'),
(55, 56, 'Koruna', 'CZK', 'Kč', '0.00000000', 0, ',', '.', '2', 'CZ', 'CZE', 203, 'CZ.png', 0, '2018-01-22 19:57:04'),
(56, 49, 'Franc', 'CDF', 'FC', '0.00000000', 0, ',', '.', '2', 'CD', 'COD', 180, 'CD.png', 0, '2018-01-22 19:57:04'),
(57, 57, 'Krone', 'DKK', 'kr', '0.00000000', 0, ',', '.', '2', 'DK', 'DNK', 208, 'DK.png', 0, '2018-01-22 19:57:04'),
(58, 58, 'Franc', 'DJF', '', '0.00000000', 0, ',', '.', '2', 'DJ', 'DJI', 262, 'DJ.png', 0, '2018-01-22 19:57:04'),
(59, 59, 'Dollar', 'XCD', '$', '0.00000000', 0, ',', '.', '2', 'DM', 'DMA', 212, 'DM.png', 0, '2018-01-22 19:57:04'),
(60, 60, 'Peso', 'DOP', 'RD$', '0.00000000', 0, ',', '.', '2', 'DO', 'DOM', 214, 'DO.png', 0, '2018-01-22 19:57:04'),
(61, 61, 'Dollar', 'USD', '$', '0.00000000', 0, ',', '.', '2', 'TL', 'TLS', 626, 'TL.png', 0, '2018-01-22 19:57:04'),
(62, 62, 'Dollar', 'USD', '$', '0.00000000', 0, ',', '.', '2', 'EC', 'ECU', 218, 'EC.png', 0, '2018-01-22 19:57:04'),
(63, 63, 'Pound', 'EGP', '£', '0.00000000', 0, ',', '.', '2', 'EG', 'EGY', 818, 'EG.png', 0, '2018-01-22 19:57:04'),
(64, 64, 'Colone', 'SVC', '$', '0.00000000', 0, ',', '.', '2', 'SV', 'SLV', 222, 'SV.png', 0, '2018-01-22 19:57:04'),
(65, 65, 'Franc', 'XAF', 'FCF', '0.00000000', 0, ',', '.', '2', 'GQ', 'GNQ', 226, 'GQ.png', 0, '2018-01-22 19:57:04'),
(66, 66, 'Nakfa', 'ERN', 'Nfk', '0.00000000', 0, ',', '.', '2', 'ER', 'ERI', 232, 'ER.png', 0, '2018-01-22 19:57:04'),
(67, 67, 'Kroon', 'EEK', 'kr', '0.00000000', 0, ',', '.', '2', 'EE', 'EST', 233, 'EE.png', 0, '2018-01-22 19:57:04'),
(68, 68, 'Birr', 'ETB', '', '0.00000000', 0, ',', '.', '2', 'ET', 'ETH', 231, 'ET.png', 0, '2018-01-22 19:57:04'),
(69, 69, 'Pound', 'FKP', '£', '0.00000000', 0, ',', '.', '2', 'FK', 'FLK', 238, 'FK.png', 0, '2018-01-22 19:57:04'),
(70, 70, 'Krone', 'DKK', 'kr', '0.00000000', 0, ',', '.', '2', 'FO', 'FRO', 234, 'FO.png', 0, '2018-01-22 19:57:04'),
(71, 71, 'Dollar', 'FJD', '$', '0.00000000', 0, ',', '.', '2', 'FJ', 'FJI', 242, 'FJ.png', 0, '2018-01-22 19:57:04'),
(72, 72, 'Euro', 'EUR', '€', '0.00000000', 0, ',', '.', '2', 'FI', 'FIN', 246, 'FI.png', 0, '2018-01-22 19:57:04'),
(73, 73, 'Euro', 'EUR', '€', '0.00000000', 0, ',', '.', '2', 'FR', 'FRA', 250, 'FR.png', 0, '2018-01-22 19:57:04'),
(74, 75, 'Euro', 'EUR', '€', '0.00000000', 0, ',', '.', '2', 'GF', 'GUF', 254, 'GF.png', 0, '2018-01-22 19:57:04'),
(75, 76, 'Franc', 'XPF', '', '0.00000000', 0, ',', '.', '2', 'PF', 'PYF', 258, 'PF.png', 0, '2018-01-22 19:57:04'),
(76, 77, 'Euro  ', 'EUR', '€', '0.00000000', 0, ',', '.', '2', 'TF', 'ATF', 260, 'TF.png', 0, '2018-01-22 19:57:04'),
(77, 78, 'Franc', 'XAF', 'FCF', '0.00000000', 0, ',', '.', '2', 'GA', 'GAB', 266, 'GA.png', 0, '2018-01-22 19:57:04'),
(78, 79, 'Dalasi', 'GMD', 'D', '0.00000000', 0, ',', '.', '2', 'GM', 'GMB', 270, 'GM.png', 0, '2018-01-22 19:57:04'),
(79, 80, 'Lari', 'GEL', '', '0.00000000', 0, ',', '.', '2', 'GE', 'GEO', 268, 'GE.png', 0, '2018-01-22 19:57:04'),
(80, 81, 'Euro', 'EUR', '€', '0.00000000', 0, ',', '.', '2', 'DE', 'DEU', 276, 'DE.png', 0, '2018-01-22 19:57:04'),
(81, 82, 'Cedi', 'GHC', '¢', '0.00000000', 0, ',', '.', '2', 'GH', 'GHA', 288, 'GH.png', 0, '2018-01-22 19:57:04'),
(82, 83, 'Pound', 'GIP', '£', '0.00000000', 0, ',', '.', '2', 'GI', 'GIB', 292, 'GI.png', 0, '2018-01-22 19:57:04'),
(83, 84, 'Euro', 'EUR', '€', '0.00000000', 0, ',', '.', '2', 'GR', 'GRC', 300, 'GR.png', 0, '2018-01-22 19:57:04'),
(84, 85, 'Krone', 'DKK', 'kr', '0.00000000', 0, ',', '.', '2', 'GL', 'GRL', 304, 'GL.png', 0, '2018-01-22 19:57:04'),
(85, 86, 'Dollar', 'XCD', '$', '0.00000000', 0, ',', '.', '2', 'GD', 'GRD', 308, 'GD.png', 0, '2018-01-22 19:57:04'),
(86, 87, 'Euro', 'EUR', '€', '0.00000000', 0, ',', '.', '2', 'GP', 'GLP', 312, 'GP.png', 0, '2018-01-22 19:57:04'),
(87, 88, 'Dollar', 'USD', '$', '0.00000000', 0, ',', '.', '2', 'GU', 'GUM', 316, 'GU.png', 0, '2018-01-22 19:57:04'),
(88, 89, 'Quetzal', 'GTQ', 'Q', '0.00000000', 0, ',', '.', '2', 'GT', 'GTM', 320, 'GT.png', 0, '2018-01-22 19:57:04'),
(89, 90, 'Franc', 'GNF', '', '0.00000000', 0, ',', '.', '2', 'GN', 'GIN', 324, 'GN.png', 0, '2018-01-22 19:57:04'),
(90, 91, 'Franc', 'XOF', '', '0.00000000', 0, ',', '.', '2', 'GW', 'GNB', 624, 'GW.png', 0, '2018-01-22 19:57:04'),
(91, 92, 'Dollar', 'GYD', '$', '0.00000000', 0, ',', '.', '2', 'GY', 'GUY', 328, 'GY.png', 0, '2018-01-22 19:57:04'),
(92, 93, 'Gourde', 'HTG', 'G', '0.00000000', 0, ',', '.', '2', 'HT', 'HTI', 332, 'HT.png', 0, '2018-01-22 19:57:04'),
(93, 94, 'Dollar', 'AUD', '$', '0.00000000', 0, ',', '.', '2', 'HM', 'HMD', 334, 'HM.png', 0, '2018-01-22 19:57:04'),
(94, 95, 'Lempira', 'HNL', 'L', '0.00000000', 0, ',', '.', '2', 'HN', 'HND', 340, 'HN.png', 0, '2018-01-22 19:57:04'),
(95, 96, 'Dollar', 'HKD', '$', '0.00000000', 0, ',', '.', '2', 'HK', 'HKG', 344, 'HK.png', 0, '2018-01-22 19:57:04'),
(96, 97, 'Forint', 'HUF', 'Ft', '0.00000000', 0, ',', '.', '2', 'HU', 'HUN', 348, 'HU.png', 0, '2018-01-22 19:57:04'),
(97, 98, 'Krona', 'ISK', 'kr', '0.00000000', 0, ',', '.', '2', 'IS', 'ISL', 352, 'IS.png', 0, '2018-01-22 19:57:04'),
(98, 99, 'Rupee', 'INR', '₹', '0.00000000', 0, ',', '.', '2', 'IN', 'IND', 356, 'IN.png', 1, '2018-01-22 19:57:04'),
(99, 100, 'Rupiah', 'IDR', 'Rp', '0.00000000', 0, ',', '.', '2', 'ID', 'IDN', 360, 'ID.png', 0, '2018-01-22 19:57:04'),
(100, 101, 'Rial', 'IRR', '﷼', '0.00000000', 0, ',', '.', '2', 'IR', 'IRN', 364, 'IR.png', 0, '2018-01-22 19:57:04'),
(101, 102, 'Dinar', 'IQD', '', '0.00000000', 0, ',', '.', '2', 'IQ', 'IRQ', 368, 'IQ.png', 0, '2018-01-22 19:57:04'),
(102, 103, 'Euro', 'EUR', '€', '0.00000000', 0, ',', '.', '2', 'IE', 'IRL', 372, 'IE.png', 0, '2018-01-22 19:57:04'),
(103, 104, 'Shekel', 'ILS', '₪', '0.00000000', 0, ',', '.', '2', 'IL', 'ISR', 376, 'IL.png', 0, '2018-01-22 19:57:04'),
(104, 105, 'Euro', 'EUR', '€', '0.00000000', 0, ',', '.', '2', 'IT', 'ITA', 380, 'IT.png', 0, '2018-01-22 19:57:04'),
(105, 52, 'Franc', 'XOF', '', '0.00000000', 0, ',', '.', '2', 'CI', 'CIV', 384, 'CI.png', 0, '2018-01-22 19:57:04'),
(106, 106, 'Dollar', 'JMD', '$', '0.00000000', 0, ',', '.', '2', 'JM', 'JAM', 388, 'JM.png', 0, '2018-01-22 19:57:04'),
(107, 107, 'Yen', 'JPY', '¥', '0.00000000', 0, ',', '.', '2', 'JP', 'JPN', 392, 'JP.png', 0, '2018-01-22 19:57:04'),
(108, 108, 'Dinar', 'JOD', '', '0.00000000', 0, ',', '.', '2', 'JO', 'JOR', 400, 'JO.png', 0, '2018-01-22 19:57:04'),
(109, 109, 'Tenge', 'KZT', 'лв', '0.00000000', 0, ',', '.', '2', 'KZ', 'KAZ', 398, 'KZ.png', 0, '2018-01-22 19:57:04'),
(110, 110, 'Shilling', 'KES', '', '0.00000000', 0, ',', '.', '2', 'KE', 'KEN', 404, 'KE.png', 0, '2018-01-22 19:57:04'),
(111, 111, 'Dollar', 'AUD', '$', '0.00000000', 0, ',', '.', '2', 'KI', 'KIR', 296, 'KI.png', 0, '2018-01-22 19:57:04'),
(112, 114, 'Dinar', 'KWD', 'د.ك', '0.00000000', 0, ',', '.', '2', 'KW', 'KWT', 414, 'KW.png', 0, '2018-01-22 19:57:04'),
(113, 115, 'Som', 'KGS', 'лв', '0.00000000', 0, ',', '.', '2', 'KG', 'KGZ', 417, 'KG.png', 0, '2018-01-22 19:57:04'),
(114, 116, 'Kip', 'LAK', '₭', '0.00000000', 0, ',', '.', '2', 'LA', 'LAO', 418, 'LA.png', 0, '2018-01-22 19:57:04'),
(115, 117, 'Lat', 'LVL', 'Ls', '0.00000000', 0, ',', '.', '2', 'LV', 'LVA', 428, 'LV.png', 0, '2018-01-22 19:57:04'),
(116, 118, 'Pound', 'LBP', '£', '0.00000000', 0, ',', '.', '2', 'LB', 'LBN', 422, 'LB.png', 0, '2018-01-22 19:57:04'),
(117, 119, 'Loti', 'LSL', 'L', '0.00000000', 0, ',', '.', '2', 'LS', 'LSO', 426, 'LS.png', 0, '2018-01-22 19:57:04'),
(118, 120, 'Dollar', 'LRD', '$', '0.00000000', 0, ',', '.', '2', 'LR', 'LBR', 430, 'LR.png', 0, '2018-01-22 19:57:04'),
(119, 121, 'Dinar', 'LYD', 'ل.د', '0.00000000', 0, ',', '.', '2', 'LY', 'LBY', 434, 'LY.png', 0, '2018-01-22 19:57:04'),
(120, 122, 'Franc', 'CHF', 'CHF', '0.00000000', 0, ',', '.', '2', 'LI', 'LIE', 438, 'LI.png', 0, '2018-01-22 19:57:04'),
(121, 123, 'Litas', 'LTL', 'Lt', '0.00000000', 0, ',', '.', '2', 'LT', 'LTU', 440, 'LT.png', 0, '2018-01-22 19:57:04'),
(122, 124, 'Euro', 'EUR', '€', '0.00000000', 0, ',', '.', '2', 'LU', 'LUX', 442, 'LU.png', 0, '2018-01-22 19:57:04'),
(123, 125, 'Pataca', 'MOP', 'MOP', '0.00000000', 0, ',', '.', '2', 'MO', 'MAC', 446, 'MO.png', 0, '2018-01-22 19:57:04'),
(124, 140, 'Denar', 'MKD', 'ден', '0.00000000', 0, ',', '.', '2', 'MK', 'MKD', 807, 'MK.png', 0, '2018-01-22 19:57:04'),
(125, 127, 'Ariary', 'MGA', 'Ar', '0.00000000', 0, ',', '.', '2', 'MG', 'MDG', 450, 'MG.png', 0, '2018-01-22 19:57:04'),
(126, 128, 'Kwacha', 'MWK', 'MK', '0.00000000', 0, ',', '.', '2', 'MW', 'MWI', 454, 'MW.png', 0, '2018-01-22 19:57:04'),
(127, 129, 'Ringgit', 'MYR', 'RM', '0.00000000', 0, ',', '.', '2', 'MY', 'MYS', 458, 'MY.png', 0, '2018-01-22 19:57:04'),
(128, 130, 'Rufiyaa', 'MVR', 'Rf', '0.00000000', 0, ',', '.', '2', 'MV', 'MDV', 462, 'MV.png', 0, '2018-01-22 19:57:04'),
(129, 131, 'Franc', 'XOF', 'MAF', '0.00000000', 0, ',', '.', '2', 'ML', 'MLI', 466, 'ML.png', 0, '2018-01-22 19:57:04'),
(130, 132, 'Lira', 'MTL', 'Lm', '0.00000000', 0, ',', '.', '2', 'MT', 'MLT', 470, 'MT.png', 0, '2018-01-22 19:57:04'),
(131, 133, 'Dollar', 'USD', '$', '0.00000000', 0, ',', '.', '2', 'MH', 'MHL', 584, 'MH.png', 0, '2018-01-22 19:57:04'),
(132, 134, 'Euro', 'EUR', '€', '0.00000000', 0, ',', '.', '2', 'MQ', 'MTQ', 474, 'MQ.png', 0, '2018-01-22 19:57:04'),
(133, 135, 'Ouguiya', 'MRO', 'UM', '0.00000000', 0, ',', '.', '2', 'MR', 'MRT', 478, 'MR.png', 0, '2018-01-22 19:57:04'),
(134, 136, 'Rupee', 'MUR', '₨', '0.00000000', 0, ',', '.', '2', 'MU', 'MUS', 480, 'MU.png', 0, '2018-01-22 19:57:04'),
(135, 137, 'Euro', 'EUR', '€', '0.00000000', 0, ',', '.', '2', 'YT', 'MYT', 175, 'YT.png', 0, '2018-01-22 19:57:04'),
(136, 138, 'Peso', 'MXN', '$', '0.00000000', 0, ',', '.', '2', 'MX', 'MEX', 484, 'MX.png', 0, '2018-01-22 19:57:04'),
(137, 139, 'Dollar', 'USD', '$', '0.00000000', 0, ',', '.', '2', 'FM', 'FSM', 583, 'FM.png', 0, '2018-01-22 19:57:04'),
(138, 140, 'Leu', 'MDL', 'MDL', '0.00000000', 0, ',', '.', '2', 'MD', 'MDA', 498, 'MD.png', 0, '2018-01-22 19:57:04'),
(139, 141, 'Euro', 'EUR', '€', '0.00000000', 0, ',', '.', '2', 'MC', 'MCO', 492, 'MC.png', 0, '2018-01-22 19:57:04'),
(140, 142, 'Tugrik', 'MNT', '₮', '0.00000000', 0, ',', '.', '2', 'MN', 'MNG', 496, 'MN.png', 0, '2018-01-22 19:57:04'),
(141, 143, 'Dollar', 'XCD', '$', '0.00000000', 0, ',', '.', '2', 'MS', 'MSR', 500, 'MS.png', 0, '2018-01-22 19:57:04'),
(142, 144, 'Dirham', 'MAD', '', '0.00000000', 0, ',', '.', '2', 'MA', 'MAR', 504, 'MA.png', 0, '2018-01-22 19:57:04'),
(143, 145, 'Meticail', 'MZN', 'MT', '0.00000000', 0, ',', '.', '2', 'MZ', 'MOZ', 508, 'MZ.png', 0, '2018-01-22 19:57:04'),
(144, 146, 'Kyat', 'MMK', 'K', '0.00000000', 0, ',', '.', '2', 'MM', 'MMR', 104, 'MM.png', 0, '2018-01-22 19:57:04'),
(145, 147, 'Dollar', 'NAD', '$', '0.00000000', 0, ',', '.', '2', 'NA', 'NAM', 516, 'NA.png', 0, '2018-01-22 19:57:04'),
(146, 148, 'Dollar', 'AUD', '$', '0.00000000', 0, ',', '.', '2', 'NR', 'NRU', 520, 'NR.png', 0, '2018-01-22 19:57:04'),
(147, 149, 'Rupee', 'NPR', '₨', '0.00000000', 0, ',', '.', '2', 'NP', 'NPL', 524, 'NP.png', 0, '2018-01-22 19:57:04'),
(148, 150, 'Euro', 'EUR', '€', '0.00000000', 0, ',', '.', '2', 'NL', 'NLD', 528, 'NL.png', 0, '2018-01-22 19:57:04'),
(149, 151, 'Guilder', 'ANG', 'ƒ', '0.00000000', 0, ',', '.', '2', 'AN', 'ANT', 530, 'AN.png', 0, '2018-01-22 19:57:04'),
(150, 152, 'Franc', 'XPF', '', '0.00000000', 0, ',', '.', '2', 'NC', 'NCL', 540, 'NC.png', 0, '2018-01-22 19:57:04'),
(151, 153, 'Dollar', 'NZD', '$', '0.00000000', 0, ',', '.', '2', 'NZ', 'NZL', 554, 'NZ.png', 0, '2018-01-22 19:57:04'),
(152, 154, 'Cordoba', 'NIO', 'C$', '0.00000000', 0, ',', '.', '2', 'NI', 'NIC', 558, 'NI.png', 0, '2018-01-22 19:57:04'),
(153, 155, 'Franc', 'XOF', '', '0.00000000', 0, ',', '.', '2', 'NE', 'NER', 562, 'NE.png', 0, '2018-01-22 19:57:04'),
(154, 156, 'Naira', 'NGN', '₦', '0.00000000', 0, ',', '.', '2', 'NG', 'NGA', 566, 'NG.png', 0, '2018-01-22 19:57:04'),
(155, 157, 'Dollar', 'NZD', '$', '0.00000000', 0, ',', '.', '2', 'NU', 'NIU', 570, 'NU.png', 0, '2018-01-22 19:57:04'),
(156, 158, 'Dollar', 'AUD', '$', '0.00000000', 0, ',', '.', '2', 'NF', 'NFK', 574, 'NF.png', 0, '2018-01-22 19:57:04'),
(157, 112, 'Won', 'KPW', '₩', '0.00000000', 0, ',', '.', '2', 'KP', 'PRK', 408, 'KP.png', 0, '2018-01-22 19:57:04'),
(158, 159, 'Dollar', 'USD', '$', '0.00000000', 0, ',', '.', '2', 'MP', 'MNP', 580, 'MP.png', 0, '2018-01-22 19:57:04'),
(159, 160, 'Krone', 'NOK', 'kr', '0.00000000', 0, ',', '.', '2', 'NO', 'NOR', 578, 'NO.png', 0, '2018-01-22 19:57:04'),
(160, 161, 'Rial', 'OMR', '﷼', '0.00000000', 0, ',', '.', '2', 'OM', 'OMN', 512, 'OM.png', 0, '2018-01-22 19:57:04'),
(161, 162, 'Rupee', 'PKR', '₨', '0.00000000', 0, ',', '.', '2', 'PK', 'PAK', 586, 'PK.png', 0, '2018-01-22 19:57:04'),
(162, 163, 'Dollar', 'USD', '$', '0.00000000', 0, ',', '.', '2', 'PW', 'PLW', 585, 'PW.png', 0, '2018-01-22 19:57:04'),
(163, 0, 'Shekel', 'ILS', '₪', '0.00000000', 0, ',', '.', '2', 'PS', 'PSE', 275, 'PS.png', 0, '2018-01-22 19:57:04'),
(164, 164, 'Balboa', 'PAB', 'B/.', '0.00000000', 0, ',', '.', '2', 'PA', 'PAN', 591, 'PA.png', 0, '2018-01-22 19:57:04'),
(165, 165, 'Kina', 'PGK', '', '0.00000000', 0, ',', '.', '2', 'PG', 'PNG', 598, 'PG.png', 0, '2018-01-22 19:57:04'),
(166, 166, 'Guarani', 'PYG', 'Gs', '0.00000000', 0, ',', '.', '2', 'PY', 'PRY', 600, 'PY.png', 0, '2018-01-22 19:57:04'),
(167, 167, 'Sol', 'PEN', 'S/.', '0.00000000', 0, ',', '.', '2', 'PE', 'PER', 604, 'PE.png', 0, '2018-01-22 19:57:04'),
(168, 168, 'Peso', 'PHP', 'Php', '0.00000000', 0, ',', '.', '2', 'PH', 'PHL', 608, 'PH.png', 0, '2018-01-22 19:57:04'),
(169, 169, 'Dollar', 'NZD', '$', '0.00000000', 0, ',', '.', '2', 'PN', 'PCN', 612, 'PN.png', 0, '2018-01-22 19:57:04'),
(170, 170, 'Zloty', 'PLN', 'zł', '0.00000000', 0, ',', '.', '2', 'PL', 'POL', 616, 'PL.png', 0, '2018-01-22 19:57:04'),
(171, 171, 'Euro', 'EUR', '€', '0.00000000', 0, ',', '.', '2', 'PT', 'PRT', 620, 'PT.png', 0, '2018-01-22 19:57:04'),
(172, 172, 'Dollar', 'USD', '$', '0.00000000', 0, ',', '.', '2', 'PR', 'PRI', 630, 'PR.png', 0, '2018-01-22 19:57:04'),
(173, 173, 'Rial', 'QAR', '﷼', '0.00000000', 0, ',', '.', '2', 'QA', 'QAT', 634, 'QA.png', 0, '2018-01-22 19:57:04'),
(174, 49, 'Franc', 'XAF', 'FCF', '0.00000000', 0, ',', '.', '2', 'CG', 'COG', 178, 'CG.png', 0, '2018-01-22 19:57:04'),
(175, 174, 'Euro', 'EUR', '€', '0.00000000', 0, ',', '.', '2', 'RE', 'REU', 638, 'RE.png', 0, '2018-01-22 19:57:04'),
(176, 175, 'Leu', 'RON', 'lei', '0.00000000', 0, ',', '.', '2', 'RO', 'ROU', 642, 'RO.png', 0, '2018-01-22 19:57:04'),
(177, 176, 'Ruble', 'RUB', 'руб', '0.00000000', 0, ',', '.', '2', 'RU', 'RUS', 643, 'RU.png', 0, '2018-01-22 19:57:04'),
(178, 177, 'Franc', 'RWF', '', '0.00000000', 0, ',', '.', '2', 'RW', 'RWA', 646, 'RW.png', 0, '2018-01-22 19:57:04'),
(179, 179, 'Pound', 'SHP', '£', '0.00000000', 0, ',', '.', '2', 'SH', 'SHN', 654, 'SH.png', 0, '2018-01-22 19:57:04'),
(180, 178, 'Dollar', 'XCD', '$', '0.00000000', 0, ',', '.', '2', 'KN', 'KNA', 659, 'KN.png', 0, '2018-01-22 19:57:04'),
(181, 179, 'Dollar', 'XCD', '$', '0.00000000', 0, ',', '.', '2', 'LC', 'LCA', 662, 'LC.png', 0, '2018-01-22 19:57:04'),
(182, 180, 'Euro', 'EUR', '€', '0.00000000', 0, ',', '.', '2', 'PM', 'SPM', 666, 'PM.png', 0, '2018-01-22 19:57:04'),
(183, 180, 'Dollar', 'XCD', '$', '0.00000000', 0, ',', '.', '2', 'VC', 'VCT', 670, 'VC.png', 0, '2018-01-22 19:57:04'),
(184, 181, 'Tala', 'WST', 'WS$', '0.00000000', 0, ',', '.', '2', 'WS', 'WSM', 882, 'WS.png', 0, '2018-01-22 19:57:04'),
(185, 182, 'Euro', 'EUR', '€', '0.00000000', 0, ',', '.', '2', 'SM', 'SMR', 674, 'SM.png', 0, '2018-01-22 19:57:04'),
(186, 183, 'Dobra', 'STD', 'Db', '0.00000000', 0, ',', '.', '2', 'ST', 'STP', 678, 'ST.png', 0, '2018-01-22 19:57:04'),
(187, 184, 'Rial', 'SAR', '﷼', '0.00000000', 0, ',', '.', '2', 'SA', 'SAU', 682, 'SA.png', 0, '2018-01-22 19:57:04'),
(188, 185, 'Franc', 'XOF', '', '0.00000000', 0, ',', '.', '2', 'SN', 'SEN', 686, 'SN.png', 0, '2018-01-22 19:57:04'),
(189, 142, 'Dinar', 'RSD', 'Дин', '0.00000000', 0, ',', '.', '2', 'CS', 'SCG', 891, 'CS.png', 0, '2018-01-22 19:57:04'),
(190, 186, 'Rupee', 'SCR', '₨', '0.00000000', 0, ',', '.', '2', 'SC', 'SYC', 690, 'SC.png', 0, '2018-01-22 19:57:04'),
(191, 187, 'Leone', 'SLL', 'Le', '0.00000000', 0, ',', '.', '2', 'SL', 'SLE', 694, 'SL.png', 0, '2018-01-22 19:57:04'),
(192, 188, 'Dollar', 'SGD', '$', '0.00000000', 0, ',', '.', '2', 'SG', 'SGP', 702, 'SG.png', 0, '2018-01-22 19:57:04'),
(193, 189, 'Koruna', 'SKK', 'Sk', '0.00000000', 0, ',', '.', '2', 'SK', 'SVK', 703, 'SK.png', 0, '2018-01-22 19:57:04'),
(194, 190, 'Euro', 'EUR', '€', '0.00000000', 0, ',', '.', '2', 'SI', 'SVN', 705, 'SI.png', 0, '2018-01-22 19:57:04'),
(195, 191, 'Dollar', 'SBD', '$', '0.00000000', 0, ',', '.', '2', 'SB', 'SLB', 90, 'SB.png', 0, '2018-01-22 19:57:04'),
(196, 192, 'Shilling', 'SOS', 'S', '0.00000000', 0, ',', '.', '2', 'SO', 'SOM', 706, 'SO.png', 0, '2018-01-22 19:57:04'),
(197, 193, 'Rand', 'ZAR', 'R', '0.00000000', 0, ',', '.', '2', 'ZA', 'ZAF', 710, 'ZA.png', 0, '2018-01-22 19:57:04'),
(198, 113, 'Pound', 'GBP', '£', '0.00000000', 0, ',', '.', '2', 'GS', 'SGS', 239, 'GS.png', 0, '2018-01-22 19:57:04'),
(199, 194, 'Won', 'KRW', '₩', '0.00000000', 0, ',', '.', '2', 'KR', 'KOR', 410, 'KR.png', 0, '2018-01-22 19:57:04'),
(200, 195, 'Euro', 'EUR', '€', '0.00000000', 0, ',', '.', '2', 'ES', 'ESP', 724, 'ES.png', 0, '2018-01-22 19:57:04'),
(201, 196, 'Rupee', 'LKR', '₨', '0.00000000', 0, ',', '.', '2', 'LK', 'LKA', 144, 'LK.png', 0, '2018-01-22 19:57:04'),
(202, 199, 'Dinar', 'SDD', '', '0.00000000', 0, ',', '.', '2', 'SD', 'SDN', 736, 'SD.png', 0, '2018-01-22 19:57:04'),
(203, 200, 'Dollar', 'SRD', '$', '0.00000000', 0, ',', '.', '2', 'SR', 'SUR', 740, 'SR.png', 0, '2018-01-22 19:57:04'),
(204, 0, 'Krone', 'NOK', 'kr', '0.00000000', 0, ',', '.', '2', 'SJ', 'SJM', 744, 'SJ.png', 0, '2018-01-22 19:57:04'),
(205, 202, 'Lilangeni', 'SZL', '', '0.00000000', 0, ',', '.', '2', 'SZ', 'SWZ', 748, 'SZ.png', 0, '2018-01-22 19:57:04'),
(206, 203, 'Krona', 'SEK', 'kr', '0.00000000', 0, ',', '.', '2', 'SE', 'SWE', 752, 'SE.png', 0, '2018-01-22 19:57:04'),
(207, 204, 'Franc', 'CHF', 'CHF', '0.00000000', 0, ',', '.', '2', 'CH', 'CHE', 756, 'CH.png', 0, '2018-01-22 19:57:04'),
(208, 205, 'Pound', 'SYP', '£', '0.00000000', 0, ',', '.', '2', 'SY', 'SYR', 760, 'SY.png', 0, '2018-01-22 19:57:04'),
(209, 206, 'Dollar', 'TWD', 'NT$', '0.00000000', 0, ',', '.', '2', 'TW', 'TWN', 158, 'TW.png', 0, '2018-01-22 19:57:04'),
(210, 207, 'Somoni', 'TJS', '', '0.00000000', 0, ',', '.', '2', 'TJ', 'TJK', 762, 'TJ.png', 0, '2018-01-22 19:57:04'),
(211, 208, 'Shilling', 'TZS', '', '0.00000000', 0, ',', '.', '2', 'TZ', 'TZA', 834, 'TZ.png', 0, '2018-01-22 19:57:04'),
(212, 209, 'Baht', 'THB', '฿', '0.00000000', 0, ',', '.', '2', 'TH', 'THA', 764, 'TH.png', 0, '2018-01-22 19:57:04'),
(213, 210, 'Franc', 'XOF', '', '0.00000000', 0, ',', '.', '2', 'TG', 'TGO', 768, 'TG.png', 0, '2018-01-22 19:57:04'),
(214, 211, 'Dollar', 'NZD', '$', '0.00000000', 0, ',', '.', '2', 'TK', 'TKL', 772, 'TK.png', 0, '2018-01-22 19:57:04'),
(215, 212, 'Pa\'anga', 'TOP', 'T$', '0.00000000', 0, ',', '.', '2', 'TO', 'TON', 776, 'TO.png', 0, '2018-01-22 19:57:04'),
(216, 213, 'Dollar', 'TTD', 'TT$', '0.00000000', 0, ',', '.', '2', 'TT', 'TTO', 780, 'TT.png', 0, '2018-01-22 19:57:04'),
(217, 214, 'Dinar', 'TND', '', '0.00000000', 0, ',', '.', '2', 'TN', 'TUN', 788, 'TN.png', 0, '2018-01-22 19:57:04'),
(218, 215, 'Lira', 'TRY', 'YTL', '0.00000000', 0, ',', '.', '2', 'TR', 'TUR', 792, 'TR.png', 0, '2018-01-22 19:57:04'),
(219, 216, 'Manat', 'TMM', 'm', '0.00000000', 0, ',', '.', '2', 'TM', 'TKM', 795, 'TM.png', 0, '2018-01-22 19:57:04'),
(220, 217, 'Dollar', 'USD', '$', '0.00000000', 0, ',', '.', '2', 'TC', 'TCA', 796, 'TC.png', 0, '2018-01-22 19:57:04'),
(221, 218, 'Dollar', 'AUD', '$', '0.00000000', 0, ',', '.', '2', 'TV', 'TUV', 798, 'TV.png', 0, '2018-01-22 19:57:04'),
(222, 232, 'Dollar', 'USD', '$', '0.00000000', 0, ',', '.', '2', 'VI', 'VIR', 850, 'VI.png', 0, '2018-01-22 19:57:04'),
(223, 219, 'Shilling', 'UGX', '', '0.00000000', 0, ',', '.', '2', 'UG', 'UGA', 800, 'UG.png', 0, '2018-01-22 19:57:04'),
(224, 220, 'Hryvnia', 'UAH', '₴', '0.00000000', 0, ',', '.', '2', 'UA', 'UKR', 804, 'UA.png', 0, '2018-01-22 19:57:04'),
(225, 221, 'Dirham', 'AED', '', '0.00000000', 0, ',', '.', '2', 'AE', 'ARE', 784, 'AE.png', 0, '2018-01-22 19:57:04'),
(226, 222, 'Pound', 'GBP', '£', '0.00000000', 0, ',', '.', '2', 'GB', 'GBR', 826, 'GB.png', 0, '2018-01-22 19:57:04'),
(227, 223, 'Dollar', 'USD', '$', '0.00000000', 0, ',', '.', '2', 'US', 'USA', 840, 'US.png', 0, '2018-01-22 19:57:04'),
(228, 224, 'Dollar ', 'USD', '$', '0.00000000', 0, ',', '.', '2', 'UM', 'UMI', 581, 'UM.png', 0, '2018-01-22 19:57:04'),
(229, 225, 'Peso', 'UYU', '$U', '0.00000000', 0, ',', '.', '2', 'UY', 'URY', 858, 'UY.png', 0, '2018-01-22 19:57:04'),
(230, 226, 'Som', 'UZS', 'лв', '0.00000000', 0, ',', '.', '2', 'UZ', 'UZB', 860, 'UZ.png', 0, '2018-01-22 19:57:04'),
(231, 227, 'Vatu', 'VUV', 'Vt', '0.00000000', 0, ',', '.', '2', 'VU', 'VUT', 548, 'VU.png', 0, '2018-01-22 19:57:04'),
(232, 228, 'Euro', 'EUR', '€', '0.00000000', 0, ',', '.', '2', 'VA', 'VAT', 336, 'VA.png', 0, '2018-01-22 19:57:04'),
(233, 229, 'Bolivar', 'VEF', 'Bs', '0.00000000', 0, ',', '.', '2', 'VE', 'VEN', 862, 'VE.png', 0, '2018-01-22 19:57:04'),
(234, 230, 'Dong', 'VND', '₫', '0.00000000', 0, ',', '.', '2', 'VN', 'VNM', 704, 'VN.png', 0, '2018-01-22 19:57:04'),
(235, 233, 'Franc', 'XPF', '', '0.00000000', 0, ',', '.', '2', 'WF', 'WLF', 876, 'WF.png', 0, '2018-01-22 19:57:04'),
(236, 234, 'Dirham', 'MAD', '', '0.00000000', 0, ',', '.', '2', 'EH', 'ESH', 732, 'EH.png', 0, '2018-01-22 19:57:04'),
(237, 235, 'Rial', 'YER', '﷼', '0.00000000', 0, ',', '.', '2', 'YE', 'YEM', 887, 'YE.png', 0, '2018-01-22 19:57:04'),
(238, 238, 'Kwacha', 'ZMK', 'ZK', '0.00000000', 0, ',', '.', '2', 'ZM', 'ZMB', 894, 'ZM.png', 0, '2018-01-22 19:57:04'),
(239, 239, 'Dollar', 'ZWD', 'Z$', '0.00000000', 0, ',', '.', '2', 'ZW', 'ZWE', 716, 'ZW.png', 0, '2018-01-22 19:57:04');

-- --------------------------------------------------------

--
-- Table structure for table `ok_customers`
--

CREATE TABLE `ok_customers` (
  `customer_id` int(11) UNSIGNED NOT NULL,
  `first_name` varchar(32) NOT NULL,
  `last_name` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `alt_telephone` varchar(100) NOT NULL,
  `address_id` int(11) NOT NULL,
  `security_question_id` int(11) NOT NULL,
  `security_answer` varchar(32) NOT NULL,
  `newsletter` tinyint(1) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `ip_address` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  `status` tinyint(1) NOT NULL,
  `cart` text NOT NULL,
  `b_id` varchar(277) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ok_customers`
--

INSERT INTO `ok_customers` (`customer_id`, `first_name`, `last_name`, `email`, `password`, `salt`, `telephone`, `alt_telephone`, `address_id`, `security_question_id`, `security_answer`, `newsletter`, `customer_group_id`, `ip_address`, `date_added`, `status`, `cart`, `b_id`) VALUES
(44, 'prathamesh', 'kulkarni', 'prat', '0cee8a373ea9f553e506da948f59955d1fd7665e', 'a16d13307', '', '', 0, 0, '', 0, 165, '', '2018-11-15 00:00:00', 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `ok_customers_online`
--

CREATE TABLE `ok_customers_online` (
  `activity_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `access_type` varchar(128) NOT NULL,
  `browser` varchar(128) NOT NULL,
  `ip_address` varchar(40) NOT NULL,
  `country_code` varchar(2) NOT NULL,
  `request_uri` text NOT NULL,
  `referrer_uri` text NOT NULL,
  `date_added` datetime NOT NULL,
  `status` tinyint(1) NOT NULL,
  `user_agent` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ok_customers_online`
--

INSERT INTO `ok_customers_online` (`activity_id`, `customer_id`, `access_type`, `browser`, `ip_address`, `country_code`, `request_uri`, `referrer_uri`, `date_added`, `status`, `user_agent`) VALUES
(11, 0, 'browser', 'Chrome', '103.231.2.74', '0', '', 'setup/success', '2018-01-23 19:57:49', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36'),
(12, 0, 'browser', 'Chrome', '103.231.2.74', '0', '', 'setup/success', '2018-01-24 01:33:34', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36'),
(13, 0, 'browser', 'Chrome', '103.231.2.74', '0', '', '', '2018-01-24 20:00:33', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36'),
(14, 0, 'browser', 'Chrome', '103.231.2.74', '0', '', '', '2018-01-24 20:11:15', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36'),
(15, 0, 'browser', 'Chrome', '103.231.2.74', '0', '', 'admin/messages', '2018-01-24 20:31:02', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36'),
(16, 0, 'browser', 'Chrome', '103.231.2.74', '0', '', '', '2018-01-24 21:36:50', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36'),
(17, 0, 'browser', 'Chrome', '103.231.2.74', '0', '', '', '2018-01-24 22:02:08', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36'),
(18, 0, 'browser', 'Chrome', '103.231.2.74', '0', 'login', '', '2018-01-24 22:08:23', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36'),
(19, 0, 'browser', 'Chrome', '103.231.2.74', '0', '', 'pages?page_id=12', '2018-01-24 22:12:36', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36'),
(20, 0, 'browser', 'Chrome', '103.231.2.74', '0', '', 'pages?page_id=12', '2018-01-24 22:16:36', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36'),
(21, 0, 'browser', 'Chrome', '103.231.2.74', '0', '', 'pages?page_id=12', '2018-01-24 22:19:11', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36'),
(22, 0, 'browser', 'Chrome', '103.231.2.74', '0', '', 'pages?page_id=12', '2018-01-24 22:22:18', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36'),
(23, 0, 'browser', 'Chrome', '103.231.2.74', '0', '', '', '2018-01-25 00:56:44', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36'),
(24, 0, 'browser', 'Chrome', '64.233.172.175', 'US', '', '', '2018-01-25 09:00:02', 0, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36 Google Favicon'),
(25, 0, 'browser', 'Chrome', '64.233.172.175', 'US', '', 'http://www.google.com/search', '2018-01-25 09:00:02', 0, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko; Google Web Preview) Chrome/41.0.2272.118 Safari/537.36'),
(26, 0, 'browser', 'Chrome', '103.231.2.74', '0', '', '', '2018-01-29 15:12:52', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36'),
(27, 0, 'browser', 'Chrome', '49.35.109.55', 'IN', '', '', '2018-01-30 14:20:18', 0, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36'),
(28, 0, 'browser', 'Chrome', '49.35.109.55', 'IN', 'local_module/local_module/search', '', '2018-01-30 14:26:28', 0, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36'),
(29, 0, 'browser', 'Chrome', '49.35.109.55', 'IN', '', '', '2018-01-30 14:41:06', 0, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36'),
(30, 0, 'browser', 'Chrome', '45.119.59.153', '0', '', '', '2018-01-30 23:53:58', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36'),
(31, 0, 'browser', 'Chrome', '45.119.59.153', '0', '', 'admin/error_logs', '2018-01-31 00:01:38', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36'),
(32, 0, 'browser', 'Chrome', '106.79.191.13', 'IN', '', '', '2018-01-31 00:17:11', 0, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36'),
(33, 0, 'browser', 'Chrome', '106.79.160.202', 'IN', '', '', '2018-02-10 21:50:00', 0, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36'),
(34, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', '', '', '2018-02-17 11:57:35', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36'),
(35, 0, 'browser', 'Chrome', '106.193.181.113', 'IN', '', '', '2018-02-26 17:25:11', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36'),
(36, 0, 'browser', 'Chrome', '66.102.6.180', 'US', '', '', '2018-02-26 17:43:39', 0, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36 Google Favicon'),
(37, 0, 'browser', 'Chrome', '66.102.6.176', 'US', '', '', '2018-02-27 10:40:45', 0, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36 Google Favicon'),
(38, 0, 'browser', 'Chrome', '45.117.212.69', '0', '', '', '2018-03-01 19:19:15', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36'),
(39, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', '', '', '2018-03-02 16:48:07', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36'),
(40, 0, '', '', '183.87.39.174', 'IN', '', '', '2018-03-02 17:00:49', 0, 'WhatsApp/2.18.65 A'),
(41, 0, 'browser', 'Chrome', '45.119.59.146', '0', '', '', '2018-03-03 01:20:58', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36'),
(42, 0, 'browser', 'Chrome', '45.117.212.69', '0', '', '', '2018-03-04 22:31:08', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36'),
(43, 0, 'browser', 'Chrome', '45.119.59.146', '0', '', '', '2018-03-05 23:48:13', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36'),
(44, 0, 'browser', 'Chrome', '45.119.59.146', '0', '', 'login', '2018-03-06 00:35:59', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36'),
(45, 11, 'browser', 'Chrome', '45.119.59.146', '0', 'account/orders', 'account', '2018-03-06 00:38:47', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36'),
(46, 11, 'browser', 'Chrome', '45.119.59.146', '0', 'checkout', 'local?location_id=15', '2018-03-06 00:52:50', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36'),
(47, 11, 'browser', 'Chrome', '45.119.59.146', '0', 'local_module/local_module/search', 'local?location_id=14', '2018-03-06 00:56:26', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36'),
(48, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', '', '', '2018-03-06 14:49:13', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36'),
(49, 0, 'browser', 'Chrome', '64.233.172.248', 'US', '', 'http://www.google.com/search', '2018-03-06 14:50:39', 0, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko; Google Web Preview) Chrome/41.0.2272.118 Safari/537.36'),
(50, 0, 'browser', 'Chrome', '64.233.172.246', 'US', '', '', '2018-03-06 14:50:39', 0, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36 Google Favicon'),
(51, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', 'local_module/local_module/search', '', '2018-03-06 14:55:26', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36'),
(52, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', '', '', '2018-03-07 14:12:29', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36'),
(53, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', '', '', '2018-03-07 14:37:39', 0, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36'),
(54, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', 'reservation', '', '2018-03-07 15:04:26', 0, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36'),
(55, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', 'about-us', 'admin/pages', '2018-03-07 15:19:21', 0, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36'),
(56, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', 'pages?page_id=14', 'admin/pages', '2018-03-07 15:53:57', 0, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36'),
(57, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', 'local_module/local_module/search', '', '2018-03-07 15:59:59', 0, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36'),
(58, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', '', 'reservation', '2018-03-07 16:02:13', 0, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36'),
(59, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', '', 'reservation', '2018-03-07 16:04:21', 0, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36'),
(60, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', '', '', '2018-03-07 16:10:49', 0, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36'),
(61, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', 'pages?page_id=14', 'pages?page_id=14', '2018-03-07 16:13:05', 0, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36'),
(62, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', '', '', '2018-03-07 16:19:36', 0, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36'),
(63, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', 'pages?page_id=14', 'register', '2018-03-07 16:24:43', 0, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36'),
(64, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', '', '', '2018-03-07 16:30:31', 0, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36'),
(65, 0, 'browser', 'Chrome', '106.66.101.21', 'IN', '', '', '2018-03-07 23:16:16', 0, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36'),
(66, 0, 'browser', 'Chrome', '106.66.101.21', 'IN', 'pages?page_id=14', 'admin/pages', '2018-03-07 23:22:05', 0, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36'),
(67, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', '', '', '2018-03-08 10:12:11', 0, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36'),
(68, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', '', '', '2018-03-08 17:35:33', 0, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36'),
(69, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', '', '', '2018-03-10 14:48:37', 0, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36'),
(70, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', '', '', '2018-03-12 11:42:21', 0, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36'),
(71, 0, 'browser', 'Chrome', '106.77.10.174', 'IN', '', '', '2018-03-12 15:07:29', 0, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36'),
(72, 0, 'browser', 'Chrome', '106.77.10.174', 'IN', '', '', '2018-03-12 16:04:28', 0, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36'),
(73, 0, 'browser', 'Chrome', '106.77.7.107', 'IN', '', '', '2018-03-13 13:22:32', 0, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36'),
(74, 0, 'browser', 'Chrome', '106.77.7.107', 'IN', '', '', '2018-03-13 13:40:01', 0, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36'),
(75, 0, 'browser', 'Chrome', '49.14.233.208', 'IN', '', '', '2018-03-13 17:08:43', 0, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36'),
(76, 0, 'browser', 'Chrome', '49.14.233.208', 'IN', '', '', '2018-03-13 17:15:53', 0, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36'),
(77, 0, 'browser', 'Chrome', '45.119.59.146', '0', '', '', '2018-03-17 13:28:18', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36'),
(78, 0, 'browser', 'Chrome', '45.119.59.146', '0', 'pages?page_id=14', 'register', '2018-03-17 13:31:09', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36'),
(79, 0, 'browser', 'Chrome', '45.119.59.146', '0', 'login', 'pages?page_id=14', '2018-03-17 13:42:05', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36'),
(80, 12, 'browser', 'Chrome', '45.119.59.146', '0', 'account/inbox', 'account', '2018-03-17 13:44:13', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36'),
(81, 12, 'browser', 'Chrome', '45.119.59.146', '0', 'logout', 'local?location_id=14', '2018-03-17 13:55:26', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36'),
(82, 0, 'browser', 'Chrome', '45.119.59.146', '0', 'login', 'login', '2018-03-17 13:57:39', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36'),
(83, 11, 'browser', 'Chrome', '45.119.59.146', '0', 'account', 'admin/customers', '2018-03-17 14:01:28', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36'),
(84, 0, 'browser', 'Chrome', '106.77.42.75', 'IN', '', '', '2018-03-17 14:25:59', 0, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36'),
(85, 12, 'browser', 'Chrome', '45.119.59.146', '0', 'login', 'login', '2018-03-17 14:28:23', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36'),
(86, 12, 'mobile', 'Android', '45.119.59.146', '0', 'account/orders', 'account', '2018-03-17 14:30:31', 0, 'Mozilla/5.0 (Linux; Android 4.4.4; HM NOTE 1LTE Build/KTU84P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.137 Mobile Safari/537.36'),
(87, 12, 'mobile', 'Android', '45.119.59.146', '0', 'account/reviews', 'account/orders', '2018-03-17 14:32:48', 0, 'Mozilla/5.0 (Linux; Android 4.4.4; HM NOTE 1LTE Build/KTU84P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.137 Mobile Safari/537.36'),
(88, 0, 'browser', 'Chrome', '45.119.59.146', '0', '', 'login', '2018-03-17 14:35:41', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36'),
(89, 0, 'browser', 'Chrome', '45.119.59.146', '0', 'local_module/local_module/search', '', '2018-03-17 14:53:48', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36'),
(90, 0, 'browser', 'Chrome', '45.119.59.146', '0', 'login', 'home', '2018-03-17 15:11:15', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36'),
(91, 12, 'browser', 'Chrome', '45.119.59.146', '0', '', 'account/inbox', '2018-03-17 15:18:40', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36'),
(92, 0, 'browser', 'Chrome', '45.119.59.146', '0', 'home', 'home', '2018-03-17 15:22:40', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36'),
(93, 12, 'browser', 'Chrome', '45.119.59.146', '0', '', '', '2018-03-17 15:27:15', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36'),
(94, 0, 'browser', 'Chrome', '45.119.59.146', '0', '', '', '2018-03-19 00:05:34', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36'),
(95, 0, 'browser', 'Chrome', '106.77.25.211', 'IN', '', '', '2018-03-19 16:39:59', 0, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36'),
(96, 0, 'mobile', 'Android', '45.117.212.69', '0', '', 'admin/messages', '2018-03-20 07:59:44', 0, 'Mozilla/5.0 (Linux; Android 7.0; Moto G (4) Build/NPJS25.93-14-13; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/65.0.3325.109 Mobile Safari/537.36'),
(97, 0, 'mobile', 'Android', '106.193.166.61', 'IN', '', 'admin/dashboard', '2018-03-20 09:53:23', 0, 'Mozilla/5.0 (Linux; Android 7.0; Moto G (4) Build/NPJS25.93-14-13; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/65.0.3325.109 Mobile Safari/537.36'),
(98, 0, 'browser', 'Chrome', '106.77.11.120', 'IN', '', '', '2018-03-20 13:34:01', 0, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36'),
(99, 0, 'browser', 'Chrome', '106.210.230.252', 'IN', '', '', '2018-03-20 20:26:54', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36'),
(100, 0, 'browser', 'Chrome', '150.129.156.96', '0', '', '', '2018-03-20 20:49:09', 0, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36'),
(101, 0, 'browser', 'Chrome', '106.77.17.141', 'IN', '', '', '2018-03-24 09:02:51', 0, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(102, 0, 'browser', 'Chrome', '106.77.17.141', 'IN', '', 'pages?page_id=14', '2018-03-24 09:05:01', 0, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(103, 0, 'browser', 'Chrome', '106.77.17.141', 'IN', 'pages?page_id=14', 'admin/pages', '2018-03-24 09:07:18', 0, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(104, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', '', '', '2018-03-24 10:14:52', 0, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(105, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', 'pages?page_id=14', '', '2018-03-24 10:31:37', 0, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(106, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', 'checkout', '', '2018-03-24 10:33:44', 0, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(107, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', '', 'local?location_id=14', '2018-03-24 10:40:34', 0, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(108, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', 'login', '', '2018-03-24 11:29:49', 0, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(109, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', '', '', '2018-03-24 11:34:54', 0, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(110, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', '', 'admin/dashboard', '2018-03-24 11:44:10', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(111, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', '', '', '2018-03-24 11:48:27', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(112, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', 'pages?page_id=14', 'login', '2018-03-24 11:51:07', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(113, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', '', 'admin/settings', '2018-03-24 12:07:51', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(114, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', '', '', '2018-03-24 12:11:05', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(115, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', 'home', 'admin/pages', '2018-03-24 12:24:45', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(116, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', '', '', '2018-03-24 12:28:25', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(117, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', '', '', '2018-03-24 12:35:51', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(118, 0, 'browser', 'Chrome', '106.79.84.114', 'IN', '', '', '2018-03-24 13:20:16', 0, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(119, 0, 'browser', 'Chrome', '106.79.84.114', 'IN', 'local_module/local_module/search', '', '2018-03-24 13:39:28', 0, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(120, 0, 'mobile', 'Android', '106.210.171.135', 'IN', '', 'admin/dashboard', '2018-03-24 14:05:43', 0, 'Mozilla/5.0 (Linux; Android 7.0; Moto G (4) Build/NPJS25.93-14-13; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/65.0.3325.109 Mobile Safari/537.36'),
(121, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', 'local_module/local_module/search', '', '2018-03-24 14:18:47', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(122, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', '', '', '2018-03-24 14:47:25', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(123, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', '', '', '2018-03-24 14:50:02', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(124, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', '', '', '2018-03-24 14:54:31', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(125, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', '', '', '2018-03-24 14:56:55', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(126, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', '', '', '2018-03-24 15:08:09', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(127, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', '', 'local?location_id=14', '2018-03-24 15:10:37', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(128, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', 'locations', '', '2018-03-24 15:31:57', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(129, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', '', 'admin/extensions/edit/module/featured_menus', '2018-03-24 15:54:17', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(130, 0, 'mobile', 'Android', '106.210.234.18', 'IN', '', '', '2018-03-26 14:10:52', 0, 'Mozilla/5.0 (Linux; Android 7.0; Moto G (4) Build/NPJS25.93-14-13) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.109 Mobile Safari/537.36'),
(131, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', '', '', '2018-03-26 14:25:42', 0, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(132, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', 'cart_module/cart_module/order_type', 'checkout', '2018-03-26 14:27:52', 0, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(133, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', 'checkout', 'checkout', '2018-03-26 14:30:10', 0, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(134, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', 'checkout', 'checkout', '2018-03-26 14:32:16', 0, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(135, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', '', 'login', '2018-03-26 14:46:26', 0, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(136, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', 'checkout', 'checkout', '2018-03-26 14:49:49', 0, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(137, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', 'checkout', 'checkout', '2018-03-26 14:54:14', 0, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(138, 0, 'mobile', 'Android', '106.210.234.18', 'IN', '', 'admin/dashboard', '2018-03-26 17:11:02', 0, 'Mozilla/5.0 (Linux; Android 7.0; Moto G (4) Build/NPJS25.93-14-13; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/65.0.3325.109 Mobile Safari/537.36'),
(139, 0, 'browser', 'Chrome', '106.77.3.0', 'IN', '', '', '2018-03-26 17:28:25', 0, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(140, 0, 'browser', 'Chrome', '106.77.3.0', 'IN', 'local_module/local_module/search', '', '2018-03-26 17:30:43', 0, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(141, 0, 'browser', 'Chrome', '106.77.3.0', 'IN', 'checkout', 'checkout', '2018-03-26 17:37:36', 0, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(142, 0, 'mobile', 'Android', '106.210.234.18', 'IN', '', 'admin/dashboard', '2018-03-26 17:41:06', 0, 'Mozilla/5.0 (Linux; Android 7.0; Moto G (4) Build/NPJS25.93-14-13; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/65.0.3325.109 Mobile Safari/537.36'),
(143, 0, 'browser', 'Chrome', '106.77.3.0', 'IN', '', 'checkout/success', '2018-03-26 17:42:24', 0, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(144, 0, 'browser', 'Chrome', '106.210.234.18', 'IN', '', '', '2018-03-26 18:04:52', 0, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(145, 0, 'browser', 'Chrome', '106.210.234.18', 'IN', '', 'admin/extensions?filter_type=module', '2018-03-26 18:12:10', 0, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(146, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', '', '', '2018-03-28 11:17:09', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(147, 0, 'browser', 'Mozilla', '23.99.101.118', 'US', '', '', '2018-03-28 11:27:28', 0, 'Mozilla/5.0 (Windows NT 6.1; WOW64) SkypeUriPreview Preview/0.5'),
(148, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', '', '', '2018-03-28 11:30:54', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(149, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', 'local_module/local_module/search', 'home', '2018-03-28 11:32:59', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(150, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', 'home', 'home', '2018-03-28 11:36:26', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(151, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', '', 'admin/locations/edit?id=14', '2018-03-28 17:16:58', 0, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(152, 0, 'browser', 'Mozilla', '13.76.241.210', 'US', '', '', '2018-03-30 18:02:43', 0, 'Mozilla/5.0 (Windows NT 6.1; WOW64) SkypeUriPreview Preview/0.5'),
(153, 0, 'mobile', 'Android', '103.54.18.216', '0', '', 'admin/dashboard', '2018-03-30 23:39:35', 0, 'Mozilla/5.0 (Linux; Android 4.4.4; HM NOTE 1LTE Build/KTU84P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.109 Mobile Safari/537.36'),
(154, 0, 'mobile', 'Android', '103.54.18.216', '0', '', '', '2018-03-31 14:02:48', 0, 'Mozilla/5.0 (Linux; Android 4.4.4; HM NOTE 1LTE Build/KTU84P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.109 Mobile Safari/537.36'),
(155, 0, 'browser', 'Chrome', '42.106.212.165', 'IN', '', '', '2018-03-31 18:33:38', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(156, 0, 'browser', 'Chrome', '42.106.245.69', 'IN', '', '', '2018-03-31 18:34:27', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(157, 0, 'browser', 'Chrome', '49.203.232.113', 'IN', '', '', '2018-04-01 08:49:50', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(158, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', '', '', '2018-04-02 10:57:56', 0, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(159, 0, 'browser', 'Chrome', '103.203.66.95', '0', '', '', '2018-04-02 21:48:24', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(160, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', '', '', '2018-04-03 12:27:40', 0, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(161, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', '', 'https://www.google.com/url?q=https%3A%2F%2Fwww.onlinekatta.com%2FSmart-Resto-demo%2F&sa=D&sntz=1&usg=AFQjCNEoJjwQN5r0rwC8gOctwDcWuH_xrQ', '2018-04-03 12:37:00', 0, 'Mozilla/5.0 (Windows NT 6.2; Win64; x64; rv:59.0) Gecko/20100101 Firefox/59.0'),
(162, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', '', '', '2018-04-03 12:40:05', 0, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(163, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'login', '', '2018-04-03 12:42:18', 0, 'Mozilla/5.0 (Windows NT 6.2; Win64; x64; rv:59.0) Gecko/20100101 Firefox/59.0'),
(164, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'reservation', 'login', '2018-04-03 12:44:21', 0, 'Mozilla/5.0 (Windows NT 6.2; Win64; x64; rv:59.0) Gecko/20100101 Firefox/59.0'),
(165, 0, 'browser', 'Chrome', '106.193.241.132', 'IN', '', '', '2018-04-03 12:46:49', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(166, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', 'register', 'reservation', '2018-04-03 13:39:20', 0, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(167, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', 'assets/images/data/no_photo.png', 'admin/menus/edit', '2018-04-03 13:42:01', 0, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(168, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', '', '', '2018-04-03 13:58:21', 0, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(169, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', 'about-us', 'admin/pages', '2018-04-03 14:15:29', 0, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(170, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', '', 'admin/image_manager', '2018-04-03 14:25:58', 0, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(171, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'register', 'register', '2018-04-03 14:33:38', 0, 'Mozilla/5.0 (Windows NT 6.2; Win64; x64; rv:59.0) Gecko/20100101 Firefox/59.0'),
(172, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'local_module/local_module/search', '', '2018-04-03 14:36:35', 0, 'Mozilla/5.0 (Windows NT 6.2; Win64; x64; rv:59.0) Gecko/20100101 Firefox/59.0'),
(173, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'checkout', 'local?location_id=14', '2018-04-03 14:38:46', 0, 'Mozilla/5.0 (Windows NT 6.2; Win64; x64; rv:59.0) Gecko/20100101 Firefox/59.0'),
(174, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'assets/images/data/no_photo.png', 'admin/menus/edit', '2018-04-03 14:41:46', 0, 'Mozilla/5.0 (Windows NT 6.2; Win64; x64; rv:59.0) Gecko/20100101 Firefox/59.0'),
(175, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'assets/images/data/no_photo.png', 'admin/menus/edit', '2018-04-03 14:44:48', 0, 'Mozilla/5.0 (Windows NT 6.2; Win64; x64; rv:59.0) Gecko/20100101 Firefox/59.0'),
(176, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', 'assets/images/data/no_photo.png', 'admin/locations/edit', '2018-04-03 14:49:20', 0, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(177, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', 'assets/images/data/no_photo.png', 'admin/locations/edit?id=17', '2018-04-03 14:51:42', 0, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(178, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'reservation', 'checkout', '2018-04-03 14:54:47', 0, 'Mozilla/5.0 (Windows NT 6.2; Win64; x64; rv:59.0) Gecko/20100101 Firefox/59.0'),
(179, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'reservation?action=find_table&location=16&guest_num=4&reserve_date=04-04-2018&reserve_time=17%3A00', 'reservation', '2018-04-03 14:59:19', 0, 'Mozilla/5.0 (Windows NT 6.2; Win64; x64; rv:59.0) Gecko/20100101 Firefox/59.0'),
(180, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'register', 'reservation?action=find_table&location=15&guest_num=2&reserve_date=04-04-2018&reserve_time=15%3A00', '2018-04-03 15:03:54', 0, 'Mozilla/5.0 (Windows NT 6.2; Win64; x64; rv:59.0) Gecko/20100101 Firefox/59.0'),
(181, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', 'register', '', '2018-04-03 16:07:37', 0, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(182, 0, 'browser', 'Chrome', '103.203.66.95', '0', '', '', '2018-04-03 19:29:17', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(183, 0, 'mobile', 'Android', '106.210.194.66', 'IN', '', 'admin/dashboard', '2018-04-04 15:38:15', 0, 'Mozilla/5.0 (Linux; Android 7.0; Moto G (4) Build/NPJS25.93-14-15; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/65.0.3325.109 Mobile Safari/537.36'),
(184, 0, 'mobile', 'Android', '106.210.194.66', 'IN', 'checkout', 'cart', '2018-04-04 15:40:26', 0, 'Mozilla/5.0 (Linux; Android 7.0; Moto G (4) Build/NPJS25.93-14-15; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/65.0.3325.109 Mobile Safari/537.36'),
(185, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', '', '', '2018-04-04 16:55:49', 0, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(186, 0, 'browser', 'Chrome', '106.77.211.48', 'IN', '', '', '2018-04-07 13:55:40', 0, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(187, 0, 'browser', 'Chrome', '106.77.211.48', 'IN', '', '', '2018-04-07 14:00:54', 0, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(188, 0, 'browser', 'Chrome', '45.117.212.69', '0', '', '', '2018-04-08 21:36:49', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(189, 0, 'browser', 'Chrome', '45.124.48.238', '0', '', '', '2018-04-08 21:37:24', 0, 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(190, 0, 'browser', 'Chrome', '45.124.48.238', '0', '', '', '2018-04-09 21:43:34', 0, 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(191, 0, 'browser', 'Chrome', '45.124.48.238', '0', 'local?location_id=14', 'home', '2018-04-09 22:35:03', 0, 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(192, 0, 'browser', 'Chrome', '45.124.48.238', '0', 'assets/images/data/no_photo.png', 'admin/items/edit', '2018-04-09 22:42:26', 0, 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(193, 0, 'browser', 'Chrome', '45.124.48.238', '0', 'assets/images/data/no_photo.png', 'admin/items/edit', '2018-04-09 22:48:33', 0, 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(194, 0, 'mobile', 'Android', '45.117.212.69', '0', '', 'admin/dashboard', '2018-04-09 23:02:24', 0, 'Mozilla/5.0 (Linux; Android 7.0; Moto G (4) Build/NPJS25.93-14-15; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/65.0.3325.109 Mobile Safari/537.36'),
(195, 0, 'browser', 'Chrome', '45.124.48.238', '0', 'assets/images/data/no_photo.png', 'admin/items/edit', '2018-04-09 23:11:15', 0, 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(196, 0, 'browser', 'Chrome', '45.124.48.238', '0', 'cart_module/cart_module/add', 'local?location_id=14', '2018-04-09 23:13:17', 0, 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(197, 0, 'browser', 'Chrome', '45.124.48.238', '0', 'assets/images/data/no_photo.png', 'admin/items/edit', '2018-04-09 23:21:14', 0, 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(198, 0, 'browser', 'Chrome', '106.193.197.141', 'IN', '', '', '2018-04-11 12:03:20', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(199, 0, 'browser', 'Chrome', '106.193.197.141', 'IN', '', 'admin/locations/edit?id=14', '2018-04-11 12:08:10', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(200, 0, 'browser', 'Chrome', '106.193.197.141', 'IN', '', '', '2018-04-11 12:10:17', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(201, 0, 'browser', 'Chrome', '106.193.197.141', 'IN', '', 'admin/locations/edit?id=14', '2018-04-11 12:13:21', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(202, 0, 'browser', 'Chrome', '106.193.197.141', 'IN', '', 'admin/locations/edit?id=14', '2018-04-11 12:20:33', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(203, 0, 'browser', 'Chrome', '106.193.197.141', 'IN', 'about-us', '', '2018-04-11 12:34:05', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(204, 0, 'browser', 'Chrome', '106.193.197.141', 'IN', '', 'about-us', '2018-04-11 12:36:07', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(205, 0, 'browser', 'Chrome', '106.193.197.141', 'IN', 'contact', '', '2018-04-11 12:43:40', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(206, 0, 'browser', 'Chrome', '106.193.197.141', 'IN', '', 'about-us', '2018-04-11 12:46:34', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(207, 0, 'browser', 'Chrome', '106.193.197.141', 'IN', '', 'admin/coupons', '2018-04-11 12:50:01', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(208, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', '', '', '2018-04-11 17:01:49', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(209, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', 'assets/images/data/no_photo.png', 'admin/extensions/edit/module/slideshow', '2018-04-11 18:03:01', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(210, 0, 'browser', 'Chrome', '45.124.48.238', '0', 'assets/images/data/no_photo.png', 'admin/items/edit?id=2', '2018-04-11 22:41:38', 0, 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(211, 0, 'browser', 'Chrome', '45.124.48.238', '0', 'assets/images/data/no_photo.png', 'admin/itemCategories/edit', '2018-04-11 22:47:45', 0, 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(212, 0, 'browser', 'Chrome', '45.117.212.69', '0', '', '', '2018-04-11 22:49:31', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(213, 0, 'browser', 'Chrome', '45.124.48.238', '0', 'assets/images/data/no_photo.png', 'admin/itemCategories/edit', '2018-04-11 22:50:10', 0, 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(214, 0, 'browser', 'Chrome', '45.124.48.238', '0', 'assets/images/data/no_photo.png', 'admin/itemCategories/edit', '2018-04-11 22:54:27', 0, 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(215, 0, 'browser', 'Chrome', '45.124.48.238', '0', 'assets/images/data/no_photo.png', 'admin/itemCategories/edit?id=6', '2018-04-11 22:59:32', 0, 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(216, 0, 'browser', 'Chrome', '45.124.48.238', '0', 'assets/images/data/no_photo.png', 'admin/items/edit?id=2', '2018-04-11 23:06:55', 0, 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(217, 0, 'browser', 'Chrome', '45.117.212.69', '0', '', '', '2018-04-12 00:08:53', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(218, 0, 'mobile', 'Android', '42.107.80.254', 'IN', 'assets/images/data/no_photo.png', 'admin/categories/edit', '2018-04-12 01:43:20', 0, 'Mozilla/5.0 (Linux; Android 7.1.1; XT1562 Build/NPD26.48-24-1; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/65.0.3325.109 Mobile Safari/537.36'),
(219, 0, 'mobile', 'Android', '103.203.66.73', '0', 'assets/images/data/no_photo.png', 'admin/categories/edit', '2018-04-12 01:48:05', 0, 'Mozilla/5.0 (Linux; Android 7.1.1; XT1562 Build/NPD26.48-24-1; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/65.0.3325.109 Mobile Safari/537.36'),
(220, 0, 'mobile', 'Android', '45.117.212.69', '0', 'assets/images/data/no_photo.png', 'admin/items/edit?id=2', '2018-04-12 01:51:06', 0, 'Mozilla/5.0 (Linux; Android 7.0; Moto G (4) Build/NPJS25.93-14-15; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/65.0.3325.109 Mobile Safari/537.36'),
(221, 0, 'mobile', 'Android', '14.194.144.148', 'IN', '', 'admin/dashboard', '2018-04-12 13:04:50', 0, 'Mozilla/5.0 (Linux; Android 7.0; Redmi Note 4 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.109 Mobile Safari/537.36'),
(222, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', '', '', '2018-04-14 14:20:36', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(223, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', 'assets/images/data/no_photo.png', 'admin/items/edit?id=2', '2018-04-14 14:22:46', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(224, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', 'account/orders/view/20004', '', '2018-04-14 14:25:59', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(225, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', '', '', '2018-04-14 15:08:54', 0, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(226, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', 'assets/images/data/no_photo.png', 'admin/items/edit', '2018-04-14 15:58:55', 0, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(227, 0, 'browser', 'Chrome', '45.124.48.238', '0', '', 'admin/items', '2018-04-14 22:32:57', 0, 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(228, 0, 'browser', 'Opera', '45.124.48.238', '0', 'checkout', 'checkout', '2018-04-14 22:35:19', 0, 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36 OPR/52.0.2871.64'),
(229, 0, 'mobile', 'Android', '103.203.66.73', '0', '', 'admin/dashboard', '2018-04-15 14:07:49', 0, 'Mozilla/5.0 (Linux; Android 7.0; Redmi Note 4 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.109 Mobile Safari/537.36'),
(230, 0, 'browser', 'Chrome', '45.124.48.238', '0', 'assets/images/data/no_photo.png', 'admin/items/edit?id=2', '2018-04-15 14:36:51', 0, 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(231, 0, 'mobile', 'Android', '103.203.66.73', '0', '', 'admin/dashboard', '2018-04-16 01:12:09', 0, 'Mozilla/5.0 (Linux; Android 7.0; Redmi Note 4 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.109 Mobile Safari/537.36'),
(232, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', '', '', '2018-04-16 10:47:11', 0, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(233, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', 'local_module/local_module/search', '', '2018-04-16 10:56:21', 0, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(234, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', 'checkout', 'checkout', '2018-04-16 10:58:32', 0, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(235, 0, 'browser', 'Chrome', '106.77.44.134', 'IN', '', '', '2018-04-16 11:37:58', 0, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(236, 0, 'browser', 'Chrome', '106.77.44.134', 'IN', 'local_module/local_module/search', '', '2018-04-16 11:54:45', 0, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(237, 0, 'browser', 'Chrome', '106.77.44.134', 'IN', '', '', '2018-04-16 11:56:52', 0, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(238, 0, 'browser', 'Chrome', '106.77.44.134', 'IN', 'local_module/local_module/search', '', '2018-04-16 12:01:34', 0, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(239, 0, 'mobile', 'Android', '103.203.66.73', '0', '', 'admin/dashboard', '2018-04-16 12:01:35', 0, 'Mozilla/5.0 (Linux; Android 7.0; Redmi Note 4 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.109 Mobile Safari/537.36'),
(240, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', '', '', '2018-04-16 12:13:18', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36');
INSERT INTO `ok_customers_online` (`activity_id`, `customer_id`, `access_type`, `browser`, `ip_address`, `country_code`, `request_uri`, `referrer_uri`, `date_added`, `status`, `user_agent`) VALUES
(241, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', 'assets/images/data/no_photo.png', 'admin/items/edit?id=2', '2018-04-16 12:17:40', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(242, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', 'checkout', 'checkout', '2018-04-16 12:19:59', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(243, 0, 'browser', 'Mozilla', '13.76.241.210', 'US', '', '', '2018-04-16 12:29:34', 0, 'Mozilla/5.0 (Windows NT 6.1; WOW64) SkypeUriPreview Preview/0.5'),
(244, 0, 'mobile', 'Android', '103.203.66.73', '0', '', 'admin/dashboard', '2018-04-16 13:28:46', 0, 'Mozilla/5.0 (Linux; Android 7.0; Redmi Note 4 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.109 Mobile Safari/537.36'),
(245, 0, 'browser', 'Firefox', '175.100.180.210', 'IN', '', '', '2018-04-16 14:36:03', 0, 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0'),
(246, 0, 'browser', 'Firefox', '175.100.180.210', 'IN', 'local_module/local_module/search', '', '2018-04-16 14:38:44', 0, 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0'),
(247, 0, 'browser', 'Firefox', '175.100.180.210', 'IN', '', '', '2018-04-16 14:41:05', 0, 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0'),
(248, 0, 'browser', 'Firefox', '175.100.180.210', 'IN', 'local_module/local_module/search', '', '2018-04-16 14:43:06', 0, 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0'),
(249, 0, 'browser', 'Firefox', '175.100.180.210', 'IN', 'local_module/local_module/search', '', '2018-04-16 14:45:08', 0, 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0'),
(250, 0, 'browser', 'Firefox', '175.100.180.210', 'IN', '', 'local?location_id=14', '2018-04-16 14:49:35', 0, 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0'),
(251, 0, 'browser', 'Firefox', '175.100.180.210', 'IN', 'local_module/local_module/search', '', '2018-04-16 14:51:37', 0, 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0'),
(252, 0, 'browser', 'Firefox', '175.100.180.210', 'IN', '', 'local?location_id=14', '2018-04-16 14:53:39', 0, 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0'),
(253, 0, 'browser', 'Firefox', '175.100.180.210', 'IN', 'local_module/local_module/search', '', '2018-04-16 14:55:41', 0, 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0'),
(254, 0, 'mobile', 'Android', '103.203.66.73', '0', '', 'admin/dashboard', '2018-04-16 21:50:15', 0, 'Mozilla/5.0 (Linux; Android 7.0; Redmi Note 4 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.109 Mobile Safari/537.36'),
(255, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', '', 'admin/dashboard', '2018-04-17 10:10:29', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(256, 0, 'mobile', 'Android', '103.203.66.73', '0', '', 'admin/dashboard', '2018-04-17 10:17:22', 0, 'Mozilla/5.0 (Linux; Android 7.0; Redmi Note 4 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.109 Mobile Safari/537.36'),
(257, 0, 'browser', 'Chrome', '37.145.36.144', 'RU', 'local?location_id=14', 'http://yandex.ru/clck/jsredir?from=yandex.ru%3Bsearch%3Bweb%3B%3B&text=&etext=1762.ULsvkka_izfV36n8JXBduzG1D0gK_BYXEuuNBoRcw_sEA8_rlEB5T5yzBOh3PN5S.144cd63e7ac5e7ae91a29ed95305fc10d55251f6&uuid=&state=_BLhILn4SxNIvvL0W45KSic66uCIg23qh8iRG98qeIXmeppkgUc0YMkOSpatjLUqgxH-XWLwn-g&data=UlNrNmk5WktYejY4cHFySjRXSWhXTDdIRXB3cERoczBaMlVBRFpkdHFzVnFfNm1xbnJmT0xRcGJXWEFCWGhoaldOV1BWTkVXX1dqdEhWTkRwY25QcUlSRjhTZEpqZ1hlenZlZXRHX19PTk1faGhGZE9FcHU5eUJJQlJ2MkhLQmNHaXcxVWQ0RGxuQTgwOUZqazQtcEJwVkc3VEpSbWVBd0ZhcHotZmtjM0NV&b64e=2&sign=530d02197290c3f68cfbc9a86c240e01&keyno=0&cst=AiuY0DBWFJ7IXge4WdYJQYuwSQLovbTTnsYDjX-ocqwCcU-zZnihNqbLxNf1wq6QK04MI7jP-IRYV4TrJoOO37IV5oVtcc0uBNLlQyYvJpdnjXYup346MEuTZZqxbnvfZ1t3k43WtXW6jHtzOQO07A&ref=orjY4mGPRjk5boDnW0uvlrrd71vZw9kp5uQozpMtKCXWw0iTWKpk3G8ioYYmybrIIjxcrFdX1EcrJsgcqAbDr51iVqFz5tBSzrSGq9RsvSpv1RCpul0kxS0egg-H_USN&l10n=ru&cts=1524050306694&mc=3.56923516347', '2018-04-18 17:03:10', 0, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 YaBrowser/18.2.1.174 Yowser/2.5 Safari/537.36'),
(258, 0, 'browser', 'Chrome', '128.68.138.65', 'RU', 'local?location_id=17', 'http://yandex.ru/clck/jsredir?from=yandex.ru%3Bsearch%3Bweb%3B%3B&text=&etext=1762.QmYuuoSUfq_L7hrbd3VaCK3EgQCTyPGzFVWMW3iH7tbzkKsYikWoG8nqmpdfmZOF.088950e57f8ee85b46d4a5e39b5bebac9d41c2ee&uuid=&state=_BLhILn4SxNIvvL0W45KSic66uCIg23qh8iRG98qeIXmeppkgUc0YGftRg9cP1erjBfVTUcXDXk&data=UlNrNmk5WktYejY4cHFySjRXSWhXTDdIRXB3cERoczBaMlVBRFpkdHFzVnFfNm1xbnJmT0xRcGJXWEFCWGhoaldOV1BWTkVXX1dqdEhWTkRwY25QcUlSRjhTZEpqZ1hlenZlZXRHX19PTk1vWTU5QUV6dll5OEJIakxxcUZMb0VSaGFoMGktRDRtRXhjM3R1akJXdjdiei04LVdISHlzdG1mbHRLZmhIemxF&b64e=2&sign=c288ef1f4f993c3b756bcebf06053b5e&keyno=0&cst=AiuY0DBWFJ7IXge4WdYJQXbYQp9t5VF6xiu6Adml-utOkx_haCrc3nh14ePTL6i1uSxocTPq-MaC9qnNndPgZtxpp3f7nm4svBx8WhPChRVT44pQYqMwwb2CnzxkXnSjYAWTtVCm5hb2LaIUPYBW5PXrTDWsp7du&ref=orjY4mGPRjk5boDnW0uvlrrd71vZw9kp5uQozpMtKCX9U1h5sqoIO1cECb-Cxp5MsikupPAA0y_ebjPKjTO5KzGs3ZHtuU8kvNE1NxIbsRisHQCnQHP4oPRRfWpr6q0p&l10n=ru&cts=1524050306695&mc=6.22133546086', '2018-04-18 17:03:10', 0, 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36'),
(259, 0, 'mobile', 'Android', '42.107.86.181', 'IN', 'assets/images/data/no_photo.png', 'admin/items/edit', '2018-04-18 20:09:21', 0, 'Mozilla/5.0 (Linux; Android 7.1.1; XT1562 Build/NPD26.48-24-1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.109 Mobile Safari/537.36'),
(260, 0, 'browser', 'Internet Explorer', '95.220.79.244', 'RU', 'local?location_id=17', 'http://yandex.ru/clck/jsredir?from=yandex.ru%3Bsearch%3Bweb%3B%3B&text=&etext=1763.UPSD9kepSmekMQ-BwTAY5hZ59lZJ1MVzeoxMPBIMoxiDm0KljlujUKgnhfpK7MX9.e78ebc880931ba78d22f52a3ec36f4d215a2fc1b&uuid=&state=_BLhILn4SxNIvvL0W45KSic66uCIg23qh8iRG98qeIXmeppkgUc0YL_nDC5hqtEQ6WayFoZKRZE&data=UlNrNmk5WktYejY4cHFySjRXSWhXTDdIRXB3cERoczBaMlVBRFpkdHFzVnFfNm1xbnJmT0xRcGJXWEFCWGhoaldOV1BWTkVXX1dqdEhWTkRwY25QcUlSRjhTZEpqZ1hlenZlZXRHX19PTk1vWTU5QUV6dll5ekY5Ql8wNXZMbWp5akdfOTFNVXNjNllvN3dJTnhqeENiWlQ2OGJlbXNMRQ&b64e=2&sign=b3072bf9966bf9e42a9d5c622f67a4a3&keyno=0&cst=AiuY0DBWFJ7IXge4WdYJQULnoVAFacUfuNgegolzQWXcRy5ECLZuiMHSyThKzGZMJOy1LAQ9wyVi4OSJFnR9QFh8NuU9z_wEXrtgiUbXhuLq2JLNN4xUpCwmQSBCCeuDYaqdUaXZqlv_PZUho7pnmA&ref=orjY4mGPRjk5boDnW0uvlrrd71vZw9kp5uQozpMtKCXEfKO1imoOE5ahH3TS-QDnpMfWACRGP7gi8NtNsTa1ULYuxmdQ--emYEeCUK54jStP5keRdrgAjKBxknrmpcMg&l10n=ru&cts=1524143318442&mc=6.56301606059', '2018-04-19 20:45:54', 0, 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729; .NET4.0C; .NET4.0E)'),
(261, 0, 'browser', 'Internet Explorer', '188.255.19.31', 'RU', '', 'http://yandex.ru/clck/jsredir?from=yandex.ru%3Bsearch%3Bweb%3B%3B&text=&etext=1763.zU7OI1_ZCuSZtxA0tzHPEtGiQC_ppgICvh4gUCcMXHsLRZXnP8CJSF5CAkBGJMSU.ae1354b289cf78df6686ed97b31a1bc22d08b846&uuid=&state=_BLhILn4SxNIvvL0W45KSic66uCIg23qh8iRG98qeIXmeppkgUc0YFUVNhHyyhJgRFg5yeLMIWU&data=UlNrNmk5WktYejY4cHFySjRXSWhXTDdIRXB3cERoczBaMlVBRFpkdHFzVnFfNm1xbnJmT0xRcGJXWEFCWGhoaldOV1BWTkVXX1dnOERYNXhHa0JQbnVicm91Y010OFlLUEpEcU42NkZvY1MtLVpEMzk1M0lsb0hUN2diUU1XTEJwaW9YaG5wRm5wYw&b64e=2&sign=4807bd612cafd9f342c4075177c0e4bd&keyno=0&cst=AiuY0DBWFJ7IXge4WdYJQXbYQp9t5VF6YtqrLCro24jgxpq1uLFkA-5vzyQXkXfo_iHvoWBSx0WJPdgrln5ViH7pbkIgYMs0qzPVFTSq3kkFB8hlDr8V3WopswF7xTTiGFwmSN9Ln6wiEq37S3UlXlUCYllcqON1&ref=orjY4mGPRjk5boDnW0uvlrrd71vZw9kp5uQozpMtKCXdCnh-_wii4QtkpO-vE0gtHoE3gK_cTMAqPPZ6t7vF1Z6shPrKXEFC4XsjF2CSVyV0LwbWMCTNZQfT3TtRzv7F&l10n=ru&cts=1524143318441&mc=4.03813682243', '2018-04-19 20:45:56', 0, 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0)'),
(262, 0, 'browser', 'Chrome', '175.100.180.206', 'IN', '', '', '2018-04-20 11:06:52', 0, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36'),
(263, 0, 'browser', 'Chrome', '175.100.180.206', 'IN', '', 'local?location_id=14', '2018-04-20 11:08:54', 0, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36'),
(264, 0, 'browser', 'Firefox', '175.100.180.206', 'IN', '', 'locations', '2018-04-20 11:13:56', 0, 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0'),
(265, 0, 'browser', 'Firefox', '175.100.180.206', 'IN', '', 'locations', '2018-04-20 11:25:01', 0, 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0'),
(266, 0, 'browser', 'Firefox', '175.100.180.206', 'IN', 'local_module/local_module/search', '', '2018-04-20 11:27:08', 0, 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0'),
(267, 0, 'browser', 'Firefox', '175.100.180.206', 'IN', 'local_module/local_module/search', '', '2018-04-20 11:30:40', 0, 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0'),
(268, 0, 'mobile', 'Android', '103.203.66.73', '0', '', 'admin/dashboard', '2018-04-20 22:57:12', 0, 'Mozilla/5.0 (Linux; Android 7.0; Redmi Note 4 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.109 Mobile Safari/537.36'),
(269, 0, 'browser', 'Internet Explorer', '37.204.152.151', 'RU', 'local?location_id=17', 'http://yandex.ru/clck/jsredir?from=yandex.ru%3Bsearch%3Bweb%3B%3B&text=&etext=1764.DzMP0188Nou1yoclxGURAu_mIjrEYtxlXKlGnk7EuahfsYbo8tU1JyMSXrl10FU_.02a4b16605e60c08f4aff8d40f4e4ea7e57a866f&uuid=&state=_BLhILn4SxNIvvL0W45KSic66uCIg23qh8iRG98qeIXmeppkgUc0YMIVJNtoWDTa6Ctl47TPu5I&data=UlNrNmk5WktYejY4cHFySjRXSWhXTDdIRXB3cERoczBaMlVBRFpkdHFzVnFfNm1xbnJmT0xRcGJXWEFCWGhoaldOV1BWTkVXX1dqdEhWTkRwY25QcUlSRjhTZEpqZ1hlenZlZXRHX19PTk1vWTU5QUV6dll5eDcyZ1FaOFZVZ2ozcmhCNW1zc0NBdXQ3UzlFX0Z5VDJLUnBoVTItU18xRGFzM1lMUmVLYk44&b64e=2&sign=f2cb8a708c913399d566f60c1e4d439b&keyno=0&cst=AiuY0DBWFJ7IXge4WdYJQXbYQp9t5VF61oiflNLSh2HUv39DVGiUIv4NT5B6xe8h9HqeEzsf1yZbrLbcTOX-GUjJ6pvbHDzbzDtWFGteghr1UKP-JaNRB4Dyhligk_YZCdPm5TyEAvYzODqQdt9qX8BqOrij2NKx&ref=orjY4mGPRjk5boDnW0uvlrrd71vZw9kp5uQozpMtKCXdCnh-_wii4fJR6h14RDDHNVjUiQ2r5k6vkg3ewwhz1suMGoA0m_XUFdDnqU4JWyfRZrLpOb0-YfuZDkyry2Zl&l10n=ru&cts=1524245453377&mc=2.46539477157', '2018-04-21 00:25:54', 0, 'Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.2; WOW64; Trident/6.0; Touch; MASMJS)'),
(270, 0, 'browser', 'Internet Explorer', '37.110.146.9', 'RU', '', 'http://yandex.ru/clck/jsredir?from=yandex.ru%3Bsearch%3Bweb%3B%3B&text=&etext=1764.w7EVVjp0FmtH0rYg3e1klKRtBChHJ465gxZi0YCMC1zVyH7LC3VxTp4hSHNpusEc.5d3e13f20148666e1c81618c270b556b94bc0ee8&uuid=&state=_BLhILn4SxNIvvL0W45KSic66uCIg23qh8iRG98qeIXmeppkgUc0YLeQVNu7TCjFWhspMNrg36Y&data=UlNrNmk5WktYejY4cHFySjRXSWhXTDdIRXB3cERoczBaMlVBRFpkdHFzVnFfNm1xbnJmT0xRcGJXWEFCWGhoaldOV1BWTkVXX1dnOERYNXhHa0JQbnV4c18wMDNkVHRuRWpTMno1TU1oalFNOTBMZ0Ftc2I4dlg3bWNUc0ZSSU5Wb3RZZzhKSnRTZw&b64e=2&sign=b4d9ccdb2d3d0f73adc19b405b886b84&keyno=0&cst=AiuY0DBWFJ7IXge4WdYJQYP93Xfrtkba3aJnrpgcCj9WlD-94uJXN26T-h9r_u_p9h5ZI7AGM1v4BKIPXguc-XK5dlPhLyrBq_Pt8unvegfYXZZuVQAtQVeFG3PiKtGodyf1vrGd1QSWkonu4EGVQ_koY2mbrzuh&ref=orjY4mGPRjk5boDnW0uvlrrd71vZw9kp5uQozpMtKCVz9TJ3Mp6DkbJc8Y-Xw2HSGdM3phc0_fUBUZx-AGV9WlV4MGDvPuD6YvSTMUMuPPK49zijS_BHR4-A2Gczek4t&l10n=ru&cts=1524245453377&mc=2.46072601494', '2018-04-21 00:25:56', 0, 'Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.1; Trident/6.0; MASPJS)'),
(271, 0, 'browser', 'Chrome', '175.100.180.206', 'IN', '', '', '2018-04-21 16:18:21', 0, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36'),
(272, 0, 'browser', 'Chrome', '175.100.180.206', 'IN', 'local_module/local_module/search', '', '2018-04-21 16:22:50', 0, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36'),
(273, 0, 'browser', 'Chrome', '106.193.131.195', 'IN', '', '', '2018-04-21 18:06:36', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(274, 0, 'browser', 'Chrome', '106.193.131.195', 'IN', 'assets/images/data/no_photo.png', 'admin/items/edit?id=2', '2018-04-21 18:08:39', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(275, 0, 'browser', 'Chrome', '106.193.131.195', 'IN', 'assets/images/data/no_photo.png', 'admin/items/edit?id=2', '2018-04-21 18:11:15', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(276, 0, 'browser', 'Chrome', '106.193.131.195', 'IN', 'cart_module/cart_module/add', 'local?location_id=17', '2018-04-21 18:13:20', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(277, 0, 'browser', 'Chrome', '106.193.131.195', 'IN', 'checkout/success', 'checkout', '2018-04-21 18:17:45', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(278, 0, 'mobile', 'Android', '106.193.131.195', 'IN', '', 'admin/dashboard', '2018-04-21 18:54:18', 0, 'Mozilla/5.0 (Linux; Android 7.0; Moto G (4) Build/NPJS25.93-14-15; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/65.0.3325.109 Mobile Safari/537.36'),
(279, 0, 'mobile', 'Android', '103.203.66.73', '0', '', 'admin/dashboard', '2018-04-21 20:35:13', 0, 'Mozilla/5.0 (Linux; Android 7.0; Redmi Note 4 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.109 Mobile Safari/537.36'),
(280, 0, 'mobile', 'Android', '103.203.66.73', '0', '', 'admin/dashboard', '2018-04-21 21:35:44', 0, 'Mozilla/5.0 (Linux; Android 7.0; Redmi Note 4 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.109 Mobile Safari/537.36'),
(281, 0, 'mobile', 'Android', '103.203.66.73', '0', '', 'admin/dashboard', '2018-04-21 21:53:39', 0, 'Mozilla/5.0 (Linux; Android 7.0; Redmi Note 4 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.109 Mobile Safari/537.36'),
(282, 0, 'browser', 'Chrome', '175.100.180.206', 'IN', '', '', '2018-04-21 22:10:12', 0, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36'),
(283, 0, 'mobile', 'Android', '103.203.66.73', '0', '', 'admin/dashboard', '2018-04-21 23:19:47', 0, 'Mozilla/5.0 (Linux; Android 7.0; Redmi Note 4 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.109 Mobile Safari/537.36'),
(284, 0, 'browser', 'Internet Explorer', '188.32.46.249', 'RU', 'local?location_id=17', 'http://yandex.ru/clck/jsredir?from=yandex.ru%3Bsearch%3Bweb%3B%3B&text=&etext=1765.snMCRbVvZVnZ863O5ny_7i0sMG-qtQQ6wHSH7cyKj5EtVvOQPVcEH3KoW_4V_MV_.67381daefe52ef6702c7071e185dd171cf374d83&uuid=&state=_BLhILn4SxNIvvL0W45KSic66uCIg23qh8iRG98qeIXmeppkgUc0YHRNgn3KsbHJbmUkku86_mY&data=UlNrNmk5WktYejY4cHFySjRXSWhXTDdIRXB3cERoczBaMlVBRFpkdHFzVnFfNm1xbnJmT0xRcGJXWEFCWGhoaldOV1BWTkVXX1dqdEhWTkRwY25QcUlSRjhTZEpqZ1hlenZlZXRHX19PTk1vWTU5QUV6dll5NDRNVjZDclVjSE56VUxWb21qeGlZWGhkS1JkQWVFVjdHRUlIMUhudUFsNkNsUkU0QmowV1BR&b64e=2&sign=2514a6e298996af3742e700f33ef4dbd&keyno=0&cst=AiuY0DBWFJ7IXge4WdYJQYpgPUyh7uQlKdgoOUIyywGlqJHgB0zJsz0j4iE4sOpzg9dWE8g9OPKcXhTfhMqRiO5mvHHAI-k6Uz062Ee8enVnvjYzl7C-sPybp4xiSQLTifzp2QVWF1sQMvuwja8wEQ&ref=orjY4mGPRjk5boDnW0uvlrrd71vZw9kp5uQozpMtKCWuAUzT58TqAYDww0mUHgyXekNE4Po5bdkHQCsq9wXvsJtUPlSHk9PqCLy_tSgPISagaPqn8ySTMhAP4rKsqLgZ&l10n=ru&cts=1524348660648&mc=3.754802206', '2018-04-22 04:48:55', 0, 'Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.2; WOW64; Trident/6.0; Touch; MASEJS)'),
(285, 0, 'mobile', 'Android', '103.203.66.73', '0', '', 'admin/dashboard', '2018-04-22 07:26:32', 0, 'Mozilla/5.0 (Linux; Android 7.0; Redmi Note 4 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.109 Mobile Safari/537.36'),
(286, 0, 'mobile', 'Android', '103.203.66.73', '0', '', 'admin/dashboard', '2018-04-22 08:53:12', 0, 'Mozilla/5.0 (Linux; Android 7.0; Redmi Note 4 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.109 Mobile Safari/537.36'),
(287, 0, 'browser', 'Internet Explorer', '95.24.5.251', 'RU', 'local?location_id=17', 'http://yandex.ru/clck/jsredir?from=yandex.ru%3Bsearch%3Bweb%3B%3B&text=&etext=1766.hBkBghR0VAfhPJRZFijBH0dlSGE8UQXxOs_RUF49A0laq0QGawIpCCkR_GFcqU-z.ccde1d84ae9a6a4c8a4595c7eb0b08b83d333dd7&uuid=&state=_BLhILn4SxNIvvL0W45KSic66uCIg23qh8iRG98qeIXmeppkgUc0YKCJkrjchpDstTwxTkjwGrA&data=UlNrNmk5WktYejY4cHFySjRXSWhXTDdIRXB3cERoczBaMlVBRFpkdHFzVnFfNm1xbnJmT0xRcGJXWEFCWGhoaldOV1BWTkVXX1dqdEhWTkRwY25QcUlSRjhTZEpqZ1hlenZlZXRHX19PTk1vWTU5QUV6dll5ME01SUF1eVdaMnRoQkpaUXBvSGwySjBGcm93cVRTQnllTjRfN0daNU1Qcg&b64e=2&sign=7f907a484efa833d7bee35125475631b&keyno=0&cst=AiuY0DBWFJ7IXge4WdYJQULnoVAFacUfmxPTFyxWKbUz_JWTe98TX1jjbIgLhf_D0XL9BQoPQR_jzHIHvkBSbLAqhC0eqoN1yu-GrS5UeUIQC9K-Ai1wCUJZYB7mw-GVgUUPgoNMG2Rdgp2AgJe3qA&ref=orjY4mGPRjk5boDnW0uvlrrd71vZw9kp5uQozpMtKCVz9TJ3Mp6DkXYnqvB86eSJ9V2pt9Q22IChnWR9WemyHuOd6xIxidTIZKbaPtBi8zWvDihd9fvzc3R1IkoqnKmT&l10n=ru&cts=1524443800406&mc=4.30120120927', '2018-04-23 07:30:53', 0, 'Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.2; WOW64; Trident/6.0; Touch; MASMJS)'),
(288, 0, 'mobile', 'Android', '103.47.153.218', '0', '', 'admin/dashboard', '2018-04-23 19:28:10', 0, 'Mozilla/5.0 (Linux; U; Android 7.0; en-gb; Redmi Note 4 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/53.0.2785.146 Mobile Safari/537.36 XiaoMi/MiuiBrowser/9.5.6'),
(289, 0, 'browser', 'Chrome', '42.106.196.189', 'IN', '', '', '2018-04-23 22:39:18', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36'),
(290, 0, 'browser', 'Chrome', '42.106.231.189', 'IN', 'assets/images/thumbs/no_photo-1349x420.png', '', '2018-04-23 22:39:21', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36'),
(291, 0, 'browser', 'Chrome', '42.106.196.189', 'IN', 'checkout', 'local?location_id=14', '2018-04-23 22:41:27', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36'),
(292, 0, 'browser', 'Chrome', '42.106.231.189', 'IN', 'local?location_id=14', 'checkout', '2018-04-23 22:41:54', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36'),
(293, 0, 'mobile', 'Android', '106.77.56.112', 'IN', '', 'admin/dashboard', '2018-04-25 11:53:03', 0, 'Mozilla/5.0 (Linux; Android 7.0; Redmi Note 4 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.126 Mobile Safari/537.36'),
(294, 0, 'mobile', 'Android', '106.79.173.83', 'IN', 'assets/images/thumbs/no_photo-1349x420.png', '', '2018-04-25 11:53:21', 0, 'Mozilla/5.0 (Linux; Android 7.0; Redmi Note 4 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.126 Mobile Safari/537.36'),
(295, 0, 'mobile', 'Android', '103.203.66.94', '0', '', 'admin/dashboard', '2018-04-25 15:08:58', 0, 'Mozilla/5.0 (Linux; Android 7.0; Redmi Note 4 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.126 Mobile Safari/537.36'),
(296, 0, 'mobile', 'Android', '103.203.66.94', '0', '', 'admin/dashboard', '2018-04-25 20:22:58', 0, 'Mozilla/5.0 (Linux; Android 7.0; Redmi Note 4 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.126 Mobile Safari/537.36'),
(297, 0, 'mobile', 'Android', '103.54.18.34', '0', '', '', '2018-05-02 12:08:06', 0, 'Mozilla/5.0 (Linux; Android 4.4.4; HM NOTE 1LTE Build/KTU84P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.126 Mobile Safari/537.36'),
(298, 0, 'mobile', 'Android', '103.54.18.34', '0', 'local_module/local_module/search', 'local?location_id=17', '2018-05-02 12:10:08', 0, 'Mozilla/5.0 (Linux; Android 4.4.4; HM NOTE 1LTE Build/KTU84P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.126 Mobile Safari/537.36'),
(299, 0, 'mobile', 'Android', '103.54.18.34', '0', 'reservation?action=find_table&location=17&guest_num=4&reserve_date=03-05-2018&reserve_time=15%3A00', 'reservation?action=find_table&location=17&guest_num=9&reserve_date=03-05-2018&reserve_time=15%3A00', '2018-05-02 12:12:14', 0, 'Mozilla/5.0 (Linux; Android 4.4.4; HM NOTE 1LTE Build/KTU84P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.126 Mobile Safari/537.36'),
(300, 0, 'mobile', 'Android', '103.54.18.34', '0', 'login', '', '2018-05-02 12:23:22', 0, 'Mozilla/5.0 (Linux; Android 4.4.4; HM NOTE 1LTE Build/KTU84P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.126 Mobile Safari/537.36'),
(301, 0, 'mobile', 'Android', '103.54.18.34', '0', '', '', '2018-05-02 12:25:25', 0, 'Mozilla/5.0 (Linux; Android 4.4.4; HM NOTE 1LTE Build/KTU84P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.126 Mobile Safari/537.36'),
(302, 0, 'mobile', 'Android', '103.54.18.34', '0', 'register', 'register', '2018-05-02 12:27:46', 0, 'Mozilla/5.0 (Linux; Android 4.4.4; HM NOTE 1LTE Build/KTU84P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.126 Mobile Safari/537.36'),
(303, 0, 'mobile', 'Android', '103.54.18.34', '0', 'login', 'login', '2018-05-02 12:30:06', 0, 'Mozilla/5.0 (Linux; Android 4.4.4; HM NOTE 1LTE Build/KTU84P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.126 Mobile Safari/537.36'),
(304, 0, 'mobile', 'Android', '103.54.18.34', '0', '', '', '2018-05-02 14:21:01', 0, 'Mozilla/5.0 (Linux; Android 4.4.4; HM NOTE 1LTE Build/KTU84P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.126 Mobile Safari/537.36'),
(305, 0, 'mobile', 'Android', '103.54.18.34', '0', 'forgot-password', 'forgot-password', '2018-05-02 14:23:35', 0, 'Mozilla/5.0 (Linux; Android 4.4.4; HM NOTE 1LTE Build/KTU84P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.126 Mobile Safari/537.36'),
(306, 12, 'mobile', 'Android', '103.54.18.34', '0', 'account/details', 'account', '2018-05-02 14:26:11', 0, 'Mozilla/5.0 (Linux; Android 4.4.4; HM NOTE 1LTE Build/KTU84P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.126 Mobile Safari/537.36'),
(307, 0, 'browser', 'Internet Explorer', '188.234.195.144', 'RU', 'local?location_id=14', 'http://yandex.ru/clck/jsredir?from=yandex.ru%3Bsearch%3Bweb%3B%3B&text=&etext=1776.-jSfhbCyFqTYRLg_mFBXCVsEooupNt7aSUq08spaa-WTzSpvFx3zRpJQnTGvHzT-.2383b8c550329db6a0c2446c3eee252a18418946&uuid=&state=_BLhILn4SxNIvvL0W45KSic66uCIg23qh8iRG98qeIXmeppkgUc0YG-XUIUpxKrkaoPisARVvB8&data=UlNrNmk5WktYejY4cHFySjRXSWhXTDdIRXB3cERoczBaMlVBRFpkdHFzVnFfNm1xbnJmT0xRcGJXWEFCWGhoaldOV1BWTkVXX1dqdEhWTkRwY25QcUlSRjhTZEpqZ1hlenZlZXRHX19PTk1faGhGZE9FcHU5NV9CZVNpLVJrb0RLMGZsSXdFMDB0TGE2TnpnbzZENlczZ2VQeWFjSXdOR1FNOWJ1ak1zd3lv&b64e=2&sign=28a8289ab7da13864e35f0254a02e9eb&keyno=0&cst=AiuY0DBWFJ7IXge4WdYJQYP93Xfrtkba1zeDZLa5KgSeDWYMGyUZyaaP_hPNt9OI8mbGLtPrNUeg9wSre4i73LId7tq3eJq3N_P2V636h5tRtf9FfOq6NRdm3uQIyGB7qG0HqETUMjra4D9bBjI28w&ref=orjY4mGPRjk5boDnW0uvlrrd71vZw9kp5uQozpMtKCV-HtQ36UFK01iGEa_UoW0NZKEk28HIfFV9JF0Y4wH-sfDDTusMlneJNsGhhMdYVgX6cHkHJ4UZCaMQG9uIjFJI&l10n=ru&cts=1525253591126&mc=5.57681428449', '2018-05-02 15:12:48', 0, 'Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.2; WOW64; Trident/6.0; MDDCJS)'),
(308, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', '', '', '2018-05-07 10:57:30', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(309, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', 'assets/images/data/no_photo.png', 'admin/items/edit', '2018-05-07 11:00:23', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(310, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', 'assets/images/data/no_photo.png', 'admin/locations/edit', '2018-05-07 11:04:57', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(311, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', '', '', '2018-05-07 11:13:34', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(312, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', 'local_module/local_module/search', '', '2018-05-07 11:20:45', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(313, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', 'checkout', 'checkout', '2018-05-07 11:23:33', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(314, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', '', 'checkout/success', '2018-05-07 11:26:02', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(315, 0, 'mobile', 'Android', '183.87.39.174', 'IN', '', '', '2018-05-07 12:04:31', 0, 'Mozilla/5.0 (Linux; Android 5.1.1; YU4711 Build/LMY47V) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.76 Mobile Safari/537.36'),
(316, 0, 'mobile', 'Android', '183.87.39.174', 'IN', '', 'admin/dashboard', '2018-05-07 12:12:00', 0, 'Mozilla/5.0 (Linux; Android 5.1.1; YU4711 Build/LMY47V) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.76 Mobile Safari/537.36'),
(317, 0, 'mobile', 'Android', '183.87.39.174', 'IN', '', 'admin/dashboard', '2018-05-07 12:19:10', 0, 'Mozilla/5.0 (Linux; Android 5.1.1; YU4711 Build/LMY47V) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.76 Mobile Safari/537.36'),
(318, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', 'assets/images/data/no_photo.png', 'admin/locations/edit', '2018-05-07 12:50:56', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(319, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', 'assets/images/data/no_photo.png', 'admin/locations/edit?id=18', '2018-05-07 12:52:57', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(320, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', '', '', '2018-05-07 16:21:50', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(321, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', 'login', '', '2018-05-07 17:13:34', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(322, 0, 'browser', 'Internet Explorer', '95.221.145.13', 'RU', 'local?location_id=17', 'http://yandex.ru/clck/jsredir?from=yandex.ru%3Bsearch%3Bweb%3B%3B&text=&etext=1781.sX_4GGZENGYbXOb-7JPkV_ADJ-2hILTnNoST0a9HzDcwujcxVf0F30L-HkL5ByL4.023e7ef1fcf6efdd72b867cfb33a3ba05f7b7790&uuid=&state=_BLhILn4SxNIvvL0W45KSic66uCIg23qh8iRG98qeIXmeppkgUc0YG-XUIUpxKrkaoPisARVvB8&data=UlNrNmk5WktYejY4cHFySjRXSWhXTDdIRXB3cERoczBaMlVBRFpkdHFzVnFfNm1xbnJmT0xRcGJXWEFCWGhoaldOV1BWTkVXX1dqdEhWTkRwY25QcUlSRjhTZEpqZ1hlenZlZXRHX19PTk1vWTU5QUV6dll5NW5kSTRkblhIeTBHTDFIYUxDZ01fTGpYX2lIV2ZXMVhmMXBUMk1BSHJCZnJTZnFuS0Y4NF9j&b64e=2&sign=4aae96c16e5bca5706dffc6890a5b30f&keyno=0&cst=AiuY0DBWFJ7IXge4WdYJQYP93XfrtkbauM61YHbjpRcQwGIfkDwQDan0wZOdWjDk0G94p6wzY4WExqtgsF9GPUsCSsHridqAwpzptfSTFMC2g6ulSXczz7lTLFco9yJ-oJPwtyg_POu-MWTB_CV8yBK0Y8DGQQJc&ref=orjY4mGPRjk5boDnW0uvlrrd71vZw9kp5uQozpMtKCUrYE_V40103tlJ5fnwcGO-4fLcX20bABQE2y3Z6xO6O79K9RfHYj1Vz83CRWlIQ_ByJnQLEhdKm6yWQY1oJSNn&l10n=ru&cts=1525732386263&mc=5.75075157315', '2018-05-08 04:08:55', 0, 'Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.2; WOW64; Trident/6.0; MASMJS)'),
(323, 0, 'browser', 'Internet Explorer', '109.63.214.48', 'RU', 'locations', 'http://yandex.ru/clck/jsredir?from=yandex.ru%3Bsearch%3Bweb%3B%3B&text=&etext=1782.apC43cLpRBt6D_as_YsK3xW1IOAvnYMtkULjfHqCLksqWndl8qbZbmshc5KrKZ0Z.0f9dc496402b2215acaa12d46a0af7a252f18b6f&uuid=&state=_BLhILn4SxNIvvL0W45KSic66uCIg23qh8iRG98qeIXmeppkgUc0YLeQVNu7TCjFWhspMNrg36Y&data=UlNrNmk5WktYejY4cHFySjRXSWhXTDdIRXB3cERoczBaMlVBRFpkdHFzVnFfNm1xbnJmT0xRcGJXWEFCWGhoaldOV1BWTkVXX1dnbnlfTzk0d2ZWZHBfWWxNemE3OEI0MUlxWEE2OHU2LXBwTGg4NXFoZmhQOXdQa3h5QVF0bl9sWVVfeTJfRjUzbFRGRnNMQ0x1QU9R&b64e=2&sign=512294b411034bd9d7954a5cac4fa50f&keyno=0&cst=AiuY0DBWFJ7IXge4WdYJQe3IrxbPWIv4t9N1-Lq8mpXdsFUivqjB1qdGXm5DXQtOEpjzItsfGRGIPxGn8685JLSK3An9jckk4PiDh7ufBLTcjTaw-GM97V73-QCIYzwmgQj96-ZCwFBiJjU-CPyFHMviKn8tKd6l&ref=orjY4mGPRjk5boDnW0uvlrrd71vZw9kp5uQozpMtKCWAB4NbWhozjrkxaoQeoZKVhsuUvF1We-MEqO3iOUSPBrJxv-tsP6e8Q5MSCUhLcHSX0P3-vzR73KMZNr_MFL5x&l10n=ru&cts=1525821524353&mc=6.1858569753', '2018-05-09 04:55:13', 0, 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0)'),
(324, 0, 'browser', 'Chrome', '49.35.103.100', 'IN', '', '', '2018-05-09 17:53:02', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(325, 0, 'browser', 'Chrome', '106.77.2.9', 'IN', 'assets/images/data/no_photo.png', 'admin/items/edit', '2018-05-09 17:55:53', 0, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(326, 0, 'browser', 'Chrome', '157.33.112.239', 'ID', 'assets/images/data/no_photo.png', 'admin/items/edit', '2018-05-11 15:06:32', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(327, 0, 'browser', 'Chrome', '116.75.18.91', 'IN', '', '', '2018-05-13 18:36:42', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(328, 0, '', '', '45.117.212.69', '0', '', '', '2018-05-13 18:37:12', 0, 'WhatsApp/2.18.142 A'),
(329, 0, 'browser', 'Chrome', '116.75.18.91', 'IN', 'assets/images/data/no_photo.png', 'admin/items/edit', '2018-05-13 18:40:48', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(330, 0, 'browser', 'Chrome', '106.210.238.43', 'IN', 'assets/images/data/no_photo.png', 'admin/themes/edit/tastyigniter-orange', '2018-05-14 11:50:00', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(331, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', '', '', '2018-05-14 12:36:33', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(332, 0, 'browser', 'Chrome', '157.33.30.177', 'ID', 'assets/images/data/no_photo.png', 'admin/items/edit', '2018-05-14 14:16:11', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(333, 0, 'browser', 'Chrome', '66.102.6.153', 'US', '', '', '2018-05-14 17:59:12', 0, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36 Google Favicon'),
(334, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', '', '', '2018-05-15 16:20:03', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(335, 0, 'browser', 'Internet Explorer', '188.32.213.55', 'RU', 'local?location_id=17', 'http://yandex.ru/clck/jsredir?from=yandex.ru%3Bsearch%3Bweb%3B%3B&text=&etext=1789.qTXggQ0DQ29IxmUi_symyqRjzVq_QMlRUDkwcyTbnkZYKF-HMNbagCQYf9lkgHxP.73dbc0be14d0a3a228e43e31da3b701ce52b4520&uuid=&state=_BLhILn4SxNIvvL0W45KSic66uCIg23qh8iRG98qeIXmeppkgUc0YGv9iZwKiy-E54GYiollMFA&data=UlNrNmk5WktYejY4cHFySjRXSWhXTDdIRXB3cERoczBaMlVBRFpkdHFzVnFfNm1xbnJmT0xRcGJXWEFCWGhoaldOV1BWTkVXX1dqdEhWTkRwY25QcUlSRjhTZEpqZ1hlenZlZXRHX19PTk1vWTU5QUV6dll5ODlGRXBmb0stUjVlNEZ2cFNmX0xJaUo3Z1Z1T1NETDBVUldqZGtrVkJCdGxvdHBKUG1Cc3Rv&b64e=2&sign=b29644bc7fbc20a7deaa975afc8f3096&keyno=0&cst=AiuY0DBWFJ7IXge4WdYJQaYgAYq7JarrLYAUzBzCkt59sXotk-Jot-Xt4H_N08z3uQ5SC29yOGlg2GMsLnPWx6mybvo7NYf_PhqJWBFVxcHz-e68LXYM8TMjl0TZQywikv2J5hM4QUOP6WsKSiFUnL7o622oMTIz&ref=orjY4mGPRjk5boDnW0uvlrrd71vZw9kp5uQozpMtKCXmyCrj7VrKuAEj9-Tb5LohtlVdkjCAdBybC7c6bdl8Zub_pczi4p5jIZ6Pve-14obmzvuP9qZQ6NwaNPBkYwYz&l10n=ru&cts=1526396214866&mc=1.67242014482', '2018-05-15 20:53:03', 0, 'Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.2; WOW64; Trident/6.0; Touch; MASMJS)'),
(336, 0, 'browser', 'Chrome', '66.102.6.111', 'US', '', '', '2018-05-16 10:24:37', 0, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36 Google Favicon'),
(337, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', '', '', '2018-05-17 10:12:58', 0, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(338, 0, 'browser', 'Chrome', '66.102.6.153', 'US', '', '', '2018-05-17 10:27:34', 0, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36 Google Favicon'),
(339, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', 'assets/images/data/no_photo.png', 'admin/items/edit', '2018-05-17 10:41:34', 0, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(340, 0, '', '', '106.193.185.9', 'IN', '', '', '2018-05-17 15:56:45', 0, 'WhatsApp/2.18.142 A'),
(341, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', '', '', '2018-05-17 16:03:08', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(342, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', 'local_module/local_module/search', 'local?location_id=17', '2018-05-17 16:05:16', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(343, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', 'login', 'login', '2018-05-17 16:07:21', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(344, 14, 'browser', 'Chrome', '183.87.39.174', 'IN', 'checkout', 'checkout', '2018-05-17 16:09:31', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36'),
(345, 0, 'browser', 'Chrome', '66.102.6.154', 'US', '', '', '2018-05-18 10:40:54', 0, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36 Google Favicon'),
(346, 0, 'browser', 'Chrome', '157.33.60.92', 'ID', 'assets/images/data/no_photo.png', 'admin/items/edit', '2018-05-19 13:51:35', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36'),
(347, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', '', '', '2018-05-19 14:05:23', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36'),
(348, 0, 'browser', 'Chrome', '66.102.6.152', 'US', '', '', '2018-05-21 09:48:51', 0, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36 Google Favicon'),
(349, 0, 'browser', 'Chrome', '66.249.93.47', 'FR', '', '', '2018-05-22 19:22:54', 0, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36 Google Favicon'),
(350, 0, 'browser', 'Chrome', '66.102.6.154', 'US', '', '', '2018-05-23 22:43:23', 0, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36 Google Favicon'),
(351, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', '', '', '2018-05-24 10:11:27', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(352, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', 'locations', '', '2018-05-24 10:41:28', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(353, 0, 'browser', 'Chrome', '66.102.6.107', 'US', '', '', '2018-05-25 10:15:37', 0, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36 Google Favicon'),
(354, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', '', '', '2018-05-25 12:55:16', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36'),
(355, 0, 'browser', 'Chrome', '49.14.226.49', 'IN', '', '', '2018-05-25 15:30:12', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(356, 0, 'browser', 'Chrome', '42.106.235.209', 'IN', 'assets/images/data/no_photo.png', 'admin/items/edit', '2018-05-25 15:32:54', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(357, 0, 'browser', 'Chrome', '66.102.6.41', 'US', '', '', '2018-05-26 10:16:32', 0, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36 Google Favicon'),
(358, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', '', '', '2018-05-26 10:57:20', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(359, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', '', '', '2018-05-26 11:10:48', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(360, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', 'assets/images/data/no_photo.png', 'admin/menus/edit', '2018-05-26 15:37:22', 0, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3118.0 Safari/537.36'),
(361, 0, 'browser', 'Internet Explorer', '90.154.22.24', 'RU', '', 'http://yandex.ru/clck/jsredir?from=yandex.ru%3Bsearch%3Bweb%3B%3B&text=&etext=1800.dXmnzOyM0Fm74-b-FEHm17VV2J66aUojz4zipKVL5T_a5ipxIJbJvCSmwwgotRL-.b3d56d6d319978e32bf91e9e49597fd47b6c798c&uuid=&state=_BLhILn4SxNIvvL0W45KSic66uCIg23qh8iRG98qeIXmeppkgUc0YD4hgzqAYr5iuWBiLZQy-rY&data=UlNrNmk5WktYejY4cHFySjRXSWhXTDdIRXB3cERoczBaMlVBRFpkdHFzVnFfNm1xbnJmT0xRcGJXWEFCWGhoaldOV1BWTkVXX1dnOERYNXhHa0JQbmd1MDhvVzhnMF92NzhVaTYtWUFOOWoxNEdwMVN4ckJVSTdPNnppVW53WXZ4LWUtQ0lnZC1Kbw&b64e=2&sign=32dd1aa46038a9c13e2a28b4cd93b9ab&keyno=0&cst=AiuY0DBWFJ7IXge4WdYJQYpgPUyh7uQl2e-nvDvQsomtgVlEUckQ9gg4AnIdNgkUctlMAycMcFhH9VLurpyyYRnYFM0goaMcWUs216Stg0YgvdfCG4_-zcYG0daeXrFLgoKGP2CwJGheE-sV6tvI9xYK_64C_oZW&ref=orjY4mGPRjk5boDnW0uvlrrd71vZw9kp5uQozpMtKCVz9TJ3Mp6DkYB5jRsujvCf7TsMT-2qmagLy4padYCzRwKtzajZDmaOaa8eVEVffraibv1axdhPWo6vWeqwRYk5&l10n=ru&cts=1527365419667&mc=4.87455044443', '2018-05-27 01:43:04', 0, 'Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko'),
(362, 0, 'browser', 'Chrome', '66.249.93.43', 'FR', '', '', '2018-05-28 09:48:07', 0, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36 Google Favicon'),
(363, 0, 'browser', 'Chrome', '66.102.6.43', 'US', '', '', '2018-05-29 10:17:38', 0, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36 Google Favicon'),
(364, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', '', '', '2018-05-29 15:44:23', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(365, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'assets/images/data/no_photo.png', 'admin/menus/edit', '2018-05-29 18:10:09', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(366, 0, 'browser', 'Chrome', '157.33.153.158', 'ID', '', 'admin/dashboard', '2018-06-04 18:38:06', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36'),
(367, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', '', 'admin/dashboard', '2018-06-05 11:35:38', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36'),
(368, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', '', '', '2018-06-05 17:56:29', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(369, 0, 'browser', 'Chrome', '188.32.131.255', 'RU', 'local?location_id=17', 'http://yandex.ru/clck/jsredir?from=yandex.ru%3Bsearch%3Bweb%3B%3B&text=&etext=1810.WYB6qgneJ4Tqm859VWuWnJpjHjjasHow9RBKP51OJgNMVUpXAtXKvSwXyMD9QU76.527a7243eff06287c7656885909cdc5bd8ac05ed&uuid=&state=_BLhILn4SxNIvvL0W45KSic66uCIg23qh8iRG98qeIXmeppkgUc0YG-XUIUpxKrkaoPisARVvB8&data=UlNrNmk5WktYejY4cHFySjRXSWhXTDdIRXB3cERoczBaMlVBRFpkdHFzVnFfNm1xbnJmT0xRcGJXWEFCWGhoaldOV1BWTkVXX1dqdEhWTkRwY25QcUlSRjhTZEpqZ1hlenZlZXRHX19PTk1vWTU5QUV6dll5M0FLSzh3OGZtS1hMSjRES1lYNzFLVk1EVUphYnhOSTBwbWZyUmk2aEdMN19nNHNUeEJFcExr&b64e=2&sign=de406e9f20c07099aff6f0ab52ae1aad&keyno=0&cst=AiuY0DBWFJ7IXge4WdYJQULnoVAFacUfSuYQaVjI7Ef7etiumHkStXppanfS8f6EgxO47uI5Bc2i33ymPhlt-H7iw3jDXfpeAzpaGYnp5bzDqs7NjG5oVdW1zum5Ot-GVVyN8Wl7zYT8EXLc-BPKt2RxrUcR2Br4&ref=orjY4mGPRjk5boDnW0uvlrrd71vZw9kp5uQozpMtKCW5ri5MzTNSEhdbH4g5B6-0v_ekArfeDb5AsEAc0in0R1s2gBDiPcdXKKJxtAc7ShTavNngo8FFWpFUOpVkkFZ3&l10n=ru&cts=1528217679125&mc=4.95641947456', '2018-06-05 22:26:52', 0, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 YaBrowser/18.2.1.174 Yowser/2.5 Safari/537.36'),
(370, 0, 'browser', 'Chrome', '103.251.50.31', 'IN', '', '', '2018-06-06 13:59:23', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36'),
(371, 0, 'browser', 'Chrome', '49.35.116.63', 'IN', 'local_module/local_module/search', '', '2018-06-06 15:04:46', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36'),
(372, 0, 'browser', 'Chrome', '66.102.6.45', 'US', '', '', '2018-06-06 21:23:59', 0, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36 Google Favicon'),
(373, 0, 'browser', 'Firefox', '77.37.161.253', 'RU', 'locations', 'http://yandex.ru/clck/jsredir?from=yandex.ru%3Bsearch%3Bweb%3B%3B&text=&etext=1812.Yu3ck4jhLmU9w74YNiOuVDlKhqbEPomXTbLEfGDemXmjTLttL3IEHCOMTEHwfJgs.6902d74a61d839d44f77793533b08b880a106dd2&uuid=&state=_BLhILn4SxNIvvL0W45KSic66uCIg23qh8iRG98qeIXmeppkgUc0YL_nDC5hqtEQ6WayFoZKRZE&data=UlNrNmk5WktYejY4cHFySjRXSWhXTDdIRXB3cERoczBaMlVBRFpkdHFzVnFfNm1xbnJmT0xRcGJXWEFCWGhoaldOV1BWTkVXX1dnbnlfTzk0d2ZWZHBfWWxNemE3OEI0cjRuOEpySHdIRG9Ia1dLS2hkaF9MZU5kLU5HdVQ0bEYwWjZxcmtTaFRXZTNBN01UdFFDSFVR&b64e=2&sign=27a69c0af590b1de9cc98bf226592f0a&keyno=0&cst=AiuY0DBWFJ7IXge4WdYJQaYgAYq7Jarr-28JEg5mbF_QjOMRGdH2UR6lzsyrNLaMry-La77_Z0Z0m7Mv1-xsB3geE-5P6YetfOCigyWu_OMGL9YgMp3ZASOgcPZwaHw3cSA7U2DEn3-qcSzNB3ouoZ1Kzpr5r9Tq&ref=orjY4mGPRjk5boDnW0uvlrrd71vZw9kp5uQozpMtKCW4RgmAu5ryJP7ujgXKnEy02-kAop6LHT2rQYYz69qWfqLoeEKZ39IUDSkOxbXB-7ZX5OazdFQKDDiZzT2RNgLX&l10n=ru&cts=1528388573989&mc=6.76250933247', '2018-06-07 21:54:32', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:59.0) Gecko/20100101 Firefox/59.0'),
(374, 0, 'browser', 'Chrome', '66.249.93.45', 'FR', '', '', '2018-06-08 12:33:52', 0, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36 Google Favicon'),
(375, 0, 'browser', 'Chrome', '103.251.50.30', 'IN', '', '', '2018-06-08 12:34:31', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36'),
(376, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', '', '', '2018-06-09 16:53:51', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(377, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'local_module/local_module/search', '', '2018-06-09 16:56:15', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(378, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'checkout', 'checkout', '2018-06-09 16:59:20', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(379, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', '', 'local?location_id=14', '2018-06-09 17:02:16', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(380, 0, 'browser', 'Firefox', '106.210.142.55', 'IN', 'checkout', 'checkout', '2018-06-10 10:40:30', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(381, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', '', '', '2018-06-11 12:22:08', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(382, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'checkout', 'local?location_id=14', '2018-06-11 12:24:48', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(383, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', '', 'reservation', '2018-06-11 12:31:59', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(384, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'register', '', '2018-06-11 12:34:30', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(385, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', '', 'register', '2018-06-11 12:38:09', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(386, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', '', 'register', '2018-06-11 12:40:44', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(387, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'contact', '', '2018-06-11 12:50:49', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(388, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', '', 'pages?page_id=12', '2018-06-11 12:53:37', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(389, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'reservation', '', '2018-06-11 12:56:23', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(390, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'reservation', 'reservation', '2018-06-11 13:22:10', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(391, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'reservation?action=find_table&location=14&guest_num=2&reserve_date=20-06-2018&reserve_time=13%3A00', 'reservation?action=find_table&location=14&guest_num=2&reserve_date=20-06-2018&reserve_time=13%3A00', '2018-06-11 13:24:15', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(392, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', '', 'reservation?action=select_time&location=14&guest_num=2&reserve_date=20-06-2018&reserve_time=13%3A00&selected_time=2%3A00+PM', '2018-06-11 13:32:54', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(393, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'login', '', '2018-06-11 13:35:54', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(394, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'login', '', '2018-06-11 13:39:49', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(395, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'reservation', 'login', '2018-06-11 13:46:16', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(396, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', '', 'reservation', '2018-06-11 14:42:25', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(397, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'local_module/local_module/search', '', '2018-06-11 17:53:07', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(398, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'local_module/local_module/search', '', '2018-06-11 17:56:18', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(399, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'local_module/local_module/search', '', '2018-06-11 18:01:38', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(400, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', '', 'local?location_id=14', '2018-06-11 18:17:29', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(401, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'local_module/local_module/search', '', '2018-06-11 18:20:42', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(402, 0, 'browser', 'Firefox', '106.210.193.214', 'IN', '', 'local?location_id=17', '2018-06-11 20:02:44', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(403, 0, 'browser', 'Chrome', '103.203.66.64', '0', '', '', '2018-06-12 13:12:23', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.79 Safari/537.36'),
(404, 0, 'mobile', 'Android', '103.203.66.64', '0', '?rid=pdame7n156t9p59d3j26nlg2a1', '', '2018-06-12 13:15:25', 0, 'Mozilla/5.0 (Linux; Android 7.1.1; XT1562 Build/NPD26.48-24-1; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/67.0.3396.81 Mobile Safari/537.36'),
(405, 0, 'browser', 'Firefox', '106.193.211.52', 'IN', '', 'local?location_id=17', '2018-06-12 17:14:33', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(406, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'local_module/local_module/search', '', '2018-06-13 10:13:16', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(407, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', '', 'local?location_id=17', '2018-06-13 10:15:31', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(408, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', '', 'local?location_id=17', '2018-06-13 12:18:32', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(409, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', '', 'local?location_id=17', '2018-06-13 12:21:15', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(410, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'local_module/local_module/search', '', '2018-06-13 13:57:28', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0');
INSERT INTO `ok_customers_online` (`activity_id`, `customer_id`, `access_type`, `browser`, `ip_address`, `country_code`, `request_uri`, `referrer_uri`, `date_added`, `status`, `user_agent`) VALUES
(411, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'cart_module/cart_module/add', 'local?location_id=17', '2018-06-13 14:02:57', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(412, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', '', 'local?location_id=17', '2018-06-13 14:48:27', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(413, 0, 'mobile', 'Android', '103.251.50.31', 'IN', '?rid=k92r5l68vbguseehvlfg557u69', '', '2018-06-14 12:14:06', 0, 'Mozilla/5.0 (Linux; Android 7.1.2; Redmi 4 Build/N2G47H; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/67.0.3396.81 Mobile Safari/537.36'),
(414, 0, 'mobile', 'Android', '103.251.50.31', 'IN', 'login', 'login', '2018-06-14 13:20:24', 0, 'Mozilla/5.0 (Linux; Android 7.1.2; Redmi 4 Build/N2G47H; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/67.0.3396.81 Mobile Safari/537.36'),
(415, 0, 'mobile', 'Android', '103.251.50.31', 'IN', '', 'admin/dashboard', '2018-06-14 13:23:19', 0, 'Mozilla/5.0 (Linux; Android 7.1.2; Redmi 4 Build/N2G47H; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/67.0.3396.81 Mobile Safari/537.36'),
(416, 0, 'browser', 'Chrome', '116.74.135.106', 'IN', '', '', '2018-06-15 16:54:38', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36'),
(417, 0, 'browser', 'Chrome', '116.74.135.106', 'IN', 'checkout', 'checkout', '2018-06-15 16:57:01', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36'),
(418, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', '', 'admin/menus', '2018-06-16 11:47:55', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(419, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'account/orders/view/20028', '', '2018-06-16 11:52:16', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(420, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'cart_module/cart_module/add', 'local?location_id=14', '2018-06-16 11:54:17', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(421, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'local?location_id=14', '', '2018-06-16 12:04:05', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(422, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'cart_module/cart_module/add', 'local?location_id=14', '2018-06-16 12:09:18', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(423, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'cart_module/cart_module/options?menu_id=22&row_id=10', 'local?location_id=14', '2018-06-16 12:11:21', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(424, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'local_module/local_module/search', '', '2018-06-16 12:15:00', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(425, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'local?location_id=14', '', '2018-06-16 12:21:35', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(426, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'checkout', 'checkout', '2018-06-16 12:24:42', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(427, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'checkout', 'checkout', '2018-06-16 12:27:03', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(428, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', '', 'checkout/success', '2018-06-16 12:47:50', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(429, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', '', 'checkout/success', '2018-06-16 12:55:51', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(430, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', '', 'admin/dashboard', '2018-06-16 14:15:43', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(431, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'reservation', 'local?location_id=14', '2018-06-16 14:18:51', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(432, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', '', 'reservation', '2018-06-16 14:20:52', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(433, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'reservation', '', '2018-06-16 14:23:02', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(434, 0, 'browser', 'Firefox', '106.210.208.57', 'IN', '', '', '2018-06-17 10:18:41', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(435, 0, 'browser', 'Firefox', '106.210.215.36', 'IN', 'assets/css/images/ui-icons_444444_256x240.png', 'assets/css/jquery-ui.css?ver=2.1.1', '2018-06-18 20:21:11', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(436, 0, 'browser', 'Firefox', '106.210.215.36', 'IN', 'assets/css/images/ui-icons_444444_256x240.png', 'assets/css/jquery-ui.css?ver=2.1.1', '2018-06-18 20:28:35', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(437, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'assets/css/images/ui-icons_444444_256x240.png', 'assets/css/jquery-ui.css?ver=2.1.1', '2018-06-19 13:37:01', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(438, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'dashboard', '', '2018-06-19 15:49:30', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(439, 0, 'mobile', 'Android', '42.108.226.117', 'IN', '?rid=dfcbgeck3mpd5aklbdamts0bbu', '', '2018-06-20 10:13:20', 0, 'Mozilla/5.0 (Linux; Android 7.1.1; XT1562 Build/NPD26.48-24-1; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/67.0.3396.87 Mobile Safari/537.36'),
(440, 0, 'browser', 'Firefox', '106.210.221.210', 'IN', '', '', '2018-06-20 13:04:46', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(441, 0, 'browser', 'Firefox', '106.210.221.210', 'IN', 'local_module/local_module/search', '', '2018-06-20 13:11:36', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(442, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', '', 'local?location_id=14', '2018-06-20 13:48:58', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(443, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'cart_module/cart_module/add', 'local?location_id=14', '2018-06-20 15:16:21', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(444, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'cart_module/cart_module/add', 'local?location_id=14', '2018-06-20 15:19:28', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(445, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'cart_module/cart_module/add', 'local?location_id=14', '2018-06-20 15:29:14', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(446, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', '', 'local?location_id=14', '2018-06-20 15:45:28', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(447, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', '', '', '2018-06-22 14:51:00', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(448, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', '', 'admin/orders', '2018-06-25 09:53:46', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(449, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', '', 'admin/orders/add', '2018-06-25 15:03:52', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(450, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'cart_module/cart_module/add', 'local?location_id=14', '2018-06-25 15:09:04', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(451, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'local?location_id=14', 'local?location_id=14', '2018-06-25 15:20:14', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(452, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'cart_module/cart_module/add', 'local?location_id=14', '2018-06-25 15:22:44', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(453, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'cart_module/cart_module/add', 'local?location_id=14', '2018-06-25 15:25:04', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(454, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'local?location_id=14', 'local?location_id=14', '2018-06-25 15:27:08', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(455, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'cart_module/cart_module/add', 'local?location_id=14', '2018-06-25 15:38:26', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(456, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'local?location_id=14', 'local?location_id=14', '2018-06-25 15:40:36', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(457, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'local?location_id=14', 'local?location_id=14', '2018-06-25 18:12:46', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(458, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'local?location_id=14', 'local?location_id=14', '2018-06-25 18:18:40', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(459, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'checkout', 'local?location_id=14', '2018-06-25 18:26:49', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(460, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', '', 'admin/dashboard', '2018-06-29 15:38:05', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(461, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', '', '', '2018-06-29 17:09:00', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(462, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', '', 'admin/orders/add', '2018-06-29 17:14:38', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(463, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'local?location_id=14', 'local?location_id=14', '2018-06-29 17:20:19', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(464, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'local?location_id=14', 'local?location_id=14', '2018-06-29 17:23:21', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(465, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'cart_module/cart_module/options?menu_id=12&row_id=c20ad4d76fe97759aa27a0c99bff6710', 'local?location_id=14', '2018-06-29 17:25:24', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(466, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'local?location_id=14', 'local?location_id=14', '2018-06-29 17:29:13', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(467, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'local?location_id=14', 'local?location_id=14', '2018-06-29 17:31:49', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(468, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'cart_module/cart_module/add', 'local?location_id=14', '2018-06-29 17:35:50', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(469, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'local?location_id=14', 'local?location_id=14', '2018-06-29 17:38:08', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(470, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'local?location_id=14', 'local?location_id=14', '2018-06-29 17:40:26', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(471, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', '', '', '2018-06-30 10:14:45', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(472, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'cart_module/cart_module/add', 'local?location_id=14', '2018-06-30 10:17:16', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(473, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'cart_module/cart_module/remove', 'local?location_id=14', '2018-06-30 10:22:20', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(474, 0, 'browser', 'Firefox', '106.210.165.248', 'IN', 'assets/css/images/ui-icons_444444_256x240.png', 'assets/css/jquery-ui.css?ver=2.1.1', '2018-06-30 19:22:13', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(475, 0, 'browser', 'Firefox', '106.193.180.115', 'IN', '', 'admin/menus', '2018-07-03 20:58:17', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(476, 0, 'browser', 'Firefox', '106.193.180.115', 'IN', 'local_module/local_module/search', '', '2018-07-03 21:06:12', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(477, 0, 'browser', 'Firefox', '106.193.180.115', 'IN', 'cart_module/cart_module/add', 'local?location_id=14', '2018-07-03 21:08:15', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(478, 0, 'browser', 'Firefox', '106.193.180.115', 'IN', 'local?location_id=14', 'local?location_id=14', '2018-07-03 21:42:20', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(479, 0, 'browser', 'Firefox', '106.193.180.115', 'IN', 'local?location_id=14', 'local?location_id=14', '2018-07-03 21:46:16', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(480, 0, 'browser', 'Firefox', '106.193.180.115', 'IN', 'cart_module/cart_module/add', 'local?location_id=14', '2018-07-03 21:48:37', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(481, 0, 'browser', 'Firefox', '106.193.180.115', 'IN', 'local?location_id=14', 'local?location_id=14', '2018-07-03 21:52:01', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(482, 0, 'browser', 'Firefox', '106.193.180.115', 'IN', 'local?location_id=14', 'local?location_id=14', '2018-07-03 21:56:12', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(483, 0, 'browser', 'Firefox', '106.193.180.115', 'IN', 'cart_module/cart_module/add', 'local?location_id=14', '2018-07-03 21:58:15', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(484, 0, 'browser', 'Firefox', '106.193.180.115', 'IN', 'local?location_id=14', 'local?location_id=14', '2018-07-03 22:00:34', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(485, 0, 'browser', 'Firefox', '106.193.180.115', 'IN', 'local?location_id=14', 'local?location_id=14', '2018-07-03 22:10:56', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(486, 0, 'browser', 'Firefox', '106.193.180.115', 'IN', 'local?location_id=14', 'local?location_id=14', '2018-07-03 22:13:36', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(487, 0, 'browser', 'Firefox', '106.193.180.115', 'IN', 'local?location_id=14', 'local?location_id=14', '2018-07-03 22:16:23', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(488, 0, 'browser', 'Firefox', '106.193.180.115', 'IN', 'local?location_id=14', 'local?location_id=14', '2018-07-03 22:18:49', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(489, 0, 'browser', 'Firefox', '106.193.180.115', 'IN', 'cart_module/cart_module/options?menu_id=29&row_id=6ea9ab1baa0efb9e19094440c317e21b', 'local?location_id=14', '2018-07-03 22:20:51', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(490, 0, 'browser', 'Firefox', '106.193.180.115', 'IN', 'local?location_id=14', 'local?location_id=14', '2018-07-03 22:23:35', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(491, 0, 'browser', 'Firefox', '106.193.180.115', 'IN', 'local?location_id=14', 'local?location_id=14', '2018-07-03 22:25:37', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(492, 0, 'browser', 'Firefox', '106.193.180.115', 'IN', 'local?location_id=14', 'local?location_id=14', '2018-07-03 22:30:25', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(493, 0, 'browser', 'Firefox', '106.193.180.115', 'IN', 'local?location_id=14', 'local?location_id=14', '2018-07-03 22:32:27', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(494, 0, 'browser', 'Firefox', '106.193.180.115', 'IN', 'local?location_id=14', 'local?location_id=14', '2018-07-03 22:34:40', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(495, 0, 'browser', 'Firefox', '106.193.180.115', 'IN', 'local?location_id=14', 'local?location_id=14', '2018-07-03 22:37:35', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(496, 0, 'browser', 'Firefox', '106.193.180.115', 'IN', 'local?location_id=14', 'local?location_id=14', '2018-07-03 22:40:58', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(497, 0, 'browser', 'Firefox', '106.193.180.115', 'IN', 'local?location_id=14', 'local?location_id=14', '2018-07-03 22:44:07', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(498, 0, 'browser', 'Firefox', '106.193.180.115', 'IN', 'local?location_id=14', 'local?location_id=14', '2018-07-04 07:40:09', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(499, 0, 'browser', 'Firefox', '106.193.180.115', 'IN', 'local?location_id=14', 'local?location_id=14', '2018-07-04 07:42:15', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(500, 0, 'browser', 'Firefox', '106.193.180.115', 'IN', 'local?location_id=14', 'local?location_id=14', '2018-07-04 07:45:22', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(501, 0, 'browser', 'Firefox', '106.193.180.115', 'IN', 'local?location_id=14', 'local?location_id=14', '2018-07-04 07:47:43', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(502, 0, 'browser', 'Firefox', '106.193.180.115', 'IN', 'local?location_id=14', 'local?location_id=14', '2018-07-04 07:50:03', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(503, 0, 'browser', 'Firefox', '106.193.180.115', 'IN', 'local?location_id=14', 'local?location_id=14', '2018-07-04 07:52:35', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(504, 0, 'browser', 'Firefox', '106.193.180.115', 'IN', 'cart_module/cart_module/remove', 'local?location_id=14', '2018-07-04 07:54:41', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(505, 0, 'browser', 'Firefox', '106.193.180.115', 'IN', 'local?location_id=14', 'local?location_id=14', '2018-07-04 07:57:10', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(506, 0, 'browser', 'Firefox', '106.193.180.115', 'IN', 'cart_module/cart_module/add', 'local?location_id=14', '2018-07-04 08:01:44', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(507, 0, 'browser', 'Firefox', '106.193.180.115', 'IN', 'local?location_id=14', '', '2018-07-04 08:05:56', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(508, 0, 'browser', 'Firefox', '106.193.180.115', 'IN', 'cart_module/cart_module/getCountItems', 'local?location_id=14', '2018-07-04 08:07:58', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(509, 0, 'browser', 'Firefox', '106.193.180.115', 'IN', 'local?location_id=14', '', '2018-07-04 08:10:51', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(510, 0, 'browser', 'Firefox', '106.193.180.115', 'IN', 'local?location_id=14', '', '2018-07-04 08:14:14', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(511, 0, 'browser', 'Firefox', '106.193.180.115', 'IN', 'local?location_id=14', '', '2018-07-04 08:17:06', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(512, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'local?location_id=14', '', '2018-07-04 09:43:42', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(513, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'local?location_id=14', '', '2018-07-04 09:47:06', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(514, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'cart_module/cart_module/add', 'local?location_id=14', '2018-07-04 09:49:07', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(515, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'local?location_id=14', '', '2018-07-04 10:02:43', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(516, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'local?location_id=14', '', '2018-07-04 10:06:39', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(517, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'local?location_id=14', '', '2018-07-04 10:08:59', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(518, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'cart_module/cart_module/add', 'local?location_id=14', '2018-07-04 10:11:06', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(519, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'cart_module/cart_module/add', 'local?location_id=14', '2018-07-04 10:13:09', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(520, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'local?location_id=14', '', '2018-07-04 10:15:33', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(521, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'cart_module/cart_module/add', 'local?location_id=14', '2018-07-04 10:17:40', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(522, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'local?location_id=14', '', '2018-07-04 10:22:14', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(523, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'local?location_id=14', '', '2018-07-04 10:26:05', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(524, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'cart_module/cart_module/order_type', 'local?location_id=14', '2018-07-04 11:15:50', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(525, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'cart_module/cart_module/add', 'local?location_id=14', '2018-07-04 11:17:52', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(526, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'cart_module/cart_module/add', 'local?location_id=14', '2018-07-04 11:29:51', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(527, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'cart_module/cart_module/remove', 'local?location_id=14', '2018-07-04 11:44:23', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(528, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', '', 'local?location_id=14', '2018-07-04 12:07:04', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(529, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'locations', 'local?location_id=14', '2018-07-04 12:09:16', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(530, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'cart_module/cart_module/add', 'local?location_id=14', '2018-07-04 12:45:29', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(531, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'local?location_id=14', 'locations', '2018-07-04 12:49:56', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(532, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'cart_module/cart_module/remove', 'local?location_id=14', '2018-07-04 12:52:30', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(533, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'local?location_id=14', 'locations', '2018-07-04 12:59:19', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(534, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'cart_module/cart_module/add', 'local?location_id=14', '2018-07-04 13:02:03', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(535, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'local?location_id=14', 'locations', '2018-07-04 13:04:39', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(536, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'local?location_id=14', 'locations', '2018-07-04 13:06:42', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(537, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'local?location_id=14', 'locations', '2018-07-04 13:09:46', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(538, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'cart_module/cart_module/remove', 'local?location_id=14', '2018-07-04 13:12:28', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(539, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'local?location_id=14', 'locations', '2018-07-04 13:16:34', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(540, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'local?location_id=14', 'locations', '2018-07-04 13:19:14', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(541, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'local?location_id=14', 'locations', '2018-07-04 13:26:47', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(542, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'local?location_id=14', 'locations', '2018-07-04 13:29:40', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(543, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'local?location_id=14', 'locations', '2018-07-04 13:31:45', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(544, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'local?location_id=14', 'locations', '2018-07-04 13:34:06', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(545, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'local?location_id=14', 'locations', '2018-07-04 13:36:12', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(546, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'cart_module/cart_module/add', 'local?location_id=14', '2018-07-04 13:38:26', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(547, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'cart_module/cart_module/add', 'local?location_id=14', '2018-07-04 13:40:28', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(548, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'local?location_id=14', 'locations', '2018-07-04 13:42:39', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(549, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'local?location_id=14', 'locations', '2018-07-04 13:46:22', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(550, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'local?location_id=14', 'locations', '2018-07-04 13:50:24', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(551, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'cart_module/cart_module/add', 'local?location_id=14', '2018-07-04 13:52:38', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(552, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'local?location_id=14', 'locations', '2018-07-04 13:55:35', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(553, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'local?location_id=14', 'locations', '2018-07-04 13:57:41', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(554, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'cart_module/cart_module/add', 'local?location_id=14', '2018-07-04 14:00:00', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(555, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'cart_module/cart_module/options?menu_id=19&row_id=1f0e3dad99908345f7439f8ffabdffc4', 'local?location_id=14', '2018-07-04 14:02:12', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(556, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'local?location_id=14', 'locations', '2018-07-04 14:05:07', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(557, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'local?location_id=14', 'locations', '2018-07-04 14:07:55', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(558, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'local?location_id=14', 'locations', '2018-07-04 14:10:00', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(559, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'local?location_id=14', 'locations', '2018-07-04 14:13:59', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(560, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'cart_module/cart_module/remove', 'local?location_id=14', '2018-07-04 14:16:20', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(561, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'cart_module/cart_module/add', 'local?location_id=14', '2018-07-04 14:19:02', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(562, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'cart_module/cart_module/remove', 'local?location_id=14', '2018-07-04 14:21:10', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(563, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'local?location_id=14', 'locations', '2018-07-04 14:23:30', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(564, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'cart_module/cart_module/add', 'local?location_id=14', '2018-07-04 14:25:35', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(565, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'local?location_id=14', 'locations', '2018-07-04 14:28:43', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(566, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'local?location_id=14', 'locations', '2018-07-04 14:33:39', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(567, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'local?location_id=14', 'locations', '2018-07-04 14:35:49', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(568, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'local?location_id=14', 'locations', '2018-07-04 14:37:54', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(569, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'cart_module/cart_module/add', 'local?location_id=14', '2018-07-04 14:59:45', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(570, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'cart_module/cart_module/add', 'local?location_id=14', '2018-07-04 15:03:33', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(571, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'cart_module/cart_module/add', 'local?location_id=14', '2018-07-04 15:05:42', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(572, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'local?location_id=14', 'local?location_id=14', '2018-07-04 15:13:13', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(573, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'local?location_id=14', 'local?location_id=14', '2018-07-04 15:15:17', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(574, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'cart_module/cart_module/add', 'local?location_id=14', '2018-07-04 15:24:57', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(575, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'local?location_id=14', 'local?location_id=14', '2018-07-04 15:40:20', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(576, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'local?location_id=14', 'local?location_id=14', '2018-07-04 15:43:14', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(577, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'local?location_id=14', 'local?location_id=14', '2018-07-04 15:51:31', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(578, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'cart_module/cart_module/add', 'local?location_id=14', '2018-07-04 15:54:00', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(579, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'cart_module/cart_module/add', 'local?location_id=14', '2018-07-04 15:56:27', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(580, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'cart_module/cart_module/add', 'local?location_id=14', '2018-07-04 15:58:52', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(581, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'cart_module/cart_module/add', 'local?location_id=14', '2018-07-04 16:03:19', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(582, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'cart_module/cart_module/options?menu_id=29&row_id=6ea9ab1baa0efb9e19094440c317e21b', 'local?location_id=14', '2018-07-04 16:05:20', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(583, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'cart_module/cart_module/add', 'local?location_id=14', '2018-07-04 16:07:35', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(584, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'cart_module/cart_module/add', 'local?location_id=14', '2018-07-04 16:09:37', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(585, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'local?location_id=14', 'local?location_id=14', '2018-07-04 16:29:59', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(586, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'local?location_id=14', 'locations', '2018-07-04 16:35:07', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(587, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'cart_module/cart_module/add', 'local?location_id=14', '2018-07-04 16:40:31', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(588, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'cart_module/cart_module/add', 'local?location_id=14', '2018-07-04 17:27:38', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(589, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'cart_module/cart_module/remove', 'local?location_id=14', '2018-07-04 17:31:56', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(590, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'cart_module/cart_module/add', 'local?location_id=14', '2018-07-04 17:36:39', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(591, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'cart_module/cart_module/remove', 'local?location_id=14', '2018-07-04 17:38:42', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(592, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'cart_module/cart_module/add', 'local?location_id=14', '2018-07-04 18:08:13', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(593, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'cart_module/cart_module/remove', 'local?location_id=14', '2018-07-04 18:11:02', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(594, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', '', '', '2018-07-04 18:13:24', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(595, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', 'cart_module/cart_module/add', 'local?location_id=14', '2018-07-04 18:15:36', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(596, 0, 'browser', 'Firefox', '106.193.168.44', 'IN', '', 'admin/locations', '2018-07-05 09:13:39', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(597, 0, 'browser', 'Firefox', '106.193.168.44', 'IN', 'local_module/local_module/search', '', '2018-07-05 09:15:41', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(598, 0, 'browser', 'Firefox', '106.193.168.44', 'IN', 'cart_module/cart_module/add', 'local?location_id=14', '2018-07-05 09:22:44', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(599, 0, 'browser', 'Firefox', '106.193.168.44', 'IN', 'cart_module/cart_module/add', 'local?location_id=14', '2018-07-05 09:25:02', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(600, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'cart_module/cart_module/add', 'local?location_id=14', '2018-07-05 10:33:39', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(601, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'cart_module/cart_module/add', 'local?location_id=14', '2018-07-05 10:36:05', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0'),
(602, 0, 'browser', 'Chrome', '45.117.212.69', '0', 'assets/css/images/ui-icons_444444_256x240.png', 'assets/css/jquery-ui.css?ver=2.1.1', '2018-07-05 11:31:48', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(603, 0, 'browser', 'Chrome', '45.117.212.69', '0', 'assets/css/images/ui-icons_444444_256x240.png', 'assets/css/jquery-ui.css?ver=2.1.1', '2018-07-05 11:55:50', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(604, 0, 'browser', 'Chrome', '106.193.203.110', 'IN', 'local?location_id=14', 'local?location_id=14', '2018-07-05 20:56:35', 0, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3118.0 Safari/537.36'),
(605, 0, 'browser', 'Firefox', '159.203.81.93', 'US', 'local', 'local', '2018-07-05 20:56:36', 0, 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:33.0) Gecko/20100101 Firefox/33.0'),
(606, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', 'local?location_id=14', 'local?location_id=14', '2018-07-07 10:50:04', 0, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3118.0 Safari/537.36'),
(607, 0, 'browser', 'Chrome', '106.193.197.165', 'IN', 'assets/css/images/ui-icons_444444_256x240.png', 'assets/css/jquery-ui.css?ver=2.1.1', '2018-07-08 14:34:12', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(608, 0, 'browser', 'Chrome', '106.210.132.156', 'IN', 'assets/css/images/ui-icons_444444_256x240.png', 'assets/css/jquery-ui.css?ver=2.1.1', '2018-07-08 15:57:40', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(609, 0, 'browser', 'Chrome', '106.210.132.156', 'IN', 'assets/css/images/ui-icons_555555_256x240.png', 'assets/css/jquery-ui.css?ver=2.1.1', '2018-07-08 16:00:03', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(610, 0, 'browser', 'Chrome', '106.193.240.251', 'IN', 'local?location_id=14', 'local?location_id=14', '2018-07-08 22:14:08', 0, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3118.0 Safari/537.36'),
(611, 0, 'browser', 'Chrome', '103.62.17.86', '0', 'assets/css/images/ui-icons_444444_256x240.png', 'assets/css/jquery-ui.css?ver=2.1.1', '2018-07-09 14:42:08', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(612, 0, 'browser', 'Chrome', '106.210.230.3', 'IN', 'local?location_id=14', 'local?location_id=14', '2018-07-09 14:57:45', 0, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3118.0 Safari/537.36'),
(613, 0, 'browser', 'Chrome', '106.210.230.3', 'IN', 'local?location_id=14', 'local?location_id=14', '2018-07-09 15:12:01', 0, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3118.0 Safari/537.36'),
(614, 0, 'browser', 'Chrome', '106.210.230.3', 'IN', 'local?location_id=14', 'local?location_id=14', '2018-07-09 15:14:05', 0, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3118.0 Safari/537.36'),
(615, 0, 'browser', 'Firefox', '159.203.196.79', 'US', 'cart_module/cart_module/add', 'local', '2018-07-09 15:14:55', 0, 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:33.0) Gecko/20100101 Firefox/33.0'),
(616, 0, 'browser', 'Firefox', '159.203.42.143', 'US', 'cart_module/cart_module', 'local', '2018-07-09 15:15:27', 0, 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:33.0) Gecko/20100101 Firefox/33.0'),
(617, 0, 'browser', 'Firefox', '106.210.230.3', 'IN', '', '', '2018-07-09 15:16:47', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0'),
(618, 0, 'browser', 'Firefox', '106.210.230.3', 'IN', 'cart_module/cart_module/add', 'local?location_id=14', '2018-07-09 15:18:52', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0'),
(619, 0, 'browser', 'Firefox', '106.210.230.3', 'IN', 'cart_module/cart_module/add', 'local?location_id=14', '2018-07-09 15:21:03', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0'),
(620, 0, 'browser', 'Firefox', '106.210.230.3', 'IN', 'cart_module/cart_module/add', 'local?location_id=14', '2018-07-09 15:23:26', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0'),
(621, 0, 'browser', 'Firefox', '106.210.137.25', 'IN', '', '', '2018-07-10 17:27:43', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0'),
(622, 0, 'browser', 'Firefox', '106.210.137.25', 'IN', 'cart_module/cart_module/add', 'local?location_id=14', '2018-07-10 17:30:57', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0'),
(623, 0, 'browser', 'Firefox', '106.210.137.25', 'IN', 'cart_module/cart_module/options?menu_id=29&row_id=6ea9ab1baa0efb9e19094440c317e21b', 'local?location_id=14', '2018-07-10 17:33:05', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0'),
(624, 0, 'browser', 'Firefox', '106.210.137.25', 'IN', 'cart_module/cart_module/add', 'local?location_id=14', '2018-07-10 17:49:33', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0'),
(625, 0, 'browser', 'Firefox', '106.210.137.25', 'IN', 'cart_module/cart_module/add', 'local?location_id=14', '2018-07-10 17:51:53', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0'),
(626, 0, 'browser', 'Firefox', '106.210.137.25', 'IN', 'cart_module/cart_module/add', 'local?location_id=14', '2018-07-10 17:58:56', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0'),
(627, 0, 'browser', 'Firefox', '106.210.137.25', 'IN', 'local?location_id=14', '', '2018-07-10 18:01:00', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0'),
(628, 0, 'browser', 'Firefox', '106.210.137.25', 'IN', 'cart_module/cart_module/add', 'local?location_id=14', '2018-07-10 18:03:31', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0'),
(629, 0, 'browser', 'Firefox', '106.210.137.25', 'IN', 'cart_module/cart_module/remove', 'local?location_id=14', '2018-07-10 18:05:54', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0'),
(630, 0, 'browser', 'Firefox', '106.210.137.25', 'IN', 'cart_module/cart_module/add', 'local?location_id=14', '2018-07-10 18:08:27', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0'),
(631, 0, 'browser', 'Firefox', '106.210.137.25', 'IN', 'cart_module/cart_module/add', 'local?location_id=14', '2018-07-10 18:12:02', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0'),
(632, 0, 'browser', 'Firefox', '106.210.137.25', 'IN', 'cart_module/cart_module/remove', 'local?location_id=14', '2018-07-10 18:14:30', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0'),
(633, 0, 'browser', 'Firefox', '106.210.137.25', 'IN', 'cart_module/cart_module/add', 'local?location_id=14', '2018-07-10 18:16:46', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0'),
(634, 0, 'browser', 'Firefox', '106.210.137.25', 'IN', 'cart_module/cart_module/add', 'local?location_id=14', '2018-07-10 18:20:01', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0'),
(635, 0, 'browser', 'Firefox', '106.210.137.25', 'IN', 'cart_module/cart_module/add', 'local?location_id=14', '2018-07-10 18:22:13', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0'),
(636, 0, 'browser', 'Firefox', '106.210.137.25', 'IN', 'cart_module/cart_module', 'local?location_id=14', '2018-07-10 18:24:14', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0'),
(637, 0, 'browser', 'Firefox', '106.210.137.25', 'IN', 'local?location_id=14', '', '2018-07-10 21:38:44', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0'),
(638, 0, 'browser', 'Firefox', '106.210.137.25', 'IN', 'cart_module/cart_module/add', 'local?location_id=14', '2018-07-10 22:57:43', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0'),
(639, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', '', '', '2018-07-11 12:48:26', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(640, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', 'assets/css/images/ui-icons_444444_256x240.png', 'assets/css/jquery-ui.css?ver=2.1.1', '2018-07-11 13:18:17', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(641, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', '', 'admin/customers', '2018-07-11 15:56:33', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(642, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', '', 'local?location_id=14', '2018-07-11 16:01:37', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(643, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', '', '', '2018-07-13 14:18:16', 0, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(644, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', '', '', '2018-07-13 14:20:22', 0, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(645, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', '', 'admin/menus', '2018-07-13 14:23:56', 0, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(646, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', 'assets/css/images/ui-icons_444444_256x240.png', 'assets/css/jquery-ui.css?ver=2.1.1', '2018-07-13 15:24:36', 0, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(647, 0, 'mobile', 'Android', '45.119.59.138', '0', '', 'admin/dashboard', '2018-07-14 00:02:19', 0, 'Mozilla/5.0 (Linux; Android 7.0; Redmi Note 4 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Mobile Safari/537.36'),
(648, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', 'assets/css/images/ui-icons_444444_256x240.png', 'assets/css/jquery-ui.css?ver=2.1.1', '2018-07-16 11:11:59', 0, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(649, 15, 'browser', 'Chrome', '183.87.39.174', 'IN', 'account', 'admin/customers', '2018-07-16 12:48:04', 0, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(650, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', '', 'admin/dashboard', '2018-07-16 12:55:46', 0, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(651, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', 'assets/css/images/ui-icons_444444_256x240.png', 'assets/css/jquery-ui.css?ver=2.1.1', '2018-07-17 12:43:33', 0, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(652, 0, 'browser', 'Chrome', '45.117.212.69', '0', 'assets/css/images/ui-icons_444444_256x240.png', 'assets/css/jquery-ui.css?ver=2.1.1', '2018-07-27 22:36:15', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(653, 0, 'browser', 'Chrome', '45.117.212.69', '0', 'assets/css/images/ui-icons_444444_256x240.png', 'assets/css/jquery-ui.css?ver=2.1.1', '2018-07-27 22:43:48', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(654, 0, 'browser', 'Chrome', '45.117.212.69', '0', 'assets/css/images/ui-icons_444444_256x240.png', 'assets/css/jquery-ui.css?ver=2.1.1', '2018-07-28 22:24:21', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(655, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', '', 'admin/dashboard', '2018-08-04 11:25:59', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(656, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', '', '', '2018-08-04 12:40:37', 0, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3118.0 Safari/537.36');
INSERT INTO `ok_customers_online` (`activity_id`, `customer_id`, `access_type`, `browser`, `ip_address`, `country_code`, `request_uri`, `referrer_uri`, `date_added`, `status`, `user_agent`) VALUES
(657, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'assets/css/images/ui-icons_444444_256x240.png', 'assets/css/jquery-ui.css?ver=2.1.1', '2018-08-08 17:31:29', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0'),
(658, 0, 'browser', 'Firefox', '106.220.128.177', 'IN', '', 'admin/locations', '2018-08-14 09:14:35', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0'),
(659, 16, 'browser', 'Firefox', '106.220.128.177', 'IN', 'account', 'account/inbox', '2018-08-14 09:20:58', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0'),
(660, 16, 'browser', 'Firefox', '106.220.128.177', 'IN', 'account', 'account/inbox', '2018-08-14 09:24:15', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0'),
(661, 16, 'browser', 'Firefox', '106.220.128.177', 'IN', 'account/inbox', 'account', '2018-08-14 09:28:23', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0'),
(662, 16, 'browser', 'Firefox', '106.220.128.177', 'IN', 'account', 'account/inbox', '2018-08-14 09:36:50', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0'),
(663, 16, 'browser', 'Firefox', '106.220.128.177', 'IN', 'account', 'account/inbox', '2018-08-14 10:04:52', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0'),
(664, 16, 'browser', 'Firefox', '106.220.128.177', 'IN', 'account', 'account/inbox', '2018-08-14 10:31:56', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0'),
(665, 16, 'browser', 'Firefox', '106.220.128.177', 'IN', 'account', 'account/inbox', '2018-08-14 10:43:12', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0'),
(666, 16, 'browser', 'Firefox', '106.220.128.177', 'IN', 'account', 'account/inbox', '2018-08-14 10:48:21', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0'),
(667, 16, 'browser', 'Firefox', '106.220.128.177', 'IN', 'account/reviews', 'account', '2018-08-14 11:11:41', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0'),
(668, 16, 'browser', 'Firefox', '106.220.128.177', 'IN', 'reservation', 'reservation?action=select_time&location=14&guest_num=2&reserve_date=15-08-2018&reserve_time=10%3A00&selected_time=1%3A57+PM', '2018-08-14 11:13:47', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0'),
(669, 0, 'mobile', 'Android', '45.117.212.69', '0', '?rid=ha0go93pt2bs4hlp7i2bi64fnc', '', '2018-08-14 18:37:51', 0, 'Mozilla/5.0 (Linux; Android 7.0; Moto G (4) Build/NPJS25.93-14-18; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/68.0.3440.91 Mobile Safari/537.36'),
(670, 0, 'mobile', 'Android', '45.117.212.69', '0', '', 'admin/orders/add', '2018-08-14 18:42:16', 0, 'Mozilla/5.0 (Linux; Android 7.0; Moto G (4) Build/NPJS25.93-14-18; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/68.0.3440.91 Mobile Safari/537.36'),
(671, 16, 'browser', 'Firefox', '103.51.153.149', '0', 'account', 'reservation', '2018-08-14 20:26:52', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0'),
(672, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'assets/css/images/ui-icons_444444_256x240.png', 'assets/css/jquery-ui.css?ver=2.1.1', '2018-08-20 17:43:05', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0'),
(673, 0, 'browser', 'Chrome', '103.203.66.86', '0', '', '', '2018-08-21 19:09:12', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36'),
(674, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'assets/css/images/ui-icons_444444_256x240.png', 'assets/css/jquery-ui.css?ver=2.1.1', '2018-08-23 16:25:51', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0'),
(675, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'assets/css/images/ui-icons_444444_256x240.png', 'assets/css/jquery-ui.css?ver=2.1.1', '2018-08-23 17:19:32', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0'),
(676, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'assets/css/images/ui-icons_444444_256x240.png', 'assets/css/jquery-ui.css?ver=2.1.1', '2018-08-23 17:36:01', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0'),
(677, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', 'assets/css/images/ui-icons_444444_256x240.png', 'assets/css/jquery-ui.css?ver=2.1.1', '2018-08-23 17:42:28', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0'),
(678, 0, 'browser', 'Firefox', '183.87.39.174', 'IN', '', '', '2018-08-25 13:13:09', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0'),
(679, 16, 'browser', 'Firefox', '183.87.39.174', 'IN', 'account', 'admin/customers', '2018-08-25 13:16:37', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0'),
(680, 16, 'browser', 'Firefox', '183.87.39.174', 'IN', 'account', 'admin/customers', '2018-08-25 13:19:18', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0'),
(681, 16, 'browser', 'Firefox', '183.87.39.174', 'IN', 'account', 'admin/customers', '2018-08-25 13:31:00', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0'),
(682, 16, 'browser', 'Firefox', '183.87.39.174', 'IN', 'account', 'admin/customers', '2018-08-25 13:33:51', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0'),
(683, 16, 'browser', 'Firefox', '183.87.39.174', 'IN', 'account/invoice/33', 'account/account', '2018-08-25 13:49:28', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0'),
(684, 16, 'browser', 'Firefox', '183.87.39.174', 'IN', 'account/details', 'account', '2018-08-25 14:03:43', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0'),
(685, 0, 'mobile', 'Android', '64.233.173.52', 'US', '', '', '2018-08-25 14:06:05', 0, 'Mozilla/5.0 (Linux; Android 5.1; Micromax Q462 Build/LMY47D) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.91 Mobile Safari/537.36'),
(686, 16, 'browser', 'Firefox', '183.87.39.174', 'IN', 'account', 'account/reviews', '2018-08-25 16:30:29', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0'),
(687, 16, 'browser', 'Firefox', '183.87.39.174', 'IN', 'account', 'account/reviews', '2018-08-25 16:32:46', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0'),
(688, 16, 'browser', 'Firefox', '183.87.39.174', 'IN', 'account', 'account/reviews', '2018-08-25 16:35:26', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0'),
(689, 16, 'browser', 'Firefox', '183.87.39.174', 'IN', 'account', '', '2018-08-25 16:41:04', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0'),
(690, 16, 'browser', 'Firefox', '183.87.39.174', 'IN', 'account', '', '2018-08-25 16:43:23', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0'),
(691, 16, 'browser', 'Firefox', '183.87.39.174', 'IN', 'account', '', '2018-08-25 16:45:52', 0, 'Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0'),
(692, 0, 'browser', 'Chrome', '103.203.66.86', '0', 'assets/css/images/ui-icons_444444_256x240.png', 'assets/css/jquery-ui.css?ver=2.1.1', '2018-08-30 21:13:18', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36'),
(693, 19, 'browser', 'Chrome', '103.203.66.86', '0', 'assets/css/images/ui-icons_444444_256x240.png', 'assets/css/jquery-ui.css?ver=2.1.1', '2018-08-30 21:25:29', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36'),
(694, 20, 'browser', 'Chrome', '103.203.66.86', '0', 'account', 'admin/customers', '2018-08-30 21:28:10', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36'),
(695, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', 'assets/css/images/ui-icons_444444_256x240.png', 'assets/css/jquery-ui.css?ver=2.1.1', '2018-09-01 12:34:45', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36'),
(696, 0, 'browser', 'Chrome', '45.117.212.69', '0', 'assets/css/images/ui-icons_444444_256x240.png', 'assets/css/jquery-ui.css?ver=2.1.1', '2018-09-01 21:16:25', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36'),
(697, 0, 'browser', 'Chrome', '45.117.212.69', '0', 'assets/css/images/ui-icons_444444_256x240.png', 'assets/css/jquery-ui.css?ver=2.1.1', '2018-09-01 21:19:15', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36'),
(698, 21, 'browser', 'Chrome', '183.87.230.55', 'IN', 'account', 'admin/customers', '2018-09-02 20:25:49', 0, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.146 Safari/537.36'),
(699, 0, 'browser', 'Chrome', '42.108.244.155', 'IN', '', '', '2018-09-02 21:04:34', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36'),
(700, 0, 'browser', 'Chrome', '103.203.66.86', '0', 'reservation', '', '2018-09-02 23:16:07', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36'),
(701, 0, 'browser', 'Chrome', '103.203.66.86', '0', 'assets/css/images/ui-icons_444444_256x240.png', 'assets/css/jquery-ui.css?ver=2.1.1', '2018-09-04 22:31:23', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36'),
(702, 0, 'browser', 'Chrome', '103.203.66.86', '0', 'assets/css/images/ui-icons_555555_256x240.png', 'assets/css/jquery-ui.css?ver=2.1.1', '2018-09-04 22:44:37', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36'),
(703, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', 'assets/css/images/ui-icons_444444_256x240.png', 'assets/css/jquery-ui.css?ver=2.1.1', '2018-09-06 22:32:41', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36'),
(704, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', 'assets/css/images/ui-icons_444444_256x240.png', 'assets/css/jquery-ui.css?ver=2.1.1', '2018-09-06 22:35:08', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36'),
(705, 0, 'browser', 'Chrome', '49.35.234.160', 'IN', '', '', '2018-09-08 20:11:35', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36'),
(706, 0, 'browser', 'Chrome', '49.35.234.160', 'IN', '', 'reservation', '2018-09-08 20:14:00', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36'),
(707, 0, 'browser', 'Chrome', '49.35.234.160', 'IN', 'local_module/local_module/search', '', '2018-09-08 20:20:38', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36'),
(708, 0, 'browser', 'Chrome', '49.35.234.160', 'IN', 'assets/css/images/ui-icons_444444_256x240.png', 'assets/css/jquery-ui.css?ver=2.1.1', '2018-09-08 20:58:56', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36'),
(709, 0, 'browser', 'Chrome', '45.117.212.69', '0', 'assets/css/images/ui-icons_444444_256x240.png', 'assets/css/jquery-ui.css?ver=2.1.1', '2018-09-12 20:15:25', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36'),
(710, 0, 'browser', 'Firefox', '122.170.165.141', 'IN', 'assets/css/images/ui-icons_444444_256x240.png', 'assets/css/jquery-ui.css?ver=2.1.1', '2018-09-12 23:57:21', 0, 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0'),
(711, 0, 'browser', 'Firefox', '122.170.165.141', 'IN', 'assets/css/images/ui-icons_444444_256x240.png', 'assets/css/jquery-ui.css?ver=2.1.1', '2018-09-13 00:00:38', 0, 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0'),
(712, 0, 'browser', 'Firefox', '122.170.165.141', 'IN', 'assets/css/images/ui-icons_444444_256x240.png', 'assets/css/jquery-ui.css?ver=2.1.1', '2018-09-13 00:12:05', 0, 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0'),
(713, 0, 'browser', 'Firefox', '122.170.165.141', 'IN', 'assets/css/images/ui-icons_444444_256x240.png', 'assets/css/jquery-ui.css?ver=2.1.1', '2018-09-13 00:14:18', 0, 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0'),
(714, 0, 'browser', 'Firefox', '122.170.165.141', 'IN', 'assets/css/images/ui-icons_444444_256x240.png', 'assets/css/jquery-ui.css?ver=2.1.1', '2018-09-13 00:16:19', 0, 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0'),
(715, 0, 'browser', 'Firefox', '122.170.165.141', 'IN', 'assets/css/images/ui-icons_444444_256x240.png', 'assets/css/jquery-ui.css?ver=2.1.1', '2018-09-13 00:19:11', 0, 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0'),
(716, 0, 'browser', 'Firefox', '122.170.165.141', 'IN', 'assets/css/images/ui-icons_444444_256x240.png', 'assets/css/jquery-ui.css?ver=2.1.1', '2018-09-13 00:21:14', 0, 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0'),
(717, 0, 'browser', 'Firefox', '122.170.165.141', 'IN', 'assets/css/images/ui-icons_444444_256x240.png', 'assets/css/jquery-ui.css?ver=2.1.1', '2018-09-13 00:24:46', 0, 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0'),
(718, 0, 'browser', 'Firefox', '122.170.165.141', 'IN', 'assets/css/images/ui-icons_444444_256x240.png', 'assets/css/jquery-ui.css?ver=2.1.1', '2018-09-13 00:27:28', 0, 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0'),
(719, 0, 'browser', 'Chrome', '122.170.165.141', 'IN', 'assets/css/images/ui-icons_444444_256x240.png', 'assets/css/jquery-ui.css?ver=2.1.1', '2018-09-13 09:10:54', 0, 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36'),
(720, 0, 'browser', 'Chrome', '122.170.165.141', 'IN', 'assets/css/images/ui-icons_444444_256x240.png', 'assets/css/jquery-ui.css?ver=2.1.1', '2018-09-13 09:19:53', 0, 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36'),
(721, 0, 'browser', 'Chrome', '122.170.165.141', 'IN', 'assets/css/images/ui-icons_444444_256x240.png', 'assets/css/jquery-ui.css?ver=2.1.1', '2018-09-13 09:22:24', 0, 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36'),
(722, 0, 'browser', 'Chrome', '122.170.165.141', 'IN', 'assets/css/images/ui-icons_444444_256x240.png', 'assets/css/jquery-ui.css?ver=2.1.1', '2018-09-13 09:38:59', 0, 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36'),
(723, 0, 'browser', 'Chrome', '122.170.165.141', 'IN', 'assets/css/images/ui-icons_444444_256x240.png', 'assets/css/jquery-ui.css?ver=2.1.1', '2018-09-13 09:41:37', 0, 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36'),
(724, 0, 'browser', 'Chrome', '122.170.165.141', 'IN', 'assets/css/images/ui-icons_444444_256x240.png', 'assets/css/jquery-ui.css?ver=2.1.1', '2018-09-13 09:44:15', 0, 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36'),
(725, 0, 'browser', 'Chrome', '122.170.165.141', 'IN', 'assets/css/images/ui-icons_444444_256x240.png', 'assets/css/jquery-ui.css?ver=2.1.1', '2018-09-13 09:51:11', 0, 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36'),
(726, 0, 'browser', 'Chrome', '122.170.165.141', 'IN', 'assets/css/images/ui-icons_444444_256x240.png', 'assets/css/jquery-ui.css?ver=2.1.1', '2018-09-13 10:01:33', 0, 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36'),
(727, 0, 'browser', 'Chrome', '122.170.165.141', 'IN', 'assets/css/images/ui-icons_444444_256x240.png', 'assets/css/jquery-ui.css?ver=2.1.1', '2018-09-13 10:04:12', 0, 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36'),
(728, 0, 'browser', 'Chrome', '122.170.165.141', 'IN', 'assets/css/images/ui-icons_444444_256x240.png', 'assets/css/jquery-ui.css?ver=2.1.1', '2018-09-13 10:11:46', 0, 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36'),
(729, 0, 'browser', 'Firefox', '122.170.165.141', 'IN', 'assets/css/images/ui-icons_444444_256x240.png', 'assets/css/jquery-ui.css?ver=2.1.1', '2018-09-13 10:17:06', 0, 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0'),
(730, 0, 'browser', 'Firefox', '122.170.165.141', 'IN', 'assets/css/images/ui-icons_444444_256x240.png', 'assets/css/jquery-ui.css?ver=2.1.1', '2018-09-13 10:23:43', 0, 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0'),
(731, 0, 'browser', 'Firefox', '122.170.165.141', 'IN', 'assets/css/images/ui-icons_444444_256x240.png', 'assets/css/jquery-ui.css?ver=2.1.1', '2018-09-13 22:58:04', 0, 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0'),
(732, 0, 'browser', 'Firefox', '122.170.165.141', 'IN', 'assets/css/images/ui-icons_444444_256x240.png', 'assets/css/jquery-ui.css?ver=2.1.1', '2018-09-13 23:24:14', 0, 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0'),
(733, 0, 'browser', 'Firefox', '122.170.165.141', 'IN', 'assets/css/images/ui-icons_444444_256x240.png', 'assets/css/jquery-ui.css?ver=2.1.1', '2018-09-14 00:16:06', 0, 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0'),
(734, 0, 'browser', 'Chrome', '196.223.246.18', '0', '', '', '2018-09-20 15:37:45', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36'),
(735, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', 'assets/css/images/ui-icons_444444_256x240.png', 'assets/css/jquery-ui.css?ver=2.1.1', '2018-09-29 15:33:38', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36'),
(736, 0, 'browser', 'Chrome', '47.30.133.71', 'CA', '', '', '2018-09-29 16:46:08', 0, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36'),
(737, 0, 'browser', 'Chrome', '47.30.133.71', 'CA', 'local_module/local_module/search', '', '2018-09-29 18:32:19', 0, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36'),
(738, 0, 'browser', 'Chrome', '47.30.133.71', 'CA', 'local_module/local_module/search', 'local?location_id=14', '2018-09-29 18:38:08', 0, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36'),
(739, 0, 'browser', 'Chrome', '47.30.133.71', 'CA', 'cart_module/cart_module/add', 'local?location_id=14', '2018-09-29 18:42:26', 0, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36'),
(740, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', 'assets/css/images/ui-icons_444444_256x240.png', 'assets/css/jquery-ui.css?ver=2.1.1', '2018-10-08 12:31:11', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36'),
(741, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', 'assets/css/images/ui-icons_444444_256x240.png', 'assets/css/jquery-ui.css?ver=2.1.1', '2018-10-08 12:38:41', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36'),
(742, 0, 'browser', 'Chrome', '183.87.39.174', 'IN', '', '', '2018-10-08 13:11:10', 0, 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36'),
(743, 0, 'browser', 'Opera', '::1', '0', '?XDEBUG_SESSION_START=netbeans-xdebug', '', '2018-10-09 16:43:42', 0, 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36 OPR/56.0.3051.31 (Edition Campaign 34)'),
(744, 0, 'browser', 'Opera', '::1', '0', '?XDEBUG_SESSION_START=netbeans-xdebug', '', '2018-10-12 09:50:52', 0, 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36 OPR/56.0.3051.36 (Edition Campaign 34)'),
(745, 0, 'browser', 'Chrome', '::1', '0', '', 'http://localhost/prathamesh/', '2018-10-15 15:40:35', 0, 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36'),
(746, 0, 'browser', 'Chrome', '::1', '0', '', 'http://localhost/prathamesh/', '2018-10-15 16:46:44', 0, 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36'),
(747, 0, 'browser', 'Chrome', '::1', '0', '', 'http://localhost/prathamesh/', '2018-10-16 09:29:53', 0, 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36'),
(748, 0, 'browser', 'Chrome', '::1', '0', '', '', '2018-10-17 11:29:39', 0, 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36'),
(749, 0, 'browser', 'Chrome', '::1', '0', '', '', '2018-10-17 16:05:39', 0, 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36'),
(750, 0, 'browser', 'Chrome', '::1', '0', '', '', '2018-10-17 17:31:55', 0, 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36'),
(751, 0, 'browser', 'Chrome', '::1', '0', '', '', '2018-10-19 10:23:34', 0, 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36'),
(752, 0, 'browser', 'Chrome', '::1', '0', '', '', '2018-10-19 12:02:14', 0, 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36'),
(753, 0, 'browser', 'Chrome', '::1', '0', '', '', '2018-10-19 13:43:12', 0, 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36'),
(754, 0, 'browser', 'Chrome', '::1', '0', '', '', '2018-10-19 14:57:44', 0, 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36'),
(755, 0, 'browser', 'Chrome', '::1', '0', '', '', '2018-10-19 15:26:32', 0, 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36'),
(756, 0, 'browser', 'Chrome', '::1', '0', '', '', '2018-10-19 15:55:55', 0, 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36'),
(757, 0, 'browser', 'Chrome', '::1', '0', '', '', '2018-10-19 16:14:28', 0, 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36'),
(758, 0, 'browser', 'Chrome', '::1', '0', '', '', '2018-10-26 12:00:29', 0, 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36'),
(759, 0, 'browser', 'Chrome', '::1', '0', '', '', '2018-10-27 09:42:09', 0, 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36'),
(760, 0, 'browser', 'Chrome', '192.168.0.103', '0', '', '', '2018-10-27 10:03:03', 0, 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.90 Safari/537.36'),
(761, 0, 'browser', 'Chrome', '192.168.0.103', '0', '', '', '2018-10-27 13:32:40', 0, 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36'),
(762, 0, 'browser', 'Chrome', '::1', '0', '', '', '2018-10-29 10:55:05', 0, 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.90 Safari/537.36'),
(763, 0, 'browser', 'Chrome', '::1', '0', '', '', '2018-10-29 11:05:57', 0, 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.90 Safari/537.36'),
(764, 0, 'browser', 'Chrome', '::1', '0', '', '', '2018-10-29 16:53:05', 0, 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36'),
(765, 0, 'browser', 'Chrome', '127.0.0.1', '0', '', '', '2018-10-29 20:17:30', 0, 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36'),
(766, 0, 'browser', 'Chrome', '::1', '0', '', '', '2018-10-29 20:17:30', 0, 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36'),
(767, 0, 'browser', 'Chrome', '::1', '0', '', '', '2018-10-30 12:14:13', 0, 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36'),
(768, 0, 'browser', 'Chrome', '192.168.0.100', '0', '', '', '2018-10-30 13:36:57', 0, 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36'),
(769, 0, 'browser', 'Chrome', '192.168.0.103', '0', '', '', '2018-10-31 10:15:45', 0, 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36'),
(770, 0, 'browser', 'Chrome', '192.168.0.103', '0', '', '', '2018-10-31 11:40:30', 0, 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36'),
(771, 0, 'browser', 'Chrome', '::1', '0', '', '', '2018-11-01 09:38:58', 0, 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36'),
(772, 0, 'browser', 'Chrome', '192.168.0.103', '0', '', '', '2018-11-01 10:00:49', 0, 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36'),
(773, 0, 'browser', 'Chrome', '192.168.0.103', '0', '', '', '2018-11-01 10:23:08', 0, 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36'),
(774, 0, 'browser', 'Chrome', '::1', '0', '', '', '2018-11-03 10:07:03', 0, 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36'),
(775, 0, 'browser', 'Chrome', '::1', '0', '', '', '2018-11-03 10:36:10', 0, 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36'),
(776, 0, 'browser', 'Chrome', '192.168.0.105', '0', '', 'admin/dashboard', '2018-11-06 12:10:35', 0, 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36'),
(777, 0, 'browser', 'Chrome', '192.168.0.105', '0', '', 'admin/dashboard', '2018-11-06 14:51:37', 0, 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36'),
(778, 0, 'browser', 'Chrome', '192.168.0.105', '0', '', 'admin/reservations', '2018-11-06 15:10:35', 0, 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36'),
(779, 0, 'browser', 'Chrome', '192.168.0.105', '0', '', 'admin/reservations', '2018-11-06 15:13:11', 0, 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36'),
(780, 0, 'browser', 'Chrome', '192.168.0.105', '0', '', 'admin/reservations', '2018-11-06 15:15:50', 0, 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36'),
(781, 0, 'browser', 'Chrome', '192.168.0.105', '0', '', '', '2018-11-06 15:19:05', 0, 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36'),
(782, 0, 'browser', 'Chrome', '192.168.0.105', '0', '', 'admin/messages', '2018-11-06 16:02:31', 0, 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36'),
(783, 0, 'browser', 'Chrome', '192.168.0.105', '0', '', 'admin/dashboard', '2018-11-06 16:09:56', 0, 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36'),
(784, 0, 'browser', 'Chrome', '192.168.0.101', '0', '', 'admin/dashboard', '2018-11-09 14:39:42', 0, 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36'),
(785, 0, 'browser', 'Chrome', '192.168.0.103', '0', '', 'admin/messages', '2018-11-12 10:35:01', 0, 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36');

-- --------------------------------------------------------

--
-- Table structure for table `ok_customers_subscription`
--

CREATE TABLE `ok_customers_subscription` (
  `id` int(11) NOT NULL,
  `customer_subscription_id` int(10) NOT NULL,
  `subscription_to` text,
  `start_date` text,
  `total_subscription_amount` text,
  `paid_amount` text,
  `balance` text,
  `payment_deadline` text,
  `reminder_notification` tinyint(1) DEFAULT '0',
  `customer_id` int(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ok_customers_subscription`
--

INSERT INTO `ok_customers_subscription` (`id`, `customer_subscription_id`, `subscription_to`, `start_date`, `total_subscription_amount`, `paid_amount`, `balance`, `payment_deadline`, `reminder_notification`, `customer_id`) VALUES
(74, 67, '67', '15-11-2018', '5000', '4999', '1', '23-11-2018', 0, 44),
(75, 68, '68', '15-11-2018', '4000', '100', '3900', '23-11-2018', NULL, 44),
(49, 6, '6', '14-11-2018', '120', '11', '109', '24-11-2018', 0, 23);

-- --------------------------------------------------------

--
-- Table structure for table `ok_customers_subscription_history`
--

CREATE TABLE `ok_customers_subscription_history` (
  `csh_id` int(10) NOT NULL,
  `subscription_to` int(11) NOT NULL,
  `customer_subscription_id` int(10) DEFAULT NULL,
  `payment` int(11) DEFAULT '0',
  `customer_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ok_customers_subscription_history`
--

INSERT INTO `ok_customers_subscription_history` (`csh_id`, `subscription_to`, `customer_subscription_id`, `payment`, `customer_id`, `created_at`) VALUES
(1, 1, NULL, 100, 8, '2018-11-10 10:50:45'),
(2, 1, NULL, 5, 8, '2018-11-10 10:50:57'),
(3, 2, NULL, 1234, 8, '2018-11-10 10:51:07'),
(4, 2, NULL, 12, 8, '2018-11-10 10:51:14'),
(5, 2, NULL, 0, 8, '2018-11-10 10:51:21'),
(6, 2, NULL, 0, 8, '2018-11-10 10:52:04'),
(7, 2, NULL, 0, 8, '2018-11-10 10:54:09'),
(8, 2, NULL, 0, 8, '2018-11-10 11:03:03'),
(9, 2, NULL, 0, 8, '2018-11-10 11:10:54'),
(10, 2, NULL, 0, 8, '2018-11-10 11:14:58'),
(11, 2, NULL, 0, 8, '2018-11-10 11:15:45'),
(12, 1, NULL, 120, 8, '2018-11-10 11:35:00'),
(13, 5, NULL, 50, 8, '2018-11-10 11:35:38'),
(14, 5, NULL, 0, 8, '2018-11-10 11:39:36'),
(15, 5, NULL, 0, 8, '2018-11-10 11:40:11'),
(16, 5, NULL, 22, 8, '2018-11-10 11:40:19'),
(17, 5, NULL, 0, 8, '2018-11-10 11:41:03'),
(18, 5, NULL, 0, 8, '2018-11-10 11:41:16'),
(19, 1, NULL, 10, 10, '2018-11-10 11:43:10'),
(20, 1, NULL, 12, 10, '2018-11-10 11:54:44'),
(21, 1, NULL, 1, 10, '2018-11-10 11:55:19'),
(22, 1, NULL, 11, 10, '2018-11-10 11:57:01'),
(23, 1, NULL, 5000, 10, '2018-11-10 11:59:53'),
(24, 2, NULL, 11, 8, '2018-11-10 13:57:22'),
(25, 1, NULL, 111, 8, '2018-11-10 13:57:38'),
(26, 2, NULL, 11, 8, '2018-11-10 14:05:56'),
(27, 2, NULL, 500, 8, '2018-11-10 14:07:02'),
(28, 2, NULL, 444, 8, '2018-11-10 14:14:12'),
(29, 2, NULL, 666, 8, '2018-11-10 14:14:49'),
(30, 1, NULL, 10, 10, '2018-11-12 10:44:25'),
(31, 2, NULL, 11, 8, '2018-11-12 10:58:50'),
(32, 1, NULL, 100, 10, '2018-11-12 16:53:29'),
(33, 6, NULL, 100, 16, '2018-11-13 16:16:12'),
(34, 6, NULL, 1, 16, '2018-11-13 16:28:05'),
(35, 6, NULL, 1, 16, '2018-11-13 16:32:18'),
(36, 6, NULL, 20, 16, '2018-11-13 16:33:25'),
(37, 2, NULL, 1000, 15, '2018-11-13 16:36:34'),
(38, 2, NULL, 1, 15, '2018-11-13 16:39:57'),
(39, 2, NULL, 1, 15, '2018-11-13 16:41:20'),
(40, 2, NULL, 1, 15, '2018-11-13 16:52:13'),
(41, 1, NULL, 1, 9, '2018-11-13 17:08:50'),
(42, 1, NULL, 111, 9, '2018-11-13 17:09:46'),
(43, 1, NULL, 2000, 9, '2018-11-13 17:10:16'),
(44, 1, NULL, 1000, 9, '2018-11-13 17:13:56'),
(45, 1, NULL, 100, 9, '2018-11-13 17:15:15'),
(46, 1, NULL, 1000, 9, '2018-11-13 17:17:10'),
(47, 1, NULL, 0, 9, '2018-11-13 17:18:11'),
(48, 1, NULL, 0, 9, '2018-11-13 17:18:21'),
(49, 1, NULL, 499, 9, '2018-11-13 17:18:30'),
(50, 1, NULL, 1, 9, '2018-11-13 17:18:45'),
(51, 1, NULL, 200, 9, '2018-11-13 17:19:26'),
(52, 2, NULL, 150, 17, '2018-11-13 17:23:57'),
(53, 2, NULL, 120, 17, '2018-11-13 17:24:23'),
(54, 2, NULL, 120, 17, '2018-11-13 17:27:34'),
(55, 2, NULL, 1205, 17, '2018-11-13 17:27:56'),
(56, 2, NULL, 0, 17, '2018-11-13 17:28:40'),
(57, 2, NULL, 1000, 17, '2018-11-13 17:29:58'),
(58, 2, NULL, 0, 19, '2018-11-13 17:35:33'),
(59, 2, NULL, 0, 19, '2018-11-13 17:35:49'),
(60, 2, NULL, 1000, 19, '2018-11-13 17:36:32'),
(61, 2, NULL, 100, 19, '2018-11-13 17:36:54'),
(62, 2, NULL, 12345, 19, '2018-11-13 17:48:58'),
(63, 2, NULL, 123, 19, '2018-11-13 17:49:16'),
(64, 2, NULL, 15, 18, '2018-11-14 09:45:25'),
(65, 2, NULL, 200, 21, '2018-11-14 09:47:39'),
(66, 2, NULL, 1000, 21, '2018-11-14 09:48:57'),
(67, 2, NULL, 10, 21, '2018-11-14 09:50:11'),
(68, 6, NULL, 10, 23, '2018-11-14 09:58:49'),
(69, 2, NULL, 120, 21, '2018-11-14 10:01:09'),
(70, 6, NULL, 1, 23, '2018-11-14 10:02:56'),
(71, 6, NULL, 0, 23, '2018-11-14 10:27:31'),
(72, 6, NULL, 5, 23, '2018-11-14 10:32:56'),
(73, 6, NULL, 200, 23, '2018-11-14 10:34:37'),
(74, 2, NULL, 0, 18, '2018-11-14 10:41:11'),
(75, 2, NULL, 0, 18, '2018-11-14 10:52:50'),
(76, 2, NULL, 5, 18, '2018-11-14 10:54:37'),
(77, 2, NULL, 5, 18, '2018-11-14 11:52:15'),
(78, 2, NULL, 1, 18, '2018-11-14 11:52:47'),
(79, 2, NULL, 500, 18, '2018-11-14 11:52:57'),
(80, 2, NULL, 500, 21, '2018-11-14 11:58:39'),
(81, 22, NULL, 0, 25, '2018-11-14 14:56:29'),
(82, 22, NULL, 0, 25, '2018-11-14 14:56:41'),
(83, 22, NULL, 500, 25, '2018-11-14 14:57:23'),
(84, 25, NULL, 10, 26, '2018-11-14 15:08:11'),
(85, 64, NULL, 6000, 28, '2018-11-15 10:40:06'),
(86, 64, NULL, 6000, 28, '2018-11-15 10:40:06'),
(87, 64, NULL, 6000, 29, '2018-11-15 10:41:58'),
(88, 64, NULL, 6000, 30, '2018-11-15 10:48:09'),
(89, 64, NULL, 6000, 31, '2018-11-15 11:13:35'),
(90, 64, NULL, 6000, 32, '2018-11-15 11:16:11'),
(91, 64, NULL, 400, 33, '2018-11-15 11:18:13'),
(92, 64, NULL, 6000, 34, '2018-11-15 11:20:17'),
(93, 64, NULL, 6000, 35, '2018-11-15 11:22:01'),
(94, 64, NULL, 6000, 36, '2018-11-15 11:26:48'),
(95, 64, NULL, 6000, 37, '2018-11-15 11:28:28'),
(96, 64, NULL, 6000, 38, '2018-11-15 11:33:58'),
(97, 64, NULL, 6000, 39, '2018-11-15 11:38:37'),
(98, 64, NULL, 6000, 40, '2018-11-15 11:40:15'),
(99, 64, NULL, 0, 41, '2018-11-15 11:42:06'),
(100, 64, NULL, 2000, 41, '2018-11-15 11:43:30'),
(101, 64, NULL, 500, 43, '2018-11-15 11:54:40'),
(102, 68, NULL, 100, 44, '2018-11-15 12:33:24'),
(103, 67, NULL, 1000, 44, '2018-11-15 12:43:56'),
(104, 67, NULL, 3999, 44, '2018-11-15 12:44:36');

-- --------------------------------------------------------

--
-- Table structure for table `ok_customer_groups`
--

CREATE TABLE `ok_customer_groups` (
  `customer_group_id` int(11) NOT NULL,
  `group_name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `approval` tinyint(1) NOT NULL,
  `location_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ok_customer_groups`
--

INSERT INTO `ok_customer_groups` (`customer_group_id`, `group_name`, `description`, `approval`, `location_id`) VALUES
(165, 'Subscription Specific Users', '', 0, 97),
(161, 'Subscription Specific Users', '', 0, 94);

-- --------------------------------------------------------

--
-- Table structure for table `ok_extensions`
--

CREATE TABLE `ok_extensions` (
  `extension_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `name` varchar(128) NOT NULL,
  `data` text NOT NULL,
  `serialized` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `title` varchar(255) NOT NULL,
  `version` varchar(11) NOT NULL DEFAULT '1.0.0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ok_extensions`
--

INSERT INTO `ok_extensions` (`extension_id`, `type`, `name`, `data`, `serialized`, `status`, `title`, `version`) VALUES
(11, 'module', 'account_module', 'a:1:{s:7:\"layouts\";a:1:{i:0;a:4:{s:9:\"layout_id\";s:2:\"11\";s:8:\"position\";s:4:\"left\";s:8:\"priority\";s:1:\"1\";s:6:\"status\";s:1:\"1\";}}}', 1, 1, 'Account', '1.0.0'),
(12, 'module', 'local_module', 'a:3:{s:20:\"location_search_mode\";s:5:\"multi\";s:12:\"use_location\";s:1:\"0\";s:6:\"status\";s:1:\"1\";}', 1, 1, 'Local', '1.0.0'),
(13, 'module', 'categories_module', 'a:1:{s:7:\"layouts\";a:1:{i:0;a:4:{s:9:\"layout_id\";s:2:\"12\";s:8:\"position\";s:4:\"left\";s:8:\"priority\";s:1:\"1\";s:6:\"status\";s:1:\"1\";}}}', 1, 1, 'Categories', '1.0.0'),
(14, 'module', 'cart_module', 'a:7:{s:16:\"show_cart_images\";s:1:\"1\";s:13:\"cart_images_h\";s:2:\"90\";s:13:\"cart_images_w\";s:3:\"133\";s:10:\"fixed_cart\";s:1:\"1\";s:16:\"fixed_top_offset\";s:3:\"250\";s:19:\"fixed_bottom_offset\";s:3:\"120\";s:11:\"cart_totals\";a:5:{i:1;a:4:{s:4:\"name\";s:10:\"cart_total\";s:5:\"title\";s:9:\"Sub Total\";s:11:\"admin_title\";s:9:\"Sub Total\";s:6:\"status\";s:1:\"1\";}i:2;a:4:{s:4:\"name\";s:6:\"coupon\";s:5:\"title\";s:15:\"Coupon {coupon}\";s:11:\"admin_title\";s:15:\"Coupon {coupon}\";s:6:\"status\";s:1:\"1\";}i:3;a:4:{s:4:\"name\";s:8:\"delivery\";s:5:\"title\";s:8:\"Delivery\";s:11:\"admin_title\";s:8:\"Delivery\";s:6:\"status\";s:1:\"1\";}i:4;a:4:{s:4:\"name\";s:5:\"taxes\";s:5:\"title\";s:9:\"VAT {tax}\";s:11:\"admin_title\";s:9:\"VAT {tax}\";s:6:\"status\";s:1:\"1\";}i:5;a:4:{s:4:\"name\";s:11:\"order_total\";s:5:\"title\";s:11:\"Order Total\";s:11:\"admin_title\";s:11:\"Order Total\";s:6:\"status\";s:1:\"1\";}}}', 1, 1, 'Cart', '1.0.0'),
(15, 'module', 'reservation_module', 'a:1:{s:7:\"layouts\";a:1:{i:0;a:4:{s:9:\"layout_id\";s:2:\"16\";s:8:\"position\";s:4:\"left\";s:8:\"priority\";s:1:\"1\";s:6:\"status\";s:1:\"1\";}}}', 1, 1, 'Reservation', '1.0.0'),
(16, 'module', 'slideshow', 'a:6:{s:11:\"dimension_w\";s:4:\"1349\";s:11:\"dimension_h\";s:3:\"420\";s:6:\"effect\";s:4:\"fade\";s:5:\"speed\";s:3:\"500\";s:7:\"display\";s:1:\"1\";s:6:\"slides\";a:5:{i:0;a:2:{s:9:\"image_src\";s:17:\"data/slider-1.jpg\";s:7:\"caption\";s:0:\"\";}i:1;a:2:{s:9:\"image_src\";s:17:\"data/slider-2.jpg\";s:7:\"caption\";s:159:\"This product is the best ever, just test it, feel it and let it go. if we can not offer you what you like, you will never ever feel free to fight your health. \";}i:2;a:2:{s:9:\"image_src\";s:17:\"data/slider-3.jpg\";s:7:\"caption\";s:0:\"\";}i:3;a:2:{s:9:\"image_src\";s:17:\"data/slider-4.jpg\";s:7:\"caption\";s:0:\"\";}i:4;a:2:{s:9:\"image_src\";s:17:\"data/slider-5.jpg\";s:7:\"caption\";s:0:\"\";}}}', 1, 1, 'Slideshow', '1.0.0'),
(28, 'cart_total', 'cart_total', 'a:5:{s:4:\"name\";s:10:\"cart_total\";s:5:\"title\";s:9:\"Sub Total\";s:11:\"admin_title\";s:9:\"Sub Total\";s:6:\"status\";s:1:\"1\";s:8:\"priority\";i:1;}', 1, 1, 'Sub Total', '1.0.0'),
(18, 'payment', 'cod', 'a:5:{s:5:\"title\";s:16:\"Cash On Delivery\";s:11:\"order_total\";s:6:\"100.00\";s:12:\"order_status\";s:2:\"11\";s:8:\"priority\";s:1:\"1\";s:6:\"status\";s:1:\"1\";}', 1, 1, 'Cash On Delivery', '1.0.0'),
(20, 'module', 'pages_module', 'a:1:{s:7:\"layouts\";a:1:{i:0;a:4:{s:9:\"layout_id\";s:2:\"17\";s:8:\"position\";s:5:\"right\";s:8:\"priority\";s:1:\"1\";s:6:\"status\";s:1:\"1\";}}}', 1, 1, 'Pages', '1.0.0'),
(21, 'payment', 'paypal_express', 'a:11:{s:8:\"priority\";s:0:\"\";s:6:\"status\";s:1:\"0\";s:8:\"api_mode\";s:7:\"sandbox\";s:8:\"api_user\";s:0:\"\";s:8:\"api_pass\";s:0:\"\";s:13:\"api_signature\";s:0:\"\";s:10:\"api_action\";s:4:\"sale\";s:10:\"return_uri\";s:24:\"paypal_express/authorize\";s:10:\"cancel_uri\";s:21:\"paypal_express/cancel\";s:11:\"order_total\";s:4:\"0.00\";s:12:\"order_status\";s:2:\"11\";}', 1, 0, 'PayPal Express', '1.0.0'),
(23, 'theme', 'tastyigniter-orange', 'a:20:{s:14:\"display_crumbs\";s:1:\"1\";s:15:\"hide_admin_link\";s:1:\"0\";s:16:\"ga_tracking_code\";s:0:\"\";s:4:\"font\";a:5:{s:6:\"family\";s:25:\"\"Oxygen\",Arial,sans-serif\";s:6:\"weight\";s:6:\"normal\";s:5:\"style\";s:6:\"normal\";s:4:\"size\";s:2:\"13\";s:5:\"color\";s:7:\"#333333\";}s:9:\"menu_font\";a:5:{s:6:\"family\";s:25:\"\"Oxygen\",Arial,sans-serif\";s:6:\"weight\";s:6:\"normal\";s:5:\"style\";s:6:\"normal\";s:4:\"size\";s:2:\"16\";s:5:\"color\";s:7:\"#ffffff\";}s:4:\"body\";a:6:{s:10:\"background\";s:7:\"#ffffff\";s:5:\"image\";s:0:\"\";s:7:\"display\";s:7:\"contain\";s:10:\"foreground\";s:7:\"#ffffff\";s:5:\"color\";s:7:\"#32465f\";s:6:\"border\";s:7:\"#dddddd\";}s:4:\"link\";a:2:{s:5:\"color\";s:7:\"#337ab7\";s:5:\"hover\";s:7:\"#23527c\";}s:7:\"heading\";a:6:{s:10:\"background\";s:0:\"\";s:5:\"image\";s:0:\"\";s:7:\"display\";s:7:\"contain\";s:5:\"color\";s:7:\"#333333\";s:11:\"under_image\";s:0:\"\";s:12:\"under_height\";s:2:\"50\";}s:6:\"button\";a:6:{s:7:\"default\";a:3:{s:10:\"background\";s:7:\"#e7e7e7\";s:5:\"hover\";s:7:\"#e7e7e7\";s:4:\"font\";s:7:\"#333333\";}s:7:\"primary\";a:3:{s:10:\"background\";s:7:\"#428bca\";s:5:\"hover\";s:7:\"#428bca\";s:4:\"font\";s:7:\"#ffffff\";}s:7:\"success\";a:3:{s:10:\"background\";s:7:\"#5cb85c\";s:5:\"hover\";s:7:\"#5cb85c\";s:4:\"font\";s:7:\"#ffffff\";}s:4:\"info\";a:3:{s:10:\"background\";s:7:\"#5bc0de\";s:5:\"hover\";s:7:\"#5bc0de\";s:4:\"font\";s:7:\"#ffffff\";}s:7:\"warning\";a:3:{s:10:\"background\";s:7:\"#f0ad4e\";s:5:\"hover\";s:7:\"#f0ad4e\";s:4:\"font\";s:7:\"#ffffff\";}s:6:\"danger\";a:3:{s:10:\"background\";s:7:\"#d9534f\";s:6:\"border\";s:7:\"#d9534f\";s:4:\"font\";s:7:\"#ffffff\";}}s:7:\"sidebar\";a:5:{s:10:\"background\";s:7:\"#ffffff\";s:5:\"image\";s:0:\"\";s:7:\"display\";s:7:\"contain\";s:4:\"font\";s:7:\"#484848\";s:6:\"border\";s:7:\"#eeeeee\";}s:6:\"header\";a:5:{s:10:\"background\";s:7:\"#32465f\";s:5:\"image\";s:0:\"\";s:7:\"display\";s:7:\"contain\";s:19:\"dropdown_background\";s:7:\"#32465f\";s:5:\"color\";s:7:\"#ffffff\";}s:10:\"logo_image\";s:0:\"\";s:9:\"logo_text\";s:0:\"\";s:11:\"logo_height\";s:2:\"40\";s:16:\"logo_padding_top\";s:2:\"10\";s:19:\"logo_padding_bottom\";s:2:\"10\";s:7:\"favicon\";s:0:\"\";s:6:\"footer\";a:8:{s:10:\"background\";s:7:\"#edeff1\";s:5:\"image\";s:0:\"\";s:7:\"display\";s:7:\"contain\";s:17:\"bottom_background\";s:7:\"#fbfbfb\";s:12:\"bottom_image\";s:0:\"\";s:14:\"bottom_display\";s:7:\"contain\";s:12:\"footer_color\";s:7:\"#9ba1a7\";s:19:\"bottom_footer_color\";s:7:\"#a3aaaf\";}s:6:\"social\";a:12:{s:8:\"facebook\";s:1:\"#\";s:7:\"twitter\";s:1:\"#\";s:6:\"google\";s:1:\"#\";s:7:\"youtube\";s:1:\"#\";s:5:\"vimeo\";s:0:\"\";s:8:\"linkedin\";s:0:\"\";s:9:\"pinterest\";s:0:\"\";s:6:\"tumblr\";s:0:\"\";s:6:\"flickr\";s:0:\"\";s:9:\"instagram\";s:0:\"\";s:8:\"dribbble\";s:0:\"\";s:10:\"foursquare\";s:0:\"\";}s:13:\"custom_script\";a:3:{s:3:\"css\";s:0:\"\";s:4:\"head\";s:0:\"\";s:6:\"footer\";s:0:\"\";}}', 1, 1, 'Smart-Resto Orange', '2.0'),
(24, 'theme', 'tastyigniter-blue', '', 1, 0, 'TastyIgniter Blue', '1.0.0'),
(25, 'module', 'banners_module', 'a:1:{s:7:\"banners\";a:1:{i:1;a:5:{s:9:\"banner_id\";s:2:\"12\";s:14:\"layout_partial\";s:16:\"20|content_right\";s:5:\"width\";s:2:\"90\";s:6:\"height\";s:3:\"133\";s:6:\"status\";s:1:\"1\";}}}', 1, 1, 'Banners', '1.0.0'),
(26, 'module', 'featured_menus', 'a:7:{s:5:\"title\";s:19:\"Featured Menu Items\";s:5:\"menus\";s:2:\"15\";s:13:\"featured_menu\";a:8:{i:0;s:2:\"11\";i:1;s:2:\"12\";i:2;s:2:\"13\";i:3;s:2:\"18\";i:4;s:2:\"14\";i:5;s:2:\"16\";i:6;s:2:\"17\";i:7;s:2:\"15\";}s:5:\"limit\";s:1:\"8\";s:13:\"items_per_row\";s:1:\"4\";s:11:\"dimension_w\";s:3:\"400\";s:11:\"dimension_h\";s:3:\"300\";}', 1, 1, 'Featured Menu Items', '1.0.0'),
(27, 'module', 'newsletter', '', 0, 1, 'Newsletter', '1.0.0'),
(29, 'cart_total', 'coupon', 'a:5:{s:4:\"name\";s:6:\"coupon\";s:5:\"title\";s:15:\"Coupon {coupon}\";s:11:\"admin_title\";s:15:\"Coupon {coupon}\";s:6:\"status\";s:1:\"1\";s:8:\"priority\";i:2;}', 1, 1, 'Coupon {coupon}', '1.0.0'),
(30, 'cart_total', 'delivery', 'a:5:{s:4:\"name\";s:8:\"delivery\";s:5:\"title\";s:8:\"Delivery\";s:11:\"admin_title\";s:8:\"Delivery\";s:6:\"status\";s:1:\"1\";s:8:\"priority\";i:3;}', 1, 1, 'Delivery', '1.0.0'),
(31, 'cart_total', 'taxes', 'a:5:{s:4:\"name\";s:5:\"taxes\";s:5:\"title\";s:9:\"VAT {tax}\";s:11:\"admin_title\";s:9:\"VAT {tax}\";s:6:\"status\";s:1:\"1\";s:8:\"priority\";i:4;}', 1, 1, 'VAT {tax}', '1.0.0'),
(32, 'cart_total', 'order_total', 'a:5:{s:4:\"name\";s:11:\"order_total\";s:5:\"title\";s:11:\"Order Total\";s:11:\"admin_title\";s:11:\"Order Total\";s:6:\"status\";s:1:\"1\";s:8:\"priority\";i:5;}', 1, 1, 'Order Total', '1.0.0');

-- --------------------------------------------------------

--
-- Table structure for table `ok_items`
--

CREATE TABLE `ok_items` (
  `item_id` int(11) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `item_description` text NOT NULL,
  `item_location` int(11) NOT NULL,
  `item_price` decimal(15,4) NOT NULL,
  `item_photo` varchar(255) NOT NULL,
  `item_category_id` int(11) NOT NULL,
  `stock_qty` int(11) NOT NULL,
  `minimum_qty` int(11) NOT NULL,
  `subtract_stock` tinyint(4) NOT NULL,
  `measuring_unit` varchar(100) NOT NULL,
  `mealtime_id` int(11) NOT NULL,
  `item_status` tinyint(4) NOT NULL,
  `item_priority` int(11) NOT NULL,
  `added_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ok_items`
--

INSERT INTO `ok_items` (`item_id`, `item_name`, `item_description`, `item_location`, `item_price`, `item_photo`, `item_category_id`, `stock_qty`, `minimum_qty`, `subtract_stock`, `measuring_unit`, `mealtime_id`, `item_status`, `item_priority`, `added_date`) VALUES
(18, 'Celery', 'Celery', 0, '12.0000', '', 16, 500, 50, 1, 'Pack', 0, 1, 0, '2018-06-16 11:38:36'),
(19, 'Oil', 'oil', 0, '12.0000', '', 17, 500, 100, 1, 'Milliliters', 0, 1, 0, '2018-06-16 11:39:31'),
(20, 'Lemon', '', 0, '12.0000', '', 7, 5000, 100, 1, 'Grams', 0, 1, 0, '2018-06-16 11:41:05');

-- --------------------------------------------------------

--
-- Table structure for table `ok_items_menu_association`
--

CREATE TABLE `ok_items_menu_association` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `required_quantity` varchar(100) NOT NULL,
  `substract_option` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ok_items_menu_association`
--

INSERT INTO `ok_items_menu_association` (`id`, `item_id`, `menu_id`, `required_quantity`, `substract_option`) VALUES
(57, 6, 22, '10', 1),
(58, 6, 11, '3', 0),
(61, 9, 17, '100', 1),
(66, 8, 17, '100', 1),
(67, 7, 17, '2', 1),
(86, 21, 24, '100', 1),
(87, 22, 24, '100', 1),
(88, 24, 23, '50', 1),
(89, 23, 11, '0', 0),
(90, 5, 21, '100', 1),
(91, 25, 11, '100', 0),
(95, 4, 21, '10', 1),
(96, 4, 17, '20', 1),
(97, 4, 29, '50', 1),
(102, 2, 11, '10', 0),
(103, 2, 24, '100', 1),
(104, 2, 29, '100', 1),
(105, 2, 12, '200', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ok_items_stock_update`
--

CREATE TABLE `ok_items_stock_update` (
  `item_update_id` int(10) NOT NULL,
  `item_id` int(11) DEFAULT NULL,
  `item_qty` int(10) DEFAULT NULL,
  `item_price` text,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ok_items_stock_update`
--

INSERT INTO `ok_items_stock_update` (`item_update_id`, `item_id`, `item_qty`, `item_price`, `updated_at`) VALUES
(4, 2, 200, '12', '2018-06-18 20:20:53'),
(5, 2, 50, '10', '2018-06-18 20:20:53'),
(6, 5, 4000, '12', '2018-06-18 20:23:40'),
(7, 8, 2000, '12', '2018-06-18 20:24:01'),
(8, 8, 3000, '12', '2018-06-18 20:24:01'),
(9, 8, 5000, '4', '2018-06-18 20:24:01'),
(10, 2, 100, '12', '2018-06-19 00:11:20'),
(11, 2, 100, '12', '2018-06-19 09:45:11'),
(12, 2, 100, '12', '2018-06-19 10:57:04'),
(13, 2, 200, '12', '2018-06-19 11:01:51'),
(14, 2, 300, '10', '2018-06-19 11:06:00'),
(15, 2, 200, '', '2018-06-19 11:26:42'),
(16, 2, 200, '15', '2018-06-19 11:42:22'),
(17, 2, 200, '5', '2018-06-19 12:02:04'),
(18, 2, 200, '12', '2018-06-19 12:18:58'),
(19, 2, 200, '', '2018-06-19 12:34:19'),
(20, 2, 300, '12', '2018-06-19 12:37:13'),
(21, 2, 500, '12', '2018-06-19 13:32:28'),
(22, 2, 600, '12', '2018-06-19 13:45:01'),
(23, 2, 200, '12', '2018-06-19 13:45:10'),
(24, 21, 400, '10', '2018-06-19 13:45:19'),
(25, 2, 300, '5', '2018-06-19 13:53:19'),
(26, 2, 300, '5', '2018-06-19 14:22:29'),
(27, 6, 6, '5', '2018-06-19 14:23:28'),
(28, 21, 50, '5', '2018-06-19 14:23:42'),
(29, 8, 50, '67', '2018-06-19 14:24:09'),
(30, 2, 300, '12', '2018-06-19 15:26:07'),
(31, 2, 300, '12', '2018-06-19 15:43:28'),
(32, 2, 200, '11', '2018-06-19 15:51:49'),
(33, 2, 250, '12', '2018-06-19 15:56:18'),
(34, 2, 400, '12', '2018-06-19 16:04:33'),
(35, 2, 0, '', '2018-06-19 16:16:22'),
(36, 2, 1200, '12', '2018-06-19 17:16:50'),
(37, 2, 1200, '23', '2018-06-19 17:16:50'),
(38, 2, 1200, '23', '2018-06-19 17:16:50'),
(39, 2, 300, '12', '2018-06-19 17:16:50'),
(40, 25, 7000, '12', '2018-07-03 20:54:53'),
(41, 2, 450, '10', '2018-07-03 20:56:02'),
(42, 2, 5000, '200', '2018-07-11 12:50:48'),
(43, 2, 0, '', '2018-07-11 12:50:48'),
(44, 2, 2000, '200', '2018-07-27 22:36:05');

-- --------------------------------------------------------

--
-- Table structure for table `ok_item_categories`
--

CREATE TABLE `ok_item_categories` (
  `item_category_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `parent_id` int(11) NOT NULL,
  `priority` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ok_item_categories`
--

INSERT INTO `ok_item_categories` (`item_category_id`, `name`, `description`, `parent_id`, `priority`, `image`, `status`) VALUES
(6, 'Grains', 'Grains', 0, 1, '', 1),
(7, 'Fruits', 'Fruits', 0, 1, '', 1),
(8, 'Galbulus', 'galbilus', 0, 1, 'data/Menu-Green-Tea.jpg', 1),
(9, 'Spice Blend', 'kakat is just kakat', 0, 1, 'data/Menu-Masala-Dosa.jpg', 1),
(10, 'Inflorescence', 'this is jut cristo', 0, 1, 'data/images_(2).jpg', 1),
(11, 'Aerial Part', '', 0, 1, '', 1),
(12, 'Underground part', '', 0, 1, '', 1),
(13, 'Bulb', '', 12, 1, '', 1),
(14, 'Rhizome', '', 12, 1, '', 1),
(15, 'Stem', '', 11, 1, '', 1),
(16, 'Leaves', '', 0, 1, '', 1),
(17, 'Liquid', '', 0, 1, '', 1),
(18, 'Vegetables', 'wqwer', 0, 1, 'data/veg.jpg', 1),
(19, 'indian', '', 0, 1, '', 0),
(20, 'veg', '', 0, 1, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ok_languages`
--

CREATE TABLE `ok_languages` (
  `language_id` int(11) NOT NULL,
  `code` varchar(7) NOT NULL,
  `name` varchar(32) NOT NULL,
  `image` varchar(32) NOT NULL,
  `idiom` varchar(32) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `can_delete` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ok_languages`
--

INSERT INTO `ok_languages` (`language_id`, `code`, `name`, `image`, `idiom`, `status`, `can_delete`) VALUES
(11, 'en', 'English', 'data/flags/gb.png', 'english', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ok_layouts`
--

CREATE TABLE `ok_layouts` (
  `layout_id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ok_layouts`
--

INSERT INTO `ok_layouts` (`layout_id`, `name`) VALUES
(11, 'Home'),
(12, 'Menus'),
(13, 'Checkout'),
(15, 'Account'),
(16, 'Reservation'),
(17, 'Page'),
(18, 'Local'),
(19, 'Locations'),
(20, 'BG\'s');

-- --------------------------------------------------------

--
-- Table structure for table `ok_layout_modules`
--

CREATE TABLE `ok_layout_modules` (
  `layout_module_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  `module_code` varchar(128) NOT NULL,
  `partial` varchar(32) NOT NULL,
  `priority` int(11) NOT NULL,
  `options` text NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ok_layout_modules`
--

INSERT INTO `ok_layout_modules` (`layout_module_id`, `layout_id`, `module_code`, `partial`, `priority`, `options`, `status`) VALUES
(77, 17, 'slideshow', 'content_top', 1, 'a:4:{s:5:\"title\";s:0:\"\";s:5:\"fixed\";s:1:\"0\";s:16:\"fixed_top_offset\";s:0:\"\";s:19:\"fixed_bottom_offset\";s:0:\"\";}', 1),
(67, 15, 'account_module', 'content_left', 1, '', 1),
(68, 12, 'local_module', 'content_top', 1, '', 1),
(69, 12, 'categories_module', 'content_left', 1, '', 1),
(70, 12, 'cart_module', 'content_right', 1, '', 1),
(71, 13, 'local_module', 'content_top', 1, '', 1),
(72, 13, 'cart_module', 'content_right', 1, '', 1),
(73, 16, 'reservation_module', 'content_top', 1, '', 1),
(74, 18, 'local_module', 'content_top', 1, '', 1),
(75, 18, 'categories_module', 'content_left', 1, '', 1),
(76, 18, 'cart_module', 'content_right', 1, '', 1),
(78, 17, 'pages_module', 'content_right', 1, 'a:4:{s:5:\"title\";s:0:\"\";s:5:\"fixed\";s:1:\"0\";s:16:\"fixed_top_offset\";s:0:\"\";s:19:\"fixed_bottom_offset\";s:0:\"\";}', 1),
(79, 20, 'account_module', 'content_top', 1, 'a:4:{s:5:\"title\";s:0:\"\";s:5:\"fixed\";s:1:\"0\";s:16:\"fixed_top_offset\";s:0:\"\";s:19:\"fixed_bottom_offset\";s:0:\"\";}', 1),
(80, 20, 'categories_module', 'content_top', 2, 'a:4:{s:5:\"title\";s:0:\"\";s:5:\"fixed\";s:1:\"0\";s:16:\"fixed_top_offset\";s:0:\"\";s:19:\"fixed_bottom_offset\";s:0:\"\";}', 1),
(81, 20, 'cart_module', 'content_top', 3, 'a:4:{s:5:\"title\";s:0:\"\";s:5:\"fixed\";s:1:\"0\";s:16:\"fixed_top_offset\";s:0:\"\";s:19:\"fixed_bottom_offset\";s:0:\"\";}', 1),
(82, 20, 'reservation_module', 'content_top', 4, 'a:4:{s:5:\"title\";s:0:\"\";s:5:\"fixed\";s:1:\"0\";s:16:\"fixed_top_offset\";s:0:\"\";s:19:\"fixed_bottom_offset\";s:0:\"\";}', 1),
(83, 20, 'pages_module', 'content_left', 1, 'a:4:{s:5:\"title\";s:0:\"\";s:5:\"fixed\";s:1:\"0\";s:16:\"fixed_top_offset\";s:0:\"\";s:19:\"fixed_bottom_offset\";s:0:\"\";}', 1),
(84, 20, 'featured_menus', 'content_left', 2, 'a:4:{s:5:\"title\";s:0:\"\";s:5:\"fixed\";s:1:\"0\";s:16:\"fixed_top_offset\";s:0:\"\";s:19:\"fixed_bottom_offset\";s:0:\"\";}', 1),
(85, 20, 'slideshow', 'content_footer', 1, 'a:4:{s:5:\"title\";s:0:\"\";s:5:\"fixed\";s:1:\"0\";s:16:\"fixed_top_offset\";s:0:\"\";s:19:\"fixed_bottom_offset\";s:0:\"\";}', 1),
(86, 20, 'slideshow', 'content_footer', 2, 'a:4:{s:5:\"title\";s:5:\"tasty\";s:5:\"fixed\";s:1:\"0\";s:16:\"fixed_top_offset\";s:0:\"\";s:19:\"fixed_bottom_offset\";s:0:\"\";}', 1),
(87, 20, 'newsletter', 'content_bottom', 1, 'a:4:{s:5:\"title\";s:4:\"BG\'s\";s:5:\"fixed\";s:1:\"1\";s:16:\"fixed_top_offset\";s:2:\"95\";s:19:\"fixed_bottom_offset\";s:2:\"80\";}', 1),
(88, 20, 'banners_module', 'content_right', 1, 'a:4:{s:5:\"title\";s:0:\"\";s:5:\"fixed\";s:1:\"0\";s:16:\"fixed_top_offset\";s:0:\"\";s:19:\"fixed_bottom_offset\";s:0:\"\";}', 1),
(120, 11, 'featured_menus', 'content_bottom', 1, 'a:4:{s:5:\"title\";s:0:\"\";s:5:\"fixed\";s:1:\"0\";s:16:\"fixed_top_offset\";s:0:\"\";s:19:\"fixed_bottom_offset\";s:0:\"\";}', 1),
(118, 11, 'slideshow', 'content_top', 1, 'a:4:{s:5:\"title\";s:0:\"\";s:5:\"fixed\";s:1:\"0\";s:16:\"fixed_top_offset\";s:0:\"\";s:19:\"fixed_bottom_offset\";s:0:\"\";}', 1),
(119, 11, 'local_module', 'content_top', 2, 'a:4:{s:5:\"title\";s:0:\"\";s:5:\"fixed\";s:1:\"0\";s:16:\"fixed_top_offset\";s:0:\"\";s:19:\"fixed_bottom_offset\";s:0:\"\";}', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ok_layout_routes`
--

CREATE TABLE `ok_layout_routes` (
  `layout_route_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  `uri_route` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ok_layout_routes`
--

INSERT INTO `ok_layout_routes` (`layout_route_id`, `layout_id`, `uri_route`) VALUES
(19, 13, 'checkout'),
(41, 16, 'reservation'),
(44, 12, 'menus'),
(118, 11, 'home'),
(70, 18, 'local'),
(71, 19, 'locations'),
(107, 17, 'pages'),
(100, 15, 'account/account'),
(101, 15, 'account/details'),
(102, 15, 'account/address'),
(103, 15, 'account/orders'),
(104, 15, 'account/reservations'),
(105, 15, 'account/inbox'),
(106, 15, 'account/reviews');

-- --------------------------------------------------------

--
-- Table structure for table `ok_locations`
--

CREATE TABLE `ok_locations` (
  `location_id` int(11) NOT NULL,
  `location_name` varchar(32) NOT NULL,
  `location_email` varchar(96) NOT NULL,
  `location_manager` varchar(96) NOT NULL,
  `description` text NOT NULL,
  `location_address_1` varchar(128) NOT NULL,
  `location_address_2` varchar(128) NOT NULL,
  `location_city` varchar(128) NOT NULL,
  `location_state` varchar(128) NOT NULL,
  `location_postcode` varchar(10) NOT NULL,
  `location_country_id` int(11) NOT NULL,
  `location_telephone` varchar(32) NOT NULL,
  `location_lat` float(10,6) NOT NULL,
  `location_lng` float(10,6) NOT NULL,
  `location_radius` int(11) NOT NULL,
  `offer_delivery` tinyint(1) NOT NULL,
  `out_range` tinyint(1) NOT NULL DEFAULT '0',
  `offer_collection` tinyint(1) NOT NULL,
  `delivery_time` int(11) NOT NULL,
  `last_order_time` int(11) NOT NULL,
  `reservation_time_interval` int(11) NOT NULL,
  `reservation_stay_time` int(11) NOT NULL,
  `location_status` tinyint(1) NOT NULL,
  `collection_time` int(11) NOT NULL,
  `options` text NOT NULL,
  `location_image` varchar(255) NOT NULL,
  `buffet` tinyint(1) NOT NULL DEFAULT '0',
  `subscription` tinyint(1) NOT NULL DEFAULT '0',
  `biometric` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ok_locations`
--

INSERT INTO `ok_locations` (`location_id`, `location_name`, `location_email`, `location_manager`, `description`, `location_address_1`, `location_address_2`, `location_city`, `location_state`, `location_postcode`, `location_country_id`, `location_telephone`, `location_lat`, `location_lng`, `location_radius`, `offer_delivery`, `out_range`, `offer_collection`, `delivery_time`, `last_order_time`, `reservation_time_interval`, `reservation_stay_time`, `location_status`, `collection_time`, `options`, `location_image`, `buffet`, `subscription`, `biometric`) VALUES
(97, 'abhishek pure veg', 'safari.mupe@gmail.com', '', '', '', '', '', '', '', 99, '', 0.000000, 0.000000, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 'a:5:{s:12:\"auto_lat_lng\";s:1:\"1\";s:13:\"opening_hours\";a:10:{s:12:\"opening_type\";s:4:\"24_7\";s:10:\"daily_days\";a:7:{i:0;s:1:\"0\";i:1;s:1:\"1\";i:2;s:1:\"2\";i:3;s:1:\"3\";i:4;s:1:\"4\";i:5;s:1:\"5\";i:6;s:1:\"6\";}s:11:\"daily_hours\";a:2:{s:4:\"open\";s:8:\"12:00 AM\";s:5:\"close\";s:8:\"11:59 PM\";}s:14:\"flexible_hours\";a:7:{i:0;a:4:{s:3:\"day\";s:1:\"0\";s:4:\"open\";s:8:\"12:00 AM\";s:5:\"close\";s:8:\"11:59 PM\";s:6:\"status\";s:1:\"1\";}i:1;a:4:{s:3:\"day\";s:1:\"1\";s:4:\"open\";s:8:\"12:00 AM\";s:5:\"close\";s:8:\"11:59 PM\";s:6:\"status\";s:1:\"1\";}i:2;a:4:{s:3:\"day\";s:1:\"2\";s:4:\"open\";s:8:\"12:00 AM\";s:5:\"close\";s:8:\"11:59 PM\";s:6:\"status\";s:1:\"1\";}i:3;a:4:{s:3:\"day\";s:1:\"3\";s:4:\"open\";s:8:\"12:00 AM\";s:5:\"close\";s:8:\"11:59 PM\";s:6:\"status\";s:1:\"1\";}i:4;a:4:{s:3:\"day\";s:1:\"4\";s:4:\"open\";s:8:\"12:00 AM\";s:5:\"close\";s:8:\"11:59 PM\";s:6:\"status\";s:1:\"1\";}i:5;a:4:{s:3:\"day\";s:1:\"5\";s:4:\"open\";s:8:\"12:00 AM\";s:5:\"close\";s:8:\"11:59 PM\";s:6:\"status\";s:1:\"1\";}i:6;a:4:{s:3:\"day\";s:1:\"6\";s:4:\"open\";s:8:\"12:00 AM\";s:5:\"close\";s:8:\"11:59 PM\";s:6:\"status\";s:1:\"1\";}}s:13:\"delivery_type\";s:1:\"0\";s:13:\"delivery_days\";a:7:{i:0;s:1:\"0\";i:1;s:1:\"1\";i:2;s:1:\"2\";i:3;s:1:\"3\";i:4;s:1:\"4\";i:5;s:1:\"5\";i:6;s:1:\"6\";}s:14:\"delivery_hours\";a:2:{s:4:\"open\";s:8:\"12:00 AM\";s:5:\"close\";s:8:\"11:59 PM\";}s:15:\"collection_type\";s:1:\"0\";s:15:\"collection_days\";a:7:{i:0;s:1:\"0\";i:1;s:1:\"1\";i:2;s:1:\"2\";i:3;s:1:\"3\";i:4;s:1:\"4\";i:5;s:1:\"5\";i:6;s:1:\"6\";}s:16:\"collection_hours\";a:2:{s:4:\"open\";s:8:\"12:00 AM\";s:5:\"close\";s:8:\"11:59 PM\";}}s:13:\"future_orders\";s:1:\"1\";s:17:\"future_order_days\";a:2:{s:8:\"delivery\";s:1:\"5\";s:10:\"collection\";s:1:\"5\";}s:7:\"gallery\";a:2:{s:5:\"title\";s:0:\"\";s:11:\"description\";s:0:\"\";}}', '', 0, 1, '0'),
(98, 'abhishek pure veg', 'safari.mupe@gmail.com', '', '', '', '', '', '', '', 99, '', 0.000000, 0.000000, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 'a:5:{s:12:\"auto_lat_lng\";s:1:\"1\";s:13:\"opening_hours\";a:10:{s:12:\"opening_type\";s:4:\"24_7\";s:10:\"daily_days\";a:7:{i:0;s:1:\"0\";i:1;s:1:\"1\";i:2;s:1:\"2\";i:3;s:1:\"3\";i:4;s:1:\"4\";i:5;s:1:\"5\";i:6;s:1:\"6\";}s:11:\"daily_hours\";a:2:{s:4:\"open\";s:8:\"12:00 AM\";s:5:\"close\";s:8:\"11:59 PM\";}s:14:\"flexible_hours\";a:7:{i:0;a:4:{s:3:\"day\";s:1:\"0\";s:4:\"open\";s:8:\"12:00 AM\";s:5:\"close\";s:8:\"11:59 PM\";s:6:\"status\";s:1:\"1\";}i:1;a:4:{s:3:\"day\";s:1:\"1\";s:4:\"open\";s:8:\"12:00 AM\";s:5:\"close\";s:8:\"11:59 PM\";s:6:\"status\";s:1:\"1\";}i:2;a:4:{s:3:\"day\";s:1:\"2\";s:4:\"open\";s:8:\"12:00 AM\";s:5:\"close\";s:8:\"11:59 PM\";s:6:\"status\";s:1:\"1\";}i:3;a:4:{s:3:\"day\";s:1:\"3\";s:4:\"open\";s:8:\"12:00 AM\";s:5:\"close\";s:8:\"11:59 PM\";s:6:\"status\";s:1:\"1\";}i:4;a:4:{s:3:\"day\";s:1:\"4\";s:4:\"open\";s:8:\"12:00 AM\";s:5:\"close\";s:8:\"11:59 PM\";s:6:\"status\";s:1:\"1\";}i:5;a:4:{s:3:\"day\";s:1:\"5\";s:4:\"open\";s:8:\"12:00 AM\";s:5:\"close\";s:8:\"11:59 PM\";s:6:\"status\";s:1:\"1\";}i:6;a:4:{s:3:\"day\";s:1:\"6\";s:4:\"open\";s:8:\"12:00 AM\";s:5:\"close\";s:8:\"11:59 PM\";s:6:\"status\";s:1:\"1\";}}s:13:\"delivery_type\";s:1:\"0\";s:13:\"delivery_days\";a:7:{i:0;s:1:\"0\";i:1;s:1:\"1\";i:2;s:1:\"2\";i:3;s:1:\"3\";i:4;s:1:\"4\";i:5;s:1:\"5\";i:6;s:1:\"6\";}s:14:\"delivery_hours\";a:2:{s:4:\"open\";s:8:\"12:00 AM\";s:5:\"close\";s:8:\"11:59 PM\";}s:15:\"collection_type\";s:1:\"0\";s:15:\"collection_days\";a:7:{i:0;s:1:\"0\";i:1;s:1:\"1\";i:2;s:1:\"2\";i:3;s:1:\"3\";i:4;s:1:\"4\";i:5;s:1:\"5\";i:6;s:1:\"6\";}s:16:\"collection_hours\";a:2:{s:4:\"open\";s:8:\"12:00 AM\";s:5:\"close\";s:8:\"11:59 PM\";}}s:13:\"future_orders\";s:1:\"1\";s:17:\"future_order_days\";a:2:{s:8:\"delivery\";s:1:\"5\";s:10:\"collection\";s:1:\"5\";}s:7:\"gallery\";a:2:{s:5:\"title\";s:0:\"\";s:11:\"description\";s:0:\"\";}}', '', 0, 0, '1');

-- --------------------------------------------------------

--
-- Table structure for table `ok_location_buffet`
--

CREATE TABLE `ok_location_buffet` (
  `buffet_id` int(10) NOT NULL,
  `fixed_menu` tinyint(1) DEFAULT NULL,
  `repetition_mode` tinyint(1) DEFAULT NULL,
  `buffet_frequency` text NOT NULL,
  `buffet_options` text,
  `location_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ok_location_subscription`
--

CREATE TABLE `ok_location_subscription` (
  `location_subscription_id` int(10) NOT NULL,
  `subscription_name` text,
  `subscription_value` text,
  `meals_per_day` text,
  `subscription_action` tinyint(1) DEFAULT '0',
  `extra_days` text,
  `cycle` text,
  `subscription_detail` text,
  `location_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ok_location_subscription`
--

INSERT INTO `ok_location_subscription` (`location_subscription_id`, `subscription_name`, `subscription_value`, `meals_per_day`, `subscription_action`, `extra_days`, `cycle`, `subscription_detail`, `location_id`) VALUES
(68, 'demo', '4000', '40', 0, '', 'Weekly', '', 97),
(67, 'veg', '5000', '30', 0, '', 'Weekly', '', 97),
(64, 'Breakfast', '5000', '1', 0, '', 'Weekly', '', 94),
(65, 'Sample', '', '1', 0, '', 'Weekly', 'xyz', 94),
(63, 'Non-Veg', '2000', '2', 0, '', 'Monthly', 'rdrytu', 94),
(66, 'xyz', '', '', 0, '', 'Weekly', '', 94),
(62, 'veg', '1000', '2', 0, '', 'Monthly', 'xyz', 94);

-- --------------------------------------------------------

--
-- Table structure for table `ok_location_tables`
--

CREATE TABLE `ok_location_tables` (
  `location_id` int(11) NOT NULL,
  `table_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ok_location_tables`
--

INSERT INTO `ok_location_tables` (`location_id`, `table_id`) VALUES
(0, 27),
(0, 28),
(0, 31),
(21, 26),
(94, 30);

-- --------------------------------------------------------

--
-- Table structure for table `ok_mail_templates`
--

CREATE TABLE `ok_mail_templates` (
  `template_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `language_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ok_mail_templates`
--

INSERT INTO `ok_mail_templates` (`template_id`, `name`, `language_id`, `date_added`, `date_updated`, `status`) VALUES
(11, 'Default', 1, '2014-04-16 01:49:52', '2014-06-16 14:44:13', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ok_mail_templates_data`
--

CREATE TABLE `ok_mail_templates_data` (
  `template_data_id` int(11) NOT NULL,
  `template_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `subject` varchar(128) NOT NULL,
  `body` text NOT NULL,
  `date_added` datetime NOT NULL,
  `date_updated` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ok_mail_templates_data`
--

INSERT INTO `ok_mail_templates_data` (`template_data_id`, `template_id`, `code`, `subject`, `body`, `date_added`, `date_updated`) VALUES
(11, 11, 'registration', 'Welcome to {site_name}', '<div id=\"mailsub\" class=\"notification\" align=\"center\"><table style=\"min-width: 320px;\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"><tbody><tr><td align=\"center\" bgcolor=\"#eff3f8\"><!--[if gte mso 10]><table width=\"680\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\"><tr><td><![endif]--><table class=\"table_width_100\" style=\"max-width: 680px; min-width: 300px;\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"><tbody><tr><td><!-- padding --><div style=\"height: 80px; line-height: 80px; font-size: 10px;\"></div></td></tr><!--header --><tr><td align=\"center\" bgcolor=\"#ffffff\"><!-- padding --><div style=\"height: 30px; line-height: 30px; font-size: 10px;\"></div><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"90%\"><tbody><tr><td align=\"left\"><!-- Item --><div class=\"mob_center_bl\" style=\"float: left; display: inline-block; width: 115px;\"><table class=\"mob_center\" style=\"border-collapse: collapse;\" align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"115\"><tbody><tr><td align=\"left\" valign=\"middle\"><!-- padding --><div style=\"height: 20px; line-height: 20px; font-size: 10px;\"></div><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"115\"><tbody><tr><td class=\"mob_center\" align=\"left\" valign=\"top\"><a href=\"{site_url}\" target=\"_blank\" style=\"color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 13px;\"><font face=\"Arial, Helvetica, sans-seri; font-size: 13px;\" color=\"#596167\" size=\"3\"><img src=\"{site_logo}\" alt=\"{site_name}\" style=\"display: block;\" height=\"19\" border=\"0\" width=\"115\"></font></a></td></tr></tbody></table></td></tr></tbody></table></div><!-- Item END--><!--[if gte mso 10]></td><td align=\"right\"><![endif]--><!-- Item --><div class=\"mob_center_bl\" style=\"float: right; display: inline-block; width: 88px;\"><table style=\"border-collapse: collapse;\" align=\"right\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"88\"><tbody><tr><td align=\"right\" valign=\"middle\"><!-- padding --><div style=\"height: 20px; line-height: 20px; font-size: 10px;\"></div><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"><tbody><tr><td align=\"right\"><!--social --><div class=\"mob_center_bl\" style=\"width: 88px;\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\"><tbody><tr><td style=\"line-height: 19px;\" align=\"center\" width=\"30\"><a href=\"#\" target=\"_blank\" style=\"color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\"><font face=\"Arial, Helvetica, sans-serif\" color=\"#596167\" size=\"2\"></font></a></td><td style=\"line-height: 19px;\" align=\"center\" width=\"39\"><a href=\"#\" target=\"_blank\" style=\"color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\"><font face=\"Arial, Helvetica, sans-serif\" color=\"#596167\" size=\"2\"></font></a></td><td style=\"line-height: 19px;\" align=\"right\" width=\"29\"><a href=\"#\" target=\"_blank\" style=\"color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\"><font face=\"Arial, Helvetica, sans-serif\" color=\"#596167\" size=\"2\"></font></a></td></tr></tbody></table></div><!--social END--></td></tr></tbody></table></td></tr></tbody></table></div><!-- Item END--></td></tr></tbody></table><!-- padding --><div style=\"height: 50px; line-height: 50px; font-size: 10px;\"></div></td></tr><!--header END--><!--content 1 --><tr><td align=\"center\" bgcolor=\"#fbfcfd\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"90%\"><tbody><tr><td align=\"left\"><!-- padding --><div style=\"height: 40px; line-height: 40px; font-size: 10px;\"></div><div style=\"line-height: 44px;\"><font style=\"font-size: 34px;\" face=\"Arial, Helvetica, sans-serif\" color=\"#57697e\" size=\"5\"><span style=\"font-family: Arial, Helvetica, sans-serif; font-size: 34px; color: #57697e;\">Welcome!</span></font></div><!-- padding --><div style=\"height: 30px; line-height: 30px; font-size: 10px;\"></div></td></tr><tr><td align=\"left\"><div style=\"line-height: 24px;\"><font style=\"font-size: 15px;\" face=\"Arial, Helvetica, sans-serif\" color=\"#57697e\" size=\"4\"><span style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;\">Hello {first_name} {last_name},</span></font></div><!-- padding --><div style=\"height: 20px; line-height: 20px; font-size: 10px;\"></div></td></tr><tr><td align=\"left\"><div style=\"line-height: 24px;\"><font style=\"font-size: 15px;\" face=\"Arial, Helvetica, sans-serif\" color=\"#57697e\" size=\"4\"><span style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;\">Thank you for registrating with {site_name}. Your account has now been created and you can log in using your email address and password by visiting our website or at the following URL: <a href=\"{account_login_link}\">Click Here</a></span></font></div><!-- padding --><div style=\"height: 20px; line-height: 20px; font-size: 10px;\"></div></td></tr><tr><td align=\"left\"><div style=\"line-height: 24px;\"><font style=\"font-size: 15px;\" face=\"Arial, Helvetica, sans-serif\" color=\"#57697e\" size=\"4\"><span style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;\">Thank you for using.<br> {signature}</span></font></div><!-- padding --><div style=\"height: 40px; line-height: 40px; font-size: 10px;\"></div></td></tr></tbody></table></td></tr><!--content 1 END--><!--footer --><tr><td class=\"iage_footer\" align=\"center\" bgcolor=\"#ffffff\"><!-- padding --><div style=\"height: 20px; line-height: 20px; font-size: 10px;\"></div><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"><tbody><tr><td align=\"center\"><font style=\"font-size: 13px;\" face=\"Arial, Helvetica, sans-serif\" color=\"#96a5b5\" size=\"3\"><span style=\"font-family: Arial, Helvetica, sans-serif; font-size: 13px; color: #96a5b5;\">2015 © {site_name} All Rights Reserved.</span></font></td></tr></tbody></table><!-- padding --><div style=\"height: 20px; line-height: 20px; font-size: 10px;\"></div></td></tr><!--footer END--><tr><td><!-- padding --><div style=\"height: 80px; line-height: 80px; font-size: 10px;\"></div></td></tr></tbody></table><!--[if gte mso 10]></td></tr></table><![endif]--></td></tr></tbody></table></div>', '2014-04-16 00:56:00', '2014-05-15 15:24:56'),
(12, 11, 'password_reset', 'Password reset at {site_name}', '<div id=\"mailsub\" class=\"notification\" align=\"center\"><table style=\"min-width: 320px;\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"><tbody><tr><td align=\"center\" bgcolor=\"#eff3f8\"><!--[if gte mso 10]><table width=\"680\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\"><tr><td><![endif]--><table class=\"table_width_100\" style=\"max-width: 680px; min-width: 300px;\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"><tbody><tr><td><!-- padding --><div style=\"height: 80px; line-height: 80px; font-size: 10px;\"></div></td></tr><!--header --><tr><td align=\"center\" bgcolor=\"#ffffff\"><!-- padding --><div style=\"height: 30px; line-height: 30px; font-size: 10px;\"></div><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"90%\"><tbody><tr><td align=\"left\"><!-- Item --><div class=\"mob_center_bl\" style=\"float: left; display: inline-block; width: 115px;\"><table class=\"mob_center\" style=\"border-collapse: collapse;\" align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"115\"><tbody><tr><td align=\"left\" valign=\"middle\"><!-- padding --><div style=\"height: 20px; line-height: 20px; font-size: 10px;\"></div><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"115\"><tbody><tr><td class=\"mob_center\" align=\"left\" valign=\"top\"><a href=\"{site_url}\" target=\"_blank\" style=\"color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 13px;\"><font face=\"Arial, Helvetica, sans-seri; font-size: 13px;\" color=\"#596167\" size=\"3\"><img src=\"{site_logo}\" alt=\"{site_name}\" style=\"display: block;\" height=\"19\" border=\"0\" width=\"115\"></font></a></td></tr></tbody></table></td></tr></tbody></table></div><!-- Item END--><!--[if gte mso 10]></td><td align=\"right\"><![endif]--><!-- Item --><div class=\"mob_center_bl\" style=\"float: right; display: inline-block; width: 88px;\"><table style=\"border-collapse: collapse;\" align=\"right\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"88\"><tbody><tr><td align=\"right\" valign=\"middle\"><!-- padding --><div style=\"height: 20px; line-height: 20px; font-size: 10px;\"></div><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"><tbody><tr><td align=\"right\"><!--social --><div class=\"mob_center_bl\" style=\"width: 88px;\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\"><tbody><tr><td style=\"line-height: 19px;\" align=\"center\" width=\"30\"><a href=\"#\" target=\"_blank\" style=\"color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\"><font face=\"Arial, Helvetica, sans-serif\" color=\"#596167\" size=\"2\"></font></a></td><td style=\"line-height: 19px;\" align=\"center\" width=\"39\"><a href=\"#\" target=\"_blank\" style=\"color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\"><font face=\"Arial, Helvetica, sans-serif\" color=\"#596167\" size=\"2\"></font></a></td><td style=\"line-height: 19px;\" align=\"right\" width=\"29\"><a href=\"#\" target=\"_blank\" style=\"color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\"><font face=\"Arial, Helvetica, sans-serif\" color=\"#596167\" size=\"2\"></font></a></td></tr></tbody></table></div><!--social END--></td></tr></tbody></table></td></tr></tbody></table></div><!-- Item END--></td></tr></tbody></table><!-- padding --><div style=\"height: 50px; line-height: 50px; font-size: 10px;\"></div></td></tr><!--header END--><!--content 1 --><tr><td align=\"center\" bgcolor=\"#fbfcfd\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"90%\"><tbody><tr><td align=\"left\"><!-- padding --><div style=\"height: 40px; line-height: 40px; font-size: 10px;\"></div><div style=\"line-height: 44px;\"><font style=\"font-size: 34px;\" face=\"Arial, Helvetica, sans-serif\" color=\"#57697e\" size=\"5\"><span style=\"font-family: Arial, Helvetica, sans-serif; font-size: 34px; color: #57697e;\">Reset your password!</span></font></div><!-- padding --><div style=\"height: 30px; line-height: 30px; font-size: 10px;\"></div></td></tr><tr><td align=\"left\"><div style=\"line-height: 24px;\"><font style=\"font-size: 15px;\" face=\"Arial, Helvetica, sans-serif\" color=\"#57697e\" size=\"4\"><span style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;\">Hello {first_name} {last_name},</span></font></div><!-- padding --><div style=\"height: 20px; line-height: 20px; font-size: 10px;\"></div></td></tr><tr><td align=\"left\"><div style=\"line-height: 24px;\"><font style=\"font-size: 15px;\" face=\"Arial, Helvetica, sans-serif\" color=\"#57697e\" size=\"4\"><span style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;\">Your password has been reset successfull! Please <a href=\"{account_login_link}\" target=\"_blank\">login</a> using your new password: {created_password}.</span></font></div><!-- padding --><div style=\"height: 20px; line-height: 20px; font-size: 10px;\"></div></td></tr><tr><td align=\"left\"><div style=\"line-height: 24px;\"><font style=\"font-size: 15px;\" face=\"Arial, Helvetica, sans-serif\" color=\"#57697e\" size=\"4\"><span style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;\">Please don\'t forget to change your password after you login.<br> {signature}</span></font></div><!-- padding --><div style=\"height: 40px; line-height: 40px; font-size: 10px;\"></div></td></tr></tbody></table></td></tr><!--content 1 END--><!--footer --><tr><td class=\"iage_footer\" align=\"center\" bgcolor=\"#ffffff\"><!-- padding --><div style=\"height: 20px; line-height: 20px; font-size: 10px;\"></div><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"><tbody><tr><td align=\"center\"><font style=\"font-size: 13px;\" face=\"Arial, Helvetica, sans-serif\" color=\"#96a5b5\" size=\"3\"><span style=\"font-family: Arial, Helvetica, sans-serif; font-size: 13px; color: #96a5b5;\">2015 © {site_name} All Rights Reserved.</span></font></td></tr></tbody></table><!-- padding --><div style=\"height: 20px; line-height: 20px; font-size: 10px;\"></div></td></tr><!--footer END--><tr><td><!-- padding --><div style=\"height: 80px; line-height: 80px; font-size: 10px;\"></div></td></tr></tbody></table><!--[if gte mso 10]></td></tr></table><![endif]--></td></tr></tbody></table></div>', '2014-04-16 00:56:00', '2014-05-15 15:46:30'),
(13, 11, 'order', '{site_name} order confirmation - {order_number}', '<div id=\"mailsub\" class=\"notification\" align=\"center\"><table style=\"min-width: 320px;\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"><tbody><tr><td align=\"center\" bgcolor=\"#eff3f8\"><!--[if gte mso 10]><table width=\"680\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\"><tr><td><![endif]--><table class=\"table_width_100\" style=\"max-width: 680px; min-width: 300px;\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"><tbody><tr><td><!-- padding --><div style=\"height: 80px; line-height: 80px; font-size: 10px;\"></div></td></tr><!--header --><tr><td align=\"center\" bgcolor=\"#ffffff\"><!-- padding --><div style=\"height: 30px; line-height: 30px; font-size: 10px;\"></div><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"90%\"><tbody><tr><td align=\"left\"><!-- Item --><div class=\"mob_center_bl\" style=\"float: left; display: inline-block; width: 115px;\"><table class=\"mob_center\" style=\"border-collapse: collapse;\" align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"115\"><tbody><tr><td align=\"left\" valign=\"middle\"><!-- padding --><div style=\"height: 20px; line-height: 20px; font-size: 10px;\"></div><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"115\"><tbody><tr><td class=\"mob_center\" align=\"left\" valign=\"top\"><a title=\"\" data-original-title=\"\" href=\"{site_url}\" target=\"_blank\" style=\"color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 13px;\"><font color=\"#596167\" size=\"3\" face=\"Arial, Helvetica, sans-seri; font-size: 13px;\"><img src=\"{site_logo}\" alt=\"{site_name}\" style=\"display: block;\" border=\"0\" width=\"115\" height=\"19\"></font></a></td></tr></tbody></table></td></tr></tbody></table></div><!-- Item END--><!--[if gte mso 10]></td><td align=\"right\"><![endif]--><!-- Item --><div class=\"mob_center_bl\" style=\"float: right; display: inline-block; width: 88px;\"><table style=\"border-collapse: collapse;\" align=\"right\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"88\"><tbody><tr><td align=\"right\" valign=\"middle\"><!-- padding --><div style=\"height: 20px; line-height: 20px; font-size: 10px;\"></div><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"><tbody><tr><td align=\"right\"><!--social --><div class=\"mob_center_bl\" style=\"width: 88px;\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\"><tbody><tr><td style=\"line-height: 19px;\" align=\"center\" width=\"30\"><a title=\"\" data-original-title=\"\" href=\"#\" target=\"_blank\" style=\"color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\"><font color=\"#596167\" size=\"2\" face=\"Arial, Helvetica, sans-serif\"></font></a></td><td style=\"line-height: 19px;\" align=\"center\" width=\"39\"><a title=\"\" data-original-title=\"\" href=\"#\" target=\"_blank\" style=\"color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\"><font color=\"#596167\" size=\"2\" face=\"Arial, Helvetica, sans-serif\"></font></a></td><td style=\"line-height: 19px;\" align=\"right\" width=\"29\"><a title=\"\" data-original-title=\"\" href=\"#\" target=\"_blank\" style=\"color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\"><font color=\"#596167\" size=\"2\" face=\"Arial, Helvetica, sans-serif\"></font></a></td></tr></tbody></table></div><!--social END--></td></tr></tbody></table></td></tr></tbody></table></div><!-- Item END--></td></tr></tbody></table><!-- padding --><div style=\"height: 50px; line-height: 50px; font-size: 10px;\"></div></td></tr><!--header END--><!--content 1 --><tr><td align=\"center\" bgcolor=\"#fbfcfd\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"90%\"><tbody><tr><td align=\"left\"><!-- padding --><div style=\"height: 40px; line-height: 40px; font-size: 10px;\"></div><div style=\"line-height: 44px;\"><font style=\"font-size: 34px;\" color=\"#57697e\" size=\"5\" face=\"Arial, Helvetica, sans-serif\"><span title=\"\" data-original-title=\"\" style=\"font-family: Arial, Helvetica, sans-serif; font-size: 34px; color: #57697e;\">Thank you for your order!</span></font></div><!-- padding --><div style=\"height: 30px; line-height: 30px; font-size: 10px;\"></div></td></tr><tr><td align=\"left\"><div style=\"line-height: 24px;\"><font style=\"font-size: 15px;\" color=\"#57697e\" size=\"4\" face=\"Arial, Helvetica, sans-serif\"><span title=\"\" data-original-title=\"\" style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;\">Hello {first_name} {last_name},</span></font></div><!-- padding --><div style=\"height: 20px; line-height: 20px; font-size: 10px;\"></div></td></tr><tr><td align=\"left\"><div style=\"line-height: 24px;\"><font style=\"font-size: 15px;\" color=\"#57697e\" size=\"4\" face=\"Arial, Helvetica, sans-serif\"><span title=\"\" data-original-title=\"\" style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;\">Your order has been received and will be with you shortly. <a title=\"\" data-original-title=\"\" href=\"{order_view_url}\">Click here</a> to view your order progress.</span></font><br></div><!-- padding --><div style=\"height: 20px; line-height: 20px; font-size: 10px;\"></div></td></tr><tr><td align=\"left\"><div style=\"line-height: 24px;\"><font style=\"font-size: 15px;\" color=\"#57697e\" size=\"4\" face=\"Arial, Helvetica, sans-serif\"><span title=\"\" data-original-title=\"\" style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;\">Your order number is {order_number}<br> This is a {order_type} order.</span></font></div><div style=\"line-height: 24px;\"><font style=\"font-size: 15px;\" color=\"#57697e\" size=\"4\" face=\"Arial, Helvetica, sans-serif\"><span title=\"\" data-original-title=\"\" style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;\"><br><strong>Order date:</strong> {order_date}<br><strong>Requested {order_type} time</strong> {order_time}<br><strong>Payment Method:</strong> {order_payment}</span></font></div><!-- padding --><div style=\"height: 30px; line-height: 30px; font-size: 10px;\"></div></td></tr><tr><td align=\"left\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"90%\"><tbody><tr><td><div style=\"line-height: 24px;\"><font style=\"font-size: 13px;\" color=\"#57697e\" size=\"3\" face=\"Arial, Helvetica, sans-serif\"><span title=\"\" data-original-title=\"\" style=\"font-family: Arial, Helvetica, sans-serif; font-size: 13px; color: #96a5b5;\">Name/Description</span></font></div></td><td><div style=\"line-height: 24px;\"><font style=\"font-size: 13px;\" color=\"#57697e\" size=\"3\" face=\"Arial, Helvetica, sans-serif\"><span title=\"\" data-original-title=\"\" style=\"font-family: Arial, Helvetica, sans-serif; font-size: 13px; color: #96a5b5;\">Unit Price</span></font></div></td><td><div style=\"line-height: 24px;\"><font style=\"font-size: 13px;\" color=\"#57697e\" size=\"3\" face=\"Arial, Helvetica, sans-serif\"><span title=\"\" data-original-title=\"\" style=\"font-family: Arial, Helvetica, sans-serif; font-size: 13px; color: #96a5b5;\">Sub Total</span></font></div></td></tr><tr><td>{order_menus}<br></td><td><br></td><td><br></td></tr><tr style=\"border-top:1px dashed #c3cbd5;\"><td><div style=\"line-height: 24px;\"><font style=\"font-size: 15px;font-weight:bold;\" color=\"#57697e\" size=\"4\" face=\"Arial, Helvetica, sans-serif\"><span title=\"\" data-original-title=\"\" style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;\">{menu_quantity} x {menu_name}</span></font></div><div style=\"line-height: 24px;\"><font style=\"font-size: 15px;\" color=\"#96a5b5\" size=\"4\" face=\"Arial, Helvetica, sans-serif\"><span title=\"\" data-original-title=\"\" style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #96a5b5;\">{menu_options}</span></font></div><div style=\"line-height: 24px;\"><font style=\"font-size: 15px;\" color=\"#96a5b5\" size=\"4\" face=\"Arial, Helvetica, sans-serif\"><span title=\"\" data-original-title=\"\" style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #96a5b5;\">{menu_comment}</span></font></div></td><td><div style=\"line-height: 24px;\"><font style=\"font-size: 15px;\" color=\"#57697e\" size=\"4\" face=\"Arial, Helvetica, sans-serif\"><span title=\"\" data-original-title=\"\" style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;\">{menu_price}</span></font></div></td><td><div style=\"line-height: 24px;\"><font style=\"font-size: 15px;\" color=\"#57697e\" size=\"4\" face=\"Arial, Helvetica, sans-serif\"><span title=\"\" data-original-title=\"\" style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;\">{menu_subtotal}</span></font></div></td></tr><tr><td>{/order_menus}</td><td><br></td><td><br></td></tr><tr><td><br></td><td>{order_totals}</td><td><br></td></tr><tr><td><br></td><td><div style=\"line-height: 24px;\"><font style=\"font-size: 15px;\" color=\"#57697e\" size=\"4\" face=\"Arial, Helvetica, sans-serif\"><span title=\"\" data-original-title=\"\" style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;\">{order_total_title}</span></font></div></td><td><div style=\"line-height: 24px;\"><font style=\"font-size: 15px;\" color=\"#57697e\" size=\"4\" face=\"Arial, Helvetica, sans-serif\"><span title=\"\" data-original-title=\"\" style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;\">{order_total_value}</span></font></div></td></tr><tr><td><br></td><td>{/order_totals}<br></td><td><br></td></tr></tbody></table><!-- padding --><div style=\"height: 20px; line-height: 20px; font-size: 10px;\"></div></td></tr><tr><td align=\"left\"><div style=\"line-height: 24px;\"><font style=\"font-size: 15px;\" color=\"#57697e\" size=\"4\" face=\"Arial, Helvetica, sans-serif\"><span title=\"\" data-original-title=\"\" style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;\">{order_comment}</span></font></div><!-- padding --><div style=\"height: 20px; line-height: 20px; font-size: 10px;\"></div></td></tr><tr><td align=\"left\"><div style=\"line-height: 24px;\"><font style=\"font-size: 15px;\" color=\"#57697e\" size=\"4\" face=\"Arial, Helvetica, sans-serif\"><span title=\"\" data-original-title=\"\" style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;\">{order_address}</span></font></div><div style=\"line-height: 24px;\"><font style=\"font-size: 15px;\" color=\"#57697e\" size=\"4\" face=\"Arial, Helvetica, sans-serif\"><span title=\"\" data-original-title=\"\" style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;\"><span title=\"\" data-original-title=\"\" style=\"font-weight: bold;\">Restaurant:</span> {location_name}</span></font></div><!-- padding --><div style=\"height: 40px; line-height: 40px; font-size: 10px;\"></div></td></tr><tr><td align=\"left\"><div style=\"line-height: 24px;\"><font style=\"font-size: 15px;\" color=\"#57697e\" size=\"4\" face=\"Arial, Helvetica, sans-serif\"><span title=\"\" data-original-title=\"\" style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;\">We hope to see you again soon.<br>{signature}</span></font></div><!-- padding --><div style=\"height: 40px; line-height: 40px; font-size: 10px;\"></div></td></tr></tbody></table></td></tr><!--content 1 END--><!--footer --><tr><td class=\"iage_footer\" align=\"center\" bgcolor=\"#ffffff\"><!-- padding --><div style=\"height: 20px; line-height: 20px; font-size: 10px;\"></div><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"><tbody><tr><td align=\"center\"><font style=\"font-size: 13px;\" color=\"#96a5b5\" size=\"3\" face=\"Arial, Helvetica, sans-serif\"><span title=\"\" data-original-title=\"\" style=\"font-family: Arial, Helvetica, sans-serif; font-size: 13px; color: #96a5b5;\">2015 © {site_name} All Rights Reserved.</span></font></td></tr></tbody></table><!-- padding --><div style=\"height: 20px; line-height: 20px; font-size: 10px;\"></div></td></tr><!--footer END--><tr><td><!-- padding --><div style=\"height: 80px; line-height: 80px; font-size: 10px;\"></div></td></tr></tbody></table><!--[if gte mso 10]></td></tr></table><![endif]--></td></tr></tbody></table></div>', '2014-04-16 00:56:00', '2014-07-20 14:29:55'),
(14, 11, 'reservation', 'Your Reservation Confirmation - {reservation_number}', '<div id=\"mailsub\" class=\"notification\" align=\"center\"><table style=\"min-width: 320px;\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"><tbody><tr><td align=\"center\" bgcolor=\"#eff3f8\"><!--[if gte mso 10]><table width=\"680\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\"><tr><td><![endif]--><table class=\"table_width_100\" style=\"max-width: 680px; min-width: 300px;\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"><tbody><tr><td><!-- padding --><div style=\"height: 80px; line-height: 80px; font-size: 10px;\"></div></td></tr><!--header --><tr><td align=\"center\" bgcolor=\"#ffffff\"><!-- padding --><div style=\"height: 30px; line-height: 30px; font-size: 10px;\"></div><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"90%\"><tbody><tr><td align=\"left\"><!-- Item --><div class=\"mob_center_bl\" style=\"float: left; display: inline-block; width: 115px;\"><table class=\"mob_center\" style=\"border-collapse: collapse;\" align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"115\"><tbody><tr><td align=\"left\" valign=\"middle\"><!-- padding --><div style=\"height: 20px; line-height: 20px; font-size: 10px;\"></div><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"115\"><tbody><tr><td class=\"mob_center\" align=\"left\" valign=\"top\"><a href=\"{site_url}\" target=\"_blank\" style=\"color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 13px;\"><font face=\"Arial, Helvetica, sans-seri; font-size: 13px;\" color=\"#596167\" size=\"3\"><img src=\"{site_logo}\" alt=\"{site_name}\" style=\"display: block;\" height=\"19\" border=\"0\" width=\"115\"></font></a></td></tr></tbody></table></td></tr></tbody></table></div><!-- Item END--><!--[if gte mso 10]></td><td align=\"right\"><![endif]--><!-- Item --><div class=\"mob_center_bl\" style=\"float: right; display: inline-block; width: 88px;\"><table style=\"border-collapse: collapse;\" align=\"right\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"88\"><tbody><tr><td align=\"right\" valign=\"middle\"><!-- padding --><div style=\"height: 20px; line-height: 20px; font-size: 10px;\"></div><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"><tbody><tr><td align=\"right\"><!--social --><div class=\"mob_center_bl\" style=\"width: 88px;\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\"><tbody><tr><td style=\"line-height: 19px;\" align=\"center\" width=\"30\"><a href=\"#\" target=\"_blank\" style=\"color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\"><font face=\"Arial, Helvetica, sans-serif\" color=\"#596167\" size=\"2\"></font></a></td><td style=\"line-height: 19px;\" align=\"center\" width=\"39\"><a href=\"#\" target=\"_blank\" style=\"color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\"><font face=\"Arial, Helvetica, sans-serif\" color=\"#596167\" size=\"2\"></font></a></td><td style=\"line-height: 19px;\" align=\"right\" width=\"29\"><a href=\"#\" target=\"_blank\" style=\"color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\"><font face=\"Arial, Helvetica, sans-serif\" color=\"#596167\" size=\"2\"></font></a></td></tr></tbody></table></div><!--social END--></td></tr></tbody></table></td></tr></tbody></table></div><!-- Item END--></td></tr></tbody></table><!-- padding --><div style=\"height: 50px; line-height: 50px; font-size: 10px;\"></div></td></tr><!--header END--><!--content 1 --><tr><td align=\"center\" bgcolor=\"#fbfcfd\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"90%\"><tbody><tr><td align=\"left\"><!-- padding --><div style=\"height: 40px; line-height: 40px; font-size: 10px;\"></div><div style=\"line-height: 44px;\"><font style=\"font-size: 34px;\" face=\"Arial, Helvetica, sans-serif\" color=\"#57697e\" size=\"5\"><span style=\"font-family: Arial, Helvetica, sans-serif; font-size: 34px; color: #57697e;\">Thank you for your reservation!</span></font></div><!-- padding --><div style=\"height: 30px; line-height: 30px; font-size: 10px;\"></div></td></tr><tr><td align=\"left\"><div style=\"line-height: 24px;\"><font style=\"font-size: 15px;\" face=\"Arial, Helvetica, sans-serif\" color=\"#57697e\" size=\"4\"><span style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;\">Hello {first_name} {last_name},</span></font></div><!-- padding --><div style=\"height: 20px; line-height: 20px; font-size: 10px;\"></div></td></tr><tr><td align=\"left\"><div style=\"line-height: 24px;\"><font style=\"font-size: 15px;\" face=\"Arial, Helvetica, sans-serif\" color=\"#57697e\" size=\"4\"><span style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;\">Your reservation {reservation_number} at {location_name} has been booked for {reservation_guest_no} person(s) on {reservation_date} at {reservation_time}.</span></font></div><!-- padding --><div style=\"height: 20px; line-height: 20px; font-size: 10px;\"></div></td></tr><tr><td align=\"left\"><div style=\"line-height: 24px;\"><font style=\"font-size: 15px;\" face=\"Arial, Helvetica, sans-serif\" color=\"#57697e\" size=\"4\"><span style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;\">Thanks for reserving with us online!</span></font></div><!-- padding --><div style=\"height: 20px; line-height: 20px; font-size: 10px;\"></div></td></tr><tr><td align=\"left\"><div style=\"line-height: 24px;\"><font style=\"font-size: 15px;\" face=\"Arial, Helvetica, sans-serif\" color=\"#57697e\" size=\"4\"><span style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;\">We hope to see you again soon.<br>{signature}</span></font></div><!-- padding --><div style=\"height: 40px; line-height: 40px; font-size: 10px;\"></div></td></tr></tbody></table></td></tr><!--content 1 END--><!--footer --><tr><td class=\"iage_footer\" align=\"center\" bgcolor=\"#ffffff\"><!-- padding --><div style=\"height: 20px; line-height: 20px; font-size: 10px;\"></div><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"><tbody><tr><td align=\"center\"><font style=\"font-size: 13px;\" face=\"Arial, Helvetica, sans-serif\" color=\"#96a5b5\" size=\"3\"><span style=\"font-family: Arial, Helvetica, sans-serif; font-size: 13px; color: #96a5b5;\">2015 © {site_name} All Rights Reserved.</span></font></td></tr></tbody></table><!-- padding --><div style=\"height: 20px; line-height: 20px; font-size: 10px;\"></div></td></tr><!--footer END--><tr><td><!-- padding --><div style=\"height: 80px; line-height: 80px; font-size: 10px;\"></div></td></tr></tbody></table><!--[if gte mso 10]></td></tr></table><![endif]--></td></tr></tbody></table></div>', '2014-04-16 00:56:00', '2014-07-22 20:13:48'),
(15, 11, 'contact', 'Contact on {site_name}', '<div id=\"mailsub\" class=\"notification\" align=\"center\"><table style=\"min-width: 320px;\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"><tbody><tr><td align=\"center\" bgcolor=\"#eff3f8\"><!--[if gte mso 10]><table width=\"680\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\"><tr><td><![endif]--><table class=\"table_width_100\" style=\"max-width: 680px; min-width: 300px;\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"><tbody><tr><td><!-- padding --><div style=\"height: 80px; line-height: 80px; font-size: 10px;\"></div></td></tr><!--header --><tr><td align=\"center\" bgcolor=\"#ffffff\"><!-- padding --><div style=\"height: 30px; line-height: 30px; font-size: 10px;\"></div><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"90%\"><tbody><tr><td align=\"left\"><!-- Item --><div class=\"mob_center_bl\" style=\"float: left; display: inline-block; width: 115px;\"><table class=\"mob_center\" style=\"border-collapse: collapse;\" align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"115\"><tbody><tr><td align=\"left\" valign=\"middle\"><!-- padding --><div style=\"height: 20px; line-height: 20px; font-size: 10px;\"></div><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"115\"><tbody><tr><td class=\"mob_center\" align=\"left\" valign=\"top\"><a href=\"{site_url}\" target=\"_blank\" style=\"color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 13px;\"><font face=\"Arial, Helvetica, sans-seri; font-size: 13px;\" color=\"#596167\" size=\"3\"><img src=\"{site_logo}\" alt=\"{site_name}\" style=\"display: block;\" height=\"19\" border=\"0\" width=\"115\"></font></a></td></tr></tbody></table></td></tr></tbody></table></div><!-- Item END--><!--[if gte mso 10]></td><td align=\"right\"><![endif]--><!-- Item --><div class=\"mob_center_bl\" style=\"float: right; display: inline-block; width: 88px;\"><table style=\"border-collapse: collapse;\" align=\"right\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"88\"><tbody><tr><td align=\"right\" valign=\"middle\"><!-- padding --><div style=\"height: 20px; line-height: 20px; font-size: 10px;\"></div><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"><tbody><tr><td align=\"right\"><!--social --><div class=\"mob_center_bl\" style=\"width: 88px;\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\"><tbody><tr><td style=\"line-height: 19px;\" align=\"center\" width=\"30\"><a href=\"#\" target=\"_blank\" style=\"color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\"><font face=\"Arial, Helvetica, sans-serif\" color=\"#596167\" size=\"2\"></font></a></td><td style=\"line-height: 19px;\" align=\"center\" width=\"39\"><a href=\"#\" target=\"_blank\" style=\"color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\"><font face=\"Arial, Helvetica, sans-serif\" color=\"#596167\" size=\"2\"></font></a></td><td style=\"line-height: 19px;\" align=\"right\" width=\"29\"><a href=\"#\" target=\"_blank\" style=\"color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\"><font face=\"Arial, Helvetica, sans-serif\" color=\"#596167\" size=\"2\"></font></a></td></tr></tbody></table></div><!--social END--></td></tr></tbody></table></td></tr></tbody></table></div><!-- Item END--></td></tr></tbody></table><!-- padding --><div style=\"height: 50px; line-height: 50px; font-size: 10px;\"></div></td></tr><!--header END--><!--content 1 --><tr><td align=\"center\" bgcolor=\"#fbfcfd\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"90%\"><tbody><tr><td align=\"left\"><!-- padding --><div style=\"height: 40px; line-height: 40px; font-size: 10px;\"></div><div style=\"line-height: 44px;\"><font style=\"font-size: 34px;\" face=\"Arial, Helvetica, sans-serif\" color=\"#57697e\" size=\"5\"><span style=\"font-family: Arial, Helvetica, sans-serif; font-size: 34px; color: #57697e;\">Someone just contacted you!</span></font></div><!-- padding --><div style=\"height: 30px; line-height: 30px; font-size: 10px;\"></div></td></tr><tr><td align=\"left\"><div style=\"line-height: 24px;\"><font style=\"font-size: 15px;\" face=\"Arial, Helvetica, sans-serif\" color=\"#57697e\" size=\"4\"><span style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;\">Hello Admin,</span></font></div><!-- padding --><div style=\"height: 20px; line-height: 20px; font-size: 10px;\"><br></div></td></tr><tr><td align=\"left\"><div style=\"line-height: 24px;\"><font style=\"font-size: 15px;\" face=\"Arial, Helvetica, sans-serif\" color=\"#57697e\" size=\"4\"><span style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;\">From: {full_name}</span></font></div><div style=\"line-height: 24px;\"><font style=\"font-size: 15px;\" face=\"Arial, Helvetica, sans-serif\" color=\"#57697e\" size=\"4\"><span style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;\">Topic: {contact_topic}.</span></font></div><div style=\"line-height: 24px;\"><font style=\"font-size: 15px;\" face=\"Arial, Helvetica, sans-serif\" color=\"#57697e\" size=\"4\"><span style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;\">Telephone: {contact_telephone}.</span></font></div><div style=\"line-height: 24px;\"><font style=\"font-size: 15px;\" face=\"Arial, Helvetica, sans-serif\" color=\"#57697e\" size=\"4\"><span style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;\"><br></span></font></div><div style=\"line-height: 24px;\"><font style=\"font-size: 15px;\" face=\"Arial, Helvetica, sans-serif\" color=\"#57697e\" size=\"4\"><span style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;\">{contact_message}</span></font></div><div style=\"line-height: 24px;\"><font style=\"font-size: 15px;\" face=\"Arial, Helvetica, sans-serif\" color=\"#57697e\" size=\"4\"><span style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;\"><br></span></font></div><div style=\"line-height: 24px;\"><font style=\"font-size: 15px;\" face=\"Arial, Helvetica, sans-serif\" color=\"#57697e\" size=\"4\"><span style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;\">This inquiry was sent from {site_name}</span></font></div><div style=\"line-height: 24px;\"><font style=\"font-size: 15px;\" face=\"Arial, Helvetica, sans-serif\" color=\"#57697e\" size=\"4\"><span style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;\">{signature}<br></span></font></div><!-- padding --><div style=\"height: 20px; line-height: 20px; font-size: 10px;\"></div></td></tr></tbody></table></td></tr><!--content 1 END--><!--footer --><tr><td class=\"iage_footer\" align=\"center\" bgcolor=\"#ffffff\"><!-- padding --><div style=\"height: 20px; line-height: 20px; font-size: 10px;\"></div><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"><tbody><tr><td align=\"center\"><font style=\"font-size: 13px;\" face=\"Arial, Helvetica, sans-serif\" color=\"#96a5b5\" size=\"3\"><span style=\"font-family: Arial, Helvetica, sans-serif; font-size: 13px; color: #96a5b5;\">2015 © {site_name} All Rights Reserved.</span></font></td></tr></tbody></table><!-- padding --><div style=\"height: 20px; line-height: 20px; font-size: 10px;\"></div></td></tr><!--footer END--><tr><td><!-- padding --><div style=\"height: 80px; line-height: 80px; font-size: 10px;\"></div></td></tr></tbody></table><!--[if gte mso 10]></td></tr></table><![endif]--></td></tr></tbody></table></div>', '2014-04-16 00:56:00', '2014-05-15 18:00:57'),
(16, 11, 'internal', 'Subject here', 'Body here', '2014-04-16 00:56:00', '2014-04-16 00:59:00');
INSERT INTO `ok_mail_templates_data` (`template_data_id`, `template_id`, `code`, `subject`, `body`, `date_added`, `date_updated`) VALUES
(17, 11, 'order_alert', 'New order on {site_name}', '<div id=\"mailsub\" class=\"notification\" align=\"center\"><table style=\"min-width: 320px;\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"><tbody><tr><td align=\"center\" bgcolor=\"#eff3f8\"><!--[if gte mso 10]><table width=\"680\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\"><tr><td><![endif]--><table class=\"table_width_100\" style=\"max-width: 680px; min-width: 300px;\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"><tbody><tr><td><!-- padding --><div style=\"height: 80px; line-height: 80px; font-size: 10px;\"></div></td></tr><!--header --><tr><td align=\"center\" bgcolor=\"#ffffff\"><!-- padding --><div style=\"height: 30px; line-height: 30px; font-size: 10px;\"></div><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"90%\"><tbody><tr><td align=\"left\"><!-- Item --><div class=\"mob_center_bl\" style=\"float: left; display: inline-block; width: 115px;\"><table class=\"mob_center\" style=\"border-collapse: collapse;\" align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"115\"><tbody><tr><td align=\"left\" valign=\"middle\"><!-- padding --><div style=\"height: 20px; line-height: 20px; font-size: 10px;\"></div><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"115\"><tbody><tr><td class=\"mob_center\" align=\"left\" valign=\"top\"><a title=\"\" data-original-title=\"\" href=\"{site_url}\" target=\"_blank\" style=\"color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 13px;\"><font color=\"#596167\" size=\"3\" face=\"Arial, Helvetica, sans-seri; font-size: 13px;\"><img src=\"{site_logo}\" alt=\"{site_name}\" style=\"display: block;\" border=\"0\" width=\"115\" height=\"19\"></font></a></td></tr></tbody></table></td></tr></tbody></table></div><!-- Item END--><!--[if gte mso 10]></td><td align=\"right\"><![endif]--><!-- Item --><div class=\"mob_center_bl\" style=\"float: right; display: inline-block; width: 88px;\"><table style=\"border-collapse: collapse;\" align=\"right\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"88\"><tbody><tr><td align=\"right\" valign=\"middle\"><!-- padding --><div style=\"height: 20px; line-height: 20px; font-size: 10px;\"></div><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"><tbody><tr><td align=\"right\"><!--social --><div class=\"mob_center_bl\" style=\"width: 88px;\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\"><tbody><tr><td style=\"line-height: 19px;\" align=\"center\" width=\"30\"><a title=\"\" data-original-title=\"\" href=\"#\" target=\"_blank\" style=\"color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\"><font color=\"#596167\" size=\"2\" face=\"Arial, Helvetica, sans-serif\"></font></a></td><td style=\"line-height: 19px;\" align=\"center\" width=\"39\"><a title=\"\" data-original-title=\"\" href=\"#\" target=\"_blank\" style=\"color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\"><font color=\"#596167\" size=\"2\" face=\"Arial, Helvetica, sans-serif\"></font></a></td><td style=\"line-height: 19px;\" align=\"right\" width=\"29\"><a title=\"\" data-original-title=\"\" href=\"#\" target=\"_blank\" style=\"color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\"><font color=\"#596167\" size=\"2\" face=\"Arial, Helvetica, sans-serif\"></font></a></td></tr></tbody></table></div><!--social END--></td></tr></tbody></table></td></tr></tbody></table></div><!-- Item END--></td></tr></tbody></table><!-- padding --><div style=\"height: 50px; line-height: 50px; font-size: 10px;\"></div></td></tr><!--header END--><!--content 1 --><tr><td align=\"center\" bgcolor=\"#fbfcfd\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"90%\"><tbody><tr><td align=\"left\"><!-- padding --><div style=\"height: 40px; line-height: 40px; font-size: 10px;\"></div><div style=\"line-height: 44px;\"><font style=\"font-size: 34px;\" color=\"#57697e\" size=\"5\" face=\"Arial, Helvetica, sans-serif\"><span title=\"\" data-original-title=\"\" style=\"font-family: Arial, Helvetica, sans-serif; font-size: 34px; color: #57697e;\">You received an order!</span></font></div><!-- padding --><div style=\"height: 30px; line-height: 30px; font-size: 10px;\"></div></td></tr><tr><td align=\"left\"><div style=\"line-height: 24px;\"><font style=\"font-size: 15px;\" color=\"#57697e\" size=\"4\" face=\"Arial, Helvetica, sans-serif\"><span title=\"\" data-original-title=\"\" style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;\">You just received an order from {location_name}.</span></font><br></div><!-- padding --><div style=\"height: 20px; line-height: 20px; font-size: 10px;\"></div></td></tr><tr><td align=\"left\"><div style=\"line-height: 24px;\"><font style=\"font-size: 15px;\" color=\"#57697e\" size=\"4\" face=\"Arial, Helvetica, sans-serif\"><span title=\"\" data-original-title=\"\" style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;\">The order number is {order_number}<br> This is a {order_type} order.</span></font></div><div style=\"line-height: 24px;\"><font style=\"font-size: 15px;\" color=\"#57697e\" size=\"4\" face=\"Arial, Helvetica, sans-serif\"><span title=\"\" data-original-title=\"\" style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;\"><br><strong>Customer name:</strong> {first_name} {last_name}<br><strong>Order date:</strong> {order_date}<br><strong>Requested {order_type} time</strong> {order_time}<br><strong>Payment Method:</strong> {order_payment}<br><br></span></font></div><!-- padding --><div style=\"height: 10px; line-height: 10px; font-size: 10px;\"></div></td></tr><tr><td align=\"left\"><div style=\"line-height: 24px;\"><font style=\"font-size: 15px;\" color=\"#57697e\" size=\"4\" face=\"Arial, Helvetica, sans-serif\"><span title=\"\" data-original-title=\"\" style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;\"></span></font></div><!-- padding --><div style=\"height: 30px; line-height: 30px; font-size: 10px;\"></div></td></tr><tr><td align=\"left\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"90%\"><tbody><tr><td><div style=\"line-height: 24px;\"><font style=\"font-size: 13px;\" color=\"#57697e\" size=\"3\" face=\"Arial, Helvetica, sans-serif\"><span title=\"\" data-original-title=\"\" style=\"font-family: Arial, Helvetica, sans-serif; font-size: 13px; color: #96a5b5;\">Name/Description</span></font></div></td><td><div style=\"line-height: 24px;\"><font style=\"font-size: 13px;\" color=\"#57697e\" size=\"3\" face=\"Arial, Helvetica, sans-serif\"><span title=\"\" data-original-title=\"\" style=\"font-family: Arial, Helvetica, sans-serif; font-size: 13px; color: #96a5b5;\">Unit Price</span></font></div></td><td><div style=\"line-height: 24px;\"><font style=\"font-size: 13px;\" color=\"#57697e\" size=\"3\" face=\"Arial, Helvetica, sans-serif\"><span title=\"\" data-original-title=\"\" style=\"font-family: Arial, Helvetica, sans-serif; font-size: 13px; color: #96a5b5;\">Sub Total</span></font></div></td></tr><tr><td>{order_menus}<br></td><td><br></td><td><br></td></tr><tr style=\"border-top:1px dashed #c3cbd5;\"><td><div style=\"line-height: 24px;\"><font style=\"font-size: 15px;font-weight:bold;\" color=\"#57697e\" size=\"4\" face=\"Arial, Helvetica, sans-serif\"><span title=\"\" data-original-title=\"\" style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;\">{menu_quantity} x {menu_name}</span></font></div><div style=\"line-height: 24px;\"><font style=\"font-size: 15px;\" color=\"#96a5b5\" size=\"4\" face=\"Arial, Helvetica, sans-serif\"><span title=\"\" data-original-title=\"\" style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #96a5b5;\">{menu_options}</span></font></div><div style=\"line-height: 24px;\"><font style=\"font-size: 15px;\" color=\"#96a5b5\" size=\"4\" face=\"Arial, Helvetica, sans-serif\"><span title=\"\" data-original-title=\"\" style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #96a5b5;\">{menu_comment}</span></font></div></td><td><div style=\"line-height: 24px;\"><font style=\"font-size: 15px;\" color=\"#57697e\" size=\"4\" face=\"Arial, Helvetica, sans-serif\"><span title=\"\" data-original-title=\"\" style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;\">{menu_price}</span></font></div></td><td><div style=\"line-height: 24px;\"><font style=\"font-size: 15px;\" color=\"#57697e\" size=\"4\" face=\"Arial, Helvetica, sans-serif\"><span title=\"\" data-original-title=\"\" style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;\">{menu_subtotal}</span></font></div></td></tr><tr><td>{/order_menus}</td><td><br></td><td><br></td></tr><tr><td><br></td><td>{order_totals}</td><td><br></td></tr><tr><td><br></td><td><div style=\"line-height: 24px;\"><font style=\"font-size: 15px;\" color=\"#57697e\" size=\"4\" face=\"Arial, Helvetica, sans-serif\"><span title=\"\" data-original-title=\"\" style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;\">{order_total_title}</span></font></div></td><td><div style=\"line-height: 24px;\"><font style=\"font-size: 15px;\" color=\"#57697e\" size=\"4\" face=\"Arial, Helvetica, sans-serif\"><span title=\"\" data-original-title=\"\" style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;\">{order_total_value}</span></font></div></td></tr><tr><td><br></td><td>{/order_totals}<br></td><td><br></td></tr></tbody></table><!-- padding --><div style=\"height: 20px; line-height: 20px; font-size: 10px;\"></div></td></tr><tr><td align=\"left\"><div style=\"line-height: 24px;\"><font style=\"font-size: 15px;\" color=\"#57697e\" size=\"4\" face=\"Arial, Helvetica, sans-serif\"><span title=\"\" data-original-title=\"\" style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;\">{order_comment}</span></font></div><!-- padding --><div style=\"height: 20px; line-height: 20px; font-size: 10px;\"></div></td></tr><tr><td align=\"left\"><!-- padding --><div style=\"height: 40px; line-height: 40px; font-size: 10px;\"></div></td></tr></tbody></table></td></tr><!--content 1 END--><!--footer --><tr><td class=\"iage_footer\" align=\"center\" bgcolor=\"#ffffff\"><!-- padding --><div style=\"height: 20px; line-height: 20px; font-size: 10px;\"></div><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"><tbody><tr><td align=\"center\"><font style=\"font-size: 13px;\" color=\"#96a5b5\" size=\"3\" face=\"Arial, Helvetica, sans-serif\"><span title=\"\" data-original-title=\"\" style=\"font-family: Arial, Helvetica, sans-serif; font-size: 13px; color: #96a5b5;\">2015 © {site_name} All Rights Reserved.</span></font></td></tr></tbody></table><!-- padding --><div style=\"height: 20px; line-height: 20px; font-size: 10px;\"></div></td></tr><!--footer END--><tr><td><!-- padding --><div style=\"height: 80px; line-height: 80px; font-size: 10px;\"></div></td></tr></tbody></table><!--[if gte mso 10]></td></tr></table><![endif]--></td></tr></tbody></table></div>', '2014-04-16 00:56:00', '2014-04-16 00:59:00'),
(18, 11, 'reservation_alert', 'New reservation on {site_name}', '<div id=\"mailsub\" class=\"notification\" align=\"center\"><table style=\"min-width: 320px;\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"><tbody><tr><td align=\"center\" bgcolor=\"#eff3f8\"><!--[if gte mso 10]><table width=\"680\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\"><tr><td><![endif]--><table class=\"table_width_100\" style=\"max-width: 680px; min-width: 300px;\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"><tbody><tr><td><!-- padding --><div style=\"height: 80px; line-height: 80px; font-size: 10px;\"></div></td></tr><!--header --><tr><td align=\"center\" bgcolor=\"#ffffff\"><!-- padding --><div style=\"height: 30px; line-height: 30px; font-size: 10px;\"></div><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"90%\"><tbody><tr><td align=\"left\"><!-- Item --><div class=\"mob_center_bl\" style=\"float: left; display: inline-block; width: 115px;\"><table class=\"mob_center\" style=\"border-collapse: collapse;\" align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"115\"><tbody><tr><td align=\"left\" valign=\"middle\"><!-- padding --><div style=\"height: 20px; line-height: 20px; font-size: 10px;\"></div><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"115\"><tbody><tr><td class=\"mob_center\" align=\"left\" valign=\"top\"><a href=\"{site_url}\" target=\"_blank\" style=\"color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 13px;\"><font face=\"Arial, Helvetica, sans-seri; font-size: 13px;\" color=\"#596167\" size=\"3\"><img src=\"{site_logo}\" alt=\"{site_name}\" style=\"display: block;\" height=\"19\" border=\"0\" width=\"115\"></font></a></td></tr></tbody></table></td></tr></tbody></table></div><!-- Item END--><!--[if gte mso 10]></td><td align=\"right\"><![endif]--><!-- Item --><div class=\"mob_center_bl\" style=\"float: right; display: inline-block; width: 88px;\"><table style=\"border-collapse: collapse;\" align=\"right\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"88\"><tbody><tr><td align=\"right\" valign=\"middle\"><!-- padding --><div style=\"height: 20px; line-height: 20px; font-size: 10px;\"></div><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"><tbody><tr><td align=\"right\"><!--social --><div class=\"mob_center_bl\" style=\"width: 88px;\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\"><tbody><tr><td style=\"line-height: 19px;\" align=\"center\" width=\"30\"><a href=\"#\" target=\"_blank\" style=\"color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\"><font face=\"Arial, Helvetica, sans-serif\" color=\"#596167\" size=\"2\"></font></a></td><td style=\"line-height: 19px;\" align=\"center\" width=\"39\"><a href=\"#\" target=\"_blank\" style=\"color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\"><font face=\"Arial, Helvetica, sans-serif\" color=\"#596167\" size=\"2\"></font></a></td><td style=\"line-height: 19px;\" align=\"right\" width=\"29\"><a href=\"#\" target=\"_blank\" style=\"color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\"><font face=\"Arial, Helvetica, sans-serif\" color=\"#596167\" size=\"2\"></font></a></td></tr></tbody></table></div><!--social END--></td></tr></tbody></table></td></tr></tbody></table></div><!-- Item END--></td></tr></tbody></table><!-- padding --><div style=\"height: 50px; line-height: 50px; font-size: 10px;\"></div></td></tr><!--header END--><!--content 1 --><tr><td align=\"center\" bgcolor=\"#fbfcfd\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"90%\"><tbody><tr><td align=\"left\"><!-- padding --><div style=\"height: 40px; line-height: 40px; font-size: 10px;\"></div><div style=\"line-height: 44px;\"><font style=\"font-size: 34px;\" face=\"Arial, Helvetica, sans-serif\" color=\"#57697e\" size=\"5\"><span style=\"font-family: Arial, Helvetica, sans-serif; font-size: 34px; color: #57697e;\">You received a table reservation!</span></font></div><!-- padding --><div style=\"height: 30px; line-height: 30px; font-size: 10px;\"></div></td></tr><tr><td align=\"left\"><div style=\"line-height: 24px;\"><font style=\"font-size: 15px;\" face=\"Arial, Helvetica, sans-serif\" color=\"#57697e\" size=\"4\"><span style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;\"><span style=\"font-weight: bold;\">Customer name:</span> {first_name} {last_name}</span></font></div><!-- padding --></td></tr><tr><td align=\"left\"><div style=\"line-height: 24px;\"><font style=\"font-size: 15px;\" face=\"Arial, Helvetica, sans-serif\" color=\"#57697e\" size=\"4\"><span style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;\"><span style=\"font-weight: bold;\">Reservation no:</span> {reservation_number} </span></font></div><div style=\"line-height: 24px;\"><font style=\"font-size: 15px;\" face=\"Arial, Helvetica, sans-serif\" color=\"#57697e\" size=\"4\"><span style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;\"><span style=\"font-weight: bold;\">Restaurant:</span> {location_name} </span></font></div><div style=\"line-height: 24px;\"><font style=\"font-size: 15px;\" face=\"Arial, Helvetica, sans-serif\" color=\"#57697e\" size=\"4\"><span style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;\"><span style=\"font-weight: bold;\">No of guest(s):</span> {reservation_guest_no} person(s) </span></font></div><div style=\"line-height: 24px;\"><font style=\"font-size: 15px;\" face=\"Arial, Helvetica, sans-serif\" color=\"#57697e\" size=\"4\"><span style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;\"><span style=\"font-weight: bold;\">Reservation date:</span> {reservation_date}</span></font></div><div style=\"line-height: 24px;\"><font style=\"font-size: 15px;\" face=\"Arial, Helvetica, sans-serif\" color=\"#57697e\" size=\"4\"><span style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;\"><font style=\"font-size: 15px;\" face=\"Arial, Helvetica, sans-serif\" color=\"#57697e\" size=\"4\"><span style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;\"><span style=\"font-weight: bold;\">Reservation time: </span></span></font>{reservation_time}</span></font></div><!-- padding --><div style=\"height: 20px; line-height: 20px; font-size: 10px;\"></div></td></tr><tr><td align=\"left\"><div style=\"line-height: 24px;\"><font style=\"font-size: 15px;\" face=\"Arial, Helvetica, sans-serif\" color=\"#57697e\" size=\"4\"><span style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;\">You received a table reservation from {site_name}<br></span></font></div><!-- padding --><div style=\"height: 40px; line-height: 40px; font-size: 10px;\"></div></td></tr></tbody></table></td></tr><!--content 1 END--><!--footer --><tr><td class=\"iage_footer\" align=\"center\" bgcolor=\"#ffffff\"><!-- padding --><div style=\"height: 20px; line-height: 20px; font-size: 10px;\"></div><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"><tbody><tr><td align=\"center\"><font style=\"font-size: 13px;\" face=\"Arial, Helvetica, sans-serif\" color=\"#96a5b5\" size=\"3\"><span style=\"font-family: Arial, Helvetica, sans-serif; font-size: 13px; color: #96a5b5;\">2015 © {site_name} All Rights Reserved.</span></font></td></tr></tbody></table><!-- padding --><div style=\"height: 20px; line-height: 20px; font-size: 10px;\"></div></td></tr><!--footer END--><tr><td><!-- padding --><div style=\"height: 80px; line-height: 80px; font-size: 10px;\"></div></td></tr></tbody></table><!--[if gte mso 10]></td></tr></table><![endif]--></td></tr></tbody></table></div>', '2014-04-16 00:56:00', '2014-04-16 00:59:00'),
(19, 11, 'registration_alert', 'New Customer on {site_name}', '<div id=\"mailsub\" class=\"notification\" align=\"center\"><table style=\"min-width: 320px;\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"><tbody><tr><td align=\"center\" bgcolor=\"#eff3f8\"><!--[if gte mso 10]><table width=\"680\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\"><tr><td><![endif]--><table class=\"table_width_100\" style=\"max-width: 680px; min-width: 300px;\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"><tbody><tr><td><!-- padding --><div style=\"height: 80px; line-height: 80px; font-size: 10px;\"></div></td></tr><!--header --><tr><td align=\"center\" bgcolor=\"#ffffff\"><!-- padding --><div style=\"height: 30px; line-height: 30px; font-size: 10px;\"></div><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"90%\"><tbody><tr><td align=\"left\"><!-- Item --><div class=\"mob_center_bl\" style=\"float: left; display: inline-block; width: 115px;\"><table class=\"mob_center\" style=\"border-collapse: collapse;\" align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"115\"><tbody><tr><td align=\"left\" valign=\"middle\"><!-- padding --><div style=\"height: 20px; line-height: 20px; font-size: 10px;\"></div><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"115\"><tbody><tr><td class=\"mob_center\" align=\"left\" valign=\"top\"><a href=\"{site_url}\" target=\"_blank\" style=\"color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 13px;\"><font face=\"Arial, Helvetica, sans-seri; font-size: 13px;\" color=\"#596167\" size=\"3\"><img src=\"{site_logo}\" alt=\"{site_name}\" style=\"display: block;\" height=\"19\" border=\"0\" width=\"115\"></font></a></td></tr></tbody></table></td></tr></tbody></table></div><!-- Item END--><!--[if gte mso 10]></td><td align=\"right\"><![endif]--><!-- Item --><div class=\"mob_center_bl\" style=\"float: right; display: inline-block; width: 88px;\"><table style=\"border-collapse: collapse;\" align=\"right\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"88\"><tbody><tr><td align=\"right\" valign=\"middle\"><!-- padding --><div style=\"height: 20px; line-height: 20px; font-size: 10px;\"></div><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"><tbody><tr><td align=\"right\"><!--social --><div class=\"mob_center_bl\" style=\"width: 88px;\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\"><tbody><tr><td style=\"line-height: 19px;\" align=\"center\" width=\"30\"><a href=\"#\" target=\"_blank\" style=\"color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\"><font face=\"Arial, Helvetica, sans-serif\" color=\"#596167\" size=\"2\"></font></a></td><td style=\"line-height: 19px;\" align=\"center\" width=\"39\"><a href=\"#\" target=\"_blank\" style=\"color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\"><font face=\"Arial, Helvetica, sans-serif\" color=\"#596167\" size=\"2\"></font></a></td><td style=\"line-height: 19px;\" align=\"right\" width=\"29\"><a href=\"#\" target=\"_blank\" style=\"color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\"><font face=\"Arial, Helvetica, sans-serif\" color=\"#596167\" size=\"2\"></font></a></td></tr></tbody></table></div><!--social END--></td></tr></tbody></table></td></tr></tbody></table></div><!-- Item END--></td></tr></tbody></table><!-- padding --><div style=\"height: 50px; line-height: 50px; font-size: 10px;\"></div></td></tr><!--header END--><!--content 1 --><tr><td align=\"center\" bgcolor=\"#fbfcfd\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"90%\"><tbody><tr><td align=\"left\"><!-- padding --><div style=\"height: 40px; line-height: 40px; font-size: 10px;\"></div><div style=\"line-height: 44px;\"><font style=\"font-size: 34px;\" face=\"Arial, Helvetica, sans-serif\" color=\"#57697e\" size=\"5\"><span style=\"font-family: Arial, Helvetica, sans-serif; font-size: 34px; color: #57697e;\">You have a new customer!</span></font></div><!-- padding --><div style=\"height: 30px; line-height: 30px; font-size: 10px;\"></div></td></tr><tr><td align=\"left\"><div style=\"line-height: 24px;\"><font style=\"font-size: 15px;\" face=\"Arial, Helvetica, sans-serif\" color=\"#57697e\" size=\"4\"><span style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;\"><span style=\"font-weight: bold;\">Customer name:</span> {first_name} {last_name}</span></font></div><!-- padding --><div style=\"height: 30px; line-height: 30px; font-size: 10px;\"></div></td></tr></tbody></table></td></tr><!--content 1 END--><!--footer --><tr><td class=\"iage_footer\" align=\"center\" bgcolor=\"#ffffff\"><!-- padding --><div style=\"height: 20px; line-height: 20px; font-size: 10px;\"></div><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"><tbody><tr><td align=\"center\"><font style=\"font-size: 13px;\" face=\"Arial, Helvetica, sans-serif\" color=\"#96a5b5\" size=\"3\"><span style=\"font-family: Arial, Helvetica, sans-serif; font-size: 13px; color: #96a5b5;\">2015 © {site_name} All Rights Reserved.</span></font></td></tr></tbody></table><!-- padding --><div style=\"height: 20px; line-height: 20px; font-size: 10px;\"></div></td></tr><!--footer END--><tr><td><!-- padding --><div style=\"height: 80px; line-height: 80px; font-size: 10px;\"></div></td></tr></tbody></table><!--[if gte mso 10]></td></tr></table><![endif]--></td></tr></tbody></table></div>', '2018-01-23 00:00:00', '2018-01-23 00:00:00'),
(20, 11, 'password_reset_alert', 'Password reset at {site_name}', '<div id=\"mailsub\" class=\"notification\" align=\"center\"><table style=\"min-width: 320px;\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"><tbody><tr><td align=\"center\" bgcolor=\"#eff3f8\"><!--[if gte mso 10]><table width=\"680\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\"><tr><td><![endif]--><table class=\"table_width_100\" style=\"max-width: 680px; min-width: 300px;\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"><tbody><tr><td><!-- padding --><div style=\"height: 80px; line-height: 80px; font-size: 10px;\"></div></td></tr><!--header --><tr><td align=\"center\" bgcolor=\"#ffffff\"><!-- padding --><div style=\"height: 30px; line-height: 30px; font-size: 10px;\"></div><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"90%\"><tbody><tr><td align=\"left\"><!-- Item --><div class=\"mob_center_bl\" style=\"float: left; display: inline-block; width: 115px;\"><table class=\"mob_center\" style=\"border-collapse: collapse;\" align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"115\"><tbody><tr><td align=\"left\" valign=\"middle\"><!-- padding --><div style=\"height: 20px; line-height: 20px; font-size: 10px;\"></div><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"115\"><tbody><tr><td class=\"mob_center\" align=\"left\" valign=\"top\"><a href=\"{site_url}\" target=\"_blank\" style=\"color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 13px;\"><font face=\"Arial, Helvetica, sans-seri; font-size: 13px;\" color=\"#596167\" size=\"3\"><img src=\"{site_logo}\" alt=\"{site_name}\" style=\"display: block;\" height=\"19\" border=\"0\" width=\"115\"></font></a></td></tr></tbody></table></td></tr></tbody></table></div><!-- Item END--><!--[if gte mso 10]></td><td align=\"right\"><![endif]--><!-- Item --><div class=\"mob_center_bl\" style=\"float: right; display: inline-block; width: 88px;\"><table style=\"border-collapse: collapse;\" align=\"right\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"88\"><tbody><tr><td align=\"right\" valign=\"middle\"><!-- padding --><div style=\"height: 20px; line-height: 20px; font-size: 10px;\"></div><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"><tbody><tr><td align=\"right\"><!--social --><div class=\"mob_center_bl\" style=\"width: 88px;\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\"><tbody><tr><td style=\"line-height: 19px;\" align=\"center\" width=\"30\"><a href=\"#\" target=\"_blank\" style=\"color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\"><font face=\"Arial, Helvetica, sans-serif\" color=\"#596167\" size=\"2\"></font></a></td><td style=\"line-height: 19px;\" align=\"center\" width=\"39\"><a href=\"#\" target=\"_blank\" style=\"color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\"><font face=\"Arial, Helvetica, sans-serif\" color=\"#596167\" size=\"2\"></font></a></td><td style=\"line-height: 19px;\" align=\"right\" width=\"29\"><a href=\"#\" target=\"_blank\" style=\"color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\"><font face=\"Arial, Helvetica, sans-serif\" color=\"#596167\" size=\"2\"></font></a></td></tr></tbody></table></div><!--social END--></td></tr></tbody></table></td></tr></tbody></table></div><!-- Item END--></td></tr></tbody></table><!-- padding --><div style=\"height: 50px; line-height: 50px; font-size: 10px;\"></div></td></tr><!--header END--><!--content 1 --><tr><td align=\"center\" bgcolor=\"#fbfcfd\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"90%\"><tbody><tr><td align=\"left\"><!-- padding --><div style=\"height: 40px; line-height: 40px; font-size: 10px;\"></div><div style=\"line-height: 44px;\"><font style=\"font-size: 34px;\" face=\"Arial, Helvetica, sans-serif\" color=\"#57697e\" size=\"5\"><span style=\"font-family: Arial, Helvetica, sans-serif; font-size: 34px; color: #57697e;\">Reset your password!</span></font></div><!-- padding --><div style=\"height: 30px; line-height: 30px; font-size: 10px;\"></div></td></tr><tr><td align=\"left\"><div style=\"line-height: 24px;\"><font style=\"font-size: 15px;\" face=\"Arial, Helvetica, sans-serif\" color=\"#57697e\" size=\"4\"><span style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;\">Hello {staff_name},</span></font></div><!-- padding --><div style=\"height: 20px; line-height: 20px; font-size: 10px;\"></div></td></tr><tr><td align=\"left\"><div style=\"line-height: 24px;\"><font style=\"font-size: 15px;\" face=\"Arial, Helvetica, sans-serif\" color=\"#57697e\" size=\"4\"><span style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;\">You requested that the password be reset for the following account:</span></font></div><div style=\"line-height: 24px;\"><font style=\"font-size: 15px;\" face=\"Arial, Helvetica, sans-serif\" color=\"#57697e\" size=\"4\"><span style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;\">Username: {staff_username}</span></font></div><div style=\"line-height: 24px;\"><font style=\"font-size: 15px;\" face=\"Arial, Helvetica, sans-serif\" color=\"#57697e\" size=\"4\"><span style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;\">Password: {created_password}</span></font></div><!-- padding --><div style=\"height: 20px; line-height: 20px; font-size: 10px;\"></div></td></tr><tr><td align=\"left\"><div style=\"line-height: 24px;\"><font style=\"font-size: 15px;\" face=\"Arial, Helvetica, sans-serif\" color=\"#57697e\" size=\"4\"><span style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;\">Please do not forget to change your password after you login.<br> {signature}</span></font></div><!-- padding --><div style=\"height: 40px; line-height: 40px; font-size: 10px;\"></div></td></tr></tbody></table></td></tr><!--content 1 END--><!--footer --><tr><td class=\"iage_footer\" align=\"center\" bgcolor=\"#ffffff\"><!-- padding --><div style=\"height: 20px; line-height: 20px; font-size: 10px;\"></div><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"><tbody><tr><td align=\"center\"><font style=\"font-size: 13px;\" face=\"Arial, Helvetica, sans-serif\" color=\"#96a5b5\" size=\"3\"><span style=\"font-family: Arial, Helvetica, sans-serif; font-size: 13px; color: #96a5b5;\">2015 © {site_name} All Rights Reserved.</span></font></td></tr></tbody></table><!-- padding --><div style=\"height: 20px; line-height: 20px; font-size: 10px;\"></div></td></tr><!--footer END--><tr><td><!-- padding --><div style=\"height: 80px; line-height: 80px; font-size: 10px;\"></div></td></tr></tbody></table><!--[if gte mso 10]></td></tr></table><![endif]--></td></tr></tbody></table></div>', '2018-01-23 00:00:00', '2018-01-23 00:00:00'),
(21, 11, 'order_update', 'Your Order Update - {order_number}', '<div id=\"mailsub\" class=\"notification\" align=\"center\"><table style=\"min-width: 320px;\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"><tbody><tr><td align=\"center\" bgcolor=\"#eff3f8\"><!--[if gte mso 10]><table width=\"680\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\"><tr><td><![endif]--><table class=\"table_width_100\" style=\"max-width: 680px; min-width: 300px;\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"><tbody><tr><td><!-- padding --><div style=\"height: 80px; line-height: 80px; font-size: 10px;\"></div></td></tr><!--header --><tr><td align=\"center\" bgcolor=\"#ffffff\"><!-- padding --><div style=\"height: 30px; line-height: 30px; font-size: 10px;\"></div><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"90%\"><tbody><tr><td align=\"left\"><!-- Item --><div class=\"mob_center_bl\" style=\"float: left; display: inline-block; width: 115px;\"><table class=\"mob_center\" style=\"border-collapse: collapse;\" align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"115\"><tbody><tr><td align=\"left\" valign=\"middle\"><!-- padding --><div style=\"height: 20px; line-height: 20px; font-size: 10px;\"></div><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"115\"><tbody><tr><td class=\"mob_center\" align=\"left\" valign=\"top\"><a title=\"\" data-original-title=\"\" href=\"{site_url}\" target=\"_blank\" style=\"color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 13px;\"><font face=\"Arial, Helvetica, sans-seri; font-size: 13px;\" color=\"#596167\" size=\"3\"><img src=\"{site_logo}\" alt=\"{site_name}\" style=\"display: block;\" height=\"19\" border=\"0\" width=\"115\"></font></a></td></tr></tbody></table></td></tr></tbody></table></div><!-- Item END--><!--[if gte mso 10]></td><td align=\"right\"><![endif]--><!-- Item --><div class=\"mob_center_bl\" style=\"float: right; display: inline-block; width: 88px;\"><table style=\"border-collapse: collapse;\" align=\"right\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"88\"><tbody><tr><td align=\"right\" valign=\"middle\"><!-- padding --><div style=\"height: 20px; line-height: 20px; font-size: 10px;\"></div><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"><tbody><tr><td align=\"right\"><!--social --><div class=\"mob_center_bl\" style=\"width: 88px;\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\"><tbody><tr><td style=\"line-height: 19px;\" align=\"center\" width=\"30\"><a title=\"\" data-original-title=\"\" href=\"#\" target=\"_blank\" style=\"color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\"><font face=\"Arial, Helvetica, sans-serif\" color=\"#596167\" size=\"2\"></font></a></td><td style=\"line-height: 19px;\" align=\"center\" width=\"39\"><a title=\"\" data-original-title=\"\" href=\"#\" target=\"_blank\" style=\"color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\"><font face=\"Arial, Helvetica, sans-serif\" color=\"#596167\" size=\"2\"></font></a></td><td style=\"line-height: 19px;\" align=\"right\" width=\"29\"><a title=\"\" data-original-title=\"\" href=\"#\" target=\"_blank\" style=\"color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\"><font face=\"Arial, Helvetica, sans-serif\" color=\"#596167\" size=\"2\"></font></a></td></tr></tbody></table></div><!--social END--></td></tr></tbody></table></td></tr></tbody></table></div><!-- Item END--></td></tr></tbody></table><!-- padding --><div style=\"height: 50px; line-height: 50px; font-size: 10px;\"></div></td></tr><!--header END--><!--content 1 --><tr><td align=\"center\" bgcolor=\"#fbfcfd\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"90%\"><tbody><tr><td align=\"left\"><div style=\"line-height: 24px;\"><font style=\"font-size: 15px;\" face=\"Arial, Helvetica, sans-serif\" color=\"#57697e\" size=\"4\"><span title=\"\" data-original-title=\"\" style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;\">Your order has been updated to the following status: <span title=\"\" data-original-title=\"\" style=\"font-weight: bold;\">{status_name}</span></span></font></div><!-- padding --><div style=\"height: 20px; line-height: 20px; font-size: 10px;\"></div></td></tr><tr><td align=\"left\"><div style=\"line-height: 24px;\"><font style=\"font-size: 15px;\" face=\"Arial, Helvetica, sans-serif\" color=\"#57697e\" size=\"4\"><span title=\"\" data-original-title=\"\" style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;\"><a title=\"\" data-original-title=\"\" href=\"{order_view_url}\">Click here</a> to view your order progress.</span></font><br></div><!-- padding --><div style=\"height: 20px; line-height: 20px; font-size: 10px;\"></div></td></tr><tr><td align=\"left\"><div style=\"line-height: 24px;\"><font style=\"font-size: 15px;\" face=\"Arial, Helvetica, sans-serif\" color=\"#57697e\" size=\"4\"><span title=\"\" data-original-title=\"\" style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;\">Your order number is: <span title=\"\" data-original-title=\"\" style=\"font-weight: bold;\">{order_number}</span></span></font></div><!-- padding --><div style=\"height: 30px; line-height: 30px; font-size: 10px;\"></div></td></tr><tr><td align=\"left\"><div style=\"line-height: 24px;\"><span title=\"\" data-original-title=\"\" style=\"font-weight: bold;\"><font style=\"font-size: 15px;\" face=\"Arial, Helvetica, sans-serif\" color=\"#57697e\" size=\"4\"><span title=\"\" data-original-title=\"\" style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;\">The comments for your order are:</span></font></span></div><div style=\"line-height: 24px;\"><font style=\"font-size: 15px;\" face=\"Arial, Helvetica, sans-serif\" color=\"#57697e\" size=\"4\"><span title=\"\" data-original-title=\"\" style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;\">{status_comment}</span></font></div><!-- padding --><div style=\"height: 40px; line-height: 40px; font-size: 10px;\"></div></td></tr><tr><td align=\"left\"><div style=\"line-height: 24px;\"><font style=\"font-size: 15px;\" face=\"Arial, Helvetica, sans-serif\" color=\"#57697e\" size=\"4\"><span title=\"\" data-original-title=\"\" style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;\">We hope to see you again soon.<br>{signature}</span></font></div><!-- padding --><div style=\"height: 40px; line-height: 40px; font-size: 10px;\"></div></td></tr></tbody></table></td></tr><!--content 1 END--><!--footer --><tr><td class=\"iage_footer\" align=\"center\" bgcolor=\"#ffffff\"><!-- padding --><div style=\"height: 20px; line-height: 20px; font-size: 10px;\"></div><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"><tbody><tr><td align=\"center\"><font style=\"font-size: 13px;\" face=\"Arial, Helvetica, sans-serif\" color=\"#96a5b5\" size=\"3\"><span title=\"\" data-original-title=\"\" style=\"font-family: Arial, Helvetica, sans-serif; font-size: 13px; color: #96a5b5;\">2015 © {site_name} All Rights Reserved.</span></font></td></tr></tbody></table><!-- padding --><div style=\"height: 20px; line-height: 20px; font-size: 10px;\"></div></td></tr><!--footer END--><tr><td><!-- padding --><div style=\"height: 80px; line-height: 80px; font-size: 10px;\"></div></td></tr></tbody></table><!--[if gte mso 10]></td></tr></table><![endif]--></td></tr></tbody></table></div>', '2018-01-23 00:00:00', '2018-01-23 00:00:00'),
(22, 11, 'reservation_update', 'Your Reservation Update - {reservation_number}', '<div id=\"mailsub\" class=\"notification\" align=\"center\"><table style=\"min-width: 320px;\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"><tbody><tr><td align=\"center\" bgcolor=\"#eff3f8\"><!--[if gte mso 10]><table width=\"680\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\"><tr><td><![endif]--><table class=\"table_width_100\" style=\"max-width: 680px; min-width: 300px;\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"><tbody><tr><td><!-- padding --><div style=\"height: 80px; line-height: 80px; font-size: 10px;\"></div></td></tr><!--header --><tr><td align=\"center\" bgcolor=\"#ffffff\"><!-- padding --><div style=\"height: 30px; line-height: 30px; font-size: 10px;\"></div><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"90%\"><tbody><tr><td align=\"left\"><!-- Item --><div class=\"mob_center_bl\" style=\"float: left; display: inline-block; width: 115px;\"><table class=\"mob_center\" style=\"border-collapse: collapse;\" align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"115\"><tbody><tr><td align=\"left\" valign=\"middle\"><!-- padding --><div style=\"height: 20px; line-height: 20px; font-size: 10px;\"></div><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"115\"><tbody><tr><td class=\"mob_center\" align=\"left\" valign=\"top\"><a title=\"\" data-original-title=\"\" href=\"{site_url}\" target=\"_blank\" style=\"color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 13px;\"><font face=\"Arial, Helvetica, sans-seri; font-size: 13px;\" color=\"#596167\" size=\"3\"><img src=\"{site_logo}\" alt=\"{site_name}\" style=\"display: block;\" height=\"19\" border=\"0\" width=\"115\"></font></a></td></tr></tbody></table></td></tr></tbody></table></div><!-- Item END--><!--[if gte mso 10]></td><td align=\"right\"><![endif]--><!-- Item --><div class=\"mob_center_bl\" style=\"float: right; display: inline-block; width: 88px;\"><table style=\"border-collapse: collapse;\" align=\"right\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"88\"><tbody><tr><td align=\"right\" valign=\"middle\"><!-- padding --><div style=\"height: 20px; line-height: 20px; font-size: 10px;\"></div><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"><tbody><tr><td align=\"right\"><!--social --><div class=\"mob_center_bl\" style=\"width: 88px;\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\"><tbody><tr><td style=\"line-height: 19px;\" align=\"center\" width=\"30\"><a title=\"\" data-original-title=\"\" href=\"#\" target=\"_blank\" style=\"color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\"><font face=\"Arial, Helvetica, sans-serif\" color=\"#596167\" size=\"2\"></font></a></td><td style=\"line-height: 19px;\" align=\"center\" width=\"39\"><a title=\"\" data-original-title=\"\" href=\"#\" target=\"_blank\" style=\"color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\"><font face=\"Arial, Helvetica, sans-serif\" color=\"#596167\" size=\"2\"></font></a></td><td style=\"line-height: 19px;\" align=\"right\" width=\"29\"><a title=\"\" data-original-title=\"\" href=\"#\" target=\"_blank\" style=\"color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\"><font face=\"Arial, Helvetica, sans-serif\" color=\"#596167\" size=\"2\"></font></a></td></tr></tbody></table></div><!--social END--></td></tr></tbody></table></td></tr></tbody></table></div><!-- Item END--></td></tr></tbody></table><!-- padding --><div style=\"height: 50px; line-height: 50px; font-size: 10px;\"></div></td></tr><!--header END--><!--content 1 --><tr><td align=\"center\" bgcolor=\"#fbfcfd\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"90%\"><tbody><tr><td align=\"left\"><div style=\"line-height: 24px;\"><font style=\"font-size: 15px;\" face=\"Arial, Helvetica, sans-serif\" color=\"#57697e\" size=\"4\"><span title=\"\" data-original-title=\"\" style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;\">Your reservation has been updated to the following status: <span title=\"\" data-original-title=\"\" style=\"font-weight: bold;\">{status_name}</span></span></font></div><!-- padding --><div style=\"height: 20px; line-height: 20px; font-size: 10px;\"></div></td></tr><tr><td align=\"left\"><div style=\"line-height: 24px;\"><font style=\"font-size: 15px;\" face=\"Arial, Helvetica, sans-serif\" color=\"#57697e\" size=\"4\"><span title=\"\" data-original-title=\"\" style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;\">Your reservation number: <span title=\"\" data-original-title=\"\" style=\"font-weight: bold;\">{reservation_number}</span> at <span title=\"\" data-original-title=\"\" style=\"font-weight: bold;\">{location_name}</span>.</span></font></div><!-- padding --><div style=\"height: 20px; line-height: 20px; font-size: 10px;\"></div></td></tr><tr><td align=\"left\"><div style=\"line-height: 24px;\"><span title=\"\" data-original-title=\"\" style=\"font-weight: bold;\"><font style=\"font-size: 15px;\" face=\"Arial, Helvetica, sans-serif\" color=\"#57697e\" size=\"4\"><span title=\"\" data-original-title=\"\" style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;\">The comments for your reservation are:</span></font></span></div><div style=\"line-height: 24px;\"><font style=\"font-size: 15px;\" face=\"Arial, Helvetica, sans-serif\" color=\"#57697e\" size=\"4\"><span title=\"\" data-original-title=\"\" style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;\">{status_comment}<br></span></font></div><!-- padding --><div style=\"height: 20px; line-height: 20px; font-size: 10px;\"></div></td></tr><tr><td align=\"left\"><div style=\"line-height: 24px;\"><font style=\"font-size: 15px;\" face=\"Arial, Helvetica, sans-serif\" color=\"#57697e\" size=\"4\"><span title=\"\" data-original-title=\"\" style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;\">We hope to see you again soon.<br>{signature}</span></font></div><!-- padding --><div style=\"height: 40px; line-height: 40px; font-size: 10px;\"></div></td></tr></tbody></table></td></tr><!--content 1 END--><!--footer --><tr><td class=\"iage_footer\" align=\"center\" bgcolor=\"#ffffff\"><!-- padding --><div style=\"height: 20px; line-height: 20px; font-size: 10px;\"></div><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"><tbody><tr><td align=\"center\"><font style=\"font-size: 13px;\" face=\"Arial, Helvetica, sans-serif\" color=\"#96a5b5\" size=\"3\"><span title=\"\" data-original-title=\"\" style=\"font-family: Arial, Helvetica, sans-serif; font-size: 13px; color: #96a5b5;\">2015 © {site_name} All Rights Reserved.</span></font></td></tr></tbody></table><!-- padding --><div style=\"height: 20px; line-height: 20px; font-size: 10px;\"></div></td></tr><!--footer END--><tr><td><!-- padding --><div style=\"height: 80px; line-height: 80px; font-size: 10px;\"></div></td></tr></tbody></table><!--[if gte mso 10]></td></tr></table><![endif]--></td></tr></tbody></table></div>', '2018-01-23 00:00:00', '2018-01-23 00:00:00');
INSERT INTO `ok_mail_templates_data` (`template_data_id`, `template_id`, `code`, `subject`, `body`, `date_added`, `date_updated`) VALUES
(23, 11, 'treshold_alert', 'Inventory - Stock Refill Notification', '<div id=\"mailsub\" class=\"notification\" align=\"center\">\r\n	<table style=\"min-width: 320px;\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\r\n		<tbody>\r\n			<tr><td align=\"center\" bgcolor=\"#eff3f8\">\r\n				<!--[if gte mso 10]><table width=\"680\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\"><tr><td><![endif]-->\r\n				<table class=\"table_width_100\" style=\"max-width: 680px; min-width: 300px;\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\r\n					<tbody>\r\n						<tr>\r\n							<td>\r\n							<!-- padding -->\r\n							<div style=\"height: 80px; line-height: 80px; font-size: 10px;\"></div></td>\r\n						</tr>\r\n						<!--header -->\r\n							<tr>\r\n								<td align=\"center\" bgcolor=\"#ffffff\">\r\n								<!-- padding -->\r\n								<div style=\"height: 30px; line-height: 30px; font-size: 10px;\"></div>\r\n								<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"90%\">\r\n									<tbody>\r\n										<tr>\r\n										<td align=\"left\">\r\n											<!-- Item -->\r\n											<div class=\"mob_center_bl\" style=\"float: left; display: inline-block; width: 115px;\">\r\n												<table class=\"mob_center\" style=\"border-collapse: collapse;\" align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"115\">\r\n												<tbody>\r\n													<tr><td align=\"left\" valign=\"middle\">\r\n														<!-- padding -->\r\n														<div style=\"height: 20px; line-height: 20px; font-size: 10px;\"></div>\r\n														<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"115\">\r\n														<tbody>\r\n														<tr><td class=\"mob_center\" align=\"left\" valign=\"top\"><a href=\"{site_url}\" target=\"_blank\" style=\"color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 13px;\">\r\n														<font face=\"Arial, Helvetica, sans-seri; font-size: 13px;\" color=\"#596167\" size=\"3\"><img src=\"{site_logo}\" alt=\"{site_name}\" style=\"display: block;\" height=\"19\" border=\"0\" width=\"115\"></font></a></td></tr>\r\n														</tbody>\r\n														</table>\r\n														</td>\r\n													</tr>\r\n												</tbody>\r\n												</table>\r\n											</div>\r\n												<!-- Item END--><!--[if gte mso 10]></td><td align=\"right\"><![endif]--><!-- Item -->\r\n												<div class=\"mob_center_bl\" style=\"float: right; display: inline-block; width: 88px;\">\r\n													<table style=\"border-collapse: collapse;\" align=\"right\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"88\">\r\n														<tbody>\r\n														<tr>\r\n														<td align=\"right\" valign=\"middle\"><!-- padding --><div style=\"height: 20px; line-height: 20px; font-size: 10px;\"></div>\r\n														<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\r\n														<tbody>\r\n														<tr><td align=\"right\"><!--social --><div class=\"mob_center_bl\" style=\"width: 88px;\">\r\n														<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n														<tbody><tr><td style=\"line-height: 19px;\" align=\"center\" width=\"30\"><a href=\"#\" target=\"_blank\" style=\"color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\"><font face=\"Arial, Helvetica, sans-serif\" color=\"#596167\" size=\"2\"></font></a></td><td style=\"line-height: 19px;\" align=\"center\" width=\"39\"><a href=\"#\" target=\"_blank\" style=\"color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\"><font face=\"Arial, Helvetica, sans-serif\" color=\"#596167\" size=\"2\"></font></a></td><td style=\"line-height: 19px;\" align=\"right\" width=\"29\"><a href=\"#\" target=\"_blank\" style=\"color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\"><font face=\"Arial, Helvetica, sans-serif\" color=\"#596167\" size=\"2\"></font></a></td></tr>\r\n														</tbody>\r\n														</table>\r\n														</div><!--social END--></td></tr>\r\n														</tbody>\r\n														</table></td>\r\n														</tr>\r\n														</tbody>\r\n													</table>\r\n												</div>\r\n											<!-- Item END-->\r\n											</td>\r\n										</tr>\r\n									</tbody>\r\n								</table>\r\n								<!-- padding -->\r\n								<div style=\"height: 50px; line-height: 50px; font-size: 10px;\"></div></td></tr><!--header END--><!--content 1 --><tr><td align=\"center\" bgcolor=\"#fbfcfd\">\r\n								<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"90%\">\r\n								<tbody>\r\n									<tr>\r\n									<td align=\"left\">\r\n									<!-- padding -->\r\n									<div style=\"height: 40px; line-height: 40px; font-size: 10px;\"></div>\r\n									<div style=\"line-height: 44px;\">\r\n									<font style=\"font-size: 34px;\" face=\"Arial, Helvetica, sans-serif\" color=\"#57697e\" size=\"5\">\r\n									<span style=\"font-family: Arial, Helvetica, sans-serif; font-size: 34px; color: #57697e;\">Update your stock item!</span>\r\n									</font>\r\n									</div>\r\n									<!-- padding -->\r\n									<div style=\"height: 30px; line-height: 30px; font-size: 10px;\"></div>\r\n									</td></tr>\r\n									<tr>\r\n									<td align=\"left\">\r\n									<div style=\"line-height: 24px;\">\r\n									<font style=\"font-size: 15px;\" face=\"Arial, Helvetica, sans-serif\" color=\"#57697e\" size=\"4\">\r\n									<span style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;\">Dear {location_manager},<br>{location_name},<br>\r\n									{location_address_1}, {location_city}, {location_state}, {location_postcode},</span></font>\r\n									</div>\r\n									<!-- padding -->\r\n									<div style=\"height: 20px; line-height: 20px; font-size: 10px;\"></div>\r\n									</td>\r\n									</tr>\r\n									<tr>\r\n									<td align=\"left\">\r\n										<div style=\"line-height: 24px;\">\r\n											<font style=\"font-size: 15px;\" face=\"Arial, Helvetica, sans-serif\" color=\"#57697e\" size=\"4\">\r\n											<span style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;\">This email is to inform you that following items in your inventory has reach or crossed the threshold level set by you: \r\n											</span>\r\n											</font>\r\n										</div>\r\n										<!-- padding -->\r\n										<div style=\"height: 20px; line-height: 20px; font-size: 10px;\"></div>\r\n									</td>\r\n									</tr>\r\n									<tr>\r\n									<td>\r\n									<div style=\"line-height: 24px;\">\r\n									<font style=\"font-size: 15px;\" face=\"Arial, Helvetica, sans-serif\" color=\"#57697e\" size=\"4\">\r\n									<span style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;\">\r\n									<table>\r\n										Note that {counter} item(s) need to be refilled. <a title=\"\" data-original-title=\"\" href=\"{item_view_url}\">Click here</a> to view more about item(s) details.\r\n									</table>\r\n									</span></font>\r\n									</div>\r\n									</td>\r\n									</tr>\r\n									<tr><td align=\"left\"><div style=\"line-height: 24px;\"><font style=\"font-size: 15px;\" face=\"Arial, Helvetica, sans-serif\" color=\"#57697e\" size=\"4\"><span style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;\">We recommend you to refill the stock for the listed items for a smoother running of your restaurant\'s business!<br> Thanks and Regards</span></font></div><!-- padding --><div style=\"height: 40px; line-height: 40px; font-size: 10px;\"></div></td>\r\n									</tr>\r\n								</tbody>\r\n								</table>\r\n								</td></tr>\r\n								<!--content 1 END--><!--footer -->\r\n								<tr><td class=\"iage_footer\" align=\"center\" bgcolor=\"#ffffff\"><!-- padding --><div style=\"height: 20px; line-height: 20px; font-size: 10px;\"></div>\r\n								<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\r\n									<tbody>\r\n										<tr><td align=\"center\"><font style=\"font-size: 13px;\" face=\"Arial, Helvetica, sans-serif\" color=\"#96a5b5\" size=\"3\"><span style=\"font-family: Arial, Helvetica, sans-serif; font-size: 13px; color: #96a5b5;\">Smart-Resto for {site_name}</span></font></td></tr>\r\n									</tbody>\r\n								</table><!-- padding --><div style=\"height: 20px; line-height: 20px; font-size: 10px;\"></div></td></tr><!--footer END--><tr><td><!-- padding --><div style=\"height: 80px; line-height: 80px; font-size: 10px;\"></div></td></tr>\r\n						</tbody>\r\n					</table><!--[if gte mso 10]></td></tr></table><![endif]-->\r\n				</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n</div>', '2014-04-16 00:56:00', '2014-05-15 15:46:30');

-- --------------------------------------------------------

--
-- Table structure for table `ok_mealtimes`
--

CREATE TABLE `ok_mealtimes` (
  `mealtime_id` int(11) NOT NULL,
  `mealtime_name` varchar(128) NOT NULL,
  `start_time` time NOT NULL DEFAULT '00:00:00',
  `end_time` time NOT NULL DEFAULT '23:59:59',
  `mealtime_status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ok_mealtimes`
--

INSERT INTO `ok_mealtimes` (`mealtime_id`, `mealtime_name`, `start_time`, `end_time`, `mealtime_status`) VALUES
(11, 'Breakfast', '07:00:00', '10:00:00', 1),
(12, 'Lunch', '12:00:00', '14:30:00', 1),
(13, 'Dinner', '18:00:00', '20:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ok_menus`
--

CREATE TABLE `ok_menus` (
  `menu_id` int(11) NOT NULL,
  `menu_name` varchar(255) NOT NULL,
  `menu_description` text NOT NULL,
  `menu_location` int(11) NOT NULL,
  `menu_price` decimal(15,4) NOT NULL,
  `menu_photo` varchar(255) NOT NULL,
  `menu_category_id` int(11) NOT NULL,
  `stock_qty` int(11) NOT NULL,
  `minimum_qty` int(11) NOT NULL,
  `subtract_stock` tinyint(1) NOT NULL,
  `mealtime_id` int(11) NOT NULL,
  `menu_status` tinyint(1) NOT NULL,
  `menu_priority` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ok_menus_specials`
--

CREATE TABLE `ok_menus_specials` (
  `special_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL DEFAULT '0',
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `special_price` decimal(15,4) DEFAULT NULL,
  `special_status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ok_menus_specials`
--

INSERT INTO `ok_menus_specials` (`special_id`, `menu_id`, `start_date`, `end_date`, `special_price`, `special_status`) VALUES
(51, 81, '2014-04-10', '2014-04-30', '6.9900', 1),
(52, 76, '2014-04-23', '2014-07-31', '10.0000', 1),
(53, 86, '0000-00-00', '0000-00-00', '0.0000', 0),
(54, 87, '0000-00-00', '0000-00-00', '0.0000', 0),
(57, 84, '0000-00-00', '0000-00-00', '0.0000', 0),
(58, 77, '0000-00-00', '0000-00-00', '0.0000', 0),
(59, 78, '0000-00-00', '0000-00-00', '0.0000', 0),
(60, 79, '0000-00-00', '0000-00-00', '0.0000', 0),
(61, 85, '0000-00-00', '0000-00-00', '0.0000', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ok_menu_options`
--

CREATE TABLE `ok_menu_options` (
  `menu_option_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `required` tinyint(4) NOT NULL,
  `default_value_id` tinyint(4) NOT NULL,
  `option_values` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ok_menu_options`
--

INSERT INTO `ok_menu_options` (`menu_option_id`, `option_id`, `menu_id`, `required`, `default_value_id`, `option_values`) VALUES
(11, 25, 22, 1, 0, 'a:1:{i:1;a:5:{s:15:\"option_value_id\";s:2:\"16\";s:5:\"price\";s:8:\"100.0000\";s:8:\"quantity\";s:1:\"5\";s:14:\"subtract_stock\";s:1:\"0\";s:20:\"menu_option_value_id\";s:2:\"75\";}}'),
(12, 29, 34, 0, 0, 'a:3:{i:1;a:5:{s:15:\"option_value_id\";s:2:\"19\";s:5:\"price\";s:3:\"200\";s:8:\"quantity\";s:1:\"2\";s:14:\"subtract_stock\";s:1:\"1\";s:20:\"menu_option_value_id\";s:0:\"\";}i:2;a:5:{s:15:\"option_value_id\";s:2:\"19\";s:5:\"price\";s:0:\"\";s:8:\"quantity\";s:0:\"\";s:14:\"subtract_stock\";s:1:\"0\";s:20:\"menu_option_value_id\";s:0:\"\";}i:3;a:5:{s:15:\"option_value_id\";s:2:\"19\";s:5:\"price\";s:0:\"\";s:8:\"quantity\";s:0:\"\";s:14:\"subtract_stock\";s:1:\"0\";s:20:\"menu_option_value_id\";s:0:\"\";}}');

-- --------------------------------------------------------

--
-- Table structure for table `ok_menu_option_values`
--

CREATE TABLE `ok_menu_option_values` (
  `menu_option_value_id` int(11) NOT NULL,
  `menu_option_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value_id` int(11) NOT NULL,
  `new_price` decimal(15,4) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `subtract_stock` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ok_menu_option_values`
--

INSERT INTO `ok_menu_option_values` (`menu_option_value_id`, `menu_option_id`, `menu_id`, `option_id`, `option_value_id`, `new_price`, `quantity`, `subtract_stock`) VALUES
(52, 25, 84, 22, 8, '0.0000', 0, 0),
(53, 25, 84, 22, 9, '0.0000', 0, 0),
(54, 25, 84, 22, 11, '0.0000', 0, 0),
(55, 26, 79, 22, 8, '0.0000', 0, 0),
(56, 26, 79, 22, 9, '0.0000', 0, 0),
(57, 26, 79, 22, 10, '0.0000', 0, 0),
(58, 26, 79, 22, 11, '0.0000', 0, 0),
(59, 26, 79, 22, 12, '0.0000', 0, 0),
(60, 27, 79, 24, 13, '0.0000', 0, 0),
(61, 27, 79, 24, 14, '0.0000', 0, 0),
(62, 28, 78, 22, 8, '0.0000', 0, 0),
(63, 28, 78, 22, 9, '0.0000', 0, 0),
(64, 28, 78, 22, 10, '0.0000', 0, 0),
(65, 28, 78, 22, 11, '0.0000', 0, 0),
(66, 28, 78, 22, 12, '0.0000', 0, 0),
(67, 22, 85, 22, 8, '0.0000', 0, 0),
(68, 22, 85, 22, 9, '0.0000', 0, 0),
(69, 22, 85, 22, 10, '0.0000', 0, 0),
(70, 24, 85, 24, 13, '0.0000', 0, 0),
(71, 24, 85, 24, 14, '0.0000', 0, 0),
(72, 23, 81, 23, 7, '0.0000', 0, 0),
(73, 23, 81, 23, 6, '0.0000', 0, 0),
(74, 23, 81, 23, 15, '0.0000', 0, 0),
(75, 11, 22, 25, 16, '100.0000', 5, 0),
(76, 12, 34, 29, 19, '200.0000', 2, 1),
(77, 12, 34, 29, 19, '0.0000', 0, 0),
(78, 12, 34, 29, 19, '0.0000', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ok_messages`
--

CREATE TABLE `ok_messages` (
  `message_id` int(15) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `send_type` varchar(32) NOT NULL,
  `recipient` varchar(32) NOT NULL,
  `subject` text NOT NULL,
  `body` text NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ok_messages`
--

INSERT INTO `ok_messages` (`message_id`, `sender_id`, `date_added`, `send_type`, `recipient`, `subject`, `body`, `status`) VALUES
(11, 11, '2018-05-29 15:00:35', 'account', 'all_newsletters', 'message from the king', '<p>This is a message from the king </p><p><img src=\"https://www.onlinekatta.com/Smart-Resto-demo/assets/images/data/Menu-Green-Tea.jpg\"><br></p>', 1),
(12, 11, '2018-05-29 15:47:12', 'email', 'all_newsletters', 'Hello', '<p>How is everyone out there?</p>', 1),
(13, 11, '2018-05-29 15:58:08', 'account', 'all_newsletters', 'message from the king', '<p>This message is from the King<br></p>', 1),
(14, 11, '2018-05-29 16:01:37', 'account', 'all_newsletters', 'test fromt he king', '<p>message from tje king<br></p>', 1),
(15, 11, '2018-05-29 16:07:32', 'account', 'all_newsletters', 'message from the king', '<p>message from the king<br></p>', 1),
(16, 11, '2018-05-29 16:14:35', 'account', 'all_newsletters', 'message', '<p>message from the King. <br></p>', 1),
(17, 11, '2018-05-29 16:16:35', 'account', 'all_newsletters', 'mesage', '<p>message from the King and the Queen<br></p>', 1),
(18, 11, '2018-05-29 16:21:21', 'account', 'all_newsletters', 'the message', '<p>mesage with mesage<br></p>', 1),
(19, 11, '2018-05-29 16:25:05', 'account', 'all_newsletters', 'em', '<p>message fromt he King<br></p>', 1),
(20, 11, '2018-05-29 17:07:22', 'account', 'all_newsletters', 'message', '<p><img src=\"https://www.onlinekatta.com/Smart-Resto-demo/assets/images/data/Menu-Egg-Biryani.jpg\"></p><p><img src=\"https://www.onlinekatta.com/Smart-Resto-demo/assets/images/data/Menu-Egg-Biryani.jpg\">message from the King<br></p>', 1),
(21, 11, '2018-05-29 17:12:25', 'email', 'all_newsletters', 'message from the king', '                                                                                                                                                message fromthe king<br>', 1),
(22, 11, '2018-05-29 17:15:02', 'account', 'all_newsletters', 'yes', '<p>                                                                                                                                                if we can rebuild the worl</p><p>we can make it better<br></p>', 1),
(23, 11, '2018-05-29 17:16:59', 'account', 'all_newsletters', 'message from the king', '                                                                                                                                                message from the king<br>', 1),
(24, 11, '2018-05-29 17:20:09', 'account', 'all_newsletters', 'message from the king', '<p>                                                                                                                                                yes we can go far, we can do this and that but .... yes we can go far, we can do this and that but ....yes we can go far, we can do this and that but ....yes we can go far, we can do this and that but ....yes we can go far, we can do this and that but ....yes we can go far, we can do this and that but ....yes we can go far, we can do this and that but ....yes we can go far, we can do this and that but ....yes we can go far, we can do this and that but ....yes we can go far, we can do this and that but ....yes we can go far, we can do this and that but ....<br></p>', 1),
(25, 11, '2018-05-29 17:24:23', 'account', 'all_newsletters', 'message from the king', '<p>                                                                                                                                                this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... <br></p>', 1),
(26, 11, '2018-05-29 17:25:20', 'account', 'all_newsletters', 'message from the king', '<p>                                                                                                                                                this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... </p>', 1),
(27, 11, '2018-05-29 17:26:53', 'account', 'all_newsletters', 'message from the king', '<p>                                                                                                                                                this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... </p>', 1),
(28, 11, '2018-05-29 17:28:04', 'account', 'all_newsletters', 'message from the king', '<p>                                                                                                                                                this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... </p>', 1),
(29, 11, '2018-05-29 17:29:04', 'account', 'all_newsletters', 'message from the king', '<p>                                                                                                                                                this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... </p>', 1),
(30, 11, '2018-05-29 17:32:07', 'account', 'all_newsletters', 'message from the king', '<p>                                                                                                                                                this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... </p>', 1),
(31, 11, '2018-05-29 17:33:05', 'account', 'all_newsletters', 'message from the king', '<p>                                                                                                                                                this and that ... this and that ... </p>', 1),
(32, 11, '2018-05-29 17:35:22', 'account', 'all_newsletters', 'message from the king', '<p>                                                                                                                                                this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... this and that ... </p><p><br></p>', 1),
(33, 11, '2018-05-29 17:36:17', 'account', 'all_newsletters', 'message from the king', '<p>                                                                                                                                                this and that ... this and that ... this and that ... </p>', 1),
(34, 11, '2018-05-29 17:36:49', 'account', 'all_newsletters', 'message from the king', '<p>                                                                                                                                                this and that ... </p>', 1),
(35, 11, '2018-05-29 17:48:19', 'account', 'all_newsletters', 'message from the king', '<p>                                                                                                                                                this and that ... this and that ... this and that ... </p>', 1),
(36, 11, '2018-05-29 17:51:05', 'account', 'all_newsletters', 'message from the king', '<p>                                                                                                                                                this that.this that.this that.this that.this that.this that.this that.this that. </p>', 1),
(37, 11, '2018-05-29 17:52:16', 'account', 'all_newsletters', 'message from the king', '<p>                                                                                                                                                this that.this that.this that.this that.this that.this that.this that.this that.this that.this that.this that.this that.this that.</p>', 1),
(38, 11, '2018-05-29 17:53:54', 'account', 'all_newsletters', 'message from the king', '<p>                                                                                                                                                this that.this that.this that.this that.this that.this that.this that.this that.this that.this that.this that.this that.this that.this that.</p>', 1),
(39, 11, '2018-05-29 17:55:45', 'account', 'all_newsletters', 'message from the king', '<p>                                                                                                                                                this that.this that.this that.this that.this that.this that.this that.this that.this&nbsp; is that.this that.this that.this #that!//</p>', 1),
(40, 11, '2018-05-29 17:58:09', 'account', 'all_newsletters', 'message from the king', '<p>                                                                                                                                                <span class=\"st\">then this replacement <em>string</em> is used for every ..... Just keep fine tuning it until you <em>get</em> what you need, you\'ll see ive&nbsp;...</span></p>', 1),
(41, 11, '2018-05-29 17:59:07', 'account', 'all_newsletters', 'dasdasdasdd', '<p>                                                                                                                                                then this replacement string is used for every ..... Just keep fine tuning it until you get what you need, you\'ll see ive ...</p>', 1),
(42, 11, '2018-05-29 18:03:14', 'account', 'all_newsletters', 'message from the king', '                                                                                                                                                test', 1),
(43, 11, '2018-05-29 18:05:27', 'account', 'all_newsletters', 'message from the king', '                                                                                                                                                message from the king<br>', 1),
(44, 11, '2018-05-29 18:22:52', 'account', 'all_newsletters', 'message from the king', '                                                                                                                                                testt message with image<br>', 1),
(45, 11, '2018-05-29 18:23:23', 'account', 'all_newsletters', 'message from the king', '                                                                                                                                                message with image<br>', 1),
(46, 11, '2018-05-29 18:27:11', 'account', 'all_newsletters', 'message', '                                                                                                                                                message with image<br>', 1),
(47, 11, '2018-05-29 18:30:25', 'email', 'all_newsletters', 'sadasd', 'asdasdssd dsfds ds', 1),
(48, 11, '2018-05-31 15:22:46', 'account', 'all_newsletters', 'we agree', '                                                                                                                                                message from the king<br>', 1),
(49, 11, '2018-07-16 11:24:39', 'email', 'customer_group', 'Happy Diwali', '                                                                                                                                                <p>Dear Customer,</p><p><br></p><p>Diwali is on Banggggggggggggggggggg.....................................</p><p><br></p><p>50 % OFF Half a Price Deal&gt;...</p>', 0),
(50, 18, '2018-11-05 17:13:28', 'account', 'all_staffs', 'diwali', 'weetryyyyyiu', 1),
(51, 18, '2018-11-06 15:30:35', 'email', 'all_staffs', 'diwali', 'afcyhfvyujyvhkbgkyihi', 0),
(52, 18, '2018-11-13 10:21:49', 'email', 'all_customers', 'hellow', 'sytrdfjutfiky', 1),
(53, 18, '2018-11-13 10:21:55', 'email', 'all_customers', 'hellow', 'sytrdfjutfiky', 1),
(54, 18, '2018-11-13 10:22:00', 'email', 'all_customers', 'hellow', 'sytrdfjutfiky', 1),
(55, 18, '2018-11-13 10:22:05', 'email', 'all_customers', 'hellow', 'sytrdfjutfiky', 1),
(56, 18, '2018-11-13 10:22:10', 'email', 'all_customers', 'hellow', 'sytrdfjutfiky', 1),
(57, 18, '2018-11-13 10:22:15', 'email', 'all_customers', 'hellow', 'sytrdfjutfiky', 1),
(58, 18, '2018-11-13 10:22:20', 'email', 'all_customers', 'hellow', 'sytrdfjutfiky', 1),
(59, 18, '2018-11-13 10:22:25', 'email', 'all_customers', 'hellow', 'sytrdfjutfiky', 1),
(60, 18, '2018-11-13 10:22:31', 'email', 'all_customers', 'hellow', 'sytrdfjutfiky', 1),
(61, 18, '2018-11-13 10:22:36', 'email', 'all_customers', 'hellow', 'sytrdfjutfiky', 0),
(62, 18, '2018-11-13 10:22:36', 'email', 'all_customers', 'hellow', 'sytrdfjutfiky', 0),
(63, 18, '2018-11-13 10:22:36', 'email', 'all_customers', 'hellow', 'sytrdfjutfiky', 0),
(64, 18, '2018-11-13 10:22:37', 'email', 'all_customers', 'hellow', 'sytrdfjutfiky', 0),
(65, 18, '2018-11-13 10:22:37', 'email', 'all_customers', 'hellow', 'sytrdfjutfiky', 0),
(66, 18, '2018-11-13 10:22:37', 'email', 'all_customers', 'hellow', 'sytrdfjutfiky', 0),
(67, 18, '2018-11-13 10:22:37', 'email', 'all_customers', 'hellow', 'sytrdfjutfiky', 0),
(68, 18, '2018-11-13 10:22:37', 'email', 'all_customers', 'hellow', 'sytrdfjutfiky', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ok_message_meta`
--

CREATE TABLE `ok_message_meta` (
  `message_meta_id` int(11) NOT NULL,
  `message_id` int(11) NOT NULL,
  `state` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `deleted` tinyint(4) NOT NULL,
  `item` varchar(32) NOT NULL,
  `value` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ok_message_meta`
--

INSERT INTO `ok_message_meta` (`message_meta_id`, `message_id`, `state`, `status`, `deleted`, `item`, `value`) VALUES
(11, 11, 0, 1, 0, 'customer_id', '13'),
(12, 11, 0, 1, 0, 'sender_id', '11'),
(13, 12, 0, 1, 0, 'customer_email', 'sandeeppatel601@gmail.com'),
(14, 12, 0, 1, 0, 'sender_id', '11'),
(15, 13, 0, 1, 0, 'customer_id', '13'),
(16, 13, 0, 1, 0, 'sender_id', '11'),
(17, 14, 0, 1, 0, 'customer_id', '13'),
(18, 14, 0, 1, 0, 'sender_id', '11'),
(19, 15, 0, 1, 0, 'customer_id', '13'),
(20, 15, 0, 1, 0, 'sender_id', '11'),
(21, 16, 0, 1, 0, 'customer_id', '13'),
(22, 16, 0, 1, 0, 'sender_id', '11'),
(23, 17, 0, 1, 0, 'customer_id', '13'),
(24, 17, 0, 1, 0, 'sender_id', '11'),
(25, 18, 0, 1, 0, 'customer_id', '13'),
(26, 18, 0, 1, 0, 'sender_id', '11'),
(27, 19, 0, 1, 0, 'customer_id', '13'),
(28, 19, 0, 1, 0, 'sender_id', '11'),
(29, 20, 0, 1, 0, 'customer_id', '13'),
(30, 20, 0, 1, 0, 'sender_id', '11'),
(31, 21, 0, 1, 0, 'customer_email', 'sandeeppatel601@gmail.com'),
(32, 21, 0, 1, 0, 'sender_id', '11'),
(33, 22, 0, 1, 0, 'customer_id', '13'),
(34, 22, 0, 1, 0, 'sender_id', '11'),
(35, 23, 0, 1, 0, 'customer_id', '13'),
(36, 23, 0, 1, 0, 'sender_id', '11'),
(37, 24, 0, 1, 0, 'customer_id', '13'),
(38, 24, 0, 1, 0, 'sender_id', '11'),
(39, 25, 0, 1, 0, 'customer_id', '13'),
(40, 25, 0, 1, 0, 'sender_id', '11'),
(41, 26, 0, 1, 0, 'customer_id', '13'),
(42, 26, 0, 1, 0, 'sender_id', '11'),
(43, 27, 0, 1, 0, 'customer_id', '13'),
(44, 27, 0, 1, 0, 'sender_id', '11'),
(45, 28, 0, 1, 0, 'customer_id', '13'),
(46, 28, 0, 1, 0, 'sender_id', '11'),
(47, 29, 0, 1, 0, 'customer_id', '13'),
(48, 29, 0, 1, 0, 'sender_id', '11'),
(49, 30, 0, 1, 0, 'customer_id', '13'),
(50, 30, 0, 1, 0, 'sender_id', '11'),
(51, 31, 0, 1, 0, 'customer_id', '13'),
(52, 31, 0, 1, 0, 'sender_id', '11'),
(53, 32, 0, 1, 0, 'customer_id', '13'),
(54, 32, 0, 1, 0, 'sender_id', '11'),
(55, 33, 0, 1, 0, 'customer_id', '13'),
(56, 33, 0, 1, 0, 'sender_id', '11'),
(57, 34, 0, 1, 0, 'customer_id', '13'),
(58, 34, 0, 1, 0, 'sender_id', '11'),
(59, 35, 0, 1, 0, 'customer_id', '13'),
(60, 35, 0, 1, 0, 'sender_id', '11'),
(61, 36, 0, 1, 0, 'customer_id', '13'),
(62, 36, 0, 1, 0, 'sender_id', '11'),
(63, 37, 0, 1, 0, 'customer_id', '13'),
(64, 37, 0, 1, 0, 'sender_id', '11'),
(65, 38, 0, 1, 0, 'customer_id', '13'),
(66, 38, 0, 1, 0, 'sender_id', '11'),
(67, 39, 0, 1, 0, 'customer_id', '13'),
(68, 39, 0, 1, 0, 'sender_id', '11'),
(69, 40, 0, 1, 0, 'customer_id', '13'),
(70, 40, 0, 1, 0, 'sender_id', '11'),
(71, 41, 0, 1, 0, 'customer_id', '13'),
(72, 41, 0, 1, 0, 'sender_id', '11'),
(73, 42, 0, 1, 0, 'customer_id', '13'),
(74, 42, 0, 1, 0, 'sender_id', '11'),
(75, 43, 0, 1, 0, 'customer_id', '13'),
(76, 43, 0, 1, 0, 'sender_id', '11'),
(77, 44, 0, 1, 0, 'customer_id', '13'),
(78, 44, 0, 1, 0, 'sender_id', '11'),
(79, 45, 0, 1, 0, 'customer_id', '13'),
(80, 45, 0, 1, 0, 'sender_id', '11'),
(81, 46, 0, 1, 0, 'customer_id', '13'),
(82, 46, 0, 1, 0, 'sender_id', '11'),
(83, 47, 0, 1, 0, 'customer_email', 'sandeeppatel601@gmail.com'),
(84, 47, 0, 1, 0, 'sender_id', '11'),
(85, 48, 0, 1, 0, 'customer_id', '13'),
(86, 48, 0, 1, 0, 'sender_id', '11'),
(87, 50, 0, 1, 0, 'staff_id', '11'),
(88, 50, 0, 1, 0, 'staff_id', '13'),
(89, 50, 0, 1, 0, 'staff_id', '14'),
(90, 50, 0, 1, 0, 'staff_id', '15'),
(91, 50, 0, 1, 0, 'staff_id', '16'),
(92, 50, 0, 1, 0, 'staff_id', '17'),
(93, 50, 0, 1, 1, 'staff_id', '18'),
(94, 50, 0, 1, 0, 'sender_id', '18'),
(95, 52, 0, 0, 0, 'customer_email', 'prathamesh@onlinekatta.com'),
(96, 52, 0, 1, 0, 'sender_id', '18'),
(97, 53, 0, 0, 0, 'customer_email', 'prathamesh@onlinekatta.com'),
(98, 53, 0, 1, 0, 'sender_id', '18'),
(99, 54, 0, 0, 0, 'customer_email', 'prathamesh@onlinekatta.com'),
(100, 54, 0, 1, 0, 'sender_id', '18'),
(101, 55, 0, 0, 0, 'customer_email', 'prathamesh@onlinekatta.com'),
(102, 55, 0, 1, 0, 'sender_id', '18'),
(103, 56, 0, 0, 0, 'customer_email', 'prathamesh@onlinekatta.com'),
(104, 56, 0, 1, 0, 'sender_id', '18'),
(105, 57, 0, 0, 0, 'customer_email', 'prathamesh@onlinekatta.com'),
(106, 57, 0, 1, 0, 'sender_id', '18'),
(107, 58, 0, 0, 0, 'customer_email', 'prathamesh@onlinekatta.com'),
(108, 58, 0, 1, 0, 'sender_id', '18'),
(109, 60, 0, 0, 0, 'customer_email', 'prathamesh@onlinekatta.com'),
(110, 60, 0, 1, 2, 'sender_id', '18');

-- --------------------------------------------------------

--
-- Table structure for table `ok_migrations`
--

CREATE TABLE `ok_migrations` (
  `type` varchar(40) DEFAULT NULL,
  `version` bigint(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ok_migrations`
--

INSERT INTO `ok_migrations` (`type`, `version`) VALUES
('core', 30),
('cart_module', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ok_options`
--

CREATE TABLE `ok_options` (
  `option_id` int(11) NOT NULL,
  `option_name` varchar(32) NOT NULL,
  `display_type` varchar(15) NOT NULL,
  `priority` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ok_options`
--

INSERT INTO `ok_options` (`option_id`, `option_name`, `display_type`, `priority`) VALUES
(22, 'Cooked', 'checkbox', 1),
(23, 'Toppings', 'checkbox', 2),
(24, 'Dressing', 'select', 3),
(25, 'Fried', 'checkbox', 1),
(26, 'extra cheese', 'checkbox', 3),
(27, 'beer', 'checkbox', 3),
(28, 'sides', 'checkbox', 1),
(29, 'paneer-tikka', 'radio', 1),
(30, 'paneer tikka', 'radio', 1),
(31, 'paneer-tikka', 'radio', 1),
(32, 'paneer-chilli with cheese', 'radio', 1),
(33, 'paneer-tikka', 'radio', 1),
(34, 'dal-makhani', 'radio', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ok_option_values`
--

CREATE TABLE `ok_option_values` (
  `option_value_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `value` varchar(128) NOT NULL,
  `price` decimal(15,4) DEFAULT NULL,
  `priority` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ok_option_values`
--

INSERT INTO `ok_option_values` (`option_value_id`, `option_id`, `value`, `price`, `priority`) VALUES
(6, 23, 'Peperoni', '1.9900', 2),
(7, 23, 'Jalapenos', '3.9900', 1),
(12, 22, 'Assorted Meat', '5.9900', 5),
(11, 22, 'Beef', '4.9900', 4),
(10, 22, 'Fish', '3.0000', 3),
(9, 22, 'Chicken', '2.9900', 2),
(8, 22, 'Meat', '4.0000', 1),
(14, 24, 'Salad', '2.9900', 2),
(13, 24, 'Dodo', '3.9900', 1),
(15, 23, 'Sweetcorn', '1.9900', 3),
(16, 25, '16', '220.0000', 1),
(17, 28, 'papad', '5.0000', 1),
(18, 28, 'chutney', '10.0000', 2),
(19, 29, 'paneer tikka', '150.0000', 1),
(21, 30, 'cdp', '200.0000', 2),
(20, 30, 'abc', '100.0000', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ok_orders`
--

CREATE TABLE `ok_orders` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `first_name` varchar(32) NOT NULL,
  `last_name` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `location_id` int(11) NOT NULL,
  `address_id` int(11) NOT NULL,
  `table_id` int(11) NOT NULL,
  `cart` text NOT NULL,
  `total_items` int(11) NOT NULL,
  `comment` text NOT NULL,
  `payment` varchar(35) NOT NULL,
  `order_type` varchar(32) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` date NOT NULL,
  `order_time` time NOT NULL,
  `order_date` date NOT NULL,
  `order_total` decimal(15,4) DEFAULT NULL,
  `status_id` int(11) NOT NULL,
  `ip_address` varchar(40) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `notify` tinyint(1) NOT NULL,
  `assignee_id` int(11) NOT NULL,
  `invoice_no` int(11) NOT NULL,
  `invoice_prefix` varchar(32) NOT NULL,
  `invoice_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ok_order_menus`
--

CREATE TABLE `ok_order_menus` (
  `order_menu_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(15,4) DEFAULT NULL,
  `subtotal` decimal(15,4) DEFAULT NULL,
  `option_values` text NOT NULL,
  `comment` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ok_order_menus`
--

INSERT INTO `ok_order_menus` (`order_menu_id`, `order_id`, `menu_id`, `name`, `quantity`, `price`, `subtotal`, `option_values`, `comment`) VALUES
(11, 20001, 16, 'chole bhature', 2, '95.0000', '190.0000', '', ''),
(12, 20001, 17, 'kachori samosa', 1, '25.0000', '25.0000', '', ''),
(13, 20002, 18, 'Green Tea', 1, '50.0000', '50.0000', '', ''),
(14, 20003, 16, 'chole bhature', 1, '95.0000', '95.0000', '', ''),
(15, 20004, 11, 'idli', 1, '45.0000', '45.0000', '', ''),
(16, 20005, 11, 'idli', 1, '45.0000', '45.0000', '', ''),
(17, 20006, 11, 'idli', 1, '45.0000', '45.0000', '', ''),
(18, 20006, 12, 'dosa', 1, '55.0000', '55.0000', '', ''),
(19, 20007, 11, 'idli', 1, '45.0000', '45.0000', '', ''),
(20, 20008, 11, 'idli', 1, '45.0000', '45.0000', '', ''),
(21, 20009, 0, 'idli', 1, '45.0000', '45.0000', '', ''),
(22, 20010, 0, 'idli idli idliidliidliidliidliidliidliidliidliidliidliidliidliidliidliidliidliidliidliidliidliidliidliidliidli', 1, '45.0000', '45.0000', '', ''),
(23, 20013, 0, 'idli idli idliidliidliidliidliidliidliidliidliidliidliidliidliidliidliidliidliidliidliidliidliidliidliidliidli', 1, '45.0000', '45.0000', '', ''),
(24, 20014, 0, 'idli idli idliidliidli idliidliidliidliidliid liidl iidliidl iidliidlii dliidli idliidliid liidliidliidliidliidliidli', 1, '45.0000', '45.0000', '', ''),
(25, 20015, 0, 'idli idli idliidliidli idliidliidliidliidliid liidl iidliidl iidliidlii dliidli idliidliid liidliidliidliidliidliidli', 1, '45.0000', '45.0000', '', ''),
(26, 20016, 0, 'idliidliidliidliidliidliidliidliidliidliidliidliidliidliidliidliidliidliidliidliidliidliidliidliidliidliidli', 1, '45.0000', '45.0000', '', ''),
(27, 20017, 0, 'idliidliidliidliidliidliidliidliidliidliidliidliidliidliidliidliidliidliidliidliidliidliidliidliidliidliidli', 1, '45.0000', '45.0000', '', ''),
(28, 20017, 0, 'egg biryani egg biryani egg biryani egg biryani egg biryani egg biryani', 1, '110.0000', '110.0000', '', ''),
(29, 20018, 0, 'idliidliidliidliidliidliidliidliidliidliidliidliidliidliidliidliidliidliidliidliidliidliidliidliidliidliidli', 3, '45.0000', '135.0000', '', ''),
(30, 20018, 0, 'egg biryani egg biryani egg biryani egg biryani egg biryani egg biryani', 1, '110.0000', '110.0000', '', ''),
(31, 20018, 0, 'veg biryani', 1, '110.0000', '110.0000', '', ''),
(32, 20018, 0, 'Samosa Samosa SamosaSamosaSamosaSamosaSamosaSamosa', 1, '12.0000', '12.0000', '', ''),
(33, 20019, 0, 'idliidliidliidliidliidliidliidliidliidliidliidliidliidliidliidliidliidliidliidliidliidliidliidliidliidliidli', 1, '45.0000', '45.0000', '', ''),
(34, 20019, 0, 'egg biryani egg biryani egg biryani egg biryani egg biryani egg biryani', 1, '110.0000', '110.0000', '', ''),
(35, 20019, 0, 'veg biryani', 1, '110.0000', '110.0000', '', ''),
(36, 20019, 0, 'dosa', 1, '55.0000', '55.0000', '', ''),
(37, 20019, 0, 'Samosa Samosa SamosaSamosaSamosaSamosaSamosaSamosa', 1, '12.0000', '12.0000', '', ''),
(38, 20019, 0, 'chole bhature', 1, '95.0000', '95.0000', '', ''),
(39, 20019, 0, 'kachori samosa', 1, '25.0000', '25.0000', '', ''),
(40, 20019, 0, 'murg biryani', 1, '150.0000', '150.0000', '', ''),
(41, 20019, 0, 'Green Tea', 1, '50.0000', '50.0000', '', ''),
(42, 20019, 0, 'momos', 1, '60.0000', '60.0000', '', ''),
(43, 20020, 0, 'kachori samosa', 6, '25.0000', '150.0000', '', ''),
(44, 20021, 0, 'kachori samosa', 2, '25.0000', '50.0000', '', ''),
(45, 20021, 0, 'idli', 100, '45.0000', '4500.0000', '', ''),
(46, 20022, 0, 'Samosa', 12, '12.0000', '144.0000', '', ''),
(47, 20023, 0, 'Beans Meal', 5, '100.0000', '500.0000', '', ''),
(48, 20024, 0, 'Beans Meal', 10, '100.0000', '1000.0000', '', ''),
(49, 20025, 0, 'idli', 100, '45.0000', '4500.0000', '', ''),
(50, 20026, 11, 'idli', 20, '45.0000', '900.0000', '', ''),
(51, 20026, 12, 'dosa', 50, '55.0000', '2750.0000', '', ''),
(52, 20026, 16, 'chole bhature', 50, '95.0000', '4750.0000', '', ''),
(53, 20027, 11, 'idli', 1, '45.0000', '45.0000', '', ''),
(54, 20028, 11, 'idli', 20, '45.0000', '900.0000', '', ''),
(55, 20029, 11, 'idli', 2, '45.0000', '90.0000', '', ''),
(56, 20030, 23, 'Chicken Fried Rice', 2, '100.0000', '200.0000', '', ''),
(57, 20031, 11, 'idli', 2, '45.0000', '90.0000', '', ''),
(58, 20032, 16, 'chole bhature', 1, '95.0000', '95.0000', '', ''),
(59, 20033, 11, 'idli', 1, '45.0000', '45.0000', '', ''),
(60, 20034, 11, 'idli', 3, '45.0000', '135.0000', '', ''),
(61, 20035, 11, 'idli', 1, '45.0000', '45.0000', '', ''),
(62, 20036, 11, 'idli', 1, '45.0000', '45.0000', '', ''),
(63, 20037, 11, 'idli', 1, '45.0000', '45.0000', '', ''),
(64, 20038, 11, 'idli', 1, '45.0000', '45.0000', '', ''),
(65, 20039, 11, 'idli', 1, '45.0000', '45.0000', '', ''),
(66, 20040, 11, 'idli', 1, '45.0000', '45.0000', '', ''),
(67, 20041, 11, 'idli', 2, '45.0000', '90.0000', '', ''),
(68, 20042, 11, 'idli', 1, '45.0000', '45.0000', '', ''),
(69, 20043, 11, 'idli', 1, '45.0000', '45.0000', '', ''),
(70, 20044, 11, 'idli', 1, '45.0000', '45.0000', '', ''),
(71, 20045, 11, 'idli', 1, '45.0000', '45.0000', '', ''),
(72, 20046, 11, 'idli', 1, '45.0000', '45.0000', '', ''),
(73, 20047, 11, 'idli', 1, '45.0000', '45.0000', '', ''),
(74, 20048, 11, 'idli', 1, '45.0000', '45.0000', '', ''),
(75, 20049, 11, 'idli', 1, '45.0000', '45.0000', '', ''),
(76, 20050, 11, 'idli', 2, '45.0000', '90.0000', '', ''),
(77, 20051, 11, 'idli', 2, '45.0000', '90.0000', '', ''),
(78, 20052, 11, 'idli', 2, '45.0000', '90.0000', '', ''),
(79, 20053, 11, 'idli', 3, '45.0000', '135.0000', '', ''),
(80, 20054, 24, 'Chikech kabuli', 5, '100.0000', '500.0000', '', ''),
(81, 20055, 24, 'Chikech kabuli', 5, '100.0000', '500.0000', '', ''),
(82, 20056, 11, 'idli', 3, '45.0000', '135.0000', '', ''),
(83, 20057, 11, 'idli', 3, '45.0000', '135.0000', '', ''),
(84, 20058, 11, 'idli', 3, '45.0000', '135.0000', '', ''),
(85, 20059, 11, 'idli', 3, '45.0000', '135.0000', '', ''),
(86, 20060, 11, 'idli', 3, '45.0000', '135.0000', '', ''),
(87, 20061, 11, 'idli', 2, '45.0000', '90.0000', '', ''),
(88, 20062, 11, 'idli', 2, '45.0000', '90.0000', '', ''),
(89, 20063, 11, 'idli', 3, '45.0000', '135.0000', '', ''),
(90, 20064, 17, 'kachori samosa', 1, '25.0000', '25.0000', '', ''),
(91, 20064, 20, 'Pooran poli', 4, '20.0000', '80.0000', '', ''),
(92, 20066, 20, 'Pooran poli', 2, '20.0000', '40.0000', '', ''),
(93, 20066, 25, 'French Rice', 3, '30.0000', '90.0000', '', ''),
(94, 20066, 11, 'Idli', 2, '45.0000', '90.0000', '', ''),
(95, 20067, 11, 'Idli', 4, '45.0000', '180.0000', '', ''),
(96, 20067, 12, 'Dosa', 2, '55.0000', '110.0000', '', ''),
(97, 20067, 25, 'French Rice', 3, '30.0000', '90.0000', '', ''),
(98, 20068, 20, 'Pooran poli', 3, '20.0000', '60.0000', '', ''),
(99, 20068, 12, 'Dosa', 1, '55.0000', '55.0000', '', ''),
(100, 20068, 25, 'French Rice', 3, '30.0000', '90.0000', '', ''),
(101, 20068, 11, 'Idli', 5, '45.0000', '225.0000', '', ''),
(102, 20069, 26, 'Idli', 1, '12.0000', '12.0000', '', ''),
(103, 20069, 28, 'Chicken Masala', 1, '100.0000', '100.0000', '', ''),
(104, 20070, 11, 'Idli', 1, '45.0000', '45.0000', '', ''),
(105, 20071, 11, 'Idli', 2, '45.0000', '90.0000', '', ''),
(106, 20071, 12, 'Dosa', 1, '55.0000', '55.0000', '', ''),
(107, 20072, 24, 'Chikech kabuli', 2, '100.0000', '200.0000', '', ''),
(108, 20072, 25, 'French Rice', 1, '30.0000', '30.0000', '', ''),
(109, 20071, 25, 'French Rice', 1, '30.0000', '30.0000', '', ''),
(124, 20073, 20, 'Pooran poli', 2, '20.0000', '40.0000', '', ''),
(130, 20075, 12, 'Dosa', 1, '55.0000', '55.0000', '', ''),
(126, 20073, 24, 'Chikech kabuli', 1, '100.0000', '100.0000', '', ''),
(128, 20073, 12, 'Dosa', 3, '55.0000', '165.0000', '', ''),
(129, 20074, 32, 'Egg Bhurja', 3, '50.0000', '150.0000', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `ok_order_options`
--

CREATE TABLE `ok_order_options` (
  `order_option_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `order_option_name` varchar(128) NOT NULL,
  `order_option_price` decimal(15,4) DEFAULT NULL,
  `order_menu_id` int(11) NOT NULL,
  `order_menu_option_id` int(11) NOT NULL,
  `menu_option_value_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ok_order_totals`
--

CREATE TABLE `ok_order_totals` (
  `order_total_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `code` varchar(30) NOT NULL,
  `title` varchar(255) NOT NULL,
  `value` decimal(15,2) NOT NULL,
  `priority` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ok_order_totals`
--

INSERT INTO `ok_order_totals` (`order_total_id`, `order_id`, `code`, `title`, `value`, `priority`) VALUES
(11, 20001, 'cart_total', 'Sub Total', '215.00', 1),
(12, 20001, 'order_total', 'Order Total', '215.00', 5),
(13, 20002, 'cart_total', 'Sub Total', '50.00', 1),
(14, 20002, 'order_total', 'Order Total', '50.00', 5),
(15, 20003, 'cart_total', 'Sub Total', '95.00', 1),
(16, 20003, 'order_total', 'Order Total', '95.00', 5),
(17, 20004, 'cart_total', 'Sub Total', '45.00', 1),
(18, 20004, 'order_total', 'Order Total', '45.00', 5),
(19, 20005, 'cart_total', 'Sub Total', '45.00', 1),
(20, 20005, 'order_total', 'Order Total', '45.00', 5),
(21, 20006, 'cart_total', 'Sub Total', '100.00', 1),
(22, 20006, 'order_total', 'Order Total', '100.00', 5),
(23, 20007, 'cart_total', 'Sub Total', '45.00', 1),
(24, 20007, 'order_total', 'Order Total', '45.00', 5),
(25, 20008, 'cart_total', 'Sub Total', '45.00', 1),
(26, 20008, 'order_total', 'Order Total', '45.00', 5),
(27, 20009, 'cart_total', 'Sub Total', '45.00', 1),
(28, 20009, 'order_total', 'Order Total', '45.00', 5),
(29, 20010, 'cart_total', 'Sub Total', '45.00', 1),
(30, 20010, 'order_total', 'Order Total', '45.00', 5),
(31, 20011, 'cart_total', 'Sub Total', '0.00', 1),
(32, 20011, 'order_total', 'Order Total', '0.00', 5),
(33, 20012, 'cart_total', 'Sub Total', '0.00', 1),
(34, 20012, 'order_total', 'Order Total', '0.00', 5),
(35, 20013, 'cart_total', 'Sub Total', '45.00', 1),
(36, 20013, 'order_total', 'Order Total', '45.00', 5),
(37, 20014, 'cart_total', 'Sub Total', '45.00', 1),
(38, 20014, 'order_total', 'Order Total', '45.00', 5),
(39, 20015, 'cart_total', 'Sub Total', '45.00', 1),
(40, 20015, 'order_total', 'Order Total', '45.00', 5),
(41, 20016, 'cart_total', 'Sub Total', '45.00', 1),
(42, 20016, 'order_total', 'Order Total', '45.00', 5),
(43, 20017, 'cart_total', 'Sub Total', '155.00', 1),
(44, 20017, 'order_total', 'Order Total', '155.00', 5),
(45, 20018, 'cart_total', 'Sub Total', '367.00', 1),
(46, 20018, 'order_total', 'Order Total', '367.00', 5),
(47, 20019, 'cart_total', 'Sub Total', '712.00', 1),
(48, 20019, 'order_total', 'Order Total', '712.00', 5),
(49, 20020, 'cart_total', 'Sub Total', '150.00', 1),
(50, 20020, 'order_total', 'Order Total', '150.00', 5),
(51, 20021, 'cart_total', 'Sub Total', '4550.00', 1),
(52, 20021, 'order_total', 'Order Total', '4550.00', 5),
(53, 20022, 'cart_total', 'Sub Total', '144.00', 1),
(54, 20022, 'order_total', 'Order Total', '144.00', 5),
(55, 20023, 'cart_total', 'Sub Total', '500.00', 1),
(56, 20023, 'order_total', 'Order Total', '500.00', 5),
(57, 20024, 'cart_total', 'Sub Total', '1000.00', 1),
(58, 20024, 'order_total', 'Order Total', '1000.00', 5),
(59, 20025, 'cart_total', 'Sub Total', '4500.00', 1),
(60, 20025, 'order_total', 'Order Total', '4500.00', 5),
(61, 20026, 'cart_total', 'Sub Total', '8400.00', 1),
(62, 20026, 'order_total', 'Order Total', '8400.00', 5),
(63, 20027, 'cart_total', 'Sub Total', '45.00', 1),
(64, 20027, 'order_total', 'Order Total', '45.00', 5),
(65, 20028, 'cart_total', 'Sub Total', '900.00', 1),
(66, 20028, 'order_total', 'Order Total', '900.00', 5),
(67, 20029, 'cart_total', 'Sub Total', '90.00', 1),
(68, 20029, 'order_total', 'Order Total', '90.00', 5),
(69, 20030, 'cart_total', 'Sub Total', '200.00', 1),
(70, 20030, 'order_total', 'Order Total', '200.00', 5),
(71, 20031, 'cart_total', 'Sub Total', '90.00', 1),
(72, 20031, 'order_total', 'Order Total', '90.00', 5),
(73, 20032, 'cart_total', 'Sub Total', '95.00', 1),
(74, 20032, 'order_total', 'Order Total', '95.00', 5),
(75, 20033, 'cart_total', 'Sub Total', '45.00', 1),
(76, 20033, 'order_total', 'Order Total', '45.00', 5),
(77, 20034, 'cart_total', 'Sub Total', '135.00', 1),
(78, 20034, 'order_total', 'Order Total', '135.00', 5),
(79, 20035, 'cart_total', 'Sub Total', '45.00', 1),
(80, 20035, 'order_total', 'Order Total', '45.00', 5),
(81, 20036, 'cart_total', 'Sub Total', '45.00', 1),
(82, 20036, 'order_total', 'Order Total', '45.00', 5),
(83, 20037, 'cart_total', 'Sub Total', '45.00', 1),
(84, 20037, 'order_total', 'Order Total', '45.00', 5),
(85, 20038, 'cart_total', 'Sub Total', '45.00', 1),
(86, 20038, 'order_total', 'Order Total', '45.00', 5),
(87, 20039, 'cart_total', 'Sub Total', '45.00', 1),
(88, 20039, 'order_total', 'Order Total', '45.00', 5),
(89, 20040, 'cart_total', 'Sub Total', '45.00', 1),
(90, 20040, 'order_total', 'Order Total', '45.00', 5),
(91, 20041, 'cart_total', 'Sub Total', '90.00', 1),
(92, 20041, 'order_total', 'Order Total', '90.00', 5),
(93, 20042, 'cart_total', 'Sub Total', '45.00', 1),
(94, 20042, 'order_total', 'Order Total', '45.00', 5),
(95, 20043, 'cart_total', 'Sub Total', '45.00', 1),
(96, 20043, 'order_total', 'Order Total', '45.00', 5),
(97, 20044, 'cart_total', 'Sub Total', '45.00', 1),
(98, 20044, 'order_total', 'Order Total', '45.00', 5),
(99, 20045, 'cart_total', 'Sub Total', '45.00', 1),
(100, 20045, 'order_total', 'Order Total', '45.00', 5),
(101, 20046, 'cart_total', 'Sub Total', '45.00', 1),
(102, 20046, 'order_total', 'Order Total', '45.00', 5),
(103, 20047, 'cart_total', 'Sub Total', '45.00', 1),
(104, 20047, 'order_total', 'Order Total', '45.00', 5),
(105, 20048, 'cart_total', 'Sub Total', '45.00', 1),
(106, 20048, 'order_total', 'Order Total', '45.00', 5),
(107, 20049, 'cart_total', 'Sub Total', '45.00', 1),
(108, 20049, 'order_total', 'Order Total', '45.00', 5),
(109, 20050, 'cart_total', 'Sub Total', '90.00', 1),
(110, 20050, 'order_total', 'Order Total', '90.00', 5),
(111, 20051, 'cart_total', 'Sub Total', '90.00', 1),
(112, 20051, 'order_total', 'Order Total', '90.00', 5),
(113, 20052, 'cart_total', 'Sub Total', '90.00', 1),
(114, 20052, 'order_total', 'Order Total', '90.00', 5),
(115, 20053, 'cart_total', 'Sub Total', '135.00', 1),
(116, 20053, 'order_total', 'Order Total', '135.00', 5),
(117, 20054, 'cart_total', 'Sub Total', '500.00', 1),
(118, 20054, 'order_total', 'Order Total', '500.00', 5),
(119, 20055, 'cart_total', 'Sub Total', '500.00', 1),
(120, 20055, 'order_total', 'Order Total', '500.00', 5),
(121, 20056, 'cart_total', 'Sub Total', '135.00', 1),
(122, 20056, 'order_total', 'Order Total', '135.00', 5),
(123, 20057, 'cart_total', 'Sub Total', '135.00', 1),
(124, 20057, 'order_total', 'Order Total', '135.00', 5),
(125, 20058, 'cart_total', 'Sub Total', '135.00', 1),
(126, 20058, 'order_total', 'Order Total', '135.00', 5),
(127, 20059, 'cart_total', 'Sub Total', '135.00', 1),
(128, 20059, 'order_total', 'Order Total', '135.00', 5),
(129, 20060, 'cart_total', 'Sub Total', '135.00', 1),
(130, 20060, 'order_total', 'Order Total', '135.00', 5),
(131, 20061, 'cart_total', 'Sub Total', '90.00', 1),
(132, 20061, 'order_total', 'Order Total', '90.00', 5),
(133, 20062, 'cart_total', 'Sub Total', '90.00', 1),
(134, 20062, 'order_total', 'Order Total', '90.00', 5),
(135, 20063, 'cart_total', 'Sub Total', '135.00', 1),
(136, 20063, 'order_total', 'Order Total', '135.00', 5),
(137, 20064, 'cart_total', 'Sub Total', '105.00', 1),
(138, 20064, 'order_total', 'Order Total', '105.00', 5),
(139, 20065, 'cart_total', 'Sub Total', '0.00', 1),
(140, 20065, 'order_total', 'Order Total', '0.00', 5),
(141, 20066, 'cart_total', 'Sub Total', '220.00', 1),
(142, 20066, 'order_total', 'Order Total', '220.00', 5),
(143, 20067, 'cart_total', 'Sub Total', '380.00', 1),
(144, 20067, 'order_total', 'Order Total', '380.00', 5),
(145, 20068, 'cart_total', 'Sub Total', '430.00', 1),
(146, 20068, 'order_total', 'Order Total', '430.00', 5),
(147, 20069, 'cart_total', 'Sub Total', '112.00', 1),
(148, 20069, 'order_total', 'Order Total', '112.00', 5),
(149, 20070, 'cart_total', 'Sub Total', '45.00', 1),
(150, 20070, 'order_total', 'Order Total', '45.00', 5),
(151, 20071, 'cart_total', 'Sub Total', '175.00', 1),
(152, 20071, 'order_total', 'Order Total', '175.00', 5),
(153, 20072, 'cart_total', 'Sub Total', '230.00', 1),
(154, 20072, 'order_total', 'Order Total', '230.00', 5),
(155, 20073, 'cart_total', 'Sub Total', '305.00', 1),
(156, 20073, 'order_total', 'Order Total', '305.00', 5),
(157, 20074, 'cart_total', 'Sub Total', '150.00', 1),
(158, 20074, 'order_total', 'Order Total', '150.00', 5),
(159, 20075, 'cart_total', 'Sub Total', '55.00', 1),
(160, 20075, 'order_total', 'Order Total', '55.00', 5);

-- --------------------------------------------------------

--
-- Table structure for table `ok_pages`
--

CREATE TABLE `ok_pages` (
  `page_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `heading` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keywords` varchar(255) NOT NULL,
  `layout_id` int(11) NOT NULL,
  `navigation` text NOT NULL,
  `date_added` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ok_pages`
--

INSERT INTO `ok_pages` (`page_id`, `language_id`, `name`, `title`, `heading`, `content`, `meta_description`, `meta_keywords`, `layout_id`, `navigation`, `date_added`, `date_updated`, `status`) VALUES
(11, 11, 'About Us', 'About Us', 'About Us', '<h3 style=\"text-align: center;\"><span style=\"color: #993300;\">Aim</span></h3>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In venenatis massa ac magna sagittis, sit amet gravida metus gravida. Aenean dictum pellentesque erat, vitae adipiscing libero semper sit amet. Vestibulum nec nunc lorem. Duis vitae libero a libero hendrerit tincidunt in eu tellus. Aliquam consequat ultrices felis ut dictum. Nulla euismod felis a sem mattis ornare. Aliquam ut diam sit amet dolor iaculis molestie ac id nisl. Maecenas hendrerit convallis mi feugiat gravida. Quisque tincidunt, leo a posuere imperdiet, metus leo vestibulum orci, vel volutpat justo ligula id quam. Cras placerat tincidunt lorem eu interdum.</p>\r\n<h3 style=\"text-align: center;\"><span style=\"color: #993300;\">Mission</span></h3>\r\n<p>Ut eu pretium urna. In sed consectetur neque. In ornare odio erat, id ornare arcu euismod a. Ut dapibus sit amet erat commodo vestibulum. Praesent vitae lacus faucibus, rhoncus tortor et, bibendum justo. Etiam pharetra congue orci, eget aliquam orci. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed eleifend justo eros, sit amet fermentum tellus ullamcorper quis. Cras cursus mi at imperdiet faucibus. Proin iaculis, felis vitae luctus venenatis, ante tortor porta nisi, et ornare magna metus sit amet enim. Phasellus et turpis nec metus aliquet adipiscing. Etiam at augue nec odio lacinia tincidunt. Suspendisse commodo commodo ipsum ac sollicitudin. Nunc nec consequat lacus. Donec gravida rhoncus justo sed elementum.</p>\r\n<h3 style=\"text-align: center;\"><span style=\"color: #a52a2a;\">Vision</span></h3>\r\n<p>Praesent erat massa, consequat a nulla et, eleifend facilisis risus. Nullam libero mi, bibendum id eleifend vitae, imperdiet a nulla. Fusce congue porta ultricies. Vivamus felis lectus, egestas at pretium vitae, posuere a nibh. Mauris lobortis urna nec rhoncus consectetur. Fusce sed placerat sem. Nulla venenatis elit risus, non auctor arcu lobortis eleifend. Ut aliquet vitae velit a faucibus. Suspendisse quis risus sit amet arcu varius malesuada. Vestibulum vitae massa consequat, euismod lorem a, euismod lacus. Duis sagittis dolor risus, ac vehicula mauris lacinia quis. Nulla facilisi. Duis tristique ipsum nec egestas auctor. Nullam in felis vel ligula dictum tincidunt nec a neque. Praesent in egestas elit.</p>', '', '', 17, 'a:2:{i:0;s:8:\"side_bar\";i:1;s:6:\"footer\";}', '2014-04-19 16:57:21', '2018-03-05 23:52:18', 1),
(12, 11, 'Policy', 'Policy', 'Policy', '<div id=\"lipsum\">\r\n<p style=\"box-sizing: inherit; margin-bottom: 1em; color: rgb(119, 119, 119); font-family: lato; font-size: 16px;\">1. Acceptance of Terms<br style=\"box-sizing: inherit;\">Your access to and use of Onlinekatta website (“the Website”) is subject exclusively to these terms and conditions. You will not use the website for any purpose that is unlawful or prohibited by these terms and conditions. If you do not accept these terms and conditions you must immediately stop using the website else it will be termed as your acceptance.</p><p style=\"box-sizing: inherit; margin-bottom: 1em; color: rgb(119, 119, 119); font-family: lato; font-size: 16px;\">2. General<br style=\"box-sizing: inherit;\">Onlinekatta will carry out work only where a written purchase order is provided by mail.</p><p style=\"box-sizing: inherit; margin-bottom: 1em; color: rgb(119, 119, 119); font-family: lato; font-size: 16px;\">3. Changes to Website</p><p style=\"box-sizing: inherit; margin-bottom: 1em; color: rgb(119, 119, 119); font-family: lato; font-size: 16px;\">Onlinekatta reserves the right to:</p><p style=\"box-sizing: inherit; margin-bottom: 1em; color: rgb(119, 119, 119); font-family: lato; font-size: 16px;\">3.1 Change or remove (temporarily or permanently) the website or any part of it without notice. Onlinekatta shall not be liable to you for any such change or removal.</p><p style=\"box-sizing: inherit; margin-bottom: 1em; color: rgb(119, 119, 119); font-family: lato; font-size: 16px;\">3.2 Change these terms and conditions at any time, and your continued use of the website following any changes shall be deemed to be your acceptance of such change.</p><p style=\"box-sizing: inherit; margin-bottom: 1em; color: rgb(119, 119, 119); font-family: lato; font-size: 16px;\">4. Website Design<br style=\"box-sizing: inherit;\">Though every effort will be made to ensure that the website and any work done by us is free of errors but Onlinekatta cannot accept responsibility for any losses incurred due to malfunction, the website or any part of it. The web server, website, graphics and any programming code remain the property of Onlinekatta until all outstanding accounts are paid in full. Any work done (unless specifically agreed) by Onlinekatta remain the copyright of Onlinekatta and may only be commercially reproduced or resold with the permission of Onlinekatta.</p><p style=\"box-sizing: inherit; margin-bottom: 1em; color: rgb(119, 119, 119); font-family: lato; font-size: 16px;\">Onlinekatta cannot take responsibility for any copyright infringements caused by materials submitted by the client.</p><p style=\"box-sizing: inherit; margin-bottom: 1em; color: rgb(119, 119, 119); font-family: lato; font-size: 16px;\"><br></p>\r\n</div>', '', '', 17, 'a:2:{i:0;s:8:\"side_bar\";i:1;s:6:\"footer\";}', '2014-04-19 17:21:23', '2018-03-05 23:52:12', 1),
(14, 11, 'BG\'s', 'BG\'s', 'Food Joint', '<p><span style=\"font-weight: bold; font-style: italic; background-color: rgb(206, 0, 0);\">Rendezvous Point</span><br></p>', 'delicious delicacies', 'Food Joint', 0, 'a:4:{i:0;s:4:\"none\";i:1;s:6:\"header\";i:2;s:8:\"side_bar\";i:3;s:6:\"footer\";}', '2018-03-07 15:38:50', '2018-03-24 12:24:57', 0),
(15, 11, 'Home', 'Home', 'Vijay Restro', '<p style=\"margin-top: 0.5em; margin-bottom: 0.5em; line-height: inherit;\">The term&nbsp;retro&nbsp;has been in use since the 1960s to describe<a href=\"https://en.wikipedia.org/wiki/Retro_style#cite_note-1\" style=\"line-height: 1; unicode-bidi: isolate; background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">[1]</a><span style=\"line-height: 1; unicode-bidi: isolate;\">&nbsp;on the one hand, new artifacts that self-consciously refer to particular modes, motifs, techniques, and materials of the past.</span><a href=\"https://en.wikipedia.org/wiki/Retro_style#cite_note-2\" style=\"line-height: 1; unicode-bidi: isolate; background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">[2]</a><span style=\"line-height: 1; unicode-bidi: isolate;\">&nbsp;But on the other hand, many people use the term to categorize styles that have been created in the past.</span><a href=\"https://en.wikipedia.org/wiki/Retro_style#cite_note-3\" style=\"line-height: 1; unicode-bidi: isolate; background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">[3]</a><span style=\"line-height: 1; unicode-bidi: isolate;\">&nbsp;Retro style refers to new things that display characteristics of the past. Unlike the&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Historicism_(art)\" title=\"\" style=\"line-height: 1; unicode-bidi: isolate; background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\" data-original-title=\"Historicism (art)\">historicism</a><span style=\"line-height: 1; unicode-bidi: isolate;\">&nbsp;of the&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Romanticism\" title=\"\" style=\"line-height: 1; unicode-bidi: isolate; background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\" data-original-title=\"Romanticism\">Romantic generations</a><span style=\"line-height: 1; unicode-bidi: isolate;\">, it is mostly the recent past that retro seeks to recapitulate, focusing on the products, fashions and artistic styles produced since the Industrial Revolution, the successive styles of&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Modernity\" title=\"\" style=\"line-height: 1; unicode-bidi: isolate; background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\" data-original-title=\"Modernity\">Modernity</a><span style=\"line-height: 1; unicode-bidi: isolate;\">.&nbsp;The English word&nbsp;</span><span style=\"line-height: 1; unicode-bidi: isolate;\">retro<span style=\"line-height: 1; unicode-bidi: isolate;\">&nbsp;derives from the&nbsp;</span></span><a href=\"https://en.wikipedia.org/wiki/Latin\" title=\"\" style=\"line-height: 1; unicode-bidi: isolate; background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\" data-original-title=\"Latin\">Latin</a><span style=\"line-height: 1; unicode-bidi: isolate;\">&nbsp;prefix&nbsp;</span><span style=\"line-height: 1; unicode-bidi: isolate;\">retro</span><span style=\"line-height: 1; unicode-bidi: isolate;\">, meaning backwards, or in past times.</span></p>', 'restro', 'smart restro', 11, 'a:1:{i:0;s:4:\"none\";}', '2018-03-17 15:18:36', '2018-03-17 15:23:09', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ok_permalinks`
--

CREATE TABLE `ok_permalinks` (
  `permalink_id` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `controller` varchar(255) NOT NULL,
  `query` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ok_permalinks`
--

INSERT INTO `ok_permalinks` (`permalink_id`, `slug`, `controller`, `query`) VALUES
(11, 'about-us', 'pages', 'page_id=11'),
(12, 'vegetarian', 'menus', 'category_id=20'),
(13, 'soups', 'menus', 'category_id=21'),
(14, 'specials', 'menus', 'category_id=24'),
(16, 'salads', 'menus', 'category_id=17'),
(50, 'mocktails', 'menus', 'category_id=15'),
(19, 'main-course', 'menus', 'category_id=16'),
(61, '12345', 'inventory', 'item_category_id=18'),
(66, '123434', 'menus', 'category_id=19'),
(41, 'rice-dishes', 'menus', 'category_id=26'),
(47, 'north-indian', 'menus', 'category_id=12'),
(46, 'south-indian', 'menus', 'category_id=11'),
(48, 'biryani', 'menus', 'category_id=13'),
(49, 'drink', 'menus', 'category_id=14'),
(51, 'home', 'pages', 'page_id=15'),
(52, 'fruits', 'inventory', 'item_category_id=7'),
(53, 'galbilus', 'inventory', 'item_category_id=8'),
(54, 'undergroundpart', 'inventory', 'item_category_id=12'),
(74, '1234', 'inventory', 'item_category_id=20'),
(76, '14575', 'local', 'location_id=94');

-- --------------------------------------------------------

--
-- Table structure for table `ok_permissions`
--

CREATE TABLE `ok_permissions` (
  `permission_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `description` varchar(255) NOT NULL,
  `action` text NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ok_permissions`
--

INSERT INTO `ok_permissions` (`permission_id`, `name`, `description`, `action`, `status`) VALUES
(11, 'Admin.Banners', 'Ability to access, manage, add and delete banners', 'a:4:{i:0;s:6:\"access\";i:1;s:6:\"manage\";i:2;s:3:\"add\";i:3;s:6:\"delete\";}', 1),
(12, 'Admin.Categories', 'Ability to access, manage, add and delete categories', 'a:4:{i:0;s:6:\"access\";i:1;s:6:\"manage\";i:2;s:3:\"add\";i:3;s:6:\"delete\";}', 1),
(13, 'Site.Countries', 'Ability to manage, add and delete site countries', 'a:3:{i:0;s:6:\"manage\";i:1;s:3:\"add\";i:2;s:6:\"delete\";}', 1),
(14, 'Admin.Coupons', 'Ability to access, manage, add and delete coupons', 'a:4:{i:0;s:6:\"access\";i:1;s:6:\"manage\";i:2;s:3:\"add\";i:3;s:6:\"delete\";}', 1),
(15, 'Site.Currencies', 'Ability to access, manage, add and delete site currencies', 'a:3:{i:0;s:6:\"manage\";i:1;s:3:\"add\";i:2;s:6:\"delete\";}', 1),
(16, 'Admin.CustomerGroups', 'Ability to access, manage, add and delete customer groups', 'a:4:{i:0;s:6:\"access\";i:1;s:6:\"manage\";i:2;s:3:\"add\";i:3;s:6:\"delete\";}', 1),
(17, 'Admin.Customers', 'Ability to access, manage, add and delete customers', 'a:4:{i:0;s:6:\"access\";i:1;s:6:\"manage\";i:2;s:3:\"add\";i:3;s:6:\"delete\";}', 1),
(18, 'Admin.CustomersOnline', 'Ability to access online customers', 'a:1:{i:0;s:6:\"access\";}', 1),
(19, 'Admin.Maintenance', 'Ability to access, backup, restore and migrate database', 'a:4:{i:0;s:6:\"access\";i:1;s:6:\"manage\";i:2;s:3:\"add\";i:3;s:6:\"delete\";}', 1),
(20, 'Admin.ErrorLogs', 'Ability to access and delete error logs file', 'a:2:{i:0;s:6:\"access\";i:1;s:6:\"delete\";}', 1),
(21, 'Admin.Extensions', 'Ability to access, manage, add and delete extension', 'a:4:{i:0;s:6:\"access\";i:1;s:6:\"manage\";i:2;s:3:\"add\";i:3;s:6:\"delete\";}', 1),
(22, 'Admin.MediaManager', 'Ability to access, manage, add and delete media items', 'a:4:{i:0;s:6:\"access\";i:1;s:6:\"manage\";i:2;s:3:\"add\";i:3;s:6:\"delete\";}', 1),
(23, 'Site.Languages', 'Ability to manage, add and delete site languages', 'a:3:{i:0;s:6:\"manage\";i:1;s:3:\"add\";i:2;s:6:\"delete\";}', 1),
(24, 'Site.Layouts', 'Ability to manage, add and delete site layouts', 'a:3:{i:0;s:6:\"manage\";i:1;s:3:\"add\";i:2;s:6:\"delete\";}', 1),
(25, 'Admin.Locations', 'Ability to access, manage, add and delete locations', 'a:4:{i:0;s:6:\"access\";i:1;s:6:\"manage\";i:2;s:3:\"add\";i:3;s:6:\"delete\";}', 1),
(26, 'Admin.MailTemplates', 'Ability to access, manage, add and delete mail templates', 'a:4:{i:0;s:6:\"access\";i:1;s:6:\"manage\";i:2;s:3:\"add\";i:3;s:6:\"delete\";}', 1),
(27, 'Admin.MenuOptions', 'Ability to access, manage, add and delete menu option items', 'a:4:{i:0;s:6:\"access\";i:1;s:6:\"manage\";i:2;s:3:\"add\";i:3;s:6:\"delete\";}', 1),
(28, 'Admin.Menus', 'Ability to access, manage, add and delete menu items', 'a:4:{i:0;s:6:\"access\";i:1;s:6:\"manage\";i:2;s:3:\"add\";i:3;s:6:\"delete\";}', 1),
(29, 'Admin.Messages', 'Ability to add and delete messages', 'a:2:{i:0;s:3:\"add\";i:1;s:6:\"delete\";}', 1),
(61, 'Payment.Orders', 'The kitchen in charge manager has the ability to access, manage orders, delete', 'a:3:{i:0;s:6:\"access\";i:1;s:3:\"add\";i:2;s:6:\"delete\";}', 1),
(31, 'Site.Pages', 'Ability to manage, add and delete site pages', 'a:3:{i:0;s:6:\"manage\";i:1;s:3:\"add\";i:2;s:6:\"delete\";}', 1),
(32, 'Admin.Payments', 'Ability to access, add and delete extension payments', 'a:3:{i:0;s:6:\"access\";i:1;s:3:\"add\";i:2;s:6:\"delete\";}', 1),
(33, 'Admin.Permissions', 'Ability to manage, add and delete staffs permissions', 'a:3:{i:0;s:6:\"manage\";i:1;s:3:\"add\";i:2;s:6:\"delete\";}', 1),
(34, 'Admin.Ratings', 'Ability to add and delete review ratings', 'a:2:{i:0;s:3:\"add\";i:1;s:6:\"delete\";}', 1),
(35, 'Admin.Reservations', 'Ability to access, manage, add and delete reservations', 'a:4:{i:0;s:6:\"access\";i:1;s:6:\"manage\";i:2;s:3:\"add\";i:3;s:6:\"delete\";}', 1),
(36, 'Admin.Reviews', 'Ability to access, manage, add and delete user reviews', 'a:4:{i:0;s:6:\"access\";i:1;s:6:\"manage\";i:2;s:3:\"add\";i:3;s:6:\"delete\";}', 1),
(37, 'Admin.SecurityQuestions', 'Ability to add and delete customer registration security questions', 'a:2:{i:0;s:3:\"add\";i:1;s:6:\"delete\";}', 1),
(38, 'Site.Settings', 'Ability to manage system settings', 'a:1:{i:0;s:6:\"manage\";}', 1),
(39, 'Admin.StaffGroups', 'Ability to access, manage, add and delete staff groups', 'a:4:{i:0;s:6:\"access\";i:1;s:6:\"manage\";i:2;s:3:\"add\";i:3;s:6:\"delete\";}', 1),
(40, 'Admin.Staffs', 'Ability to access, manage, add and delete staffs', 'a:4:{i:0;s:6:\"access\";i:1;s:6:\"manage\";i:2;s:3:\"add\";i:3;s:6:\"delete\";}', 1),
(42, 'Admin.Statuses', 'Ability to access, manage, add and delete orders and reservations statuses', 'a:4:{i:0;s:6:\"access\";i:1;s:6:\"manage\";i:2;s:3:\"add\";i:3;s:6:\"delete\";}', 1),
(43, 'Admin.Tables', 'Ability to access, manage, add and delete reservations tables', 'a:4:{i:0;s:6:\"access\";i:1;s:6:\"manage\";i:2;s:3:\"add\";i:3;s:6:\"delete\";}', 1),
(44, 'Site.Themes', 'Ability to access, manage site themes', 'a:4:{i:0;s:6:\"access\";i:1;s:6:\"manage\";i:2;s:3:\"add\";i:3;s:6:\"delete\";}', 1),
(62, 'Module.AccountModule', 'Ability to manage account module', 'a:1:{i:0;s:6:\"manage\";}', 1),
(46, 'Module.BannersModule', 'Ability to manage banners module', 'a:1:{i:0;s:6:\"manage\";}', 1),
(47, 'Module.CartModule', 'Ability to manage cart module', 'a:1:{i:0;s:6:\"manage\";}', 1),
(48, 'Module.CategoriesModule', 'Ability to manage categories module', 'a:1:{i:0;s:6:\"manage\";}', 1),
(49, 'Module.LocalModule', 'Ability to manage local module', 'a:1:{i:0;s:6:\"manage\";}', 1),
(51, 'Module.ReservationModule', 'Ability to manage reservation module', 'a:1:{i:0;s:6:\"manage\";}', 1),
(52, 'Module.Slideshow', 'Ability to manage slideshow module', 'a:1:{i:0;s:6:\"manage\";}', 1),
(53, 'Payment.Cod', 'Ability to manage cash on delivery payment', 'a:1:{i:0;s:6:\"manage\";}', 1),
(54, 'Payment.PaypalExpress', 'Ability to manage paypal express payment', 'a:1:{i:0;s:6:\"manage\";}', 1),
(55, 'Site.Updates', 'Ability to apply updates when a new version of TastyIgniter is available', 'a:1:{i:0;s:3:\"add\";}', 1),
(56, 'Admin.Mealtimes', 'Ability to access, manage, add and delete mealtimes', 'a:4:{i:0;s:6:\"access\";i:1;s:6:\"manage\";i:2;s:3:\"add\";i:3;s:6:\"delete\";}', 1),
(57, 'Module.FeaturedMenus', 'Ability to manage featured menu module', 'a:1:{i:0;s:6:\"manage\";}', 1),
(59, 'Module.PagesModule', 'Ability to manage pages module', 'a:1:{i:0;s:6:\"manage\";}', 1),
(60, 'Admin.SocialMedia', 'Allow to access, manage, add and delete social media', 'a:4:{i:0;s:6:\"access\";i:1;s:6:\"manage\";i:2;s:3:\"add\";i:3;s:6:\"delete\";}', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ok_pp_payments`
--

CREATE TABLE `ok_pp_payments` (
  `transaction_id` varchar(19) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `serialized` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ok_reservations`
--

CREATE TABLE `ok_reservations` (
  `reservation_id` int(32) NOT NULL,
  `location_id` int(11) NOT NULL,
  `table_id` int(11) NOT NULL,
  `guest_num` int(11) NOT NULL,
  `occasion_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(45) NOT NULL,
  `comment` text NOT NULL,
  `reserve_time` time NOT NULL,
  `reserve_date` date NOT NULL,
  `date_added` date NOT NULL,
  `date_modified` date NOT NULL,
  `assignee_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL,
  `ip_address` varchar(40) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ok_reviews`
--

CREATE TABLE `ok_reviews` (
  `review_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `sale_id` int(11) NOT NULL,
  `sale_type` varchar(32) NOT NULL DEFAULT '',
  `author` varchar(32) NOT NULL,
  `location_id` int(11) NOT NULL,
  `quality` int(11) NOT NULL,
  `delivery` int(11) NOT NULL,
  `service` int(11) NOT NULL,
  `review_text` text NOT NULL,
  `date_added` datetime NOT NULL,
  `review_status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ok_reviews`
--

INSERT INTO `ok_reviews` (`review_id`, `customer_id`, `sale_id`, `sale_type`, `author`, `location_id`, `quality`, `delivery`, `service`, `review_text`, `date_added`, `review_status`) VALUES
(12, 11, 20071, 'order', 'xyz xyz', 14, 4, 3, 4, 'qerfgtrdy', '2018-11-05 17:11:52', 1),
(13, 16, 20070, 'order', 'testing Restro', 9, 4, 3, 3, 'sztrehyfut', '2018-11-13 10:07:10', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ok_security_questions`
--

CREATE TABLE `ok_security_questions` (
  `question_id` int(11) NOT NULL,
  `text` text NOT NULL,
  `priority` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ok_security_questions`
--

INSERT INTO `ok_security_questions` (`question_id`, `text`, `priority`) VALUES
(11, 'Whats your pets name?', 1),
(12, 'What high school did you attend?', 2),
(13, 'What is your father\'s middle name?', 7),
(14, 'What is your mother\'s name?', 3),
(15, 'What is your place of birth?', 4),
(16, 'Whats your favourite teacher\'s name?', 5);

-- --------------------------------------------------------

--
-- Table structure for table `ok_settings`
--

CREATE TABLE `ok_settings` (
  `setting_id` int(11) NOT NULL,
  `sort` varchar(45) NOT NULL,
  `item` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `serialized` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ok_settings`
--

INSERT INTO `ok_settings` (`setting_id`, `sort`, `item`, `value`, `serialized`) VALUES
(10971, 'prefs', 'default_themes', 'a:2:{s:5:\"admin\";s:18:\"tastyigniter-blue/\";s:4:\"main\";s:20:\"tastyigniter-orange/\";}', 1),
(7870, 'prefs', 'mail_template_id', '11', 0),
(12486, 'ratings', 'ratings', 'a:1:{s:7:\"ratings\";a:6:{i:1;s:3:\"Bad\";i:2;s:5:\"Worse\";i:3;s:4:\"Good\";i:4;s:7:\"Average\";i:5;s:9:\"Excellent\";i:6;s:10:\"REDICULOUS\";}}', 1),
(13430, 'prefs', 'default_location_id', '46', 0),
(13337, 'config', 'maintenance_message', 'Site is under maintenance. Please check back later.', 0),
(13339, 'config', 'cache_time', '0', 0),
(13338, 'config', 'cache_mode', '0', 0),
(13336, 'config', 'maintenance_mode', '0', 0),
(13335, 'config', 'permalink', '1', 0),
(13334, 'config', 'customer_online_archive_time_out', '0', 0),
(13332, 'config', 'smtp_pass', 'safari@123', 0),
(13333, 'config', 'customer_online_time_out', '120', 0),
(13331, 'config', 'smtp_user', 'safarimupe@onlinekatta.com', 0),
(13330, 'config', 'smtp_port', '25', 0),
(13329, 'config', 'smtp_host', 'onlinekatta.com', 0),
(13328, 'config', 'protocol', 'smtp', 0),
(13326, 'config', 'order_email', 'a:1:{i:0;s:8:\"customer\";}', 1),
(13327, 'config', 'reservation_email', 'a:1:{i:0;s:8:\"customer\";}', 1),
(13324, 'config', 'image_manager', 'a:11:{s:8:\"max_size\";s:3:\"300\";s:11:\"thumb_width\";s:3:\"320\";s:12:\"thumb_height\";s:3:\"220\";s:7:\"uploads\";s:1:\"1\";s:10:\"new_folder\";s:1:\"1\";s:4:\"copy\";s:1:\"1\";s:4:\"move\";s:1:\"1\";s:6:\"rename\";s:1:\"1\";s:6:\"delete\";s:1:\"1\";s:15:\"transliteration\";s:1:\"0\";s:13:\"remember_days\";s:1:\"7\";}', 1),
(13325, 'config', 'registration_email', 'a:1:{i:0;s:8:\"customer\";}', 1),
(13323, 'config', 'reservation_stay_time', '60', 0),
(13322, 'config', 'reservation_time_interval', '45', 0),
(13321, 'config', 'canceled_reservation_status', '17', 0),
(13320, 'config', 'confirmed_reservation_status', '16', 0),
(13319, 'config', 'default_reservation_status', '18', 0),
(13318, 'config', 'reservation_mode', '1', 0),
(13317, 'config', 'collection_time', '15', 0),
(13316, 'config', 'delivery_time', '45', 0),
(13315, 'config', 'guest_order', '1', 0),
(13314, 'config', 'invoice_prefix', 'INV-{year}-00', 0),
(13313, 'config', 'auto_invoicing', '1', 0),
(13312, 'config', 'canceled_order_status', '19', 0),
(13310, 'config', 'processing_order_status', 'a:3:{i:0;s:2:\"12\";i:1;s:2:\"13\";i:2;s:2:\"14\";}', 1),
(13311, 'config', 'completed_order_status', 'a:1:{i:0;s:2:\"15\";}', 1),
(13309, 'config', 'default_order_status', '11', 0),
(13308, 'config', 'approve_reviews', '1', 0),
(13307, 'config', 'allow_reviews', '0', 0),
(13306, 'config', 'location_order', '1', 0),
(13305, 'config', 'future_orders', '1', 0),
(13303, 'config', 'maps_api_key', 'AIzaSyB84K0iWs0YuYDtYWz_AsoWwsmD-AhmbPE', 0),
(10972, 'prefs', 'ti_setup', 'installed', 0),
(13304, 'config', 'distance_unit', 'km', 0),
(13412, 'prefs', 'ti_version', '2.1.1', 0),
(13302, 'config', 'checkout_terms', '0', 0),
(13301, 'config', 'registration_terms', '0', 0),
(13300, 'config', 'show_stock_warning', '1', 0),
(13299, 'config', 'stock_checkout', '0', 0),
(13298, 'config', 'tax_delivery_charge', '0', 0),
(13297, 'config', 'tax_menu_price', '0', 0),
(13296, 'config', 'tax_percentage', '', 0),
(13295, 'config', 'tax_mode', '0', 0),
(13294, 'config', 'special_category_id', '11', 0),
(13293, 'config', 'menu_images_w', '95', 0),
(13292, 'config', 'menu_images_h', '80', 0),
(13291, 'config', 'show_menu_images', '1', 0),
(13288, 'config', 'meta_description', 'Restaurant Management | Online Food Ordering | Restaurant Business ERP | SmartResto by OnlineKatta', 0),
(13289, 'config', 'meta_keywords', 'Restaurant Management, Online Food Ordering, Restaurant Business ERP', 0),
(13290, 'config', 'menus_page_limit', '20', 0),
(13431, 'prefs', 'main_address', 'a:14:{s:11:\"location_id\";s:2:\"46\";s:13:\"location_name\";s:6:\"deccan\";s:9:\"address_1\";s:4:\"pune\";s:9:\"address_2\";s:0:\"\";s:4:\"city\";s:4:\"pune\";s:5:\"state\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:10:\"country_id\";s:2:\"99\";s:7:\"country\";s:5:\"India\";s:10:\"iso_code_2\";s:2:\"IN\";s:10:\"iso_code_3\";s:3:\"IND\";s:12:\"location_lat\";s:9:\"12.670000\";s:12:\"location_lng\";s:9:\"13.560000\";s:6:\"format\";s:0:\"\";}', 1),
(12256, 'prefs', 'active_theme_options', 'a:1:{s:4:\"main\";a:2:{i:0;s:19:\"tastyigniter-orange\";i:1;a:20:{s:14:\"display_crumbs\";s:1:\"1\";s:15:\"hide_admin_link\";s:1:\"0\";s:16:\"ga_tracking_code\";s:0:\"\";s:4:\"font\";a:5:{s:6:\"family\";s:25:\"\"Oxygen\",Arial,sans-serif\";s:6:\"weight\";s:6:\"normal\";s:5:\"style\";s:6:\"normal\";s:4:\"size\";s:2:\"13\";s:5:\"color\";s:7:\"#333333\";}s:9:\"menu_font\";a:5:{s:6:\"family\";s:25:\"\"Oxygen\",Arial,sans-serif\";s:6:\"weight\";s:6:\"normal\";s:5:\"style\";s:6:\"normal\";s:4:\"size\";s:2:\"16\";s:5:\"color\";s:7:\"#ffffff\";}s:4:\"body\";a:6:{s:10:\"background\";s:7:\"#ffffff\";s:5:\"image\";s:0:\"\";s:7:\"display\";s:7:\"contain\";s:10:\"foreground\";s:7:\"#ffffff\";s:5:\"color\";s:7:\"#32465f\";s:6:\"border\";s:7:\"#dddddd\";}s:4:\"link\";a:2:{s:5:\"color\";s:7:\"#337ab7\";s:5:\"hover\";s:7:\"#23527c\";}s:7:\"heading\";a:6:{s:10:\"background\";s:0:\"\";s:5:\"image\";s:0:\"\";s:7:\"display\";s:7:\"contain\";s:5:\"color\";s:7:\"#333333\";s:11:\"under_image\";s:0:\"\";s:12:\"under_height\";s:2:\"50\";}s:6:\"button\";a:6:{s:7:\"default\";a:3:{s:10:\"background\";s:7:\"#e7e7e7\";s:5:\"hover\";s:7:\"#e7e7e7\";s:4:\"font\";s:7:\"#333333\";}s:7:\"primary\";a:3:{s:10:\"background\";s:7:\"#428bca\";s:5:\"hover\";s:7:\"#428bca\";s:4:\"font\";s:7:\"#ffffff\";}s:7:\"success\";a:3:{s:10:\"background\";s:7:\"#5cb85c\";s:5:\"hover\";s:7:\"#5cb85c\";s:4:\"font\";s:7:\"#ffffff\";}s:4:\"info\";a:3:{s:10:\"background\";s:7:\"#5bc0de\";s:5:\"hover\";s:7:\"#5bc0de\";s:4:\"font\";s:7:\"#ffffff\";}s:7:\"warning\";a:3:{s:10:\"background\";s:7:\"#f0ad4e\";s:5:\"hover\";s:7:\"#f0ad4e\";s:4:\"font\";s:7:\"#ffffff\";}s:6:\"danger\";a:3:{s:10:\"background\";s:7:\"#d9534f\";s:6:\"border\";s:7:\"#d9534f\";s:4:\"font\";s:7:\"#ffffff\";}}s:7:\"sidebar\";a:5:{s:10:\"background\";s:7:\"#ffffff\";s:5:\"image\";s:0:\"\";s:7:\"display\";s:7:\"contain\";s:4:\"font\";s:7:\"#484848\";s:6:\"border\";s:7:\"#eeeeee\";}s:6:\"header\";a:5:{s:10:\"background\";s:7:\"#32465f\";s:5:\"image\";s:0:\"\";s:7:\"display\";s:7:\"contain\";s:19:\"dropdown_background\";s:7:\"#32465f\";s:5:\"color\";s:7:\"#ffffff\";}s:10:\"logo_image\";s:0:\"\";s:9:\"logo_text\";s:0:\"\";s:11:\"logo_height\";s:2:\"40\";s:16:\"logo_padding_top\";s:2:\"10\";s:19:\"logo_padding_bottom\";s:2:\"10\";s:7:\"favicon\";s:0:\"\";s:6:\"footer\";a:8:{s:10:\"background\";s:7:\"#edeff1\";s:5:\"image\";s:0:\"\";s:7:\"display\";s:7:\"contain\";s:17:\"bottom_background\";s:7:\"#fbfbfb\";s:12:\"bottom_image\";s:0:\"\";s:14:\"bottom_display\";s:7:\"contain\";s:12:\"footer_color\";s:7:\"#9ba1a7\";s:19:\"bottom_footer_color\";s:7:\"#a3aaaf\";}s:6:\"social\";a:12:{s:8:\"facebook\";s:1:\"#\";s:7:\"twitter\";s:1:\"#\";s:6:\"google\";s:1:\"#\";s:7:\"youtube\";s:1:\"#\";s:5:\"vimeo\";s:0:\"\";s:8:\"linkedin\";s:0:\"\";s:9:\"pinterest\";s:0:\"\";s:6:\"tumblr\";s:0:\"\";s:6:\"flickr\";s:0:\"\";s:9:\"instagram\";s:0:\"\";s:8:\"dribbble\";s:0:\"\";s:10:\"foursquare\";s:0:\"\";}s:13:\"custom_script\";a:3:{s:3:\"css\";s:0:\"\";s:4:\"head\";s:0:\"\";s:6:\"footer\";s:0:\"\";}}}}', 1),
(12488, 'prefs', 'last_version_check', 'a:2:{s:18:\"last_version_check\";s:19:\"24-05-2018 10:46:17\";s:4:\"core\";N;}', 1),
(13287, 'config', 'page_limit', '20', 0),
(13286, 'config', 'customer_group_id', '11', 0),
(13285, 'config', 'admin_language_id', 'english', 0),
(13284, 'config', 'language_id', 'english', 0),
(13283, 'config', 'detect_language', '0', 0),
(13282, 'config', 'accepted_currencies', 'a:1:{i:0;s:2:\"98\";}', 1),
(13281, 'config', 'auto_update_currency_rates', '0', 0),
(13280, 'config', 'currency_id', '98', 0),
(13279, 'config', 'time_format', '%h:%i %A', 0),
(13278, 'config', 'date_format', '%j%S %F %Y', 0),
(13277, 'config', 'timezone', 'Asia/Kolkata', 0),
(13273, 'config', 'site_name', 'Smart-Resto', 0),
(13274, 'config', 'site_email', 'safari.mupe@gmail.com', 0),
(13276, 'config', 'country_id', '99', 0),
(13275, 'config', 'site_logo', 'data/smartresto-logo-text.png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ok_social_credentials`
--

CREATE TABLE `ok_social_credentials` (
  `cred_id` int(10) NOT NULL,
  `username` text NOT NULL,
  `app_id` text,
  `app_secret` text,
  `access_token` text,
  `access_token_secret` text,
  `is_responsible` int(10) DEFAULT NULL,
  `credential_for` text,
  `label` text,
  `label_min` text,
  `is_social_activated` tinyint(4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ok_social_credentials`
--

INSERT INTO `ok_social_credentials` (`cred_id`, `username`, `app_id`, `app_secret`, `access_token`, `access_token_secret`, `is_responsible`, `credential_for`, `label`, `label_min`, `is_social_activated`) VALUES
(7, 'safari05mupe', 'zCj2JnyPzAESiesSwoGxeK2V0', 'KHBIiVdVB0eK2818lWVk1ltdg2tcmMRQ7JKTESyHXh8eos4LhM', '778956057590640641-rdnIdWtQsUsIqbUTuSoZ5uVssB71vnv', 'wDQcciO4LN4peqBLO7ubfQ0Jf8zbUGAe6HMLhZCAKlTx8', 11, 'tter', 'Twitter', 'twitter', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ok_social_media_data`
--

CREATE TABLE `ok_social_media_data` (
  `social_media_id` int(10) NOT NULL,
  `sender` int(10) NOT NULL DEFAULT '0',
  `title` text NOT NULL,
  `feed` text,
  `image` text,
  `social_platform` text,
  `status` tinyint(4) DEFAULT NULL,
  `posted_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ok_social_media_data`
--

INSERT INTO `ok_social_media_data` (`social_media_id`, `sender`, `title`, `feed`, `image`, `social_platform`, `status`, `posted_at`) VALUES
(18, 11, 'test for post', 'test for post', NULL, NULL, 1, '2018-06-08 14:33:24'),
(19, 11, 'testset', 'setestetet', NULL, NULL, 1, '2018-06-08 14:35:31'),
(20, 11, 'testset', 'testet', 'data/social/51528448913.jpg', 'twitter', 1, '2018-06-08 14:38:32'),
(21, 11, 'rtestset', 'tsetstetset', 'data/social/31528448955.jpg', 'twitter', 1, '2018-06-08 14:39:15');

-- --------------------------------------------------------

--
-- Table structure for table `ok_staffs`
--

CREATE TABLE `ok_staffs` (
  `staff_id` int(11) NOT NULL,
  `staff_name` varchar(32) NOT NULL,
  `staff_email` varchar(96) NOT NULL,
  `staff_group_id` int(11) NOT NULL,
  `staff_location_id` int(11) NOT NULL,
  `timezone` varchar(32) NOT NULL,
  `language_id` int(11) NOT NULL,
  `date_added` date NOT NULL,
  `staff_status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ok_staffs`
--

INSERT INTO `ok_staffs` (`staff_id`, `staff_name`, `staff_email`, `staff_group_id`, `staff_location_id`, `timezone`, `language_id`, `date_added`, `staff_status`) VALUES
(11, 'Admin OnlineKatta', 'admin@onlinekatta.com', 11, 0, '0', 11, '2018-01-23', 1),
(12, 'shambhu', 'amanprnk@gmail.com', 11, 0, '', 0, '2018-03-10', 0),
(13, 'cook1', 'cook1@gmail.com', 13, 0, '', 0, '2018-03-17', 1),
(14, 'Nikhil', 'nikhil@gmail.com', 14, 15, '', 0, '2018-06-15', 1),
(15, 'Safari Mupe', 'safari.mupe@gmail.com', 12, 17, '', 0, '2018-07-11', 1),
(16, 'safari05', 'safari05mupe@gmail.com', 15, 14, '', 0, '2018-08-04', 1),
(17, 'dhiraj', 'dhiraj@onlienkatta.com', 11, 0, '', 0, '2018-10-31', 1),
(18, 'dhiraj', 'dhiraj@onlienkatta.com1', 11, 0, '', 0, '2018-10-31', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ok_staff_groups`
--

CREATE TABLE `ok_staff_groups` (
  `staff_group_id` int(11) NOT NULL,
  `staff_group_name` varchar(32) NOT NULL,
  `customer_account_access` tinyint(4) NOT NULL,
  `location_access` tinyint(1) NOT NULL,
  `permissions` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ok_staff_groups`
--

INSERT INTO `ok_staff_groups` (`staff_group_id`, `staff_group_name`, `customer_account_access`, `location_access`, `permissions`) VALUES
(11, 'Administrator', 1, 0, 'a:50:{i:11;a:4:{i:0;s:6:\"access\";i:1;s:6:\"manage\";i:2;s:3:\"add\";i:3;s:6:\"delete\";}i:12;a:4:{i:0;s:6:\"access\";i:1;s:6:\"manage\";i:2;s:3:\"add\";i:3;s:6:\"delete\";}i:13;a:3:{i:0;s:6:\"manage\";i:1;s:3:\"add\";i:2;s:6:\"delete\";}i:14;a:4:{i:0;s:6:\"access\";i:1;s:6:\"manage\";i:2;s:3:\"add\";i:3;s:6:\"delete\";}i:15;a:3:{i:0;s:6:\"manage\";i:1;s:3:\"add\";i:2;s:6:\"delete\";}i:16;a:4:{i:0;s:6:\"access\";i:1;s:6:\"manage\";i:2;s:3:\"add\";i:3;s:6:\"delete\";}i:17;a:4:{i:0;s:6:\"access\";i:1;s:6:\"manage\";i:2;s:3:\"add\";i:3;s:6:\"delete\";}i:18;a:1:{i:0;s:6:\"access\";}i:19;a:4:{i:0;s:6:\"access\";i:1;s:6:\"manage\";i:2;s:3:\"add\";i:3;s:6:\"delete\";}i:20;a:2:{i:0;s:6:\"access\";i:1;s:6:\"delete\";}i:21;a:4:{i:0;s:6:\"access\";i:1;s:6:\"manage\";i:2;s:3:\"add\";i:3;s:6:\"delete\";}i:22;a:4:{i:0;s:6:\"access\";i:1;s:6:\"manage\";i:2;s:3:\"add\";i:3;s:6:\"delete\";}i:25;a:4:{i:0;s:6:\"access\";i:1;s:6:\"manage\";i:2;s:3:\"add\";i:3;s:6:\"delete\";}i:26;a:4:{i:0;s:6:\"access\";i:1;s:6:\"manage\";i:2;s:3:\"add\";i:3;s:6:\"delete\";}i:27;a:4:{i:0;s:6:\"access\";i:1;s:6:\"manage\";i:2;s:3:\"add\";i:3;s:6:\"delete\";}i:28;a:4:{i:0;s:6:\"access\";i:1;s:6:\"manage\";i:2;s:3:\"add\";i:3;s:6:\"delete\";}i:29;a:2:{i:0;s:3:\"add\";i:1;s:6:\"delete\";}i:30;a:4:{i:0;s:6:\"access\";i:1;s:6:\"manage\";i:2;s:3:\"add\";i:3;s:6:\"delete\";}i:32;a:3:{i:0;s:6:\"access\";i:1;s:3:\"add\";i:2;s:6:\"delete\";}i:33;a:3:{i:0;s:6:\"manage\";i:1;s:3:\"add\";i:2;s:6:\"delete\";}i:34;a:2:{i:0;s:3:\"add\";i:1;s:6:\"delete\";}i:35;a:4:{i:0;s:6:\"access\";i:1;s:6:\"manage\";i:2;s:3:\"add\";i:3;s:6:\"delete\";}i:36;a:4:{i:0;s:6:\"access\";i:1;s:6:\"manage\";i:2;s:3:\"add\";i:3;s:6:\"delete\";}i:37;a:2:{i:0;s:3:\"add\";i:1;s:6:\"delete\";}i:39;a:4:{i:0;s:6:\"access\";i:1;s:6:\"manage\";i:2;s:3:\"add\";i:3;s:6:\"delete\";}i:40;a:4:{i:0;s:6:\"access\";i:1;s:6:\"manage\";i:2;s:3:\"add\";i:3;s:6:\"delete\";}i:41;a:2:{i:0;s:6:\"access\";i:1;s:6:\"manage\";}i:42;a:4:{i:0;s:6:\"access\";i:1;s:6:\"manage\";i:2;s:3:\"add\";i:3;s:6:\"delete\";}i:43;a:4:{i:0;s:6:\"access\";i:1;s:6:\"manage\";i:2;s:3:\"add\";i:3;s:6:\"delete\";}i:23;a:3:{i:0;s:6:\"manage\";i:1;s:3:\"add\";i:2;s:6:\"delete\";}i:24;a:3:{i:0;s:6:\"manage\";i:1;s:3:\"add\";i:2;s:6:\"delete\";}i:31;a:3:{i:0;s:6:\"manage\";i:1;s:3:\"add\";i:2;s:6:\"delete\";}i:38;a:1:{i:0;s:6:\"manage\";}i:44;a:4:{i:0;s:6:\"access\";i:1;s:6:\"manage\";i:2;s:3:\"add\";i:3;s:6:\"delete\";}i:45;a:1:{i:0;s:6:\"manage\";}i:46;a:1:{i:0;s:6:\"manage\";}i:47;a:1:{i:0;s:6:\"manage\";}i:48;a:1:{i:0;s:6:\"manage\";}i:49;a:1:{i:0;s:6:\"manage\";}i:50;a:1:{i:0;s:6:\"manage\";}i:51;a:1:{i:0;s:6:\"manage\";}i:52;a:1:{i:0;s:6:\"manage\";}i:53;a:1:{i:0;s:6:\"manage\";}i:54;a:1:{i:0;s:6:\"manage\";}i:55;a:1:{i:0;s:3:\"add\";}i:56;a:4:{i:0;s:6:\"access\";i:1;s:6:\"manage\";i:2;s:3:\"add\";i:3;s:6:\"delete\";}i:57;a:1:{i:0;s:6:\"manage\";}i:58;a:1:{i:0;s:6:\"manage\";}i:59;a:1:{i:0;s:6:\"manage\";}i:62;a:1:{i:0;s:6:\"manage\";}}'),
(12, 'waiters', 0, 0, 'a:2:{i:30;a:1:{i:0;s:6:\"access\";}i:35;a:1:{i:0;s:6:\"access\";}}'),
(13, 'cook', 0, 0, 'a:1:{i:30;a:1:{i:0;s:6:\"access\";}}'),
(14, 'manager', 0, 0, 'a:14:{i:16;a:1:{i:0;s:6:\"access\";}i:17;a:1:{i:0;s:6:\"access\";}i:18;a:1:{i:0;s:6:\"access\";}i:30;a:1:{i:0;s:6:\"access\";}i:32;a:1:{i:0;s:6:\"access\";}i:35;a:1:{i:0;s:6:\"access\";}i:36;a:1:{i:0;s:6:\"access\";}i:39;a:1:{i:0;s:6:\"access\";}i:40;a:1:{i:0;s:6:\"access\";}i:42;a:1:{i:0;s:6:\"access\";}i:43;a:1:{i:0;s:6:\"access\";}i:56;a:1:{i:0;s:6:\"access\";}i:53;a:1:{i:0;s:6:\"manage\";}i:54;a:1:{i:0;s:6:\"manage\";}}'),
(15, 'In charges of kitchen', 1, 1, 'a:1:{i:61;a:3:{i:0;s:6:\"access\";i:1;s:3:\"add\";i:2;s:6:\"delete\";}}');

-- --------------------------------------------------------

--
-- Table structure for table `ok_statuses`
--

CREATE TABLE `ok_statuses` (
  `status_id` int(15) NOT NULL,
  `status_name` varchar(45) NOT NULL,
  `status_comment` text NOT NULL,
  `notify_customer` tinyint(1) NOT NULL,
  `status_for` varchar(10) NOT NULL,
  `status_color` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ok_statuses`
--

INSERT INTO `ok_statuses` (`status_id`, `status_name`, `status_comment`, `notify_customer`, `status_for`, `status_color`) VALUES
(11, 'Received', 'Your order has been received.', 1, 'order', '#686663'),
(12, 'Pending', 'Your order is pending', 1, 'order', '#f0ad4e'),
(13, 'Preparation', 'Your order is in the kitchen', 1, 'order', '#00c0ef'),
(14, 'Delivery', 'Your order will be with you shortly.', 0, 'order', '#00a65a'),
(15, 'Completed', '', 0, 'order', '#00a65a'),
(16, 'Confirmed', 'Your table reservation has been confirmed.', 0, 'reserve', '#00a65a'),
(17, 'Canceled', 'Your table reservation has been canceled.', 0, 'reserve', '#dd4b39'),
(18, 'Pending', 'Your table reservation is pending.', 0, 'reserve', ''),
(19, 'Canceled', '', 0, 'order', '#ea0b29');

-- --------------------------------------------------------

--
-- Table structure for table `ok_status_history`
--

CREATE TABLE `ok_status_history` (
  `status_history_id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `assignee_id` int(11) NOT NULL,
  `status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL,
  `status_for` varchar(32) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ok_status_history`
--

INSERT INTO `ok_status_history` (`status_history_id`, `object_id`, `staff_id`, `assignee_id`, `status_id`, `notify`, `status_for`, `comment`, `date_added`) VALUES
(11, 20001, 0, 0, 11, 1, 'order', 'Your order has been received.', '2018-03-26 14:32:17'),
(12, 20001, 0, 0, 15, 0, 'order', '', '2018-03-26 14:34:47'),
(13, 20002, 0, 0, 11, 1, 'order', 'Your order has been received.', '2018-03-26 14:55:32'),
(14, 20002, 0, 0, 15, 0, 'order', '', '2018-03-26 14:56:33'),
(15, 20003, 0, 0, 11, 1, 'order', 'Your order has been received.', '2018-03-26 17:38:05'),
(16, 20003, 0, 0, 15, 1, 'order', 'Your order has been received.', '2018-03-26 17:38:54'),
(17, 20004, 0, 0, 11, 1, 'order', 'Your order has been received.', '2018-04-14 14:24:08'),
(18, 20004, 0, 0, 15, 0, 'order', '', '2018-04-14 14:24:35'),
(19, 20004, 0, 0, 11, 0, 'order', 'Your order has been received.', '2018-04-14 22:41:17'),
(20, 20004, 0, 0, 15, 0, 'order', '', '2018-04-15 14:37:45'),
(21, 20005, 0, 0, 11, 1, 'order', 'Your order has been received.', '2018-04-16 10:58:49'),
(22, 20005, 0, 0, 15, 0, 'order', '', '2018-04-16 10:59:44'),
(23, 20006, 0, 0, 11, 1, 'order', 'Your order has been received.', '2018-04-21 18:14:40'),
(24, 20006, 0, 0, 15, 1, 'order', '', '2018-04-21 18:15:57'),
(25, 20007, 0, 0, 11, 1, 'order', 'Your order has been received.', '2018-05-07 11:24:33'),
(26, 20007, 0, 0, 15, 0, 'order', '', '2018-05-07 11:25:18'),
(27, 20008, 0, 0, 11, 1, 'order', 'Your order has been received.', '2018-05-17 16:09:50'),
(28, 20009, 0, 0, 11, 1, 'order', 'Your order has been received.', '2018-05-24 12:08:54'),
(29, 20007, 0, 0, 11, 0, 'order', 'Your order has been received.', '2018-05-26 14:10:08'),
(30, 20007, 0, 0, 12, 0, 'order', 'Your order is pending', '2018-05-26 14:10:22'),
(31, 20013, 0, 0, 11, 1, 'order', 'Your order has been received.', '2018-05-26 14:14:58'),
(32, 20013, 0, 0, 15, 1, 'order', '', '2018-05-26 14:18:21'),
(33, 20013, 0, 0, 12, 0, 'order', 'Your order is pending', '2018-05-26 14:31:03'),
(34, 20013, 0, 0, 11, 0, 'order', 'Your order has been received.', '2018-05-26 14:31:15'),
(35, 20014, 0, 0, 11, 1, 'order', 'Your order has been received.', '2018-05-26 14:32:47'),
(36, 20014, 0, 0, 15, 0, 'order', '', '2018-05-26 14:32:57'),
(37, 20015, 0, 0, 11, 1, 'order', 'Your order has been received.', '2018-05-26 14:40:44'),
(38, 20015, 0, 0, 15, 0, 'order', '', '2018-05-26 14:41:28'),
(39, 20016, 0, 0, 11, 1, 'order', 'Your order has been received.', '2018-05-26 14:51:42'),
(40, 20016, 0, 0, 15, 0, 'order', '', '2018-05-26 14:51:48'),
(41, 20017, 0, 0, 11, 1, 'order', 'Your order has been received.', '2018-05-26 15:31:39'),
(42, 20017, 0, 0, 15, 0, 'order', '', '2018-05-26 15:31:51'),
(43, 20018, 0, 0, 11, 1, 'order', 'Your order has been received.', '2018-05-26 15:40:38'),
(44, 20018, 0, 0, 15, 0, 'order', '', '2018-05-26 15:40:51'),
(45, 20019, 0, 0, 11, 1, 'order', 'Your order has been received.', '2018-05-26 15:47:29'),
(46, 20019, 0, 0, 15, 0, 'order', '', '2018-05-26 15:47:36'),
(47, 20020, 0, 0, 11, 1, 'order', 'Your order has been received.', '2018-06-07 14:54:12'),
(48, 20020, 0, 0, 15, 0, 'order', '', '2018-06-07 14:55:20'),
(49, 20021, 0, 0, 11, 1, 'order', 'Your order has been received.', '2018-06-07 14:57:58'),
(50, 20021, 0, 0, 15, 0, 'order', '', '2018-06-07 14:58:20'),
(51, 20022, 0, 0, 11, 1, 'order', 'Your order has been received.', '2018-06-08 13:34:16'),
(52, 20022, 0, 0, 15, 0, 'order', '', '2018-06-08 13:34:32'),
(53, 20023, 0, 0, 11, 1, 'order', 'Your order has been received.', '2018-06-08 14:51:00'),
(54, 20023, 0, 0, 15, 0, 'order', '', '2018-06-08 14:53:43'),
(55, 20024, 0, 0, 11, 1, 'order', 'Your order has been received.', '2018-06-08 14:57:49'),
(56, 20024, 0, 0, 15, 0, 'order', '', '2018-06-08 14:57:59'),
(57, 20007, 0, 0, 15, 0, 'order', '', '2018-06-09 11:18:35'),
(58, 20025, 0, 0, 11, 1, 'order', 'Your order has been received.', '2018-06-09 16:31:31'),
(59, 20025, 0, 0, 15, 0, 'order', '', '2018-06-09 16:31:47'),
(60, 20026, 0, 0, 11, 1, 'order', 'Your order has been received.', '2018-06-15 16:57:40'),
(61, 20026, 0, 0, 13, 1, 'order', 'Your order is in the kitchen', '2018-06-15 17:08:40'),
(62, 20027, 0, 0, 11, 1, 'order', 'Your order has been received.', '2018-06-16 11:46:27'),
(63, 20027, 0, 0, 15, 0, 'order', '', '2018-06-16 11:46:37'),
(64, 20028, 0, 0, 11, 1, 'order', 'Your order has been received.', '2018-06-16 11:49:43'),
(65, 20028, 0, 0, 15, 0, 'order', '', '2018-06-16 11:51:11'),
(66, 20029, 0, 0, 11, 1, 'order', 'Your order has been received.', '2018-06-16 12:27:03'),
(67, 20029, 0, 0, 15, 0, 'order', '', '2018-06-16 12:27:36'),
(68, 20030, 0, 0, 11, 1, 'order', 'Your order has been received.', '2018-06-18 20:16:59'),
(69, 20031, 0, 0, 11, 1, 'order', 'Your order has been received.', '2018-06-18 20:58:48'),
(70, 20031, 0, 0, 15, 0, 'order', '', '2018-06-18 20:59:06'),
(71, 20030, 0, 0, 15, 0, 'order', '', '2018-06-18 21:05:22'),
(72, 20032, 0, 0, 11, 1, 'order', 'Your order has been received.', '2018-06-18 21:10:50'),
(73, 20032, 0, 0, 15, 0, 'order', '', '2018-06-18 21:11:04'),
(74, 20033, 0, 0, 11, 1, 'order', 'Your order has been received.', '2018-06-18 21:14:39'),
(75, 20033, 0, 0, 15, 0, 'order', '', '2018-06-18 21:14:53'),
(76, 20033, 0, 0, 12, 0, 'order', 'Your order is pending', '2018-06-18 21:16:45'),
(77, 20033, 0, 0, 14, 0, 'order', 'Your order will be with you shortly.', '2018-06-18 23:32:18'),
(78, 20033, 0, 0, 15, 0, 'order', '', '2018-06-18 23:32:49'),
(79, 20034, 0, 0, 11, 1, 'order', 'Your order has been received.', '2018-06-18 23:40:26'),
(80, 20034, 0, 0, 15, 0, 'order', '', '2018-06-18 23:40:51'),
(81, 20035, 0, 0, 11, 1, 'order', 'Your order has been received.', '2018-06-18 23:45:53'),
(82, 20035, 0, 0, 15, 0, 'order', '', '2018-06-18 23:46:28'),
(83, 20036, 0, 0, 11, 1, 'order', 'Your order has been received.', '2018-06-18 23:48:42'),
(84, 20036, 0, 0, 15, 0, 'order', '', '2018-06-18 23:48:55'),
(85, 20037, 0, 0, 11, 1, 'order', 'Your order has been received.', '2018-06-18 23:51:47'),
(86, 20037, 0, 0, 15, 0, 'order', '', '2018-06-18 23:52:00'),
(87, 20038, 0, 0, 11, 1, 'order', 'Your order has been received.', '2018-06-19 00:12:20'),
(88, 20038, 0, 0, 15, 0, 'order', '', '2018-06-19 00:12:39'),
(89, 20039, 0, 0, 11, 1, 'order', 'Your order has been received.', '2018-06-19 09:46:04'),
(90, 20039, 0, 0, 15, 0, 'order', '', '2018-06-19 09:46:18'),
(91, 20040, 0, 0, 11, 1, 'order', 'Your order has been received.', '2018-06-19 10:57:48'),
(92, 20040, 0, 0, 15, 0, 'order', '', '2018-06-19 10:57:54'),
(93, 20041, 0, 0, 11, 1, 'order', 'Your order has been received.', '2018-06-19 11:03:23'),
(94, 20041, 0, 0, 15, 0, 'order', '', '2018-06-19 11:03:34'),
(95, 20042, 0, 0, 11, 1, 'order', 'Your order has been received.', '2018-06-19 11:06:47'),
(96, 20042, 0, 0, 15, 0, 'order', '', '2018-06-19 11:06:53'),
(97, 20043, 0, 0, 11, 1, 'order', 'Your order has been received.', '2018-06-19 11:12:21'),
(98, 20043, 0, 0, 15, 0, 'order', '', '2018-06-19 11:12:34'),
(99, 20044, 0, 0, 11, 1, 'order', 'Your order has been received.', '2018-06-19 11:16:21'),
(100, 20044, 0, 0, 15, 0, 'order', '', '2018-06-19 11:16:28'),
(101, 20045, 0, 0, 11, 1, 'order', 'Your order has been received.', '2018-06-19 11:17:06'),
(102, 20045, 0, 0, 15, 0, 'order', '', '2018-06-19 11:17:13'),
(103, 20046, 0, 0, 11, 1, 'order', 'Your order has been received.', '2018-06-19 11:27:29'),
(104, 20046, 0, 0, 15, 0, 'order', '', '2018-06-19 11:27:35'),
(105, 20047, 0, 0, 11, 1, 'order', 'Your order has been received.', '2018-06-19 11:32:59'),
(106, 20047, 0, 0, 15, 0, 'order', '', '2018-06-19 11:33:04'),
(107, 20048, 0, 0, 11, 1, 'order', 'Your order has been received.', '2018-06-19 11:42:56'),
(108, 20048, 0, 0, 15, 0, 'order', '', '2018-06-19 11:43:08'),
(109, 20049, 0, 0, 11, 1, 'order', 'Your order has been received.', '2018-06-19 11:45:31'),
(110, 20049, 0, 0, 15, 0, 'order', '', '2018-06-19 11:45:38'),
(111, 20050, 0, 0, 11, 1, 'order', 'Your order has been received.', '2018-06-19 12:15:52'),
(112, 20050, 0, 0, 15, 0, 'order', '', '2018-06-19 12:15:59'),
(113, 20051, 0, 0, 11, 1, 'order', 'Your order has been received.', '2018-06-19 12:31:52'),
(114, 20051, 0, 0, 15, 0, 'order', '', '2018-06-19 12:31:58'),
(115, 20052, 0, 0, 11, 1, 'order', 'Your order has been received.', '2018-06-19 12:35:01'),
(116, 20052, 0, 0, 15, 0, 'order', '', '2018-06-19 12:35:08'),
(117, 20053, 0, 0, 11, 1, 'order', 'Your order has been received.', '2018-06-19 12:37:54'),
(118, 20053, 0, 0, 15, 0, 'order', '', '2018-06-19 12:38:24'),
(119, 20054, 0, 0, 11, 1, 'order', 'Your order has been received.', '2018-06-19 13:38:53'),
(120, 20054, 0, 0, 15, 0, 'order', '', '2018-06-19 13:39:00'),
(121, 20055, 0, 0, 11, 1, 'order', 'Your order has been received.', '2018-06-19 13:41:55'),
(122, 20055, 0, 0, 15, 0, 'order', '', '2018-06-19 13:42:06'),
(123, 20056, 0, 0, 11, 1, 'order', 'Your order has been received.', '2018-06-19 13:51:20'),
(124, 20056, 0, 0, 15, 0, 'order', '', '2018-06-19 13:51:27'),
(125, 20057, 0, 0, 11, 1, 'order', 'Your order has been received.', '2018-06-19 13:56:28'),
(126, 20057, 0, 0, 15, 0, 'order', '', '2018-06-19 13:56:34'),
(127, 20058, 0, 0, 11, 1, 'order', 'Your order has been received.', '2018-06-19 15:18:31'),
(128, 20058, 0, 0, 15, 0, 'order', '', '2018-06-19 15:18:37'),
(129, 20059, 0, 0, 11, 1, 'order', 'Your order has been received.', '2018-06-19 15:26:59'),
(130, 20059, 0, 0, 15, 0, 'order', '', '2018-06-19 15:27:11'),
(131, 20060, 0, 0, 11, 1, 'order', 'Your order has been received.', '2018-06-19 15:47:58'),
(132, 20060, 0, 0, 15, 0, 'order', '', '2018-06-19 15:48:04'),
(133, 20061, 0, 0, 11, 1, 'order', 'Your order has been received.', '2018-06-19 15:52:27'),
(134, 20061, 0, 0, 15, 0, 'order', '', '2018-06-19 15:52:33'),
(135, 20062, 0, 0, 11, 1, 'order', 'Your order has been received.', '2018-06-19 15:56:58'),
(136, 20062, 0, 0, 15, 0, 'order', '', '2018-06-19 15:57:05'),
(137, 20063, 0, 0, 11, 1, 'order', 'Your order has been received.', '2018-06-19 16:10:15'),
(138, 20063, 0, 0, 15, 0, 'order', '', '2018-06-19 16:10:21'),
(139, 20064, 0, 0, 11, 1, 'order', 'Your order has been received.', '2018-06-22 18:15:51'),
(140, 20065, 0, 0, 11, 1, 'order', 'Your order has been received.', '2018-06-25 18:24:24'),
(141, 20066, 0, 0, 11, 1, 'order', 'Your order has been received.', '2018-06-25 18:26:21'),
(142, 20067, 0, 0, 11, 1, 'order', 'Your order has been received.', '2018-06-25 18:27:45'),
(143, 20068, 0, 0, 11, 1, 'order', 'Your order has been received.', '2018-06-26 17:35:50'),
(144, 20068, 0, 0, 15, 0, 'order', '', '2018-06-26 17:36:14'),
(145, 20069, 0, 0, 11, 1, 'order', 'Your order has been received.', '2018-07-09 14:58:05'),
(146, 20069, 0, 0, 15, 0, 'order', '', '2018-07-09 14:58:40'),
(147, 20070, 0, 0, 11, 1, 'order', 'Your order has been received.', '2018-07-17 12:41:13'),
(148, 20070, 0, 0, 15, 0, 'order', '', '2018-07-17 12:41:27'),
(149, 20071, 0, 0, 11, 1, 'order', 'Your order has been received.', '2018-08-04 11:51:48'),
(150, 20072, 0, 0, 11, 1, 'order', 'Your order has been received.', '2018-08-04 11:54:59'),
(151, 20072, 0, 0, 15, 0, 'order', '', '2018-08-04 12:32:53'),
(152, 20073, 0, 0, 11, 1, 'order', 'Your order has been received.', '2018-08-06 00:46:27'),
(153, 20073, 0, 0, 15, 0, 'order', '', '2018-08-06 18:24:03'),
(154, 20074, 0, 0, 11, 1, 'order', 'Your order has been received.', '2018-08-08 15:14:35'),
(155, 20075, 0, 0, 11, 1, 'order', 'Your order has been received.', '2018-08-20 17:44:58');

-- --------------------------------------------------------

--
-- Table structure for table `ok_tables`
--

CREATE TABLE `ok_tables` (
  `table_id` int(11) NOT NULL,
  `table_name` varchar(32) NOT NULL,
  `min_capacity` int(11) NOT NULL,
  `max_capacity` int(11) NOT NULL,
  `table_status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ok_tables`
--

INSERT INTO `ok_tables` (`table_id`, `table_name`, `min_capacity`, `max_capacity`, `table_status`) VALUES
(1, 'EE10', 2, 10, 1),
(2, 'NN02', 2, 4, 1),
(6, 'SW77', 10, 40, 1),
(7, 'EW77', 2, 8, 1),
(8, 'SE78', 4, 6, 1),
(9, 'NE8', 8, 10, 1),
(10, 'SW55', 9, 10, 1),
(11, 'EW88', 2, 10, 0),
(12, 'EE732', 3, 6, 1),
(14, 'FW79', 4, 10, 0),
(16, 'SSW77', 10, 40, 0),
(17, 'royal', 5, 10, 1),
(18, 'Alfa', 2, 6, 1),
(19, 'got1', 2, 4, 1),
(20, 'AB12', 3, 6, 1),
(21, 'AA43', 5, 10, 1),
(22, 'AA42', 2, 4, 1),
(23, 'AA43', 5, 10, 1),
(30, 'Ej11', 10, 10, 0),
(25, 'Long Bridge', 10, 15, 1),
(31, 'EJ112', 10, 14, 1),
(29, 'EJ12', 12, 15, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ok_uri_routes`
--

CREATE TABLE `ok_uri_routes` (
  `uri_route_id` int(11) NOT NULL,
  `uri_route` varchar(255) NOT NULL,
  `controller` varchar(128) NOT NULL,
  `priority` tinyint(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ok_uri_routes`
--

INSERT INTO `ok_uri_routes` (`uri_route_id`, `uri_route`, `controller`, `priority`) VALUES
(1, 'locations', 'local/locations', 1),
(2, 'account', 'account/account', 2),
(3, '(:any)', 'pages', 3);

-- --------------------------------------------------------

--
-- Table structure for table `ok_users`
--

CREATE TABLE `ok_users` (
  `user_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ok_users`
--

INSERT INTO `ok_users` (`user_id`, `staff_id`, `username`, `password`, `salt`) VALUES
(11, 11, 'admin', 'bc63f088a810a9c419150f1034f6b17b74098969', 'e418e54e1'),
(12, 12, 'shambhu', '07c77a78eb3a02c2e7c646631c5f1d61d219f38f', 'd3a7cfda0'),
(13, 13, 'ram', '7e582e3f45df4deacff985a04671c15ab42d3b42', 'edd7c9e6e'),
(14, 14, 'nikhil', '6da00e90348c239bf3cc2af173bd1e2620e11143', '055684130'),
(15, 15, 'smupe', 'dc8d21c4fb06319d45cab4f9b0f27071f0a38f4b', 'f4ff1eb61'),
(16, 16, 'safari05', '6f8c448ffc6a45c945e9cb539e67ed3e482ad389', 'c13ff1220'),
(17, 17, 'dhiraj', 'bea38b2bccaf9311d96e6b8d5c2f8b024b6f2a8c', 'd66986397'),
(18, 18, 'dhiraj123', 'db0d36532d9ccb2c61fe185c8fbb8c2e876e923d', '2d7863ff5');

-- --------------------------------------------------------

--
-- Table structure for table `ok_working_hours`
--

CREATE TABLE `ok_working_hours` (
  `location_id` int(11) NOT NULL,
  `weekday` int(11) NOT NULL,
  `opening_time` time NOT NULL DEFAULT '00:00:00',
  `closing_time` time NOT NULL DEFAULT '00:00:00',
  `status` tinyint(1) NOT NULL,
  `type` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ok_working_hours`
--

INSERT INTO `ok_working_hours` (`location_id`, `weekday`, `opening_time`, `closing_time`, `status`, `type`) VALUES
(21, 4, '00:00:00', '23:59:00', 1, 'collection'),
(21, 2, '00:00:00', '23:59:00', 1, 'collection'),
(21, 1, '00:00:00', '23:59:00', 1, 'collection'),
(21, 4, '00:00:00', '23:59:00', 1, 'delivery'),
(21, 2, '00:00:00', '23:59:00', 1, 'delivery'),
(21, 6, '00:00:00', '23:59:00', 1, 'opening'),
(21, 0, '00:00:00', '23:59:00', 1, 'opening'),
(34, 6, '00:00:00', '23:59:00', 1, 'collection'),
(34, 5, '00:00:00', '23:59:00', 1, 'collection'),
(34, 4, '00:00:00', '23:59:00', 1, 'collection'),
(21, 5, '00:00:00', '23:59:00', 1, 'delivery'),
(21, 6, '00:00:00', '23:59:00', 1, 'delivery'),
(21, 0, '00:00:00', '23:59:00', 1, 'collection'),
(21, 3, '00:00:00', '23:59:00', 1, 'delivery'),
(21, 0, '00:00:00', '23:59:00', 1, 'delivery'),
(21, 1, '00:00:00', '23:59:00', 1, 'delivery'),
(21, 3, '00:00:00', '23:59:00', 1, 'collection'),
(21, 1, '00:00:00', '23:59:00', 1, 'opening'),
(21, 2, '00:00:00', '23:59:00', 1, 'opening'),
(21, 3, '00:00:00', '23:59:00', 1, 'opening'),
(21, 4, '00:00:00', '23:59:00', 1, 'opening'),
(21, 5, '00:00:00', '23:59:00', 1, 'opening'),
(21, 5, '00:00:00', '23:59:00', 1, 'collection'),
(21, 6, '00:00:00', '23:59:00', 1, 'collection'),
(34, 3, '00:00:00', '23:59:00', 1, 'collection'),
(34, 2, '00:00:00', '23:59:00', 1, 'collection'),
(34, 1, '00:00:00', '23:59:00', 1, 'collection'),
(34, 0, '00:00:00', '23:59:00', 1, 'collection'),
(34, 0, '00:00:00', '23:59:00', 1, 'opening'),
(34, 1, '00:00:00', '23:59:00', 1, 'opening'),
(34, 2, '00:00:00', '23:59:00', 1, 'opening'),
(34, 3, '00:00:00', '23:59:00', 1, 'opening'),
(34, 4, '00:00:00', '23:59:00', 1, 'opening'),
(34, 5, '00:00:00', '23:59:00', 1, 'opening'),
(34, 6, '00:00:00', '23:59:00', 1, 'opening'),
(34, 0, '00:00:00', '23:59:00', 1, 'delivery'),
(34, 1, '00:00:00', '23:59:00', 1, 'delivery'),
(34, 2, '00:00:00', '23:59:00', 1, 'delivery'),
(34, 3, '00:00:00', '23:59:00', 1, 'delivery'),
(34, 4, '00:00:00', '23:59:00', 1, 'delivery'),
(34, 5, '00:00:00', '23:59:00', 1, 'delivery'),
(34, 6, '00:00:00', '23:59:00', 1, 'delivery'),
(98, 0, '00:00:00', '23:59:00', 1, 'collection'),
(98, 1, '00:00:00', '23:59:00', 1, 'collection'),
(98, 2, '00:00:00', '23:59:00', 1, 'collection'),
(98, 3, '00:00:00', '23:59:00', 1, 'collection'),
(98, 4, '00:00:00', '23:59:00', 1, 'collection'),
(98, 5, '00:00:00', '23:59:00', 1, 'collection'),
(98, 6, '00:00:00', '23:59:00', 1, 'collection'),
(98, 0, '00:00:00', '23:59:00', 1, 'delivery'),
(98, 1, '00:00:00', '23:59:00', 1, 'delivery'),
(98, 2, '00:00:00', '23:59:00', 1, 'delivery'),
(98, 3, '00:00:00', '23:59:00', 1, 'delivery'),
(98, 4, '00:00:00', '23:59:00', 1, 'delivery'),
(98, 5, '00:00:00', '23:59:00', 1, 'delivery'),
(98, 6, '00:00:00', '23:59:00', 1, 'delivery'),
(98, 0, '00:00:00', '23:59:00', 1, 'opening'),
(98, 1, '00:00:00', '23:59:00', 1, 'opening'),
(98, 2, '00:00:00', '23:59:00', 1, 'opening'),
(98, 3, '00:00:00', '23:59:00', 1, 'opening'),
(98, 4, '00:00:00', '23:59:00', 1, 'opening'),
(98, 5, '00:00:00', '23:59:00', 1, 'opening'),
(98, 6, '00:00:00', '23:59:00', 1, 'opening'),
(97, 5, '00:00:00', '23:59:00', 1, 'delivery'),
(97, 6, '00:00:00', '23:59:00', 1, 'delivery'),
(97, 0, '00:00:00', '23:59:00', 1, 'collection'),
(97, 1, '00:00:00', '23:59:00', 1, 'collection'),
(97, 2, '00:00:00', '23:59:00', 1, 'collection'),
(97, 3, '00:00:00', '23:59:00', 1, 'collection'),
(97, 4, '00:00:00', '23:59:00', 1, 'collection'),
(97, 5, '00:00:00', '23:59:00', 1, 'collection'),
(97, 6, '00:00:00', '23:59:00', 1, 'collection'),
(97, 1, '00:00:00', '23:59:00', 1, 'opening'),
(97, 2, '00:00:00', '23:59:00', 1, 'opening'),
(97, 3, '00:00:00', '23:59:00', 1, 'opening'),
(97, 4, '00:00:00', '23:59:00', 1, 'opening'),
(97, 5, '00:00:00', '23:59:00', 1, 'opening'),
(97, 6, '00:00:00', '23:59:00', 1, 'opening'),
(97, 0, '00:00:00', '23:59:00', 1, 'delivery'),
(97, 1, '00:00:00', '23:59:00', 1, 'delivery'),
(97, 2, '00:00:00', '23:59:00', 1, 'delivery'),
(97, 3, '00:00:00', '23:59:00', 1, 'delivery'),
(97, 4, '00:00:00', '23:59:00', 1, 'delivery'),
(97, 0, '00:00:00', '23:59:00', 1, 'opening'),
(94, 6, '00:00:00', '23:59:00', 1, 'collection'),
(94, 5, '00:00:00', '23:59:00', 1, 'collection'),
(94, 4, '00:00:00', '23:59:00', 1, 'collection'),
(94, 3, '00:00:00', '23:59:00', 1, 'collection'),
(94, 2, '00:00:00', '23:59:00', 1, 'collection'),
(94, 1, '00:00:00', '23:59:00', 1, 'collection'),
(94, 1, '00:00:00', '23:59:00', 1, 'delivery'),
(94, 2, '00:00:00', '23:59:00', 1, 'delivery'),
(94, 3, '00:00:00', '23:59:00', 1, 'delivery'),
(94, 4, '00:00:00', '23:59:00', 1, 'delivery'),
(94, 5, '00:00:00', '23:59:00', 1, 'delivery'),
(94, 6, '00:00:00', '23:59:00', 1, 'delivery'),
(94, 0, '00:00:00', '23:59:00', 1, 'collection'),
(94, 1, '00:00:00', '23:59:00', 1, 'opening'),
(94, 2, '00:00:00', '23:59:00', 1, 'opening'),
(94, 3, '00:00:00', '23:59:00', 1, 'opening'),
(94, 4, '00:00:00', '23:59:00', 1, 'opening'),
(94, 5, '00:00:00', '23:59:00', 1, 'opening'),
(94, 6, '00:00:00', '23:59:00', 1, 'opening'),
(94, 0, '00:00:00', '23:59:00', 1, 'delivery'),
(94, 0, '00:00:00', '23:59:00', 1, 'opening');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ok_activities`
--
ALTER TABLE `ok_activities`
  ADD PRIMARY KEY (`activity_id`);

--
-- Indexes for table `ok_addresses`
--
ALTER TABLE `ok_addresses`
  ADD PRIMARY KEY (`address_id`);

--
-- Indexes for table `ok_attendance`
--
ALTER TABLE `ok_attendance`
  ADD PRIMARY KEY (`attendance_id`);

--
-- Indexes for table `ok_banners`
--
ALTER TABLE `ok_banners`
  ADD PRIMARY KEY (`banner_id`);

--
-- Indexes for table `ok_biometric`
--
ALTER TABLE `ok_biometric`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ok_categories`
--
ALTER TABLE `ok_categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `ok_countries`
--
ALTER TABLE `ok_countries`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `ok_coupons`
--
ALTER TABLE `ok_coupons`
  ADD PRIMARY KEY (`coupon_id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `ok_coupons_history`
--
ALTER TABLE `ok_coupons_history`
  ADD PRIMARY KEY (`coupon_history_id`);

--
-- Indexes for table `ok_currencies`
--
ALTER TABLE `ok_currencies`
  ADD PRIMARY KEY (`currency_id`);

--
-- Indexes for table `ok_customers`
--
ALTER TABLE `ok_customers`
  ADD PRIMARY KEY (`customer_id`,`email`);

--
-- Indexes for table `ok_customers_online`
--
ALTER TABLE `ok_customers_online`
  ADD PRIMARY KEY (`activity_id`);

--
-- Indexes for table `ok_customers_subscription`
--
ALTER TABLE `ok_customers_subscription`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `ok_customers_subscription_history`
--
ALTER TABLE `ok_customers_subscription_history`
  ADD PRIMARY KEY (`csh_id`);

--
-- Indexes for table `ok_customer_groups`
--
ALTER TABLE `ok_customer_groups`
  ADD PRIMARY KEY (`customer_group_id`);

--
-- Indexes for table `ok_extensions`
--
ALTER TABLE `ok_extensions`
  ADD PRIMARY KEY (`extension_id`),
  ADD UNIQUE KEY `type` (`type`,`name`);

--
-- Indexes for table `ok_items`
--
ALTER TABLE `ok_items`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `ok_items_menu_association`
--
ALTER TABLE `ok_items_menu_association`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ok_items_stock_update`
--
ALTER TABLE `ok_items_stock_update`
  ADD PRIMARY KEY (`item_update_id`);

--
-- Indexes for table `ok_item_categories`
--
ALTER TABLE `ok_item_categories`
  ADD PRIMARY KEY (`item_category_id`);

--
-- Indexes for table `ok_languages`
--
ALTER TABLE `ok_languages`
  ADD PRIMARY KEY (`language_id`);

--
-- Indexes for table `ok_layouts`
--
ALTER TABLE `ok_layouts`
  ADD PRIMARY KEY (`layout_id`);

--
-- Indexes for table `ok_layout_modules`
--
ALTER TABLE `ok_layout_modules`
  ADD PRIMARY KEY (`layout_module_id`);

--
-- Indexes for table `ok_layout_routes`
--
ALTER TABLE `ok_layout_routes`
  ADD PRIMARY KEY (`layout_route_id`);

--
-- Indexes for table `ok_locations`
--
ALTER TABLE `ok_locations`
  ADD PRIMARY KEY (`location_id`);

--
-- Indexes for table `ok_location_buffet`
--
ALTER TABLE `ok_location_buffet`
  ADD PRIMARY KEY (`buffet_id`);

--
-- Indexes for table `ok_location_subscription`
--
ALTER TABLE `ok_location_subscription`
  ADD PRIMARY KEY (`location_subscription_id`);

--
-- Indexes for table `ok_location_tables`
--
ALTER TABLE `ok_location_tables`
  ADD PRIMARY KEY (`location_id`,`table_id`);

--
-- Indexes for table `ok_mail_templates`
--
ALTER TABLE `ok_mail_templates`
  ADD PRIMARY KEY (`template_id`);

--
-- Indexes for table `ok_mail_templates_data`
--
ALTER TABLE `ok_mail_templates_data`
  ADD PRIMARY KEY (`template_data_id`,`template_id`,`code`);

--
-- Indexes for table `ok_mealtimes`
--
ALTER TABLE `ok_mealtimes`
  ADD PRIMARY KEY (`mealtime_id`);

--
-- Indexes for table `ok_menus`
--
ALTER TABLE `ok_menus`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indexes for table `ok_menus_specials`
--
ALTER TABLE `ok_menus_specials`
  ADD PRIMARY KEY (`special_id`,`menu_id`);

--
-- Indexes for table `ok_menu_options`
--
ALTER TABLE `ok_menu_options`
  ADD PRIMARY KEY (`menu_option_id`);

--
-- Indexes for table `ok_menu_option_values`
--
ALTER TABLE `ok_menu_option_values`
  ADD PRIMARY KEY (`menu_option_value_id`);

--
-- Indexes for table `ok_messages`
--
ALTER TABLE `ok_messages`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `ok_message_meta`
--
ALTER TABLE `ok_message_meta`
  ADD PRIMARY KEY (`message_meta_id`);

--
-- Indexes for table `ok_options`
--
ALTER TABLE `ok_options`
  ADD PRIMARY KEY (`option_id`);

--
-- Indexes for table `ok_option_values`
--
ALTER TABLE `ok_option_values`
  ADD PRIMARY KEY (`option_value_id`);

--
-- Indexes for table `ok_orders`
--
ALTER TABLE `ok_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `ok_order_menus`
--
ALTER TABLE `ok_order_menus`
  ADD PRIMARY KEY (`order_menu_id`);

--
-- Indexes for table `ok_order_options`
--
ALTER TABLE `ok_order_options`
  ADD PRIMARY KEY (`order_option_id`);

--
-- Indexes for table `ok_order_totals`
--
ALTER TABLE `ok_order_totals`
  ADD PRIMARY KEY (`order_total_id`,`order_id`);

--
-- Indexes for table `ok_pages`
--
ALTER TABLE `ok_pages`
  ADD PRIMARY KEY (`page_id`);

--
-- Indexes for table `ok_permalinks`
--
ALTER TABLE `ok_permalinks`
  ADD PRIMARY KEY (`permalink_id`);

--
-- Indexes for table `ok_permissions`
--
ALTER TABLE `ok_permissions`
  ADD PRIMARY KEY (`permission_id`);

--
-- Indexes for table `ok_pp_payments`
--
ALTER TABLE `ok_pp_payments`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `ok_reservations`
--
ALTER TABLE `ok_reservations`
  ADD PRIMARY KEY (`reservation_id`,`location_id`,`table_id`);

--
-- Indexes for table `ok_reviews`
--
ALTER TABLE `ok_reviews`
  ADD PRIMARY KEY (`review_id`,`sale_type`,`sale_id`);

--
-- Indexes for table `ok_security_questions`
--
ALTER TABLE `ok_security_questions`
  ADD PRIMARY KEY (`question_id`);

--
-- Indexes for table `ok_settings`
--
ALTER TABLE `ok_settings`
  ADD PRIMARY KEY (`setting_id`),
  ADD UNIQUE KEY `item` (`item`);

--
-- Indexes for table `ok_social_credentials`
--
ALTER TABLE `ok_social_credentials`
  ADD PRIMARY KEY (`cred_id`);

--
-- Indexes for table `ok_social_media_data`
--
ALTER TABLE `ok_social_media_data`
  ADD PRIMARY KEY (`social_media_id`);

--
-- Indexes for table `ok_staffs`
--
ALTER TABLE `ok_staffs`
  ADD PRIMARY KEY (`staff_id`),
  ADD UNIQUE KEY `staff_email` (`staff_email`);

--
-- Indexes for table `ok_staff_groups`
--
ALTER TABLE `ok_staff_groups`
  ADD PRIMARY KEY (`staff_group_id`);

--
-- Indexes for table `ok_statuses`
--
ALTER TABLE `ok_statuses`
  ADD PRIMARY KEY (`status_id`);

--
-- Indexes for table `ok_status_history`
--
ALTER TABLE `ok_status_history`
  ADD PRIMARY KEY (`status_history_id`);

--
-- Indexes for table `ok_tables`
--
ALTER TABLE `ok_tables`
  ADD PRIMARY KEY (`table_id`);

--
-- Indexes for table `ok_uri_routes`
--
ALTER TABLE `ok_uri_routes`
  ADD PRIMARY KEY (`uri_route_id`,`uri_route`);

--
-- Indexes for table `ok_users`
--
ALTER TABLE `ok_users`
  ADD PRIMARY KEY (`user_id`,`staff_id`,`username`);

--
-- Indexes for table `ok_working_hours`
--
ALTER TABLE `ok_working_hours`
  ADD PRIMARY KEY (`location_id`,`weekday`,`type`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ok_activities`
--
ALTER TABLE `ok_activities`
  MODIFY `activity_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1888;

--
-- AUTO_INCREMENT for table `ok_addresses`
--
ALTER TABLE `ok_addresses`
  MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `ok_attendance`
--
ALTER TABLE `ok_attendance`
  MODIFY `attendance_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ok_banners`
--
ALTER TABLE `ok_banners`
  MODIFY `banner_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `ok_biometric`
--
ALTER TABLE `ok_biometric`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ok_categories`
--
ALTER TABLE `ok_categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `ok_countries`
--
ALTER TABLE `ok_countries`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;

--
-- AUTO_INCREMENT for table `ok_coupons`
--
ALTER TABLE `ok_coupons`
  MODIFY `coupon_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `ok_coupons_history`
--
ALTER TABLE `ok_coupons_history`
  MODIFY `coupon_history_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `ok_currencies`
--
ALTER TABLE `ok_currencies`
  MODIFY `currency_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;

--
-- AUTO_INCREMENT for table `ok_customers`
--
ALTER TABLE `ok_customers`
  MODIFY `customer_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `ok_customers_online`
--
ALTER TABLE `ok_customers_online`
  MODIFY `activity_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=786;

--
-- AUTO_INCREMENT for table `ok_customers_subscription`
--
ALTER TABLE `ok_customers_subscription`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `ok_customers_subscription_history`
--
ALTER TABLE `ok_customers_subscription_history`
  MODIFY `csh_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `ok_customer_groups`
--
ALTER TABLE `ok_customer_groups`
  MODIFY `customer_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=166;

--
-- AUTO_INCREMENT for table `ok_extensions`
--
ALTER TABLE `ok_extensions`
  MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `ok_items`
--
ALTER TABLE `ok_items`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `ok_items_menu_association`
--
ALTER TABLE `ok_items_menu_association`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `ok_items_stock_update`
--
ALTER TABLE `ok_items_stock_update`
  MODIFY `item_update_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `ok_item_categories`
--
ALTER TABLE `ok_item_categories`
  MODIFY `item_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `ok_languages`
--
ALTER TABLE `ok_languages`
  MODIFY `language_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `ok_layouts`
--
ALTER TABLE `ok_layouts`
  MODIFY `layout_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `ok_layout_modules`
--
ALTER TABLE `ok_layout_modules`
  MODIFY `layout_module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `ok_layout_routes`
--
ALTER TABLE `ok_layout_routes`
  MODIFY `layout_route_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT for table `ok_locations`
--
ALTER TABLE `ok_locations`
  MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `ok_location_buffet`
--
ALTER TABLE `ok_location_buffet`
  MODIFY `buffet_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `ok_location_subscription`
--
ALTER TABLE `ok_location_subscription`
  MODIFY `location_subscription_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `ok_mail_templates`
--
ALTER TABLE `ok_mail_templates`
  MODIFY `template_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `ok_mail_templates_data`
--
ALTER TABLE `ok_mail_templates_data`
  MODIFY `template_data_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `ok_mealtimes`
--
ALTER TABLE `ok_mealtimes`
  MODIFY `mealtime_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `ok_menus`
--
ALTER TABLE `ok_menus`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `ok_menus_specials`
--
ALTER TABLE `ok_menus_specials`
  MODIFY `special_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `ok_menu_options`
--
ALTER TABLE `ok_menu_options`
  MODIFY `menu_option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `ok_menu_option_values`
--
ALTER TABLE `ok_menu_option_values`
  MODIFY `menu_option_value_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `ok_messages`
--
ALTER TABLE `ok_messages`
  MODIFY `message_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `ok_message_meta`
--
ALTER TABLE `ok_message_meta`
  MODIFY `message_meta_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `ok_options`
--
ALTER TABLE `ok_options`
  MODIFY `option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `ok_option_values`
--
ALTER TABLE `ok_option_values`
  MODIFY `option_value_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `ok_orders`
--
ALTER TABLE `ok_orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20076;

--
-- AUTO_INCREMENT for table `ok_order_menus`
--
ALTER TABLE `ok_order_menus`
  MODIFY `order_menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT for table `ok_order_options`
--
ALTER TABLE `ok_order_options`
  MODIFY `order_option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `ok_order_totals`
--
ALTER TABLE `ok_order_totals`
  MODIFY `order_total_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT for table `ok_pages`
--
ALTER TABLE `ok_pages`
  MODIFY `page_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `ok_permalinks`
--
ALTER TABLE `ok_permalinks`
  MODIFY `permalink_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `ok_permissions`
--
ALTER TABLE `ok_permissions`
  MODIFY `permission_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `ok_reservations`
--
ALTER TABLE `ok_reservations`
  MODIFY `reservation_id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20011;

--
-- AUTO_INCREMENT for table `ok_reviews`
--
ALTER TABLE `ok_reviews`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `ok_security_questions`
--
ALTER TABLE `ok_security_questions`
  MODIFY `question_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `ok_settings`
--
ALTER TABLE `ok_settings`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13432;

--
-- AUTO_INCREMENT for table `ok_social_credentials`
--
ALTER TABLE `ok_social_credentials`
  MODIFY `cred_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `ok_social_media_data`
--
ALTER TABLE `ok_social_media_data`
  MODIFY `social_media_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `ok_staffs`
--
ALTER TABLE `ok_staffs`
  MODIFY `staff_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `ok_staff_groups`
--
ALTER TABLE `ok_staff_groups`
  MODIFY `staff_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `ok_statuses`
--
ALTER TABLE `ok_statuses`
  MODIFY `status_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `ok_status_history`
--
ALTER TABLE `ok_status_history`
  MODIFY `status_history_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;

--
-- AUTO_INCREMENT for table `ok_tables`
--
ALTER TABLE `ok_tables`
  MODIFY `table_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `ok_uri_routes`
--
ALTER TABLE `ok_uri_routes`
  MODIFY `uri_route_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ok_users`
--
ALTER TABLE `ok_users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
