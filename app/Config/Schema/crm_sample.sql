-- phpMyAdmin SQL Dump
-- version 3.4.10.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 22, 2013 at 02:50 AM
-- Server version: 5.1.63
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `first_name`, `last_name`, `photo`, `company`, `city`, `phone`, `email`, `contact_status_id`, `user_id`, `created`, `modified`) VALUES
(3, 'Vijay', 'kumar', NULL, 'ks soft', 'Tokyo', '78998888', 'ghgh@jhj.mk', 4, 1, '2013-02-16 13:10:04', '2013-02-16 13:10:04'),
(4, 'Henery', 'Olonga', NULL, 'KOY-green', 'Salt lake', '688978788', 'ghtdggf@hhjh.nj', 5, 1, '2013-02-16 13:10:04', '2013-02-16 13:10:04'),
(5, 'Dwyan', 'Karr', NULL, 'Kar-pharma', 'Thimpu', '36787786', 'ghyfh@jgklhl.nj', 6, 1, '2013-02-16 13:10:04', '2013-02-16 13:10:04'),
(6, 'Oking', 'Biru', NULL, 'Hitech', 'Onak', '675877766', 'hgfvyt@hghjg.hg', 4, 1, '2013-02-16 13:10:04', '2013-02-08 04:54:34'),
(7, 'Sweeny', 'Hunt', NULL, 'Jak-hud', 'Toranto', '6767845645', 'gfgytrcr@hgjh.hg', 5, 1, '2013-02-16 13:10:04', '2013-02-16 13:10:04'),
(8, 'Ranch', 'Malesia', NULL, 'Roky', 'Dakota', '546567765', 'hghgjg@jhghj.hg', 4, 1, '2013-02-16 13:10:04', '2013-02-16 13:10:04'),
(9, 'Si', 'Huan', NULL, 'Tyco', 'Xianging', '46768898', 'hgvjghvyt@jhjkhk.hh', 4, 1, '2013-02-16 13:10:04', '2013-02-16 13:10:04'),
(10, 'Lauren', 'Duke', NULL, 'Nitlo', 'Waterloo', '5678876659', 'sfddgd@ddd.com', 5, 1, '2013-02-16 13:10:04', '2013-02-16 13:10:04'),
(11, 'pryo', 'conu', NULL, 'fpr', 'jambo', '68888888', 'drth@ggg.no', 6, 1, '2013-02-16 13:10:04', '2013-02-16 13:10:04'),
(12, 'Adam', 'Smith', 'cast.png', 'gggg', 'Dublin', '788879', 'ghfgh@ggfg.jh', 6, 1, '2013-02-16 13:10:04', '2013-02-16 13:10:04'),
(13, 'Tony', 'Marsh', NULL, 'testers', 'tinapolis', '0987654321', 'tester@test.net', 4, 3, '2013-02-16 13:10:04', '2013-02-16 13:10:04');

--
-- Dumping data for table `contacts_events`
--

INSERT INTO `contacts_events` (`id`, `contact_id`, `event_id`) VALUES
(2, 3, 1),
(3, 5, 1),
(4, 4, 2),
(5, 7, 2);


--
-- Dumping data for table `deals`
--

INSERT INTO `deals` (`id`, `contact_id`, `deal_status_id`, `user_id`, `amount`, `date`) VALUES
(1, 8, 4, 1, '2000.000000', '2013-02-14 00:00:00'),
(2, 10, 5, 1, '566.000000', '2013-02-15 00:00:00'),
(3, 12, 6, 1, '7744.000000', '2013-02-16 00:00:00'),
(4, 13, 4, 1, '6000.000000', '2013-02-16 13:18:00');

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `event_type_id`, `title`, `details`, `start`, `end`, `all_day`, `status`, `active`, `created`, `modified`, `user_id`) VALUES
(1, 1, 'Test', 'test', '2013-02-17 16:51:00', '2013-02-17 20:00:00', 0, 'Scheduled', 1, '2013-02-07', '2013-02-16', 1),
(2, 1, 'Dinner', 'dinner menu\r\n1. food\r\n2. water', '2013-02-16 08:25:00', '2013-02-16 13:19:00', 0, 'Scheduled', 1, '2013-02-08', '2013-02-16', 1),
(3, 1, 'event 1', 'test users event', '2013-02-16 14:18:00', '2013-02-16 15:18:00', 0, 'Scheduled', 1, '2013-02-16', '2013-02-16', 1);

--
-- Dumping data for table `events_users`
--

INSERT INTO `events_users` (`id`, `event_id`, `user_id`) VALUES
(2, 1, 1),
(3, 2, 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
