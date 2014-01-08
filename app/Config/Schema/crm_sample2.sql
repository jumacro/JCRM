-- phpMyAdmin SQL Dump
-- version 3.4.10.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 22, 2013 at 03:48 AM
-- Server version: 5.1.63
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `maritech_zhen`
--


--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `first_name`, `last_name`, `photo`, `company`, `city`, `phone`, `email`, `contact_status_id`, `user_id`, `created`, `modified`) VALUES
(4, 'Henery', 'Olonga', NULL, 'KOY-green', 'Salt lake', '688978788', 'ghtdggf@hhjh.nj', 4, 1, NULL, '2013-04-17 15:47:24'),
(5, 'Dwyan', 'Karr', NULL, 'Kar-pharma', 'Thimpu', '36787786', 'ghyfh@jgklhl.nj', 6, 1, NULL, NULL),
(6, 'Oking', 'Biru', NULL, 'Hitech', 'Onak', '675877766', 'hgfvyt@hghjg.hg', 5, 1, NULL, '2013-03-01 14:50:33'),
(7, 'Sweeny', 'Hunt', NULL, 'Jak-hud', 'Toranto', '6767845645', 'gfgytrcr@hgjh.hg', 5, 1, NULL, NULL),
(8, 'Ranch', 'Malesia', NULL, 'Roky', 'Dakota', '546567765', 'hghgjg@jhghj.hg', 4, 1, NULL, NULL),
(9, 'Si', 'Huan', NULL, 'Tyco', 'Xianging', '46768898', 'hgvjghvyt@jhjkhk.hh', 5, 1, NULL, '2013-03-04 17:05:51'),
(10, 'Lauren', 'Duke', NULL, 'Nitlo', 'Waterloo', '5678876659', 'sfddgd@ddd.com', 5, 1, NULL, NULL),
(11, 'pryo', 'conu', NULL, 'fpr', 'jambo', '68888888', 'drth@ggg.no', 6, 1, NULL, NULL),
(12, 'image', 'test', 'cast.png', 'gggg', 'Dublin', '788879', 'ghfgh@ggfg.jh', 6, 1, NULL, NULL),
(13, 'tester', 'tc', NULL, 'testers', 'tinapolis', '0987654321', 'tester@test.net', 5, 3, '2013-02-16 13:10:04', '2013-03-04 21:49:53'),
(15, 'xxxxxxxxxxxx', 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx', '2.png', 'xxx', 'xxxx', '999999', 'rerere@xxxxxx.com', 6, 1, '2013-03-01 15:06:13', '2013-03-03 08:32:42'),
(16, 'Tony', 'West', NULL, 'West Construction Services', 'Houston', '5555555555', 'west@west.com', 4, 1, '2013-03-02 06:10:39', '2013-03-02 06:11:34'),
(17, 'rg', 'rete', NULL, 'ytyuh', 'ttt', '3245', 'ryry@fh.tt', 5, 1, '2013-03-02 11:51:34', '2013-03-04 17:15:47'),
(18, 'John', 'Doe', NULL, 'Doe''s Company', 'Detroit', '23444333', 'john@doe.com', 6, 1, '2013-03-03 11:47:39', '2013-03-03 11:47:39'),
(19, 'Divnik', 'Banquet Hal', NULL, 'Reshma', 'thane', '9870', 'ss@ff.com', 4, 1, '2013-03-03 17:45:16', '2013-03-03 17:45:16'),
(20, 'test', 'dfgdfgd', 'logo.png', 'dfgfdg', 'dfgdf', '43534534', 'dsfsdfsd@fdgdf.hh', 5, 1, '2013-04-17 15:57:09', '2013-04-17 15:57:09');

--
-- Dumping data for table `contacts_events`
--

INSERT INTO `contacts_events` (`id`, `contact_id`, `event_id`) VALUES
(2, 3, 1),
(3, 5, 1),
(4, 4, 2),
(5, 7, 2),
(6, 3, 5),
(7, 4, 5),
(8, 5, 5),
(11, 3, 10),
(13, 6, 12),
(14, 4, 14);


--
-- Dumping data for table `deals`
--

INSERT INTO `deals` (`id`, `contact_id`, `deal_status_id`, `user_id`, `amount`, `date`) VALUES
(2, 10, 6, 1, '1000.000000', '2013-04-15 00:00:00'),
(3, 10, 6, 1, '7744.000000', '2013-04-16 00:00:00'),
(4, 13, 4, 3, '6000.000000', '2013-04-17 13:18:00'),
(5, 5, 6, 1, '15000.000000', '2013-04-18 07:37:00'),
(6, 4, 5, 1, '10900.000000', '2013-04-19 07:48:00'),
(7, 6, 6, 1, '44444.000000', '2013-04-20 07:49:00'),
(8, 8, 5, 1, '45673.000000', '2013-04-21 08:16:00'),
(9, 3, 5, 1, '92344.000000', '2013-04-22 09:20:00'),
(10, 9, 5, 1, '10000.000000', '2013-04-15 13:23:00'),
(11, 8, 6, 1, '56744.000000', '2013-04-16 14:23:00'),
(12, 12, 5, 1, '11344.000000', '2013-04-18 17:42:00'),
(13, 4, 5, 1, '3452.000000', '2013-04-17 17:16:00'),
(14, 5, 6, 1, NULL, '2013-03-02 01:03:00'),
(15, 6, 4, 1, '500.000000', '2013-03-02 05:15:00'),
(16, 16, 4, 1, '2500.000000', '2013-03-02 12:30:00'),
(17, 3, NULL, 1, NULL, '2013-03-02 11:05:00'),
(18, 3, 5, 1, NULL, '2013-03-02 12:02:00'),
(19, 3, NULL, 1, '99999999999999.999999', '2013-03-02 12:03:00'),
(20, 5, 4, 1, NULL, '2013-05-02 15:54:00'),
(21, 4, 5, 1, '40000.000000', '2013-03-03 02:00:00'),
(22, 6, 5, 1, NULL, '2013-08-03 09:16:00'),
(23, 3, 4, 1, NULL, '2013-03-03 13:30:00'),
(24, 6, 4, 1, '5000.000000', '2013-03-04 06:45:00'),
(25, 8, 5, 1, NULL, '2013-03-04 12:55:00');

-
--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `event_type_id`, `title`, `details`, `start`, `end`, `all_day`, `status`, `active`, `created`, `modified`, `user_id`) VALUES
(1, 1, 'Test', 'test', '2013-02-17 16:51:00', '2013-02-17 20:00:00', 0, 'Scheduled', 1, '2013-02-07', '2013-02-16', 1),
(2, 1, 'Dinner', 'dinner menu\r\n1. food\r\n2. water', '2013-02-16 08:25:00', '2013-02-16 13:19:00', 0, 'Scheduled', 1, '2013-02-08', '2013-02-16', 1),
(3, 1, 'event 1', 'test users event', '2013-02-16 14:18:00', '2013-02-16 15:18:00', 0, 'Scheduled', 1, '2013-02-16', '2013-02-16', 3),
(4, 1, '1', '#lÃ¼#Ã¼l', '2013-03-01 06:06:00', '2013-03-01 06:06:00', 1, 'Scheduled', 1, '2013-03-01', '2013-03-01', 1),
(5, 1, 'tests', '', '2013-03-01 08:29:00', '2013-03-01 08:29:00', 0, 'Scheduled', 1, '2013-03-01', '2013-03-01', 1),
(6, 1, 'ghfhgf', '', '2013-03-01 14:11:00', '2013-03-01 14:11:00', 1, 'Scheduled', 1, '2013-03-01', '2013-03-01', 1),
(7, 3, 'Meeting With Tony', 'Meeting with Tony at Starbucks', '2013-03-04 11:30:00', '2013-03-07 12:00:00', 0, 'Confirmed', 1, '2013-03-02', '2013-03-03', 1),
(8, 1, 'boss', 'dd', '2013-03-02 08:02:00', '2013-04-02 08:02:00', 1, 'Scheduled', 1, '2013-03-02', '2013-03-02', 1),
(9, 1, 'jhg', 'dhgfhh', '2013-03-04 07:27:00', '2013-03-07 19:27:00', 0, 'In Progress', 1, '2013-03-03', '2013-03-03', 1),
(10, 1, '2day', '', '2013-03-03 12:14:00', '2013-03-03 19:14:00', 1, 'Scheduled', 1, '2013-03-03', '2013-03-03', 1),
(11, 2, 'hjkhjh', '', '2013-03-09 09:24:00', '2013-03-14 09:24:00', 0, 'Scheduled', 1, '2013-03-03', '2013-03-03', 1),
(12, 2, 'For doc', 'abcd', '2013-03-03 16:30:00', '2013-03-03 19:00:00', 0, 'Scheduled', 1, '2013-03-03', '2013-03-03', 1),
(13, 3, 'cc', 'cc', '2013-03-03 17:16:00', '2013-03-03 17:16:00', 1, 'Scheduled', 1, '2013-03-03', '2013-03-03', 1),
(14, 1, 'test', '', '2013-03-26 12:16:00', '2013-03-26 12:16:00', 1, 'Scheduled', 1, '2013-03-26', '2013-03-26', 1);

--
-- Dumping data for table `events_users`
--

INSERT INTO `events_users` (`id`, `event_id`, `user_id`) VALUES
(2, 1, 1),
(3, 2, 1),
(4, 5, 1),
(7, 10, 3),
(8, 12, 4),
(9, 12, 5);



--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `group_id`, `created`, `modified`, `first_name`, `last_name`, `email`, `token`, `active`) VALUES
(3, 'test', '13cff740a1311208d6f776f16198e6df45a70547', 2, '2013-02-13 20:34:23', '2013-03-04 21:48:59', 'test', 'tester', 's_guria14@yahoo.com', 'ed74aa06ba18314a51623861142a8d2a9fa40745', 1),
(4, 'Dee', '26b6e2ee72e961db89dc1e41c7c0078576898b0e', 2, '2013-03-02 02:34:21', '2013-03-02 02:34:21', 'Dee', 'C', '', NULL, 1),
(5, 'demodis', '6b422e16e68d67ed4a6cb2bdd22fb52b1482fe37', 2, '2013-03-02 18:54:43', '2013-03-02 18:54:43', 'kk', 'kk', 'kk@nn.com', NULL, 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
