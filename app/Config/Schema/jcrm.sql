-- phpMyAdmin SQL Dump
-- version 4.0.8
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 09, 2014 at 12:13 AM
-- Server version: 5.5.34-cll
-- PHP Version: 5.3.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `wvsin_punarmicra`
--

-- --------------------------------------------------------

--
-- Table structure for table `acos`
--

CREATE TABLE IF NOT EXISTS `acos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) DEFAULT NULL,
  `model` varchar(255) DEFAULT '',
  `foreign_key` int(10) unsigned DEFAULT NULL,
  `alias` varchar(255) DEFAULT '',
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `aros`
--

CREATE TABLE IF NOT EXISTS `aros` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) DEFAULT NULL,
  `model` varchar(255) DEFAULT '',
  `foreign_key` int(10) unsigned DEFAULT NULL,
  `alias` varchar(255) DEFAULT '',
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `aros`
--

INSERT INTO `aros` (`id`, `parent_id`, `model`, `foreign_key`, `alias`, `lft`, `rght`) VALUES
(1, NULL, 'Group', 1, '', 1, 8),
(2, NULL, 'Group', 2, '', 9, 32),
(3, 1, 'User', 1, '', 2, 3),
(5, 2, 'User', 3, '', 10, 11),
(10, 2, 'User', 8, '', 12, 13),
(11, 2, 'User', 9, '', 14, 15),
(12, 1, 'User', 10, '', 4, 5),
(13, 2, 'User', 11, '', 16, 17),
(19, 1, 'User', 17, '', 6, 7),
(20, 2, 'User', 18, '', 18, 19),
(21, 2, 'User', 19, '', 20, 21),
(22, 2, 'User', 20, '', 22, 23),
(23, 2, 'User', 21, '', 24, 25),
(24, 2, 'User', 22, '', 26, 27),
(25, 2, 'User', 23, '', 28, 29),
(26, 2, 'User', 24, '', 30, 31);

-- --------------------------------------------------------

--
-- Table structure for table `aros_acos`
--

CREATE TABLE IF NOT EXISTS `aros_acos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `aro_id` int(10) unsigned NOT NULL,
  `aco_id` int(10) unsigned NOT NULL,
  `_create` char(2) NOT NULL DEFAULT '0',
  `_read` char(2) NOT NULL DEFAULT '0',
  `_update` char(2) NOT NULL DEFAULT '0',
  `_delete` char(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE IF NOT EXISTS `contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `designation` varchar(45) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `photo_dir` varchar(255) DEFAULT NULL,
  `company` varchar(45) DEFAULT NULL,
  `industry` varchar(45) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `contact_status_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `lead_source` varchar(45) DEFAULT '|',
  `state` varchar(45) DEFAULT NULL,
  `area` varchar(45) DEFAULT NULL,
  `website` varchar(45) DEFAULT NULL,
  `mobile` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=217 ;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `designation`, `photo`, `photo_dir`, `company`, `industry`, `address`, `city`, `phone`, `email`, `contact_status_id`, `user_id`, `created`, `modified`, `lead_source`, `state`, `area`, `website`, `mobile`) VALUES
(30, 'Ravishankar', '-', NULL, '', 'Nuthana Engineering System', 'EPB', '#12, Survey No.130, 13th Cross, 4th Phase, Peenya Indl Area, Near 9th BMTC Bus Depot.', 'BANGALORE', '9886734957', 'nuthana-engg@yahoo.com', 4, 20, '2013-09-13 07:34:15', '2013-09-13 07:34:15', NULL, '0', '0', '0', '0'),
(31, 'PURNESH', '-', NULL, '', 'CARBORANDUM UNIVERSAL LTD', '-', '#77, BOMMSANDRA, JIGANI LINK ROAD, JIGANI INDL AREA, ANEKAL TALUK, BANGALORE-562106', 'BANGALORE', '9972093223', 'purneshkr@cumi.murugappa.com', 6, 21, '2013-09-13 07:59:16', '2013-09-13 08:01:04', NULL, '0', '0', '0', '0'),
(32, 'POORNIMA', 'PURCHASE', NULL, '', 'AJAX FLORI ENGG', 'MANUFACTURING', 'YESHWANTHPUR', 'BANGALORE', '39211035', 'poornima.shet@ajax-flori.com', 4, 20, '2013-09-14 04:24:34', '2013-09-14 04:24:34', NULL, '0', '0', '0', '0'),
(33, 'x', '-', NULL, '', 'Electroline Engg', '-', 'Basavanagudi', 'Bangalore', '0', 'xxx@ymail.com', 4, 20, '2013-09-14 07:18:34', '2013-09-14 07:18:34', NULL, '0', '0', '0', '0'),
(34, 'RUDRESH', 'PURCHASE', NULL, '', 'NUETECH SOLAR SYSTEMS PVT LTD', 'SOLAR SYSTEMS MANUFACTURERS', 'SUNKADAKATTE, MAGADI ROAD', 'BANGALORE', '23483766', 'info@nuetechsolar.com', 4, 20, '2013-09-14 07:29:54', '2013-09-14 07:29:54', NULL, '0', '0', '0', '0'),
(35, 'Soham Shoney', 'Materials Manager', NULL, '', 'Escon Gensets', 'Gensets', 'R.T.Nagar', 'BANGALORE', '9880215101', 'contactus@escongensets.com', 6, 1, '2013-09-14 08:01:20', '2013-11-21 12:19:33', NULL, '0', '', '0', '0'),
(36, 'ENERGIX INDIA', '-', NULL, '', 'ENERGIX INDIA', 'X', 'SUNKADAKATTE, MAGADI ROAD', 'BANGALORE', '7676537878', 'x@gmail.com', 4, 20, '2013-09-16 09:07:32', '2013-09-16 09:07:32', NULL, '0', '0', '0', '0'),
(37, 'PUTTASWAMY', 'PROPRIETOR', NULL, '', 'SRUSHTI POWER CONTROLS', 'PANELS &  INSTRUMENTATION', '6/1, DODDANNA INDL . ESTATE, HEGGANAHALLI, PEENYA II STAGE\r\n', 'BANGALORE', '9845681414', 'srusticontrols@gmail.com', 4, 20, '2013-09-16 09:16:22', '2013-09-16 09:16:22', NULL, '0', '0', '0', '0'),
(38, 'RAVICHANDRA.S', 'ARROW POWER CONTROLS', NULL, '', 'ARROW POWER CONTROLS', 'SOLAR HOME UPS, GRID UPS, LIFT UPS', '#475,6TH CROSS, GOKULA 2ND STAGE, 2ND PHASE, YESHWANTHPUR, B-22', 'BANGALORE', '23578490', 'upsapc@airtelmail.in', 4, 20, '2013-09-16 09:22:02', '2013-09-16 09:22:02', NULL, '0', '0', '0', '0'),
(39, 'RAMU.B.R', 'Director Marketing', NULL, '', 'EXCELLENT POWER CONTROLS', 'Control Panel Manufacturers', 'B-97, 2nd Cross, 1st Stage\r\nPeenya Indl Estate, NEar SBI , B-58', 'BANGALORE', '9611117103', 'ramu@excellentpowercontrols.com', 6, 20, '2013-09-18 10:56:06', '2013-09-18 10:56:06', NULL, '0', '0', '0', '0'),
(40, 'Ravi ', 'D', NULL, '', 'Thermodyne ', 'Manufacturing ', '#18,GJ Industrial estate,Near Kumaran \r\nChildren school ,Doddakallasadra,Kanakapura main road ', 'Bangalore ', '9964911118', 'dravi9470@gmail.com', 4, 22, '2013-09-19 06:14:51', '2013-09-19 06:14:51', NULL, '0', '0', '0', '0'),
(42, 'Satish ', 'CV ', NULL, '', ' Office Tech ', 'Manufacturing ', '#6/8,Commanders Place,Near Richmond Circle ,Raja Ram Mohan Roy Road ', 'Bangalore ', '9845048194', 'cv.satish@hotmail.com', 4, 22, '2013-09-19 06:30:32', '2013-09-19 06:30:32', NULL, '0', '0', '0', '0'),
(43, 'Chandra  ', 'Mohan', NULL, '', 'Knightfield Engines Pvt Ltd', 'Manufacturing ', 'Suraj Manor,#100/1-1,Bull Temple Road ,Basavanagudi', 'Bangalore ', '26610444', 'info@knightfield.in', 4, 22, '2013-09-19 06:37:55', '2013-09-19 06:37:55', NULL, '0', '0', '0', '0'),
(44, 'Giridhar ', 'G', NULL, '', 'Aegan Batteries ltd ', 'Manufacturing ', 'No.198,1st flr ,9th cross,2nd block,Jayanagar', 'Bangalore ', '9945108855', 'giridhar@aeganbatteries.in', 4, 22, '2013-09-19 06:47:53', '2013-09-19 06:47:53', NULL, '0', '0', '0', '0'),
(45, 'K.K. Subbaiah', '', NULL, '', 'Yashas Switchgears', 'Manufacturing ', 'Doddathogur Road cross,konappana  Agrahara ,Electronics city post', 'Bangalore ', '9844183649', 'yashaspanel@ymail.com', 6, 22, '2013-09-19 07:24:28', '2013-10-03 09:51:31', '', '0', '0', '0', '0'),
(46, 'Saravanan', 'S', NULL, '', 'Sri Maruthi  Electronics ', 'Manufacturing ', 'No.27,VN Engg Building Grape Garden Mookandapalli\r\n', 'Hosur ', '9940996377', 'srimaruthielectronics.saravanan@yahoo.com', 4, 22, '2013-09-19 08:52:25', '2013-09-19 08:52:25', NULL, '0', '0', '0', '0'),
(47, 'Chandra  ', 'shekar ', NULL, '', 'Mallik Engineering India Pvt Ltd', 'Manufacturing ', 'unit-2,Shed No.1,Sy No.139/2,Sri siddhi Vinayaka industrial Estate ,opp micro pack,jigni -Anekal ', 'Bangalore ', '7259029875', 'chandrashekar@mallikengineering.com', 4, 22, '2013-09-19 09:12:46', '2013-09-19 09:12:46', NULL, '0', '0', '0', '0'),
(48, 'Surendarnath ', 'K', NULL, '', 'Ramyasri Electrical Automation ', 'Manufacturing ', 'plot No.116,Block D, Auto Nagar ', ',Visakhaptam -', '09848874952', 'ramakanth@ramyasri.com', 4, 22, '2013-09-19 09:17:07', '2013-09-19 09:17:07', NULL, '0', '0', '0', '0'),
(49, 'Channakeshava', '.', NULL, '', 'Biocon Limited ', 'Manufacturing ', 'plot No.2& 3,Bommasandra iv phase,Jigani\r\nlink road,  ', 'Bangalore ', '9686572235', 'keshava.shamanth@biocon.com', 4, 22, '2013-09-19 09:35:17', '2013-09-19 09:35:17', NULL, '0', '0', '0', '0'),
(50, 'Ramakrishna', '.', NULL, '', 'BG Elevators & Escalators ', 'Manufacturing ', '# 782,25th A cross 14th main Judicial layout ,GKVK post ,Yelahanka', 'Bangalore ', '7676258078', 'bgelevators@gmail.com', 4, 22, '2013-09-19 12:11:20', '2013-09-19 12:11:20', NULL, '0', '0', '0', '0'),
(51, 'Gopi Krishna ', 'S', NULL, '', 'EmSys Electronics Pvt Ltd', 'Manufacturing ', '#36,Dr.h.Anjaneyappa Indl.Estate Govardhan Gardens ,opp to Delhi Public School,off Kanakapura road,Yelachanahalli', 'Bangalore ', '9019370506', 'info@emsyselectronics.com', 4, 22, '2013-09-21 04:23:54', '2013-09-21 04:23:54', NULL, '0', '0', '0', '0'),
(52, 'Prakash ', 'Rao', NULL, '', 'Jyothi Surgicals ', 'Manufacturing ', 'No.12,Anugra , Shivananda Nagar,Jaraganahalli ,JP Nagar 6th phase ,\r\n', 'Bangalore ', '9844275474', 'prakashmdj@gmail.com', 4, 22, '2013-09-21 04:29:12', '2013-09-21 04:29:12', NULL, '0', '0', '0', '0'),
(53, 'lakshmipathi', 'k', NULL, '', 'Amararaja electronics', 'electrical & electronics', 'Diguvamagham Village & Post, Thavanampalli Mandalam, \r\nChittoor District - 517 129,\r\nAndhra Pradesh, India.\r\nTel: +91 - 8573 - 283636/ 283789, Fax: +91 - 8573 - 283836', 'chittor', '9908700040.', 'klp@amararaja.co.in', 6, 23, '2013-09-23 12:37:12', '2013-09-23 12:37:12', NULL, '0', '0', '0', '0'),
(54, 'Ranjit', 'Singh', NULL, '', 'COSTA COFFEE', 'Hospitality', 'frazer town', 'bangalore', '9739986722', 'ranjit.singh@dil-rjcorp.com', 5, 20, '2013-09-24 04:24:38', '2013-09-24 04:24:38', NULL, '0', '0', '0', '0'),
(55, 'RAGHAVAN', 'J', NULL, '', 'ASHWIN ELECTRONICS', 'Auto Meters', 'COIMBATORE', 'COIMBATORE', '04226544035', 'raghavan.right@gmail.com', 6, 24, '2013-09-24 08:42:29', '2013-09-24 08:42:29', NULL, '0', '0', '0', '0'),
(56, 'AAPT INDIA PVT LTD', 'AMIT SHRIVASTAVA, MANAGER SCM', NULL, '', 'AAPT INDIA PVT LTD', 'Perforated & Ladder Type Cable Trays', '2/2, 1st Floor, C.B.Royale, Dr. Rajkumar Road, Rajajinagar, Bangalore-560010', 'BANGALORE', '9480836671', 'amit@aaptindia.co.in', 4, 20, '2013-09-25 09:18:01', '2013-09-25 09:26:51', NULL, '0', '0', '0', '0'),
(57, 'CONCORD UNITED PRODUCTS P LTD', 'RAGHAVENDRA - PURCHASE', NULL, '', 'CONCORD UNITED PRODUCTS P LTD', 'AUTOMOBILES', 'A-157, IV Cross, Peenya Ist Stage\r\n', 'BANGALORE', '9972022406', 'xxx@ymail.com', 6, 20, '2013-09-25 09:43:43', '2013-09-25 09:43:43', NULL, '0', '0', '0', '0'),
(58, 'SUPER SHELTERS PVT LTD', 'RAJESH NAIR', NULL, '', 'SUPER SHELTERS PVT LTD', 'BUILDING CONSTRUCTION', '116/2, Kalpaka Arcade,\r\nOffice : 101, Church Street,B-1', 'BANGALORE', '9743474276', 'supershelters@gmail.com', 5, 20, '2013-09-25 09:59:56', '2013-09-25 09:59:56', NULL, '0', '0', '0', '0'),
(59, 'DEVYANI INTERNATIONAL LTD(COSTA COFFEE)', 'RANJIT SINGH -AGM', NULL, '', 'DEVYANI INTERNATIONAL LTD(COSTA COFFEE)', 'COFFEE', '16, 3rd floor, .A.R. plaza, Robertson Road, \r\nFrazer Town, Bangalore-560 005', 'BANGALORE', '9739986722', 'ranjit.singh@dil-rcorp.com', 5, 20, '2013-09-25 10:09:34', '2013-09-25 10:09:34', NULL, '0', '0', '0', '0'),
(60, 'IBMR-INTERNATIONAL BUSINESS SCHOOL', 'BALUMAHENDRA NARAHARI', NULL, '', 'IBMR-INTERNATIONAL BUSINESS SCHOOL', 'EDUCATION INSTITUTION', '#1, SECOND CROSS, 80 FEET ROAD, KORAMANGALA, BANGALORE-95', 'BANGALORE', '9035707672', 'nbalumahendra@gmail.com', 5, 20, '2013-09-25 10:16:02', '2013-09-25 10:16:02', NULL, '0', '0', '0', '0'),
(61, 'CENTURY REAL ESTATE HOLDINGS P LTD', 'ABILASH ISSAC, Sr. Mgr Corporate Comn.', NULL, '', 'CENTURY REAL ESTATE HOLDINGS P LTD', 'Real Estate', 'No.74, 4th Floor, Prestige Feroze, \r\nCunningham Road, Bangalore-560052\r\n', 'BANGALORE', '9900113142', 'abilash.i@centuryrealestate.in', 5, 20, '2013-09-25 10:20:20', '2013-09-25 10:20:20', NULL, '0', '0', '0', '0'),
(62, 'Z K CONSULTANTS', 'Zaid Khan', NULL, '', 'Z K CONSULTANTS', 'Interiors, Architects & Consultants', '#52, Duo Residency, Next to jakkur Flying School, Yelahanka, Bangaldore - 560 064', 'BANGALORE', '9980106786', 'arch.zaidkhan@gmail.com', 5, 20, '2013-09-25 10:23:25', '2013-09-25 10:23:25', NULL, '0', '0', '0', '0'),
(63, 'channakeshava', 'hc', NULL, '', 'bangalore elevators', 'elevators', '212, 2nd Floor, Ist Main R T Nagar, Main Road, Opposite M L A Colony, R T Nagar, R T Nagar\r\nBangalore, KA\r\n080 2333 4399', 'bangalore', '9880335892', 'bangaloreelevators@rediffmail.com', 6, 23, '2013-09-26 10:46:44', '2013-09-26 10:46:44', NULL, '0', '0', '0', '0'),
(64, NULL, NULL, NULL, NULL, 'RITE WAYS', 'ORGANIC WASTE CONVERTERS', '#43 2ND FLOOR 9TH CROSS SHARADANAGAR, JALAHALLI BANGALORE-13', 'bangalore', '23452279', 'hema@rite-ways.com', 4, 23, '2013-09-26 10:55:11', '2013-09-26 10:55:11', NULL, '0', '0', '0', '0'),
(65, NULL, NULL, NULL, NULL, 'synergy punching', 'electrical & electronics', '#337,9th cross 4th phase peenya industrial area, Bangalore 58', 'bangalore', '9164278610', 'naveen@synergypunching.com', 6, 23, '2013-09-26 10:58:27', '2013-09-26 10:58:27', NULL, '0', '0', '0', '0'),
(69, 'Guruprasad', 'Project Manager', NULL, NULL, 'WVS', 'IT', 'Add', 'Bang', '8762328646', 'guru@wvs.in', 5, 1, '2013-09-26 11:29:12', '2013-11-21 12:30:08', NULL, '0', 'testarea', '0', '0'),
(70, 'Guruprasad', 'Project Manager', NULL, NULL, 'WVS', 'IT', 'Add', 'Bang', '8762328646', 'guru@wvs.in', 5, 1, '2013-09-26 11:30:14', '2013-09-26 11:30:14', NULL, '0', '0', '0', '0'),
(71, 'DOLAR ENGG INDUSTRIES P LTD', 'K.P.JAYAPRAKASHAN-DIRECTOR', NULL, NULL, 'DOLAR ENGG INDUSTRIES P LTD', 'Mftrs of commercial  Kitchen Equipments', '#3, 1st A Cross, 1st C Main, 1st Stage, Peenya indl. Estate, B-58', 'BANGALORE', '9845037555', 'sales@dolargroup.com', 6, 20, '2013-09-28 04:48:51', '2013-09-28 04:48:51', 'BBN MEMBER', '0', '0', '0', '0'),
(72, 'Srinivas Rao ', 'Manager ', NULL, NULL, 'Ind Power', 'Manufacturing ', 'Plot no.61, IDA E Block ,Autonagar ', 'Visakhapatnam', '9948125577', 'indpower_vizag@yahoo.co.in', 4, 22, '2013-09-28 10:06:26', '2013-09-28 10:06:26', 'own lead ', '0', '0', '0', '0'),
(73, 'Stanley', '', NULL, NULL, 'Climaire', '', 'No.599,2nd Main Road, nanjappa Reddy Layout,Koramangala 8th Block,', 'Bangalore', '9844138768', 'info@climaireinc.com', 4, 22, '2013-10-03 09:24:36', '2013-10-03 09:24:36', 'Own', '0', '0', '0', '0'),
(75, 'C.G Krishnamurthy', 'Managing Director', NULL, NULL, 'Chaturvedi Tools & Equipments Pvt Ltd', '', 'No.54, Bangashankari Indl Area, Banashankari 2nd Stage,', 'Bangalore', '26713132', 'cgk.chaturvedi@gmail.com', 4, 22, '2013-10-03 09:34:37', '2013-10-03 09:34:37', 'Own', '0', '0', '0', '0'),
(76, 'Ramachandra C.N', 'General Manager', NULL, NULL, 'RMS Technologies Pvt Ltd', 'Electrical  Division', '#17, 1st Floor, 8th Main, Indl Layout, BSK 2nd Stage,', 'Bangalore', '9741330242', 'ramachandra@rmsindia.net', 4, 22, '2013-10-03 09:42:33', '2013-10-03 09:45:31', '', '0', '0', '0', '0'),
(77, '', '', NULL, NULL, 'Venus Industries', 'Manufacturers', 'No.4, Devayani Industrial Complex, Subramanyapura Main Road, Gowdanapaly,', 'Bangalore', '26667247', 'wm_venus@yahoo.com', 4, 22, '2013-10-03 09:50:28', '2013-10-03 09:50:28', 'Own', '0', '0', '0', '0'),
(78, 'V.N Deshmukh', '', NULL, NULL, 'Klene Paks Ltd', '', '7th Mile, Bannerghatta Road, ', 'Bangalore', '9844061792', 'deshmukhvn@rediffmail.com', 6, 22, '2013-10-03 10:28:22', '2013-10-03 10:28:22', '', '0', '0', '0', '0'),
(79, 'Lalitha Shastry', 'Admin & Purchase Manager', NULL, NULL, 'GDR Mektek Pvt Ltd', '', 'No.736, Sy No.33/2, 77/1, Hulimavu Village, Bannerghatta Road,', 'Bangalore', '9886173798', 'lalitha.shastry@gdrmektek.com', 4, 22, '2013-10-03 11:01:20', '2013-10-03 11:01:20', '', '0', '0', '0', '0'),
(80, 'Lazarus', 'Manager', NULL, NULL, 'Fine Flame ', 'Service', '#18/5, 1st Main, Sampangiram Nagar, Bangalore - 560 027', 'Bangalore', '9845036821', 'fineflame@gmail.com', 4, 22, '2013-10-05 07:52:33', '2013-10-05 07:52:33', 'Own', '0', '0', '0', '0'),
(81, 'Sudheendra Rao', '', NULL, NULL, 'Gauge 16 Steelfabs Pvt Ltd', '', '#17, 8th Main, Indl Area,\r\nBnashankari 2 nd Stage,', 'Bangalore', '984599922', 'gauge16@gmail.com', 4, 22, '2013-10-05 08:02:32', '2013-10-05 08:02:32', '', '0', '0', '0', '0'),
(82, 'Rangaswamy', 'Lab Engineer', NULL, NULL, 'Softwear Research Pvt Ltd', '', '#509, Kanakapura Main Road, 7th Block Jayanagar, ', 'Bangalore', '9663585937', 'rswamy@p1di.com', 4, 22, '2013-10-08 05:24:26', '2013-10-08 05:24:26', '', '0', '0', '0', '0'),
(83, 'S.Nagaraj', '', NULL, NULL, 'Emerald Electrical Industries', 'Manufacturers', '#9/a, 8th Cross, J.C Indl Area, ISRO Layout Road, Kanakapura Road,', 'Bangalore', '9845372446', 'emeraldelectricalindustries@gmail.com', 4, 22, '2013-10-08 06:18:06', '2013-10-08 06:18:06', '', '0', '0', '0', '0'),
(84, 'Gopal', '', NULL, NULL, 'Protection Electromech (P) Ltd', 'Manufacturers', 'No.44,29th Cross, 7th Main Road, Banashnkari Indl Layout, Banashankari 2nd Stage', 'Bangalore', '26716005', 'protectron@protectron.in', 4, 22, '2013-10-08 06:22:02', '2013-10-08 06:22:02', '', '0', '0', '0', '0'),
(85, 'S.Ravi', '', NULL, NULL, 'Simhadri Industries', '', 'Plot No.18B, D - Block, (Expansion) I.D.A Autonagar, Visakhapatnam - 530 046', '', '9885187247', 'ravisimhadriindustries@yahoo.in', 4, 22, '2013-10-08 06:47:51', '2013-10-08 06:47:51', '', '0', '0', '0', '0'),
(86, 'Ravi.H.B', 'Sr.Production Executive', NULL, NULL, 'Imagex Technologies India Pvt Ltd', '', '45/B, 4th Floor, 1st Main, Mini Forest Road, Sarakki Indl Layout, J.P Nagar, 3rd Phase', 'Bangalore', '9343174511', 'works@imagex.in', 4, 22, '2013-10-08 07:34:20', '2013-10-08 07:34:20', '', '0', '0', '0', '0'),
(87, 'H.Sanaulla Shariff', '', NULL, NULL, 'Shyamu Enterprises', 'Engineers & Contractors', '#4/607,4/607 - 1, Shyamu building, Dharga, Sipcot - I, Hosur - 635 126', '', '9677920345', 'shyamu.enterprises278366@gmail.com', 4, 22, '2013-10-08 07:41:17', '2013-10-08 07:41:17', '', '0', '0', '0', '0'),
(88, 'B.T.Bopaiah', 'Sr. Engineer - Vendor Development', NULL, NULL, 'Prabha Industries', '', '86/1, Kumbalgod Indl Area, Phase - II, ', 'Bangalore', '8095551601', 'bopaiah@prabhadytek.com', 4, 22, '2013-10-08 07:46:25', '2013-10-08 07:46:25', '', '0', '0', '0', '0'),
(89, 'Mohammed Sadiq Patel', 'Sr.Manager - Purchase & Planning', NULL, NULL, 'Otis Elevators Company (India) Limited', '', 'No.92, KIADB Indl Estate, Phase II, Jigani Indl Area, Anekal Taluk,', 'Bangalore', '9880385067', 'sadiq.patel@otis.com', 4, 22, '2013-10-08 09:27:40', '2013-10-08 09:27:40', '', '0', '0', '0', '0'),
(90, 'S.V. Srinivasa Murthy', 'Purchase Officer', NULL, NULL, 'Konarak Industria Pvt Ltd', '', 'No.22,Indl Layout, Banashankari 2nd Stage,', 'Bangalore', '9945874724', 'purchase.kanarak@gmail.com', 4, 22, '2013-10-08 10:01:47', '2013-10-08 10:01:47', '', '0', '0', '0', '0'),
(91, 'G.Maheswara Raju', 'Partner', NULL, NULL, 'Sri Sanari Electrical Engineering Works', '', '38-22-101/A, 104 Area, Visakhapatnam - 7', '', '2515430', 'sanarielectricals@yahoo.com', 4, 22, '2013-10-08 10:14:04', '2013-10-08 10:14:04', '', '0', '0', '0', '0'),
(92, 'Suman Reddy', 'Area Sales Manager', NULL, NULL, 'Climaire', '', '#378/45, Mallappa Reddy Layout, Koramangala 8th Block, Near Shiva Theatre', 'Bangalore', '8050031608', 'suman@climare.co.in', 4, 22, '2013-10-08 10:19:54', '2013-10-08 10:19:54', '', '0', '0', '0', '0'),
(94, 'Roshan Kumar.B', 'Team Leader B & P', NULL, NULL, 'Nandi Toyota Motor Worlds P L', '', '6/1, Thalaghattapura, Kanakapura Main Road,', 'Bangalore', '40431111', 'bl03a_bp@nandilayouta.com', 4, 22, '2013-10-08 10:42:48', '2013-10-08 10:42:48', '', '0', '0', '0', '0'),
(95, 'H.Ningappa', 'Territory Manager', NULL, NULL, 'Witech Automation Solutions Pvt Ltd', '', '194/5/59, "Radha Mansion, 36th F Cross, 17th Main, 4th T Block, Jayanagar', 'Bangalore', '41112952', 'ningappa@witech.in', 4, 22, '2013-10-08 10:48:02', '2013-10-08 10:48:02', '', '0', '0', '0', '0'),
(96, 'Archana', '', NULL, NULL, 'Praras Bio - Sciences Pvt Ltd', '', '#207/B1, Bikasipura, J.C Indl Area, Near Delhi Public School, Behind Metro, Kanakapura Road,', 'Bangalore', '49535064', 'offics@prarasbiosciences.com', 4, 22, '2013-10-08 11:07:15', '2013-10-08 11:07:15', '', '0', '0', '0', '0'),
(97, 'Satish.C.V', 'Director', NULL, NULL, 'OTS Officetech Systems P Ltd', '', '# 6/8,Commanders Place, Near Richmond Circle, Raja Ram Mohan  Roy Road', 'Bangalore', '22229111', 'cv.satish@hotmail.com', 4, 22, '2013-10-08 11:20:48', '2013-10-08 11:20:48', 'Own', '0', '0', '0', '0'),
(98, 'K.V Pavan Madhav Kumar', 'HR Manager', NULL, NULL, 'Thermal Powertech Corporation I Ltd', '', '6-3-1090, 2nd & 3rd Floors, C - Block, TSR Towers, Rajbhavan Road, Somajiguda, Hyderabad - 500 082', '', '49048366', 'pavan.madhavkumar@tpcil.com', 4, 22, '2013-10-08 11:24:13', '2013-10-08 11:24:13', '', '0', '0', '0', '0'),
(99, 'Gadhadar', '', NULL, NULL, 'Nopo Nanotechnologies I Pvt Ltd', '', 'SPL 22, KSSIDC Indl Estate, 2nd Phase, Jigani Indl Area, Anekal Taluk', 'Bangalore', '8105608995', 'gadhadar@nopo.in', 4, 22, '2013-10-08 11:27:11', '2013-10-08 11:27:11', '', '0', '0', '0', '0'),
(100, 'Sundar Raj Pathi', 'Director ', NULL, NULL, 'Guru Goutam Infotech Pvt Ltd', 'IT ', '100/3,Bull temple road , Behind ICICI Bank\r\n', ',Bengaluru-560019', '22429955', 'info@gurugoutam.com', 4, 22, '2013-11-08 11:12:48', '2013-11-08 11:12:48', 'Murali ', '0', '0', '0', '0'),
(101, 'Abhishek ', 'Purcahse', NULL, NULL, 'Energy Engineerings & Electro Controls', 'Manufacturing ', 'no.34,8th cross,spoorthi nagar, \r\nYelachenhalli', 'Bangalore -560078', '9972688899', 'energyengineerings@gmail.com', 4, 22, '2013-11-08 11:29:33', '2013-11-08 11:29:33', 'Murali ', '0', '0', '0', '0'),
(102, 'Guru', 'des', NULL, NULL, 'GG', 'Software', 'ADD', 'City', '8762328646', 'guru@wvs.in', NULL, 1, '2013-11-09 12:59:34', '2013-11-09 12:59:34', NULL, 'State', 'Area', 'http://wvs.in/micra/', '8762328646'),
(103, 'SUBRAMANYAM', 'PURCHASE', NULL, NULL, 'KAMATH TRANSFORMERS PVT LTD', 'TRANSFORMERS', 'B-124, 3rd Cross, 1st Stage, Peenya Industrial Estate, Peenya Industrial Estate, Bangalore, KA 560058', 'BANGALORE', '08027734136', 'marketing@kamathtrafo.com', NULL, 1, '2013-11-11 10:02:47', '2013-11-11 10:02:47', NULL, 'KARNATAKA', 'PEENYA ', 'www.kamathtrafo.com', '08027734135'),
(104, 'Guru', 'Software Engineer', NULL, NULL, 'World Vision Softek', 'IT', 'Blr', 'Blr', '8762328646', 'prasad.hgd@gmail.com', NULL, 1, '2013-11-12 06:39:46', '2013-11-12 07:43:38', '|', 'Ka', 'Rjr', 'http://wvs.in', '8762328646'),
(105, 'RUDRESH.M', 'EXECUTIVE PURCHASE', NULL, NULL, 'NUETECH SOLAR SYSTEMS PVT LTD', 'MFRS OF SOLAR WATER HEATER & LIGHTINGS', '#5, B.M.SHANKARAPPA INDL. ESTATE, SUNKADAKATTE, MAGADI MAIN ROAD, VISHWANEEDAM POST', 'MAGADI MAIN ROAD', '23483766', 'purchase@nuetechsolar.com', NULL, 1, '2013-11-13 09:26:07', '2013-11-13 09:26:07', '|', 'KARNATAKA', 'SUNKADAKATTE', 'www.nuetechsolar.com', '9035503322'),
(106, 'Gururaj Dambal', 'Director (Product Development)', NULL, NULL, 'Avana Electrosystems Pvt. Ltd.,', 'Control Panel Mfrs.', 'Plot No. N1, 3rd Floor, 4th Cr, 1st Stage, Peenya Industrial Estate', 'Bangalore', '28392133', 'gururaj@avanaelectrosystems.com', NULL, 1, '2013-11-13 10:12:31', '2013-11-13 10:12:31', '|', 'karnataka', 'Peenya Industrial Estate', 'www.avanaelectrosystems.in', '9686205064'),
(107, 'Anand Kumar K', 'Director', NULL, NULL, 'TGS Vertical Transportation Pvt Ltd', 'Elevators ', 'Sri Lakshmi Tower, #1, 4th Floor, Site No.2&3, near Nh4 Highway, Jalahalli Circle, T.Dasarahalli,', 'Bangalore', '32211565', 'info.tgsvt@gmail.com', NULL, 1, '2013-11-13 10:23:11', '2013-11-13 10:23:11', '|', 'karnataka', 'T.Dasarahalli', '-', '9591990545'),
(108, 'H.R.Sridhara', 'Manager Electrical', NULL, NULL, 'ETA Technology Pvt. Ltd', 'Machinery Mfrs', '484-D,13th Cross (Rotary Udyog Road), IV Phase, Peenya Industrial Area, Bangalore-58', 'Bangalore', '08028361487', 'sridhar@etatechnology.net', NULL, 20, '2013-11-13 10:38:02', '2013-11-13 10:38:02', '|', 'karnataka', 'Peenya Industrial Area', 'www.etatechnology.in', '9845432564'),
(109, 'Hemanth. R', 'Manager Technical Solns.', NULL, NULL, 'V3 Novus', 'Instruments Mfr', '#1341, Devi Arcade, 2nd Floor, ''A'' Block, RMV Extension, Sahakarnagar, Bangalore-560092', 'Bangalore', '08023624347', 'hemanth.r@v3novus.com', NULL, 20, '2013-11-13 11:08:25', '2013-11-13 11:08:25', '|', 'karnataka', 'RMV Extention', '-', '9886578994'),
(110, 'B.G.Girish', 'Partner', NULL, NULL, 'Rural innovation & Research', 'instrument controls mfr.', '#15, Srinivasa, Astagrama Layout Near Kamakshipalya, Traffic police station, Basaveshwaranagar, Bangalore - 560079', 'Bangalore', '08023583996', 'info@santepp.com', NULL, 1, '2013-11-13 11:14:20', '2013-11-13 11:14:20', '|', 'karnataka', 'Basaveshwaranagar', 'www.santepp.com', '9902133996'),
(111, 'H.N.Sathyanarayana', '-', NULL, NULL, 'Dr. Wiesner Test & Automation Pvt Ltd', 'Medical Equipments', '453/A, 12th Cross, Peenya Ind. Area, 4th phase, Bangalore - 560 058', 'Bangalore', '08041900178', 'sathyanarayana@drwiesner.in', NULL, 1, '2013-11-13 11:21:13', '2013-11-13 11:21:13', '|', 'karnataka', 'Peenya Ind. Area', 'www.drwiesner.in', '9900036861'),
(112, 'Vasudevan', 'Proprietor', NULL, NULL, 'Heat Win', 'Bakery Ovens & Machineries', 'Shed No. 1/10, Jyothi Industrial Complex, Near Saniswara Temple, Abbigere Main Road, Jalahalli West, Kammagondanahalli, Bangalore - 560 015', 'Bangalore', '9886491041', 'heatwin@yahoo.com', NULL, 1, '2013-11-13 11:28:22', '2013-11-13 11:28:22', '|', 'karnataka', 'Jalahalli West', '-', '9886491041'),
(113, 'Bhagyaraj lakshman', 'Proprietor', NULL, NULL, 'Ever Green ', 'Stainless Steel Interiors', '#31, Wimac Complex, Abbigere Main Road, Kammagondanahalli, Chikkabanavara Post, Bangalore - 560 090', 'Bangalore', '08023254836', 'bagyapk@gmail.com', NULL, 1, '2013-11-13 11:30:59', '2013-11-13 11:30:59', '|', 'karnataka', 'Kammagondanahalli', '-', '9916703046'),
(114, 'nagaraj vishnu naik', 'Senior Engineer - Vendor Development', NULL, NULL, 'Fouress Engineering (India) Limited', 'Machinery Mfrs', 'Plot 2, Phase II, Peenya Industrial Area, Bengaluru - 560 058', 'Bangalore', '08028395734', 'nvn@fouressindia.com', NULL, 1, '2013-11-13 11:33:13', '2013-11-13 11:33:13', '|', 'karnataka', 'Peenya Ind. Area', 'www.fouressindia.com', '9663399524'),
(115, 'H.C.Channakeshava', 'Managing Partner', NULL, NULL, 'Bangalore Elevators', 'Elevators ', 'Regd. Off. 212, 2nd Floor,1st Main, R.T.Nagar Main Road, Opp. M.L.A.Colony, Bangalore-560032', 'Bangalore', '9880335892', 'bangaloreelevators@rediffmail.com', NULL, 1, '2013-11-13 11:50:09', '2013-11-13 11:50:09', '|', 'karnataka', 'R.T.Nagar', '', '9880335892'),
(117, 'Rudrappa M.R', 'Manager O&M', NULL, NULL, 'Reva Elevators', 'Elevators', '#21, K.M.Habitat, 14th Corss, 1st BLK, Rajajinagar, Bangalore-560 010', 'Bangalore', '9844449692', 'revaelevators@gmail.com', NULL, 1, '2013-11-20 09:59:53', '2013-11-20 09:59:53', '|', 'Karnataka', 'Rajajinagar', 'www.revaelevators.com', '9844449692'),
(118, 'Sourav', '', NULL, NULL, 'Mr.Sourav', '', '', 'Bangalore', '9900050724', 'souravsharma24@gmail.com', NULL, 1, '2013-11-23 08:44:56', '2013-11-23 08:44:56', '|', 'Karnataka', '', '', '9900050724'),
(119, 'Nagaraj', '', NULL, NULL, 'Sakti Electronics', 'Battery Manufacturing', '#231, 1st Main, 3rd Cross,\r\nKSRTC Layout, 2nd Phase, J.P.Nagar,\r\nBangalore-560 078', 'Bangalore', '9845336517', 'office@saktipower.com', NULL, 1, '2013-11-23 10:53:39', '2013-12-05 09:51:08', '|', 'Karnataka', 'J.P.Nagar', 'www.sakthipower.com', '9845336517'),
(120, 'Ramakrishna', '', NULL, NULL, 'Advanced Power Sources Limited', '', '01, Arjun Velji Udyog Building,             Shivaji Nagar, Waliv, Vasai (E),\r\nThane dist-401208, Maharashtra\r\n', 'Pune', '9987576683', 'info@apd.in', NULL, 1, '2013-11-23 11:31:46', '2013-11-23 11:31:46', '|', 'Maharashtra', '', 'www.apsl.in  ', '9987576683'),
(121, 'Surendra', '', NULL, NULL, 'AVT Natural', '', 'Survey /no.8/1 ?& 9,                Venkateshpura, Karepura Village, Doddabelavangola Hobli,Doddaballapur (T.K.), Bangalore Rural Dist\r\n', 'Bangalore', '9449696544', 'surendrareddy5@rediffmail.com', NULL, 1, '2013-11-23 11:33:55', '2013-11-23 11:49:14', '|', 'Karnataka', '', '', '9449696544'),
(122, 'Ms.Prabha', '', NULL, NULL, 'Automax', '', '# 39/3, 24th â€˜Aâ€™ Main, Marenhalli,\r\nJ.P.Nagar, 3rd Phase,\r\nBangalore-78\r\n', 'Bangalore', '9731388824', 'production@hikerindia.com', NULL, 1, '2013-11-23 11:35:59', '2013-11-23 11:50:24', '|', 'Karnataka', '', '', '9731388824'),
(123, 'Manjunath', '', NULL, NULL, 'Armax Automation Pvt Ltd', '', 'No.51 & 54, 2nd Cross, \r\nVinayaka Layout\r\nAndrahalli Main Road,\r\nPeenya 2nd Stage, Bangalore-560091\r\n', 'Bangalore', '735377180', 'manjunath@armaxindia.com', NULL, 1, '2013-11-26 05:30:31', '2013-11-26 05:30:31', '|', 'Karnataka', 'Peenya', '', '735377180'),
(124, 'Hanuman Singh', '', NULL, NULL, 'Automech Systems', '', '# Q12, KSSIDC Industrial Area,\r\nVeerasandra, 2nd Phase, Huskur Road,\r\noff Hosur Main Road, \r\nBangalore-560 100\r\n', 'Bangalore', '9845297531', 'automech_systems@yahoo.com', NULL, 1, '2013-11-26 05:32:36', '2013-12-05 09:51:49', '|', 'Karnataka', 'Hosur', '', '9845297531'),
(125, 'Giriyappa', 'Proprietor', NULL, NULL, 'Sri Srinivasa Enterprises', '', '#17, 7th cross, 19th Main, Bandappa Garden, Muthyalanagar, (Behind Murali Theatre), Gokula PI, Bangalore-560 054', 'Bangalore', '9243131668', 'srinivasaenterprises@yahoo.com', NULL, 1, '2013-11-26 10:07:39', '2013-11-26 10:07:39', '|', 'Karnataka', '', '', '9243131668'),
(126, 'Mr.M.Prabhakar', '', NULL, NULL, 'Indo Air Cool Systems', '', 'No.6/104-1,4th Cross, 6th Block,\r\nRajajinagar, Bangalore-560010', 'Bangalore', '9341310656', 'indoaircoll.systems@gmail.com', NULL, 1, '2013-11-26 10:13:04', '2013-11-26 10:13:04', '|', 'Karnataka', '', '', '9341310656'),
(127, 'Aswini', 'Purchaser', NULL, NULL, 'Maxwill Zeus Expositions (P) ltd', '', '117/1, 1st floor, 8th Main,', 'Bangalore ', '22202737', 'find@maxwill.in', NULL, 1, '2013-11-26 10:14:29', '2013-11-26 10:14:29', '|', 'karnataka', 'vasantnagar', 'www.maxwill.in', '9845117743 / 9341960444'),
(128, 'M.Kumar', '', NULL, NULL, 'J.K.Electrical Service', '', '#29, Goutham Nagar, Tumkur Road,\r\nYeshwanthpur, Bangalore-560022', 'Bangalore', '9880945262', 'jkelectricalservice@yahoo.in', NULL, 1, '2013-11-26 10:20:25', '2013-11-26 10:20:25', '|', 'Karnataka', '', '', '9880945262'),
(129, 'Radhakrishna M.k', '', NULL, NULL, 'Royal Lifts', '', '#2, Survey No.52/1, Opp.Trinity Car Care Pvt Ltd, Kottigepalya, Nagarabhavi Ring Road, Bangalore-560091', 'Bangalore', '9845765927', 'royallifts@gmail.co', NULL, 1, '2013-11-26 10:28:38', '2013-11-26 10:28:38', '|', 'Karnataka', '', 'www.royalliftsblr.com', '9448069927'),
(130, 'Rakesh', 'Purchase Incharge', NULL, NULL, 'Ampere Power & Automation Technologies', '', '# 43, Byraveshwara Industrial Estate,\r\nHeganahalli, Off Andrahalli Main Road,\r\nPeenya 2nd stage, Bangalore -560091', 'Bangalore', '9845296637', 'pratap@amperetechnologies.com', NULL, 1, '2013-11-26 10:33:21', '2013-11-26 10:33:21', '|', 'Karnataka', 'Peenya', 'www.amperetechnologies.com', '9845296637'),
(131, 'S.G.Rajesh', '', NULL, NULL, 'Essar Engineering Industries', '', 'Unit-1: No.D-64, Yadavagiri Industrial Estate, Yadavagiri, Mysore-570050', 'Mysore', '9845495045', 'essarfabs@gmail.com', NULL, 1, '2013-11-26 10:37:59', '2013-11-26 10:37:59', '|', 'Karnataka', '', '', '9845495045'),
(132, 'Ravi.R', '', NULL, NULL, 'Armour Safes', '', 'No.52/1, Benniganahalli,\r\nOld Madra Road,\r\nBangalore-560016', 'Bangalore', '9844054009', 'ravi@armoursafes.com', NULL, 1, '2013-11-26 10:44:48', '2013-11-26 10:44:48', '|', 'Karnataka', '', 'www.armoursafes.com', '9844054009'),
(133, 'Vinay Kumar.V', '', NULL, NULL, 'Skanray Technologies', '', 'Plot No.15-17, Hebbal Industrial Area,\r\nMysore, ', 'Mysore', '9886719888', 'vinay.kumar@skanray.com', NULL, 1, '2013-11-26 10:46:44', '2013-11-26 10:46:44', '|', 'Karnataka', '', '', '9886719888'),
(134, 'J.Seshadri', '', NULL, NULL, 'Thittanix Instruments', '', '# 33, 1st main, 1st cross,\r\nSrikanteshwaranagar,\r\nYeshwanthpur Indl. Suburb,\r\nBangalore-560022', 'Bangalore', '9844073628', 'seshadri@gmail.com', NULL, 1, '2013-11-26 10:48:58', '2013-11-26 10:48:58', '|', 'Karnataka', '', '', '9844073628'),
(135, 'Umesh B.A', '', NULL, NULL, 'Industrial Sales Corporation', '', '# 4/15, 2nd Floor, \r\nSegu''s Shankar Building, \r\nMarisamappa Lane, SJR Road Cross,\r\nBangalore-560002', 'Bangalore', '9844095781', 'isc.bng@rediffmail.com', NULL, 1, '2013-11-26 11:04:33', '2013-11-26 11:04:33', '|', 'Karnataka', '', 'www.iscindia.in', '9844095781'),
(136, 'Kiran K.Patil', 'Manager-Design & Production', NULL, NULL, 'Sunrise solar Pvt Ltd', '', '# B4, Jaibharath Industrial Estate,\r\nYeshwanthpur, \r\nBangalore-560022', 'Bangalore', '8722044441', 'info@sunrisesolar.in', NULL, 1, '2013-11-26 11:12:21', '2013-11-26 11:12:21', '|', 'Karnataka', '', 'www.sunrisesolar.in', '8722044441'),
(137, 'Benoy.S.Nair', '', NULL, NULL, 'Archana Equipments & Technologies', '', '#66/1, 6th Main, 3rd Phase\r\nPeenya Industrial Area,\r\nBangalore- 560058', 'Bangalore', '9448004551', 'archanaequipments@gmail.com', NULL, 1, '2013-11-26 11:20:46', '2013-11-26 11:20:46', '|', 'Karnataka', '', 'www.archanaequipments.com', '9448004551'),
(138, 'K.S.Srinivas Babu', 'Proprietor', NULL, NULL, 'S.B.Enterprises', 'Electrical Panel Boards ', '#33, Avalahalli, New Timber Yard Layout,\r\nBangalore-560 026', 'Bangalore', '26740789', 'elcpanel@yahoo.co.in', NULL, 1, '2013-11-27 11:56:14', '2013-11-27 11:56:14', '|', 'Karnataka', 'Mysore Road', 'sb_enterprises@vsnl.net', '9448477089'),
(139, 'Dinesh Kumar.G', '', NULL, NULL, 'Hi-Power Control', '', '# 53/1, Kottigepalya Ring Road,\r\n2nd Main Road, \r\nOpp.Vokkaligara Sangha College,\r\nSrigandhakavalu, Magadi Main Road\r\nBangalore-91', 'Bangalore', '9845631489', 'dineshkumarg73@gmail.com', NULL, 1, '2013-11-27 12:13:35', '2013-11-27 12:13:35', '|', 'Karnataka', '', '', '9845998373'),
(140, 'Santhosh Kumar.B', 'Production Manager', NULL, NULL, 'Tech.ED Equipment Company', '', 'Site No.18, Survey No.131,\r\nMachohalli Gate, 17th K.M.\r\nMagadi Main Road,\r\nBangalore-560091', 'Bangalore', '9448452951', 'sales@techedequipment.com', NULL, 1, '2013-11-27 12:17:31', '2013-11-27 12:17:31', '|', 'Karnataka', '', 'www.tech-edequipment.com', '9448452951'),
(141, 'Brijendra Singh ', 'partner', NULL, NULL, 'Super Control & Automation', 'Electrical & electronic Panel dealers', 'Plot No.726, Near Om Dayal Health Centre, Sohna road, Parvatia Colony,\r\nN.I.T.Faridabad (Hr.)', 'New Delhi', '9868108283', 'super.control@yahoo.co.in', NULL, 1, '2013-11-29 06:54:33', '2013-11-29 06:54:33', '|', 'New Delhi', 'Faridabad', 'supercontrol.tradeindia.com', '9871478398'),
(142, 'Kapil Lamba', 'Manager - Purchase and store', NULL, NULL, 'Karytron Electricals Pvt Ltd', 'Mfr. Power & Control Panels', 'O-18, Old Industrial Area, Bahadurgarh-124507 (Haryana) ', 'Haryana', '01276244018', 'kapil_lamba123@rediffmail.com', NULL, 1, '2013-11-29 07:00:26', '2013-11-29 07:00:26', '|', 'New Delhi', 'Haryana', 'www.karytron.com', '9541973444'),
(143, 'Nagaraj', 'Purchase', NULL, NULL, 'Neri Machine Tools Pvt Ltd', 'CNC Machinery', 'C-199, 4th Cross, 1st Stage, PIE, Bangalore - 560 058', 'Bangalore', '28374772', 'service@nerigroup.in', NULL, 1, '2013-11-29 07:03:35', '2013-11-29 07:03:35', '|', 'Karnataka', 'Peenya Industrial Estate', 'www.nerigroup.in', '9880912904'),
(144, 'Ravi', 'Purchase ', NULL, NULL, 'Sify Technology ltd', '', 'Sify technologies Ltd\r\n3rd floor ,cyber park\r\nElectronic-city\r\nBangalore-560100\r\n', 'Bangalore ', '67599000', 'vishwanatha.sathyamaiah@sifycorp.com', NULL, 1, '2013-11-29 07:08:06', '2013-11-29 07:08:06', '|', 'karnataka', 'Electronic-city', '', '9945612499'),
(145, 'Jayaramu', 'Purchase ', NULL, NULL, 'Kaynes Technology India Pvt, ltd', '', '#23, Belagola food Indl.Area, Hebbal Village, Metagalli Post', 'Mysore', '8214280259', 'jayaramu@kayestechnology.net', NULL, 1, '2013-11-29 07:14:01', '2013-11-29 07:14:01', '|', 'karnataka', '', 'www.kaynestechnology.net', '9686665294'),
(146, 'Pavan', '', NULL, NULL, 'CYPRESS SEMICONDUCTOR ', '', '65/2 Bagmane Tech Park,\r\nBlock C\r\nBagmane Laurel,\r\n\r\n', 'BANGALORE, 560093', '08067073391', 'pava@cypress.com', NULL, 1, '2013-11-29 07:29:43', '2013-11-29 07:29:43', '|', 'karnataka', 'CV Raman Nagar', '', '9620712799'),
(147, 'Ganesh Rao', '', NULL, NULL, 'AquaShine', '', 'Rukmini Nagar, Bangalore', 'Bangalore', '9900110416', 'ganeshbhonsale@rediffmail.com', NULL, 1, '2013-11-29 07:34:53', '2013-11-29 07:34:53', '|', 'Karnataka', '', '', '9900110416'),
(148, 'Manjunath', '', NULL, NULL, 'ASEC Sollutions', '', 'No.38, Annapoorneshwari Indl. Area,\r\nDoddakallasandra, \r\nKanakpura Main Road,\r\nBangalore-560062\r\n', 'Bangalore', '9845072450', 'sales@asecsolution.com', NULL, 1, '2013-11-29 07:43:39', '2013-12-05 09:52:26', '|', 'Karnataka', '', 'www.asecsolution.com', '9886486815'),
(149, 'Udayasuriyan M. (Director)', '(Director)', NULL, NULL, 'PM Techno Pvt Ltd', 'Control Panel Mfrs', 'Rajkumar-Purchase-8123021077       C-28 & B-13, KSSIDC INDUSTRIAL AREA, DODDABALLAPUR, Bengaluru - 561203, Karnataka, India', 'Bangalore', '23128751', 'rajkumar@pmtechno.co.in', NULL, 1, '2013-11-29 07:43:55', '2013-12-05 09:52:46', '|', 'Karnataka', 'DODDABALLAPUR', '', '9880444520'),
(150, 'Bharath ', '', NULL, NULL, 'Agromatica Engineering India Pvt Ltd', '', '# 47/1C, Building No.2, 1st Floor\r\nPatel Venkatappa Complex,\r\nSunkadakatte, Bangalore-560091\r\n', 'Bangalore', '8050945598', 'agromaticaengiindia@gmail.com', NULL, 1, '2013-11-29 07:46:24', '2013-12-05 09:53:02', '|', 'Karnataka', '', '', '8050945598'),
(151, 'Nagaraj', '', NULL, NULL, 'Neri MAchine Tools pvt ltd', '', '# C199, 4th Cross, 1st Stage, Peenya, Industrial Estate,', 'Bangalore', '9880912904', 'purchase@robusturn.com', NULL, 1, '2013-11-29 08:00:57', '2013-11-29 08:00:57', '|', 'karnataka', 'Peenya', 'www.neriengineering.com', '080 - 28374772'),
(152, 'Sudheer.K', '', NULL, NULL, 'Bilva Technologies Pvt Ltd', '', 'Bilva Technologies Pvt Ltd\r\nNo.21/6, 4th Main, 2nd Stage,\r\nIndustrial Suburb, Yeshwanthpur\r\nBangalore - 560 022\r\n', 'Bangalore', '23471080', 'sudheer@bilvatechnologies.com', NULL, 1, '2013-11-29 09:50:46', '2013-11-29 09:50:46', '|', 'karnataka', 'Yeshwanthpur', '', '96110 66662'),
(164, 'Prashanth ', '', NULL, NULL, 'Advanced Rail Controls Pvt Ltd', '', '#59/1, 2nd Floor, â€˜Gâ€™ Block, \r\nAbove Bank of India, \r\n60 Feet Main Road, Sahakar Nagar\r\nBangalore-560 094\r\n', 'Bangalore', '9900081572', 'mail@arc.net.in', NULL, 1, '2013-11-29 11:08:50', '2013-12-05 09:53:26', '|', 'Karnataka', '', 'www.arc.net.in', '9900081572'),
(168, 'Peri ', '', NULL, NULL, 'Avco Engineering Enterprises', '', '110/D, 1st Floor, 7th Main,3rd Phase\r\nPeenya Industrial Area,\r\nBangalore â€“ 560058\r\n', 'Bangalore', '9342813881', 'sales@avcotech.in', NULL, 1, '2013-11-30 05:04:39', '2013-12-05 09:53:44', '|', 'Karnataka', '', 'www.avcotech.co.in', '9342813881'),
(169, 'Rahul.C.G/Mr.Ravi kumar', '', NULL, NULL, 'ATS Power Solutions', '', '# 103/1, Beilekahalli Post, \r\nDevarachikkanahalli Main Road,\r\nBannerghatta Road,\r\nBangalore - 560076\r\n', 'Bangalore', '9901902007', 'info@atspowersolutions.com', NULL, 1, '2013-11-30 05:09:26', '2013-12-05 09:54:04', '|', 'Karnataka', '', 'www.atspowersolutions.com', '9591474703/9845517867/'),
(170, 'Manjesh', '', NULL, NULL, 'IP Infusion Software India Pvt Ltd', '', 'Unit No: 401,4th Floor, Campus "D'',\r\nBlock - B2, RMZ Centennial, \r\nDoddanekundi Village,\r\nK.R.Puram Hoble,Bangalore-560037', 'Bangalore', '8105798686', 'manjesh.mani@ipinfusion.com', NULL, 1, '2013-12-02 07:22:34', '2013-12-02 07:22:34', '|', 'Karnataka', '', '', '8105798686'),
(171, 'Guruprasad / Ganesh', '', NULL, NULL, 'Hitze Equipments (India) Pvt Ltd.,', '', '# 45-B, 2nd Phase, \r\nPeenya Indl. Area,\r\nBangalore-560058\r\ninfo@hitze.in', 'Bangalore', '9916030986', 'hitzinida@yahoo.co.in', NULL, 1, '2013-12-02 12:01:22', '2013-12-05 08:58:58', '|', 'Karnataka', 'Peenya indl area', 'www.hitze.in', '9343736558 '),
(172, 'Manjula', '', NULL, NULL, 'Purva Fountain Square', '', 'Marathahalli, Bangalore-37', 'Bangalore', '0000000000', 'amgrpfs@gmail.com', NULL, 1, '2013-12-02 12:04:26', '2013-12-02 12:04:26', '|', 'Karnataka', '', '', '42181514/42042824'),
(173, 'vinay/satya', '', NULL, NULL, 'Micro Fx Pvt Ltd', '', '# Sy No.23, Doddabyalakere,\r\nShivakote post, Bangalore-89\r\n', 'Bangalore', '000000000', 'microfx.bng@gmail.com', NULL, 1, '2013-12-02 12:08:37', '2013-12-02 12:08:37', '|', 'Karnataka', '', '', '65463252'),
(174, 'Lakshmipathi.K', 'Purchase', NULL, NULL, 'Amara Raja Electronics Ltd', 'Electronics', 'Diguvaram (Village & Post)\r\nThavanampalli (Mandalam)\r\nChitoor Dist - 517129\r\nPh : 08573283636  extn 312\r\nAndhra Pradesh', 'Tirupathi', '9908700040', 'klp@amararaja.co.in', NULL, 1, '2013-12-04 12:03:51', '2013-12-04 12:03:51', '|', 'Andhra Pradesh', 'Tiupathi', 'www.amararajaelectronics.co.in', '9908700040'),
(175, 'Sudhakar Pai', 'Director', NULL, NULL, 'Aircon Handling Systems Pvt Ltd', 'Material Handling', '21st Cross, Doddanna Indl Estate, Peenya 2nd stage, bangalore 91', 'Bangalore', '28966755', 'aircon@airconindia.com', NULL, 1, '2013-12-04 12:08:30', '2013-12-04 12:08:30', '|', 'Karnataka', 'Peenya II stage', 'www.begfiltercages.com', '9844030474'),
(176, 'S.Kumar', 'Owner', NULL, NULL, 'Air Blow Systems', 'others', 'No.8, 7th cross, Rajgopal Nagar Main Road, Ganapathi Nagar, Peenya 3rd Phase, Bangalore - 560 058 Ph 41170465,41171233', 'Bangalore', '9686444515', 'airblowsystems@rediffmail.com', NULL, 1, '2013-12-04 12:14:48', '2013-12-04 12:14:48', '|', 'Karnataka', 'Mysre Road', '', '9448080475'),
(177, 'LOKESH KOTHARI', 'lokeshkothari@measurement.co.in', NULL, NULL, 'SNG Test & Measurement Systems P Ltd', 'Instruments', '#68, 6th Main, 3rd Phase, Peenya Indl Area, Bangalore - 560058\r\nSameer Shetty : Purchase-988698601\r\ncommercial@measurement.co.in\r\nsngtest@measurement.co.in\r\n', 'Bangalore', '28396094', 'lokeshkothari@measurement.co.in', NULL, 1, '2013-12-05 05:05:51', '2013-12-05 05:05:51', '|', 'Karnataka', 'Peenya III Phase', 'www.measurement.co.in', '9972496861'),
(178, 'Niranjan Nagarkatti', 'Manager Commercial', NULL, NULL, 'Brahad Elastomers P Ltd', 'Others', 'A102a, 3rd Main Road, 2nd Stage, Peenya Indl Area, Bangalore-560058', 'Bangalore', '65584696', 'n.niranjan68@gmail.com', NULL, 1, '2013-12-05 07:53:18', '2013-12-05 07:53:18', '|', 'Karnataka', 'Peenya Indl Area', '', '9342581099'),
(179, 'K.N. Lakshman', 'Asst. Vice President ', NULL, NULL, 'ABB Limited', 'Others', 'Plot no.4A, 5 & 6. 2nd Phase \r\nPeenya Industrial Area\r\nBangalore- 560058', 'Bangalore', '9901491172', 'kn.lakshman@in.abb.com', NULL, 1, '2013-12-05 08:06:38', '2013-12-05 08:06:38', '|', 'Karnataka', 'Peenya indl area', '', '9901491172'),
(180, 'Acharya', 'Proprietor', NULL, NULL, 'Delta Wing Systems ', 'Control Panel Mfrs', '(Precision Micro Controls)\r\n# 62,6thMain, BSK III Stage,\r\nAvalahalli,BDA Layout,\r\nBangalore-560085', 'Bangalore', '32005793', 'pmcblr@gmail.com', NULL, 1, '2013-12-05 08:10:49', '2013-12-05 08:31:12', '|', 'Karnataka', 'Avalahalli', '', '9901601742'),
(181, 'M.Kannan', 'Purchase Officer', NULL, NULL, 'Mag Engineering', 'Others', 'No.46/A, 3rd Main, 2nd Phase\r\nPeenya Indl. Area,\r\nBangalore-58', 'Bangalore', '41172102', 'kannan.m@sandhar.in', NULL, 1, '2013-12-05 08:34:11', '2013-12-05 09:54:33', '|', 'Karnataka', 'Peenya indl area', 'www.sandhargroup.com, www.mag-india.com', '9036703659'),
(182, 'A.Prithvi Raj', 'Dy.Manager-Purchase', NULL, NULL, 'Concept Hydro Pneumatic P Ltd', 'Others', '# 33 ''B'' 2nd Phase, Peenya Indl. Area,\r\nBangalore-58, purchase@concepthydro.com', 'Bangalore', '28375053', 'prithvi@concepthydro.com', NULL, 1, '2013-12-05 08:51:56', '2013-12-05 09:54:47', '|', 'Karnataka', 'Peenya indl area', 'www.concepthydro.com', '8088925345'),
(183, 'Pradeep Kumar B.L.', 'Sr.System Admin, Pur-for P&Eq', NULL, NULL, 'Om Shakthi Hydraulics P Ltd', 'Others', '# 89/1,7th main, Peenya 3rd Phase,\r\nPeenya Industrial Area,\r\nBangalore-58', 'Bangalore', '41171007', 'admin@oshpl.in', NULL, 1, '2013-12-05 08:55:14', '2013-12-05 09:55:08', '|', 'Karnataka', 'Peenya indl area', 'www.oshpl.in', '9480686777'),
(184, 'P.T.Maruthesh', 'Manager Quality Assurance', NULL, NULL, 'Ace Manufacturing Systems Ltd', 'Others', 'Plot # 467 to 469, 4th Phase,\r\n12th Cross, Peenya Indl. Area,\r\nBengaluru-58', 'Bangalore', '41828100', 'marutheshpt@amslindia.co.in', NULL, 1, '2013-12-05 09:33:18', '2013-12-05 09:33:18', '|', 'Karnataka', 'Peenya indl area', 'www.amsl.in', '9880189812'),
(185, 'Bharath Kumar.U', 'Engineer-Planning CMD', NULL, NULL, 'Bharat Fritz Werner Ltd', '', 'Regd. off: Off Tumkur Road, Bangalore-22', 'Bangalore', '39821443', 'ubharath@bfw.co.in', NULL, 1, '2013-12-05 09:40:16', '2013-12-05 09:40:16', '|', 'Karnataka', '', 'www.bfwindia.com', '9535248060'),
(186, 'M.H.M.Jambunath', 'Executive Director', NULL, NULL, 'Hass Factory Outlet', 'Others', 'No.430-431, 12th Cross, 4th Phase,\r\nPeenya Indl. Area,\r\nBangalore-58', 'Bangalore', '41179452', 'jambunath@haassouthindia.com', NULL, 1, '2013-12-05 09:43:29', '2013-12-05 09:43:29', '|', 'Karnataka', 'Peenya indl area', 'www.manavmarketing.com', '9945488611'),
(187, 'Naveen Prasad', 'Asst.Manager-Materials', NULL, NULL, 'Integrated Electric Company P Ltd', 'Others', 'P.O.No.5888, No.497-A, IV Phase\r\nPeenya Industrial Area,\r\nBangalore-58', 'Bangalore', '41391442', 'iecmmd@int.elec.com', NULL, 1, '2013-12-05 09:46:21', '2013-12-05 09:46:21', '|', 'Karnataka', 'Peenya indl area', '', '41391400'),
(188, 'B.S.Ramalingaswamy', '', NULL, NULL, 'Concept Engineers', 'Others', 'Shed No.8, 302/4, V.P.Road,\r\nSeetharam Indl. Estate,Jalahalli,\r\nBangalore-560013', 'Bangalore', '9886335931', 'concept_blr@rediffmail.com', NULL, 1, '2013-12-05 09:49:31', '2013-12-05 09:49:31', '|', 'Karnataka', 'Seetharam Indl. Est.', '', '9844063633'),
(189, 'N.Ramesh', 'Marketing Executive', NULL, NULL, 'Teknofabs', '', '#18, Aiyyappa Layout,\r\nMallasandra Extension, Bangalore-57', 'Bangalore', '28379976', 'teknofabs.74@gmail.com', NULL, 1, '2013-12-05 10:06:58', '2013-12-05 10:07:22', '|', 'Karnataka', '', 'www.teknofabs.com', '9740956054'),
(190, 'Srinivasan/Marshal', 'Procurement', NULL, NULL, 'Phoenix Medical Systems P Ltd', 'Medical Instruments', 'DP 42,SIDCO Industrial Estate,\r\nThirumudivakkam,\r\nChennai-44\r\n044-24782227', 'Chennai', '9380088987', 'sreenish@pmsind.com', NULL, 1, '2013-12-05 10:53:01', '2013-12-05 10:53:01', '|', 'Tamilnadu', 'SIDCO Industrial Estate', '', '9381861616'),
(191, 'Srinivasan/Marshal', 'Procurement', NULL, NULL, 'Phoenix Medical Systems P Ltd', 'Medical Instruments', 'DP 42,SIDCO Industrial Estate,\r\nThirumudivakkam,\r\nChennai-44\r\n044-24782227', 'Chennai', '9380088987', 'sreenish@pmsind.com', NULL, 1, '2013-12-05 10:53:03', '2013-12-05 10:53:03', '|', 'Tamilnadu', 'SIDCO Industrial Estate', '', '9381861616'),
(192, 'Prabhakar', 'Proprietor', NULL, NULL, 'Refrostar Kooling System', 'Others', '6th Block , Rajajinagar,\r\nBangalore', 'Bangalore', '9341307362', 'xxx@xxx.com', NULL, 1, '2013-12-05 10:56:30', '2013-12-05 10:56:30', '|', 'Karnataka', 'Rajajinagar ', '', '9341307362'),
(193, 'Chetan.B.P', 'Chief Executive', NULL, NULL, 'Industrial Engineering Instruments', 'Electronics', '12th Mian, 3rd Phase, Peenya', 'Bangalore', '28394520', 'info@ieicof.com', NULL, 1, '2013-12-05 11:05:04', '2013-12-05 11:05:04', '|', 'Karnataka', 'Peenya III Phase', 'www.ieicof.com', '9241032423'),
(194, 'Subbaraju / Babji', 'Managing Director', NULL, NULL, 'Active Green Window Solutions', 'Others', 'Flat No.101, Plot No.65, Janardhan Hills, Gachibowli, Hyderabad-500032\r\nPh : 040-23000558', 'Hyderabad', '9666626635', 'factory@active.in', NULL, 1, '2013-12-05 11:09:11', '2013-12-05 11:09:11', '|', 'Andhrapradesh', 'Janardhan Hills', '', '9989989987'),
(195, 'Pavan', 'Purchase', NULL, NULL, 'Cypress Semi Conductors P Ltd', 'Others', 'Cypress Semi Conductor Technology P Ltd, 65/2, Laurel C Block, Bagmane Tech Park, , C.V.raman Nagar, Bangalore-560 093\r\n', 'Bangalore', '67073391', 'pava@cypress.com', NULL, 1, '2013-12-05 11:18:42', '2013-12-05 11:18:42', '|', 'Karnataka', 'C.V.raman Nagar', '', '9620712799'),
(196, 'V.Hariharan', 'Purchase', NULL, NULL, 'G5 Switchgear ', 'Others', '#/224, Pudhur Road, Sarkar kollapaati\r\nSalem-636030', 'Salem', '7708050454', 'g5switchgear@gmail.com', NULL, 1, '2013-12-05 11:22:35', '2013-12-05 11:22:35', '|', 'Tamilnadu', 'Sarkar Kollapaati', '', '7708050457'),
(197, 'P.Sivakumar', 'Purchase', NULL, NULL, 'New Marketronika', 'Control Panel Mfrs', '23/A-1, Lakshmipuram, Ganapathy,\r\nCoimbatore-641006\r\nPh  0422-2525795,2523793', 'Coimbatore', '9443319371', 'marketronika@gmail.com', NULL, 1, '2013-12-05 11:25:54', '2013-12-05 11:25:54', '|', 'Tamilnadu', 'Ganapathy', '', '9443319371'),
(198, 'Rajan.S', 'Proprietor', NULL, NULL, 'Nissi Refrigiration', 'Others', 'New Block Building\r\nOpp. Infant Jesus Church,\r\nNeelasandra\r\nBangalore-560047\r\nTin : 29440837365', 'Bangalore', '9663211995', 'nissirefrigeration@gmail.com', NULL, 1, '2013-12-05 11:28:07', '2013-12-05 11:28:07', '|', 'Karnataka', 'Neelasandra', '', '9980838437'),
(199, 'P.Vishwanath', 'Proprietor', NULL, NULL, 'Vinayaka Power System', 'Electrical Panel Boards ', '#36,3rd cross, Bikaspura Main Road, J.C.Industrial Area, Bangalore-560062', 'Bangalore', '8861258790', 'vinayakapowersystems@yahoo.com', NULL, 1, '2013-12-05 11:31:20', '2013-12-05 11:31:20', '|', 'Karnataka', 'J.C.Industrial Area', '', '8861258790'),
(200, 'Ms. Jayanthi', 'Purchase', NULL, NULL, 'Mak Controls And Systems P Ltd', 'Control Panel Mfrs', '7/41, B, Avinashi Road,\r\nCivil Aerodrome Post,\r\nCoimbatore-641014\r\npjayanthi@makcontrols.com', 'Coimbatore', '04224305000', 'purchase@airmak.com', NULL, 1, '2013-12-05 11:50:15', '2013-12-05 11:50:15', '|', 'Tamil Nadu', 'Avinashi Road', '', '04224305000'),
(201, 'Seetha', 'Purchase', NULL, NULL, 'Bull Machines Pvt Ltd', 'Machine Tools', 'Bull Machines Pvt Ltd.,\r\nPlant-1, SF No.5/a A, Trichy Road\r\nCoimbatore-641 103', 'Coimbatore', '04226586655', 'purchasemanager@bullmachine.com', NULL, 1, '2013-12-05 11:55:03', '2013-12-05 11:55:03', '|', 'Tamilnadu', 'Trichy Road', 'www.bullindia.com', '04226586677'),
(202, 'Narasimhan, Purushothama', 'Senior Manager Admn, Purchase', NULL, NULL, 'Trident Auto Enterprises P Ltd', 'Automobiles', '1, Lower Palace Orchards,\r\nSankey Road,\r\nBangalore-560003\r\nPh : 43439999\r\npurushothama@trident-group.in', 'Bangalore', '7353764681', 'narasimhan@trident-group.in', NULL, 1, '2013-12-05 12:11:04', '2013-12-05 12:11:04', '|', 'Karnataka', 'Malleshwaram', '', '7353750270'),
(203, 'Dayanand', 'Purchase', NULL, NULL, 'ETA Technology P Ltd', 'Elevators', '484D, 13th Cross, IV Phase\r\nPeenya Industrial Area\r\nBangalore - 560 058\r\neplan@etatechnology.net', 'Bangalore', '28361487', 'info@etatechnology.in', NULL, 1, '2013-12-05 12:18:47', '2013-12-05 12:18:47', '|', 'Karnataka', 'Peenya IV Phase', 'www.etatechnology.in', '9886040581'),
(204, 'Rajashekar.M.C', 'Manager', NULL, NULL, 'Cinerama P Ltd', 'Others', '16A, Industrial Suburb, 2nd Stage,\r\nYeshwanthpur, Tumkur Road,\r\nBangalore-560022\r\nrajhashekhar@cineramagroup.com', 'Bangalore', '23370515', 'rajhashekhar@cineramagroup.com', NULL, 1, '2013-12-05 12:23:56', '2013-12-05 12:23:56', '|', 'Karnataka', 'Yeshwanthpur', '', '23370220'),
(205, 'Ram Kumar', '', NULL, NULL, 'Canvera Digital Technologies', '', 'No.36/5,27th main , HSR layout , Somasundara Palya ,\r\nBangalore-102. Tel :080-67476500 I Ext - 502.\r\n', 'Bangalore', '9686689815', 'ram.kumar@canvera.com', NULL, 1, '2013-12-07 07:11:30', '2013-12-07 07:11:30', '|', 'karnataka', 'HSR LAYOUT', 'www.Canvera.com', '9686689815'),
(206, 'Roshan', '', NULL, NULL, 'R A T T L E & H U M  / Audio Lotous', '', '330, 4B Cross, OMBR Layout,\r\nBanaswadi, Bangalore 560043\r\nT/F: +91 80 25452715', 'Bangalore ', '9845195584', 'roshan@audiolotus.com', NULL, 1, '2013-12-07 07:21:06', '2013-12-07 07:21:06', '|', 'karnataka', 'Banaswadi', '', '9845195584'),
(207, 'Yathish', '', NULL, NULL, 'Classic Engineering', '', 'Shed No.C-60,KSSIDC Industrial Estate,Kumbalagodu, Bangalore-560 074', 'Bangalore ', '9886792465.', 'classic.engineering2010@gmail.com', NULL, 1, '2013-12-07 07:29:13', '2013-12-07 07:29:13', '|', 'karnataka', 'Kumbalagodu', '', '9900040856'),
(208, 'Lekhana', 'Purchase', NULL, NULL, 'Switching Power Conversion P Ltd', 'UPS', 'Switching Power Conversion P Ltd\r\n8,1st Main, Govt PU College Rd, BDA Indl Suburb, Peenya, B-58\r\nph ; 28376545/46/47', 'Bangalore', '28376545', 'sales@switchingpower.in', NULL, 1, '2013-12-09 07:13:43', '2013-12-09 07:13:43', '|', 'Karnataka', 'Peenya', '', '9844564808');
INSERT INTO `contacts` (`id`, `name`, `designation`, `photo`, `photo_dir`, `company`, `industry`, `address`, `city`, `phone`, `email`, `contact_status_id`, `user_id`, `created`, `modified`, `lead_source`, `state`, `area`, `website`, `mobile`) VALUES
(209, 'John', 'Registrar', NULL, NULL, 'Amritha School of Biotechnology', 'Educational Institution', 'Amritha School of Biotechnology\r\nAmritapuri Campurs, Clappana\r\nKollam\r\nKerala', 'Kollam', '8144406233', 'johnstanley@gmail.com', NULL, 1, '2013-12-09 07:16:25', '2013-12-09 07:16:25', '|', 'Kerala', 'Kerala', '', '8144406233'),
(210, 'Ashok Kumar K.R', 'Purchase', NULL, NULL, 'Craftsman Automatin P Ltd - Unit I', '', 'Craftsman Automatin P Ltd - Unit I\r\n15, LML Colony, Ammankulam Road\r\nCoimbatore-641037\r\n0422-3021000,6615100\r\ninfo@craftsmanautomation.com', 'Coimbatore', '8489900620', 'service_u1@craftsmanautomation.com', NULL, 1, '2013-12-09 07:20:26', '2013-12-09 07:20:26', '|', 'Tamilnadu', 'LML Colony', '', '8489900620'),
(211, 'Satyam Kishore', '', NULL, NULL, 'Nagarjuna Aster PArk', '', 'Nagarjuna Aster Park\r\nYelahanka New Town\r\nNear: Mother Dairy\r\nBangalore - 560065\r\n', 'Bangalore ', '9972577229', 'satyam2985@gmail.com', NULL, 1, '2013-12-10 10:22:30', '2013-12-10 10:22:30', '|', 'karnataka', 'Yelahanka New Town ', '', '9972577229');

-- --------------------------------------------------------

--
-- Table structure for table `contacts_events`
--

CREATE TABLE IF NOT EXISTS `contacts_events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contact_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=76 ;

--
-- Dumping data for table `contacts_events`
--

INSERT INTO `contacts_events` (`id`, `contact_id`, `event_id`) VALUES
(15, 21, 15),
(18, 24, 18),
(19, 25, 19),
(22, 25, 21),
(23, 26, 22),
(24, 25, 23),
(25, 29, 25),
(26, 29, 26),
(28, 29, 27),
(29, 30, 28),
(30, 31, 29),
(31, 32, 30),
(34, 35, 33),
(38, 33, 36),
(39, 34, 37),
(41, 33, 39),
(42, 50, 41),
(44, 56, 44),
(48, 71, 16),
(49, 72, 17),
(51, 71, 47),
(53, 92, 48),
(61, 125, 150),
(62, 126, 151),
(64, 128, 153),
(65, 129, 154),
(66, 130, 155),
(67, 131, 156),
(68, 132, 157),
(69, 133, 158),
(71, 135, 160),
(72, 136, 161),
(73, 137, 162),
(74, 139, 164),
(75, 76, 171);

-- --------------------------------------------------------

--
-- Table structure for table `contact_statuses`
--

CREATE TABLE IF NOT EXISTS `contact_statuses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `contact_statuses`
--

INSERT INTO `contact_statuses` (`id`, `name`) VALUES
(4, 'Lead'),
(5, 'Opportunity'),
(6, 'Account');

-- --------------------------------------------------------

--
-- Table structure for table `deals`
--

CREATE TABLE IF NOT EXISTS `deals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contact_id` int(11) DEFAULT NULL,
  `deal_status_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `amount` decimal(20,6) DEFAULT '0.000000',
  `details` varchar(255) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=49 ;

--
-- Dumping data for table `deals`
--

INSERT INTO `deals` (`id`, `contact_id`, `deal_status_id`, `user_id`, `amount`, `details`, `remarks`, `date`) VALUES
(42, 56, 4, 20, '20000.000000', 'QUOTATION GIVEN ON 25.09.13. ', '', '2013-09-30'),
(45, 104, 4, 1, '5634433.000000', 'gfhhhhhhhhh', 'ffffffffffffffdhhtr', '2013-11-12'),
(47, 104, 4, 1, '23587689798.000000', 'Det', 'Rem', '2013-11-13'),
(48, 35, 4, 1, '20000.000000', 'Test', 'Test', '2013-12-23');

-- --------------------------------------------------------

--
-- Table structure for table `deal_statuses`
--

CREATE TABLE IF NOT EXISTS `deal_statuses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `deal_statuses`
--

INSERT INTO `deal_statuses` (`id`, `name`) VALUES
(4, 'Process'),
(5, 'Accepted'),
(6, 'Rejected');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE IF NOT EXISTS `events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `event_type_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `details` text COLLATE utf8_unicode_ci NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime NOT NULL,
  `status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Scheduled',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created` date DEFAULT NULL,
  `modified` date DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `all_day` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=201 ;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `event_type_id`, `title`, `details`, `start`, `end`, `status`, `active`, `created`, `modified`, `user_id`, `all_day`) VALUES
(68, 15, 'Electro links (BSK)', 'Will contact this week with appointment', '2013-11-20 08:50:00', '2013-11-20 08:50:00', 'Rescheduled', 1, '2013-11-18', '2013-11-22', 1, 0),
(67, 15, 'RMS Electromac (Abbigere)', 'asked to contact after 20th', '2013-11-24 08:46:00', '2013-11-24 08:46:00', 'Scheduled', 1, '2013-11-18', '2013-11-18', 1, 0),
(66, 15, 'Techno Fales (Abbigere)', 'will contact for new requirement', '2013-11-24 08:44:00', '2013-11-24 08:44:00', 'Scheduled', 1, '2013-11-18', '2013-11-18', 1, 0),
(54, 15, 'ECMTEM Systems (Kanakpura)', 'will contact for new requirement DOV: 13/11/13', '2013-11-20 12:00:00', '2013-11-20 11:00:00', 'Scheduled', 1, '2013-11-18', '2013-11-18', 1, 0),
(55, 15, 'Kavmes Engineering (Kanakapura)', 'To Contact Mahadevapura office', '2013-11-20 07:03:00', '2013-11-20 07:03:00', 'Scheduled', 1, '2013-11-18', '2013-11-18', 1, 0),
(56, 15, 'Aquawall (Kanakpura)', 'Samples sent but not accepted bcz there is a problem in INK', '2013-11-20 12:40:00', '2013-11-20 12:40:00', 'Scheduled', 1, '2013-11-18', '2013-11-18', 1, 0),
(57, 15, 'Eswai Fabrications (Kanakpura)', 'will Contact for new requirement as Mr.Venkatesh was not availabel', '2013-11-21 10:00:00', '2013-11-21 10:00:00', 'Scheduled', 1, '2013-11-18', '2013-11-18', 1, 0),
(58, 15, 'Eltech Contrills (Kanakpura)', 'can contact after 4/5 days', '2013-11-21 07:19:00', '2013-11-21 07:19:00', 'Scheduled', 1, '2013-11-18', '2013-11-18', 1, 0),
(59, 15, 'Guru & Goutham (Kanakpura)', 'Mr. Sundarraj out of staion', '2013-11-20 07:22:00', '2013-11-20 07:22:00', 'Rescheduled', 1, '2013-11-18', '2013-12-03', 1, 0),
(60, 15, 'Gauge 16 (J.P.Nagar/ BSK)', 'Mr.Gururaj was not available and responding, he says he will call back & confirm', '2013-11-22 07:26:00', '2013-11-22 07:26:00', 'Rescheduled', 1, '2013-11-18', '2013-11-22', 1, 0),
(61, 15, 'Autotech', 'Consumption of stickers are very small but they require signages regularly', '2013-11-22 07:30:00', '2013-11-22 07:30:00', 'Scheduled', 1, '2013-11-18', '2013-11-18', 1, 0),
(62, 15, 'Agni Plast (Bagalur)', 'Asked to visit at bagalur road, concern person is bust, visit next week', '2013-11-24 07:38:00', '2013-11-24 07:38:00', 'Scheduled', 1, '2013-11-18', '2013-11-18', 1, 0),
(63, 15, 'Energy systems', 'Party was out side and not available, sent it by mail', '2013-11-24 07:42:00', '2013-11-24 07:42:00', 'Scheduled', 1, '2013-11-18', '2013-11-18', 1, 0),
(64, 15, 'Yashas Switch Gear ( BSK)', 'Orders will be given on thursday', '2013-11-24 08:33:00', '2013-11-24 08:33:00', 'Scheduled', 1, '2013-11-18', '2013-11-18', 1, 0),
(65, 15, 'Nagashree enterprises', 'will contact for future requirements', '2013-11-24 08:40:00', '2013-11-24 08:40:00', 'Scheduled', 1, '2013-11-18', '2013-11-18', 1, 0),
(53, 15, '20 Guage (Kanakpura)', 'Concerned person was not in station DOV: 13/11/13', '2013-11-20 12:16:00', '2013-11-20 11:00:00', 'Scheduled', 1, '2013-11-18', '2013-11-18', 1, 0),
(52, 15, 'Trelleberg Products (Kanakapura)', 'To contact after 2/3 days with appointment', '2013-11-18 12:15:00', '2013-11-18 12:15:00', 'Scheduled', 1, '2013-11-18', '2013-11-18', 1, 0),
(51, 13, 'OTIS (Kanakapura)', 'Given samples, agreed orally & confirm order will give within 2/3 days DOV-13/11/13', '2013-11-18 11:50:00', '2013-11-18 11:50:00', 'Scheduled', 1, '2013-11-18', '2013-11-18', 1, 0),
(50, 4, 'Shinag Alloys (Kanakapura)', 'To discuss regarding order', '2013-11-18 11:30:00', '2013-11-18 11:30:00', 'Scheduled', 1, '2013-11-18', '2013-11-18', 1, 0),
(49, 15, 'TRIDENT - NARASIMHAN ', 'As his boss was out of station he could not discuss & finalize, he will finalize before saturday', '2013-12-04 11:00:00', '2013-12-04 11:00:00', 'Rescheduled', 1, '2013-11-18', '2013-12-04', 1, 0),
(28, 10, 'EPB Stickers', '', '2013-09-13 00:10:00', '2013-09-13 00:10:00', 'In Progress', 1, '2013-09-13', '2013-09-13', 20, 1),
(29, 11, 'CARBORANDUM UNIVERSAL', '', '2013-09-02 10:04:00', '2013-09-02 10:05:00', 'Confirmed', 1, '2013-09-13', '2013-09-13', 21, 1),
(30, 12, 'Follow up call', 'Company Introduction', '2013-09-12 10:26:00', '2013-09-12 11:26:00', 'In Progress', 1, '2013-09-14', '2013-09-14', 20, 1),
(38, 15, 'BASAVANAGUDI - CUSTOMERS FOLLOWUP (Last visited on 10.09.13)', 'ENCOMPASS ELECTRONIC\r\nGABRIEL INDIA LTD\r\nKAY FLURO PVT LTD\r\nHTA INSTRUMENTATION\r\nUNICLEAN EQUIPMENTS\r\nSINE POWER TECH', '2013-10-10 10:26:00', '2013-10-10 10:26:00', 'Scheduled', 1, '2013-09-16', '2013-09-16', 20, 1),
(39, 12, 'WAVE TOOLS APPOINTMENT', 'EXPLAIN ABOUT OUR PRODUCTS AND SHOW SAMPLES', '2013-09-19 11:00:00', '2013-09-19 11:00:00', 'Scheduled', 1, '2013-09-18', '2013-09-18', 20, 1),
(33, 13, 'APPOINTMENT', 'Want sample & Quote as per per requirement', '2013-09-13 12:02:00', '2013-09-13 13:02:00', 'Rescheduled', 1, '2013-09-14', '2013-09-14', 1, 1),
(34, 4, 'Negotiate Rates', 'Letter cutting sticker\r\n', '2013-09-14 11:47:00', '2013-09-14 11:47:00', 'Scheduled', 1, '2013-09-14', '2013-09-14', 20, 1),
(37, 6, 'ENERGIX INDIA', 'QUOTATION FOLLOWUP', '2013-09-02 10:07:00', '2013-09-02 10:07:00', 'Scheduled', 1, '2013-09-16', '2013-09-16', 20, 1),
(36, 14, 'APPOINTMENT FOR 2ND VISIT', 'SUNSHINE DENTAL ', '2013-09-10 10:39:00', '2013-09-10 10:39:00', 'Scheduled', 1, '2013-09-16', '2013-09-16', 20, 1),
(40, 6, 'Excellent power Control, quotation followup', '14 items', '2013-09-20 11:00:00', '2013-09-20 11:00:00', 'In Progress', 1, '2013-09-18', '2013-09-18', 20, 1),
(41, 12, 'Requirements ', 'They have the Req of form boards ', '2013-09-19 11:00:00', '2013-09-19 00:00:00', 'Rescheduled', 1, '2013-09-19', '2013-09-19', 22, 1),
(42, 4, 'max well', 'appoinment', '2013-09-25 12:46:00', '2013-09-25 12:46:00', 'Confirmed', 1, '2013-09-23', '2013-09-23', 23, 1),
(43, 15, 'ASHWIN ELECTRONICS', 'PRICE INCREASE NEGOTIATIONS', '2013-09-24 17:42:00', '2013-09-24 05:42:00', 'Scheduled', 1, '2013-09-24', '2013-09-24', 24, 1),
(44, 6, 'AAPT INDIA PVT LTD', 'TO SEND QUOTATION', '2013-09-25 17:30:00', '2013-09-25 17:30:00', 'Scheduled', 1, '2013-09-25', '2013-09-25', 20, 1),
(45, 15, 'USHA TO CALL BISS TO KNOW REQUIREMENT', 'MUTHURAMALINGAM\r\nPH : 9945539974', '2013-09-26 10:36:00', '2013-09-26 10:36:00', 'Scheduled', 1, '2013-09-25', '2013-09-25', 20, 1),
(46, 16, 'CONCORD UNITED-COLLECT SAMPLE', 'ACRYLIC PRINTING REQ.', '2013-09-25 16:26:00', '2013-09-25 16:26:00', 'Scheduled', 1, '2013-09-25', '2013-09-25', 20, 1),
(47, 13, 'Meeting Srinivas', 'Test', '2013-09-30 11:19:00', '2013-09-30 00:19:00', 'Scheduled', 1, '2013-09-30', '2013-09-30', 1, 1),
(48, 4, 'Follow up call', 'Det', '2013-11-08 08:40:00', '2013-11-08 08:40:00', 'Confirmed', 1, '2013-11-06', '2013-11-12', 1, 1),
(69, 15, 'Electro power equipments (BSK)', 'To contact on monday after 3 pm', '2013-11-21 15:00:00', '2013-11-21 15:00:00', 'Scheduled', 1, '2013-11-18', '2013-11-18', 1, 0),
(70, 15, 'Jwalamukhi (Basavangudi/Peenya)', 'samples collected DOV.1/10/13', '2013-11-23 12:00:00', '2013-11-25 05:57:00', 'Scheduled', 1, '2013-11-20', '2013-11-20', 1, 0),
(71, 15, 'Foress Technologies (Basavangudi/peenya)', 'To visit after 20/10/13, DOV:1/101/13', '2013-11-23 06:22:00', '2013-11-25 06:22:00', 'Scheduled', 1, '2013-11-20', '2013-11-20', 1, 0),
(72, 15, 'Swastik Elevator (Basavangudi/Peenya)', 'Call again for visit, DOV:1/10/13', '2013-11-23 06:23:00', '2013-11-25 06:23:00', 'Scheduled', 1, '2013-11-20', '2013-11-20', 1, 0),
(73, 15, 'Synergy punching (Basavangudi/Peenya)', 'Collect requirement of asylic, DOV: 1/10/13', '2013-11-23 06:26:00', '2013-11-25 06:26:00', 'Scheduled', 1, '2013-11-20', '2013-11-20', 1, 0),
(74, 15, 'Procher Hydraulics (Peenya/Jalahalli)', 'Boss not available, come with appointment, DOV: 3/10/13', '2013-11-23 06:29:00', '2013-11-25 06:29:00', 'Scheduled', 1, '2013-11-20', '2013-11-20', 1, 0),
(75, 15, 'TGS Transportation (Peenya/Jalahalli)', 'Send company profile, right now no appointment DOV: 3/10/13', '2013-11-23 06:45:00', '2013-11-25 06:45:00', 'Scheduled', 1, '2013-11-20', '2013-11-20', 1, 0),
(76, 15, 'Ajax Flori (Yeshwanthpur, peenya)', 'To get detail , last date of visit 26/10/13', '2013-11-23 06:46:00', '2013-11-25 06:46:00', 'Scheduled', 1, '2013-11-20', '2013-11-20', 1, 0),
(77, 15, 'Bangalore Elevator(R.T.Nagar, Rajajinagar, Indira)', 'First week of Nov. Customer will release order bcz of financial prblm, last DOV: 23/10/13', '2013-11-23 06:49:00', '2013-11-25 06:49:00', 'Scheduled', 1, '2013-11-20', '2013-11-20', 1, 0),
(78, 15, 'Escon Gensets', 'Discussed with Mr. Madan will send the design, want transparent part in letter, Last DOV:24/10/', '2013-11-23 06:56:00', '2013-11-25 06:56:00', 'Scheduled', 1, '2013-11-20', '2013-11-20', 1, 0),
(79, 15, 'Nuetech Solar (Kombalgodu, Machohalli)', 'Call on Tuesday by 11.30 am, last date of visit: 30/10/13', '2013-11-23 06:58:00', '2013-11-25 06:58:00', 'Scheduled', 1, '2013-11-20', '2013-11-20', 1, 0),
(80, 15, 'Ace Systems (Peenya,)', 'Busy, come tomorrow DOV:9/10/13', '2013-11-23 07:01:00', '2013-11-25 07:01:00', 'Scheduled', 1, '2013-11-20', '2013-11-20', 1, 0),
(81, 15, 'Venkat Switchgear (Yeshwanthpur)', 'Order will place after diwali last DOV:26/10/13', '2013-11-23 07:13:00', '2013-11-25 07:13:00', 'Scheduled', 1, '2013-11-20', '2013-11-20', 1, 0),
(82, 15, 'Conwell Systems (Rajajinagar/Peenya)', 'Having some stock will give order by month end DOV: 15/10/13', '2013-11-23 07:16:00', '2013-11-25 07:16:00', 'Scheduled', 1, '2013-11-20', '2013-11-20', 1, 0),
(83, 15, 'Metro Motors (Peenya/Machohalli)', 'Having some stock, need to follow up DOV: 16/10/13', '2013-11-23 07:21:00', '2013-11-25 07:21:00', 'Scheduled', 1, '2013-11-20', '2013-11-20', 1, 0),
(84, 15, 'Emergix india (Peenya)', 'Quotation given, follow up last date of visit 29/10/13', '2013-11-23 07:23:00', '2013-11-25 07:23:00', 'Scheduled', 1, '2013-11-20', '2013-11-20', 1, 0),
(85, 15, 'Ashwini Elevators (Peenya)', 'Call & come on saturday, expected order - DOV:16/10/13', '2013-11-25 07:26:00', '2013-11-26 07:26:00', 'Scheduled', 1, '2013-11-20', '2013-11-20', 1, 0),
(86, 15, 'Solar Hi-tech Gysers (Peenya)', 'Will check requirement & call back', '2013-11-25 07:28:00', '2013-11-26 07:28:00', 'Scheduled', 1, '2013-11-20', '2013-11-20', 1, 0),
(87, 15, 'Nuthana Engg. (R.T.Nagar, Peenya)', 'Busy in tumkur factory, will come and get back DOV:18/10/13', '2013-11-25 07:33:00', '2013-11-26 07:33:00', 'Scheduled', 1, '2013-11-20', '2013-11-20', 1, 0),
(88, 15, 'Hitze equipments (Rajajinagar/Peenya)', 'Less qty. not taken, they order only for 5 nos DOV:22/10/13', '2013-11-25 07:50:00', '2013-11-26 07:50:00', 'Scheduled', 1, '2013-11-20', '2013-11-20', 1, 0),
(89, 15, 'Biss (Rajajinagar/peenya)', 'will give samples by tomorrow, prasad wil collect, DOV:22/10/13', '2013-11-26 07:52:00', '2013-11-27 07:52:00', 'Scheduled', 1, '2013-11-20', '2013-11-20', 1, 0),
(90, 15, 'Preci-micro control (RTNagar/Rajajinagar/indiranagar)', 'Collected samples, quote sent, will do follow up DOV:23/10/13', '2013-11-25 07:54:00', '2013-11-26 07:54:00', 'Scheduled', 1, '2013-11-20', '2013-11-20', 1, 0),
(91, 15, 'Heat masters (Peenya/yeshwanthpur)', 'concern person busy, contact after one week last DOV:6/11/13', '2013-11-25 07:56:00', '2013-11-26 07:56:00', 'Scheduled', 1, '2013-11-20', '2013-11-20', 1, 0),
(92, 15, 'Manipal Hospital (RT, Rajaji, Indira)', 'Samples shown will discuss with management & revert back for quotation', '2013-11-25 08:24:00', '2013-11-26 08:24:00', 'Scheduled', 1, '2013-11-20', '2013-11-20', 1, 0),
(93, 15, 'Powerica Pvt Ltd.(Nelamangala)', 'Contact by first week, after deepavali will give some enquiries DOV:24/10/13', '2013-11-26 08:27:00', '2013-11-27 08:27:00', 'Scheduled', 1, '2013-11-20', '2013-11-20', 1, 0),
(94, 15, 'Thraiking Industrial Control (Nelamangala)', 'Contact by first week, after deepawali will give some enquiries', '2013-11-26 08:29:00', '2013-11-27 08:29:00', 'Scheduled', 1, '2013-11-20', '2013-11-20', 1, 0),
(95, 15, 'Blue volt (Rajajinagar/Horamavu)', 'Collected samples, follow up for PO DOV:25/10/13', '2013-11-26 08:34:00', '2013-11-27 08:34:00', 'Scheduled', 1, '2013-11-20', '2013-11-20', 1, 0),
(96, 15, 'Mark Equipments (church street/kumara park west)', 'Will check revised quotation & contact back last DOV:27/10/13', '2013-11-26 08:37:00', '2013-11-27 08:37:00', 'Scheduled', 1, '2013-11-20', '2013-11-20', 1, 0),
(97, 15, 'K.V.Enterprises (church street/kumara park west)', 'Will send details by mail, require quotatio, follow up with Mr.Nagaraj -9900311378 DOV:27/10/13', '2013-11-27 08:41:00', '2013-11-28 08:41:00', 'Scheduled', 1, '2013-11-20', '2013-11-20', 1, 0),
(98, 15, 'Delta Elevators (Rajajinagar)', 'Quotation approved last DOV:31/10/13', '2013-11-27 08:44:00', '2013-11-28 08:44:00', 'Scheduled', 1, '2013-11-20', '2013-11-20', 1, 0),
(99, 15, 'Omega scientific equipments (sunkadakatte/peenya)', 'need to contact next week having some stock & will check the requirement DOV:29/10/13', '2013-11-27 08:48:00', '2013-11-28 08:48:00', 'Scheduled', 1, '2013-11-20', '2013-11-20', 1, 0),
(100, 15, 'Nandi Gensets (Sunkadakatte/Peenya)', 'need to contact next week having some stock & will check the requirement DOV:29/10/13', '2013-11-26 08:50:00', '2013-11-27 08:50:00', 'Scheduled', 1, '2013-11-20', '2013-11-20', 1, 0),
(101, 15, 'Avana electro systems (sunkadakatte/peenya)', 'need to contact next week having some stock & will check the requirement DOV:29/10/13', '2013-11-26 08:51:00', '2013-11-27 08:51:00', 'Scheduled', 1, '2013-11-20', '2013-11-20', 1, 0),
(102, 15, 'Bangalore auto meters (Rajajinagar)', 'Have given requirement, need to go on saturday to finalize that DOV:31/10/13', '2013-11-26 08:55:00', '2013-11-27 08:55:00', 'Scheduled', 1, '2013-11-20', '2013-11-20', 1, 0),
(103, 15, 'Riya Electricals (Kombalgodu, machohalli)', 'follow up, Mr.Gyanchand-9448324200 DOV:30/10/13', '2013-11-26 08:57:00', '2013-11-27 08:57:00', 'Scheduled', 1, '2013-11-20', '2013-11-20', 1, 0),
(104, 15, 'Classic Engg (Kombalgodu, Machohalli)', 'samples taken, will send drawing follow up DOV:30/10/13', '2013-11-27 08:59:00', '2013-11-28 08:59:00', 'Scheduled', 1, '2013-11-20', '2013-11-20', 1, 0),
(105, 15, 'Pace Power (Kombalgodu, Machohalli)', 'Having stock, will send enquiry DOV:30/10/13', '2013-11-27 09:01:00', '2013-11-28 09:01:00', 'Scheduled', 1, '2013-11-20', '2013-11-20', 1, 0),
(106, 15, 'Dr.Wiesner (Kombalgodu, Machohalli)', 'will discuss with MD need to follow up last DOV:8/11/13', '2013-11-28 09:03:00', '2013-11-28 09:03:00', 'Scheduled', 1, '2013-11-20', '2013-11-20', 1, 0),
(107, 15, 'Bangalore automobile (Rajajinagar/peenya)', 'Approved quotation & art work DOV: 05/11/13', '2013-11-27 09:08:00', '2013-11-28 09:08:00', 'Scheduled', 1, '2013-11-20', '2013-11-20', 1, 0),
(108, 15, 'Mangaram foods pvt ltd (Rajajinagar/peenya)', 'Dome sticker requirement is there after 1 week', '2013-11-27 09:10:00', '2013-11-27 09:10:00', 'Scheduled', 1, '2013-11-20', '2013-11-20', 1, 0),
(109, 15, 'Concard systems (Rajajinagar/Peenya)', 'Require for acylic making design will send by mail DOV:05/11/13', '2013-11-27 09:12:00', '2013-11-27 09:12:00', 'Scheduled', 1, '2013-11-20', '2013-11-20', 1, 0),
(110, 15, 'Pallavi Engg. (Rajajinagar/Peenya)', 'call & come DOV:05/11/13', '2013-11-27 09:14:00', '2013-11-27 09:14:00', 'Scheduled', 1, '2013-11-20', '2013-11-20', 1, 0),
(111, 15, 'TGS Elevators (Peenya/Yeshwanthpur)', 'Have requirement, will send design DOV:06/11/13', '2013-11-27 09:18:00', '2013-11-27 09:18:00', 'Scheduled', 1, '2013-11-20', '2013-11-20', 1, 0),
(112, 15, 'Evergreen Engg.(Peenya/Yeshwanthpur)', 'Contact next month (Dome sticker requirement after some time) DOV:6/11/13', '2013-11-27 09:20:00', '2013-11-28 09:20:00', 'Scheduled', 1, '2013-11-20', '2013-11-20', 1, 0),
(113, 15, 'Kamath Transformer(Peenya/Yeshwanthpur)', 'Need to contact new purchase manager Phnp:27734135/37 DOV:06/11/13', '2013-11-28 09:22:00', '2013-11-28 09:22:00', 'Scheduled', 1, '2013-11-20', '2013-11-20', 1, 0),
(114, 15, 'Heat win (Peenya/yeshwanthpur)', 'Concern person busy contact after one week DOV:06/11/13', '2013-11-28 09:24:00', '2013-11-28 09:24:00', 'Scheduled', 1, '2013-11-20', '2013-11-20', 1, 0),
(115, 15, 'ETA Technology (Peenya)', 'come on monday with BFW samples DOV:7/11/13', '2013-11-28 09:26:00', '2013-11-28 09:26:00', 'Scheduled', 1, '2013-11-20', '2013-11-20', 1, 0),
(116, 15, 'Foress Engg pvt ltd (Peenya)', 'send profile & contact later DOV:07/11/13', '2013-11-28 09:27:00', '2013-11-28 09:27:00', 'Scheduled', 1, '2013-11-20', '2013-11-20', 1, 0),
(117, 15, 'Vest Equipments (Peenya)', 'shifting office, contact on monday DOV:07/11/13', '2013-11-28 09:28:00', '2013-11-28 09:28:00', 'Scheduled', 1, '2013-11-20', '2013-11-20', 1, 0),
(118, 15, 'Usha Elevators (Peenya)', 'Busy, Having required need to follow up DOV: 07/11/13', '2013-11-28 09:29:00', '2013-11-28 09:29:00', 'Scheduled', 1, '2013-11-20', '2013-11-20', 1, 0),
(119, 15, 'C.T Control System (Rajajinagar, Peenya)', 'Having requirement next month DOV:08/11/13', '2013-11-28 09:32:00', '2013-11-28 09:32:00', 'Scheduled', 1, '2013-11-20', '2013-11-20', 1, 0),
(120, 15, 'V3 Nova (Rajajinagar/Peenya)', 'Will send drawing by tomorrow DOV: 08/11/13', '2013-11-28 09:33:00', '2013-11-28 09:33:00', 'Scheduled', 1, '2013-11-20', '2013-11-20', 1, 0),
(121, 15, 'JCR Driesel (Rajajinagar/peenya)', 'By come tomorrow DOV:08/11/13', '2013-11-28 09:34:00', '2013-11-28 09:34:00', 'Scheduled', 1, '2013-11-20', '2013-11-20', 1, 0),
(122, 9, 'Benaka power, (21/11)', '', '2013-11-25 10:00:00', '2013-11-25 10:00:00', 'Scheduled', 1, '2013-11-21', '2013-11-21', 1, 0),
(123, 15, 'Steel garden (Abbigere)', 'Party need in ivory colour back ground, & (font in segoe) letters in brick colour to finalize order/AW', '2013-11-22 09:23:00', '2013-11-22 09:23:00', 'Scheduled', 1, '2013-11-22', '2013-11-22', 1, 0),
(124, 15, 'Maruthi solars (Abbigere)', 'Rates are increased, discuss regarding this and finalised', '2013-11-22 09:27:00', '2013-11-23 09:27:00', 'Rescheduled', 1, '2013-11-22', '2013-11-22', 1, 0),
(125, 15, 'Mismac (abbigere)', 'for new order - party was not available', '2013-11-22 09:33:00', '2013-11-23 09:33:00', 'Scheduled', 1, '2013-11-22', '2013-11-22', 1, 0),
(126, 15, 'Globbose (Abbigere)', 'At present no requirements', '2013-11-22 09:34:00', '2013-11-23 09:34:00', 'Scheduled', 1, '2013-11-22', '2013-11-22', 1, 0),
(127, 15, 'Sri Sairam Power Controls (Abbigere)', 'At present no requirements', '2013-11-22 09:40:00', '2013-11-22 09:40:00', 'Scheduled', 1, '2013-11-22', '2013-11-22', 1, 0),
(128, 15, 'Siddartha enterprises (J.P.Nagar, BSK)', 'To contach CEO Mr. Hitesh (9844116757) with appointment', '2013-11-22 09:46:00', '2013-11-22 09:46:00', 'Scheduled', 1, '2013-11-22', '2013-11-22', 1, 0),
(129, 15, 'B.G.Elevators ', 'Mr.Gowda was not in office', '2013-12-03 09:59:00', '2013-12-03 09:59:00', 'Scheduled', 1, '2013-11-22', '2013-12-04', 1, 0),
(130, 15, 'Mars enterprises', 'Placed 2000 nos stickers', '2013-11-22 10:01:00', '2013-11-22 10:01:00', 'Scheduled', 1, '2013-11-22', '2013-11-22', 1, 0),
(131, 15, 'Excellent Display', 'Confirm order for 500 each dome sticker & Address sticker', '2013-11-22 10:05:00', '2013-11-22 10:05:00', 'Scheduled', 1, '2013-11-22', '2013-11-22', 1, 0),
(132, 15, '6th Energy', 'Expectind panells on 20th, so asked to followup after 21st', '2013-11-22 10:06:00', '2013-11-22 10:06:00', 'Scheduled', 1, '2013-11-22', '2013-11-22', 1, 0),
(133, 15, 'Precimeasure', 'To print on aluminium plate (not possible)', '2013-11-22 10:08:00', '2013-11-22 10:08:00', 'Scheduled', 1, '2013-11-22', '2013-11-22', 1, 0),
(134, 15, 'Power control', 'Mr. Raghavendra asked to send quotation', '2013-11-22 10:09:00', '2013-11-22 10:09:00', 'Scheduled', 1, '2013-11-22', '2013-11-22', 1, 0),
(135, 15, 'SPM India Ltd', 'To contact after 2 days (Vijayasimha: 7829999857)', '2013-11-22 10:13:00', '2013-11-22 10:13:00', 'Scheduled', 1, '2013-11-22', '2013-11-22', 1, 0),
(136, 15, 'Techno Fab (Abbigere)', 'Discuss regarding stickers customer will design the sticker and inform within one week', '2013-11-22 10:15:00', '2013-11-22 10:15:00', 'Scheduled', 1, '2013-11-22', '2013-11-22', 1, 0),
(137, 15, 'Steel garden (Abbigere)', 'Art work finalisation and placed order for 400 stickers (Rs.16000/-)', '2013-11-22 10:18:00', '2013-11-22 10:18:00', 'Scheduled', 1, '2013-11-22', '2013-11-22', 1, 0),
(138, 15, 'RMG Electromac', 'Customer asked to send company profile ', '2013-11-22 10:21:00', '2013-11-22 10:21:00', 'Scheduled', 1, '2013-11-22', '2013-11-22', 1, 0),
(139, 15, 'Arrow power controls', 'Party has given some designs 4 months back, but we have not responded properly, so given to some other party', '2013-11-22 10:22:00', '2013-11-22 10:22:00', 'Scheduled', 1, '2013-11-22', '2013-11-22', 1, 0),
(140, 15, 'Aegan Batteries (Jaynagar)', 'Samples are not in good condition, asked us to produce new one as per PO', '2013-11-22 10:25:00', '2013-11-22 10:25:00', 'Scheduled', 1, '2013-11-22', '2013-11-22', 1, 0),
(141, 15, 'Balaji power crafts (Jaynagar)', 'Got order for 2500 stickers @ 5/- each (12500/-)', '2013-11-22 10:27:00', '2013-11-22 10:27:00', 'Scheduled', 1, '2013-11-22', '2013-11-22', 1, 0),
(142, 15, 'BSK Hi Power', 'To contact Dec 1st week', '2013-11-22 10:28:00', '2013-11-22 10:28:00', 'Scheduled', 1, '2013-11-22', '2013-11-22', 1, 0),
(143, 15, 'Holy spirit ( Jayanagar)', 'Person was not available', '2013-11-22 10:28:00', '2013-11-22 10:28:00', 'Scheduled', 1, '2013-11-22', '2013-11-22', 1, 0),
(144, 15, 'SPM India Ltd', 'Party has given samples to quote', '2013-11-22 10:30:00', '2013-11-22 10:30:00', 'Scheduled', 1, '2013-11-22', '2013-11-22', 1, 0),
(145, 15, 'Transline Conveyar(Abbigere)', 'Concern person was out of station, will contact after 2 days', '2013-11-22 10:38:00', '2013-11-22 10:38:00', 'Scheduled', 1, '2013-11-22', '2013-11-22', 1, 0),
(146, 15, 'Precession Machine Craft', 'Will contact for new requirement', '2013-11-22 10:39:00', '2013-11-22 10:39:00', 'Scheduled', 1, '2013-11-22', '2013-11-22', 1, 0),
(147, 15, 'Power Modifier (Abbigere)', 'To contact on Monday for order', '2013-11-22 10:40:00', '2013-11-22 10:40:00', 'Scheduled', 1, '2013-11-22', '2013-11-22', 1, 0),
(148, 15, 'Mr.Sourav', 'He will discuss with boss and told to contact on Tuesday 26/11/13', '2013-11-26 08:45:00', '2013-11-26 08:45:00', 'Scheduled', 1, '2013-11-23', '2013-11-23', 1, 0),
(149, 1, 'Shakthi Electricals', 'Samples collection, quotation to send', '2013-11-23 09:58:00', '2013-11-23 09:58:00', 'Scheduled', 1, '2013-11-23', '2013-11-23', 1, 0),
(150, 15, 'Sri Srinivasa Enterprises', 'He will visit our office tomorrow', '2013-11-26 10:02:00', '2013-11-26 10:02:00', 'Scheduled', 1, '2013-11-26', '2013-11-26', 1, 0),
(151, 15, 'Indo Air Cool Systems', 'Send Sales executive on Monday', '2013-11-30 10:13:00', '2013-11-30 10:13:00', 'Scheduled', 1, '2013-11-26', '2013-11-26', 1, 0),
(152, 15, 'Maxwill Zeus Expositions (P) ltd', 'Aswini', '2013-11-26 10:14:00', '2013-11-27 10:14:00', 'Scheduled', 1, '2013-11-26', '2013-11-26', 1, 0),
(153, 15, 'J.K.Electrical Service', 'He will come & visit tomorrow', '2013-11-26 10:20:00', '2013-11-26 10:20:00', 'Scheduled', 1, '2013-11-26', '2013-11-26', 1, 0),
(154, 15, 'Royal Lifts', 'He will visit next week', '2013-11-26 10:28:00', '2013-11-26 10:28:00', 'Scheduled', 1, '2013-11-26', '2013-11-26', 1, 0),
(155, 15, 'Ampere Power & Automation', 'Sent Company profile', '2013-11-26 10:51:00', '2013-11-26 10:51:00', 'Scheduled', 1, '2013-11-26', '2013-11-26', 1, 0),
(156, 15, 'Essar Engineering Industries', 'Sent Company profile', '2013-11-26 10:52:00', '2013-11-26 10:52:00', 'Scheduled', 1, '2013-11-26', '2013-11-26', 1, 0),
(157, 15, 'Armour Safes', 'Sent Company profile', '2013-11-26 10:53:00', '2013-11-26 10:53:00', 'Scheduled', 1, '2013-11-26', '2013-11-26', 1, 0),
(158, 15, 'Skanray Technologies', 'Sent company profile', '2013-11-26 10:54:00', '2013-11-26 10:54:00', 'Scheduled', 1, '2013-11-26', '2013-11-26', 1, 0),
(159, 15, 'Thittanix Instruments', 'Contact next month', '2013-11-26 10:54:00', '2013-11-26 10:54:00', 'Scheduled', 1, '2013-11-26', '2013-12-03', 1, 0),
(160, 15, 'Industrial Sales corporation', 'He in meeting call back', '2013-11-26 11:21:00', '2013-11-26 11:21:00', 'Scheduled', 1, '2013-11-26', '2013-11-26', 1, 0),
(161, 15, 'Sunrise Solar Pvt Ltd', 'He will in meeting call back', '2013-11-26 11:22:00', '2013-11-26 11:22:00', 'Scheduled', 1, '2013-11-26', '2013-11-26', 1, 0),
(162, 15, 'Archana Equipments & Technologies', 'Call after 2 days', '2013-11-26 11:27:00', '2013-11-26 11:27:00', 'Scheduled', 1, '2013-11-26', '2013-11-26', 1, 0),
(163, 15, 'Kalpa Electrikal Pvt Ltd', 'Sent Company Profile', '2013-11-27 08:54:00', '2013-11-27 08:54:00', 'Scheduled', 1, '2013-11-27', '2013-11-27', 1, 0),
(164, 15, 'Hi-Power Control', 'Sent company profile', '2013-11-27 12:13:00', '2013-11-27 12:13:00', 'Scheduled', 1, '2013-11-27', '2013-11-27', 1, 0),
(165, 15, 'Therman', 'Party has accepted to send A/W by mail tomorrow, Quotation given 4.50/- & 2/- for 2 sizes', '2013-11-28 07:38:00', '2013-11-28 07:38:00', 'Scheduled', 1, '2013-11-28', '2013-11-28', 1, 0),
(166, 15, 'BWU Modifier', 'Mr. Sures was not available', '2013-11-28 07:44:00', '2013-11-28 07:44:00', 'Scheduled', 1, '2013-11-28', '2013-11-28', 1, 0),
(167, 15, 'Alpha Design', 'Discussed regarding destructive sticker & finalized for Rs.1/-', '2013-11-28 07:45:00', '2013-11-28 07:45:00', 'Scheduled', 1, '2013-11-28', '2013-11-28', 1, 0),
(168, 15, 'Soplar ', 'Samples courier', '2013-11-28 07:46:00', '2013-11-28 07:46:00', 'Scheduled', 1, '2013-11-28', '2013-11-28', 1, 0),
(169, 15, 'Nikitech', 'Party asked me to send quotation by mail to send PO', '2013-11-28 07:47:00', '2013-11-28 07:47:00', 'Scheduled', 1, '2013-11-28', '2013-11-28', 1, 0),
(170, 15, 'Surya Bakery Equipment', 'To contact after 10 days', '2013-11-28 10:20:00', '2013-11-28 10:20:00', 'Scheduled', 1, '2013-11-28', '2013-11-28', 1, 0),
(171, 15, 'PM Techno Pvt Ltd, Doddaballapur', 'Rajkumar 8123021077 / 27630381 / 9342506707\r\n', '2013-11-29 10:00:00', '2013-11-29 10:00:00', 'Scheduled', 1, '2013-11-29', '2013-11-29', 1, 0),
(172, 15, 'Kalyani Motors', 'Discussed to get destructive sticker order. he promised to give from december', '2013-11-29 11:28:00', '2013-11-29 11:28:00', 'Scheduled', 1, '2013-11-29', '2013-11-29', 1, 0),
(173, 15, 'Asia data', 'For standees contact after 15 days', '2013-12-03 07:46:00', '2013-12-03 07:46:00', 'Scheduled', 1, '2013-12-03', '2013-12-03', 1, 0),
(174, 15, 'Industrial Engg Instruments', 'Come tomorrow with coaster samples & standy rates', '2013-12-03 07:51:00', '2013-12-03 07:51:00', 'Scheduled', 1, '2013-12-03', '2013-12-03', 1, 0),
(175, 1, 'Nuetech Solar (Peenya)', 'Come tomorrow with quotation & samples', '2013-12-03 11:14:00', '2013-12-03 11:14:00', 'Scheduled', 1, '2013-12-03', '2013-12-03', 1, 0),
(177, 15, 'Coburg (sahakar nagar/R.T.Nagar)', 'Contact 3rd week for orders', '2013-12-04 10:38:00', '2013-12-04 10:38:00', 'Scheduled', 1, '2013-12-04', '2013-12-04', 1, 0),
(178, 15, 'Surya switch gear (Abbigere)', 'Asked to come on 05/12/13', '2013-12-02 10:50:00', '2013-12-02 10:50:00', 'Scheduled', 1, '2013-12-04', '2013-12-04', 1, 0),
(179, 15, 'Energy power(Abbigere)', 'Party was not available', '2013-12-02 10:51:00', '2013-12-02 10:51:00', 'Scheduled', 1, '2013-12-04', '2013-12-04', 1, 0),
(180, 15, 'Vinayaka Power Systems (Abbigere)', 'Party was not available', '2013-12-02 10:52:00', '2013-12-02 10:52:00', 'Scheduled', 1, '2013-12-04', '2013-12-04', 1, 0),
(181, 15, 'Eltech (Abbigere)', 'Contact after 3/12/13', '2013-12-02 10:53:00', '2013-12-02 10:53:00', 'Scheduled', 1, '2013-12-04', '2013-12-04', 1, 0),
(182, 15, 'Excel Equipments (Abbigere)', 'Sent company profile', '2013-12-04 10:59:00', '2013-12-04 10:59:00', 'Scheduled', 1, '2013-12-04', '2013-12-04', 1, 0),
(183, 15, 'Mag Engineering', 'Kannan Informed to meet him on 9.12.13 for their requirement of stickers', '2013-12-05 09:58:00', '2013-12-05 09:58:00', 'Scheduled', 1, '2013-12-05', '2013-12-05', 1, 0),
(184, 15, 'Glastronics', 'Asked to meet tomorrow after 10.30 ', '2013-12-05 10:00:00', '2013-12-05 10:00:00', 'Scheduled', 1, '2013-12-05', '2013-12-05', 1, 0),
(185, 15, 'Ace designers', 'Asked to call on saturday by morning 7.12.13', '2013-12-05 10:01:00', '2013-12-05 10:01:00', 'Scheduled', 1, '2013-12-05', '2013-12-05', 1, 0),
(186, 15, 'United Systems Engineers', 'Will contact next week, required some stickers', '2013-12-05 12:18:00', '2013-12-05 12:18:00', 'Scheduled', 1, '2013-12-05', '2013-12-05', 1, 0),
(187, 15, 'Tech Park Power', 'Will contact for next requirement', '2013-12-05 12:21:00', '2013-12-05 12:21:00', 'Scheduled', 1, '2013-12-05', '2013-12-05', 1, 0),
(200, 13, 'Next followup on 10/12/13', 'Sai Projects-Selvin-9900035923', '2013-12-12 10:00:00', '2013-12-12 10:00:00', 'Scheduled', 1, '2013-12-10', '2013-12-10', 1, 0),
(189, 15, 'Enercon Asia', 'Requirements are there, but asked to contact next wednesday', '2013-12-05 12:24:00', '2013-12-05 12:24:00', 'Scheduled', 1, '2013-12-05', '2013-12-05', 1, 0),
(199, 15, 'Power Control Equipments(Eletronicity)', 'To contact next Thursday', '2013-12-09 04:49:00', '2013-12-09 04:49:00', 'Scheduled', 1, '2013-12-09', '2013-12-09', 1, 0),
(191, 15, 'Global Calsium Pvt Ltd', 'Related to BEBLEC will contact for next requirements, they are using local stickers', '2013-12-06 03:53:00', '2013-12-06 03:53:00', 'Scheduled', 1, '2013-12-06', '2013-12-06', 1, 0),
(192, 15, 'S.R.Wage Solutions', 'Require stickers but director was not available', '2013-12-06 05:29:00', '2013-12-06 05:29:00', 'Scheduled', 1, '2013-12-06', '2013-12-06', 1, 0),
(193, 15, 'Himavasini Hundai', 'Require service stickers, given samples & asket to supply 2000 nos', '2013-12-06 05:34:00', '2013-12-06 05:34:00', 'Scheduled', 1, '2013-12-06', '2013-12-06', 1, 0),
(194, 15, 'KST Sestech', 'Will Contact for next require in Jan 15 quoted Rs 55 for 35" sticker', '2013-12-06 05:37:00', '2013-12-06 05:37:00', 'Scheduled', 1, '2013-12-06', '2013-12-06', 1, 0),
(195, 15, 'Gayathri Technologies', 'To contact in Janauary for requirements', '2013-12-06 05:39:00', '2013-12-06 05:39:00', 'Scheduled', 1, '2013-12-06', '2013-12-06', 1, 0),
(196, 15, 'Agri plast ', 'To contact after jan as production has stopped due to financial ', '2013-12-06 05:40:00', '2013-12-06 05:40:00', 'Scheduled', 1, '2013-12-06', '2013-12-06', 1, 0),
(197, 15, 'Ion Pure', 'Require stickers to contact krishnan on 9944967791', '2013-12-06 05:42:00', '2013-12-06 05:42:00', 'Scheduled', 1, '2013-12-06', '2013-12-06', 1, 0),
(198, 15, 'VHT Malar Electricals', 'Require stickers to contact armugan 9443240213', '2013-12-06 05:43:00', '2013-12-06 05:43:00', 'Scheduled', 1, '2013-12-06', '2013-12-06', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `events_users`
--

CREATE TABLE IF NOT EXISTS `events_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `event_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=263 ;

--
-- Dumping data for table `events_users`
--

INSERT INTO `events_users` (`id`, `event_id`, `user_id`) VALUES
(10, 15, 7),
(13, 18, 10),
(14, 19, 8),
(17, 21, 8),
(18, 22, 1),
(19, 23, 10),
(20, 25, 10),
(21, 26, 1),
(24, 27, 1),
(25, 27, 10),
(26, 28, 20),
(27, 29, 21),
(28, 30, 20),
(31, 33, 20),
(35, 36, 20),
(36, 37, 20),
(38, 39, 20),
(39, 41, 22),
(41, 44, 20),
(42, 44, 23),
(45, 45, 20),
(46, 46, 20),
(48, 47, 23),
(50, 48, 20),
(70, 56, 22),
(75, 50, 22),
(76, 51, 22),
(77, 52, 22),
(78, 53, 22),
(80, 55, 22),
(81, 54, 22),
(83, 58, 22),
(84, 57, 22),
(86, 61, 22),
(87, 62, 22),
(88, 63, 22),
(90, 65, 22),
(91, 66, 22),
(92, 64, 22),
(93, 67, 22),
(96, 69, 22),
(115, 70, 20),
(116, 71, 20),
(117, 72, 20),
(118, 73, 20),
(119, 74, 20),
(120, 75, 20),
(121, 76, 20),
(122, 77, 20),
(123, 78, 20),
(124, 79, 20),
(125, 80, 20),
(126, 81, 20),
(127, 82, 20),
(128, 83, 20),
(129, 84, 20),
(130, 85, 20),
(131, 86, 20),
(132, 87, 20),
(133, 88, 20),
(134, 89, 20),
(135, 90, 20),
(136, 91, 20),
(137, 92, 20),
(138, 93, 20),
(139, 94, 20),
(140, 95, 20),
(141, 96, 20),
(142, 97, 20),
(143, 98, 20),
(144, 99, 20),
(145, 100, 20),
(146, 101, 20),
(147, 102, 20),
(148, 103, 20),
(149, 104, 20),
(150, 105, 20),
(151, 106, 20),
(152, 107, 20),
(153, 108, 20),
(154, 109, 20),
(155, 110, 20),
(156, 111, 20),
(157, 112, 20),
(158, 113, 20),
(159, 114, 20),
(160, 115, 20),
(161, 116, 20),
(162, 117, 20),
(163, 118, 20),
(164, 119, 20),
(165, 120, 20),
(166, 121, 20),
(167, 122, 21),
(176, 123, 22),
(177, 125, 22),
(178, 126, 22),
(179, 127, 22),
(181, 68, 22),
(182, 128, 22),
(183, 60, 22),
(185, 130, 22),
(186, 131, 22),
(187, 132, 22),
(188, 133, 22),
(189, 134, 22),
(190, 135, 22),
(191, 136, 22),
(192, 137, 22),
(193, 124, 22),
(194, 138, 22),
(195, 139, 22),
(197, 140, 22),
(198, 141, 22),
(199, 142, 22),
(200, 143, 22),
(201, 144, 22),
(202, 145, 22),
(203, 146, 22),
(204, 147, 22),
(205, 148, 1),
(206, 149, 22),
(208, 151, 21),
(210, 154, 1),
(211, 155, 1),
(212, 156, 1),
(213, 157, 1),
(214, 158, 1),
(216, 160, 1),
(217, 161, 1),
(218, 162, 1),
(219, 163, 1),
(220, 164, 1),
(221, 165, 22),
(222, 166, 22),
(223, 167, 22),
(224, 168, 22),
(225, 169, 22),
(226, 170, 22),
(227, 171, 22),
(228, 172, 22),
(229, 173, 22),
(230, 174, 20),
(231, 159, 1),
(232, 175, 20),
(234, 129, 22),
(236, 49, 22),
(237, 177, 22),
(239, 179, 22),
(240, 180, 22),
(241, 181, 22),
(242, 178, 22),
(243, 182, 22),
(244, 183, 1),
(245, 184, 1),
(246, 185, 1),
(247, 186, 22),
(248, 187, 22),
(250, 189, 22),
(252, 191, 22),
(253, 192, 22),
(254, 193, 22),
(255, 194, 22),
(256, 195, 22),
(257, 196, 22),
(258, 197, 22),
(259, 198, 22),
(260, 199, 22),
(262, 200, 22);

-- --------------------------------------------------------

--
-- Table structure for table `event_types`
--

CREATE TABLE IF NOT EXISTS `event_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=17 ;

--
-- Dumping data for table `event_types`
--

INSERT INTO `event_types` (`id`, `name`, `color`) VALUES
(1, 'Default Type', 'Orange'),
(4, 'Meeting', 'Blue'),
(7, 'Telecalling', 'Gray'),
(8, 'Invoice', 'Pink'),
(9, 'Payment Followup', 'Purple'),
(10, 'Enquiry', 'Blue'),
(11, 'ORDER CONFIRMED', 'Green'),
(12, '1st visit', 'Gray'),
(13, ' Regular followup', 'Blue'),
(14, '2nd meeting', 'Blue'),
(15, 'Followup call', 'Pink'),
(16, 'SAMPLE COLLECT', 'Blue');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE IF NOT EXISTS `groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `created`, `modified`) VALUES
(1, 'Administrator', '2013-02-13 19:02:52', '2013-02-13 19:02:52'),
(2, 'Employee', '2013-02-13 19:04:13', '2013-02-13 19:04:13');

-- --------------------------------------------------------

--
-- Table structure for table `i18n`
--

CREATE TABLE IF NOT EXISTS `i18n` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `locale` varchar(6) NOT NULL,
  `model` varchar(255) NOT NULL,
  `foreign_key` int(10) NOT NULL,
  `field` varchar(255) NOT NULL,
  `content` mediumtext,
  PRIMARY KEY (`id`),
  KEY `locale` (`locale`),
  KEY `model` (`model`),
  KEY `row_id` (`foreign_key`),
  KEY `field` (`field`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE IF NOT EXISTS `options` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  `value` longtext,
  `logo` varchar(255) DEFAULT NULL,
  `logo_dir` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `name`, `value`, `logo`, `logo_dir`) VALUES
(1, 'title', 'Zhen CRM', NULL, NULL),
(2, 'copyright', 'wvsoftek', 'wvsoftek_logo.png', '2');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` char(50) NOT NULL,
  `group_id` int(11) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `token` char(50) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `group_id`, `created`, `modified`, `first_name`, `last_name`, `email`, `token`, `active`) VALUES
(1, 'admin', '6f78d5bc0592b5a007917e97a582660a08d8be86', 1, '2013-02-13 19:05:34', '2013-11-12 09:21:16', 'Admin', '', 'admin@wvs.in', '1439bc36de00b5d0e6c587b24f1ee90e065eacb9', 1),
(20, 'sumit', 'c4876a66d1c8871d08672a1175d7665bb8ddd369', 2, '2013-09-13 06:48:15', '2013-11-12 09:18:27', 'Sumit', '', 'accounts@pglabels.com', NULL, 1),
(21, 'SHILPA', 'e0e0a4f93f1559c68a389c6309e1e7062b86de59', 2, '2013-09-13 07:50:26', '2013-11-12 09:17:14', 'Shilpa', '', '', NULL, 1),
(22, 'Murali ', '41c4460a75c3015d799eb783225674eb467be985', 2, '2013-09-19 04:39:24', '2013-09-19 04:39:24', 'Murali', 'N', 'punarvasugrapics@gmail.com', NULL, 1),
(23, 'shwetha', '1c53a09c4e745179047c23e38182b75c2fbe6f01', 2, '2013-09-23 12:33:15', '2013-11-12 09:18:40', 'Shwetha', '', 'punarvasugraphics@gmail.com', NULL, 1),
(24, 'MOHANA', '7ce0522c0c2d705a05dcacea931da73a70361c81', 2, '2013-09-24 08:39:07', '2013-11-12 09:16:16', 'Mohanakumari', 'S', 'purchasepg@gmail.com', NULL, 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
