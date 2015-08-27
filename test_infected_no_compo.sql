-- phpMyAdmin SQL Dump
-- version 4.2.12deb2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 27, 2015 at 10:39 PM
-- Server version: 5.6.25-0ubuntu0.15.04.1
-- PHP Version: 5.6.4-4ubuntu6.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `test_infected_no_compo`
--

-- --------------------------------------------------------

--
-- Table structure for table `chatmessages`
--

CREATE TABLE IF NOT EXISTS `chatmessages` (
`id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `chatId` int(11) NOT NULL,
  `time` datetime NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chatmessages`
--

INSERT INTO `chatmessages` (`id`, `userId`, `chatId`, `time`, `message`) VALUES
(1, 1, 1, '0000-00-00 00:00:00', 'Hei mamma'),
(2, 1, 1, '0000-00-00 00:00:00', 'sadasd'),
(3, 1, 1, '0000-00-00 00:00:00', 'asdasd'),
(4, 1, 1, '0000-00-00 00:00:00', 'asdasdasd'),
(5, 1, 1, '0000-00-00 00:00:00', 'asdasdasda'),
(6, 1, 1, '0000-00-00 00:00:00', 'YOLOOO'),
(7, 1, 1, '0000-00-00 00:00:00', 'asdasdas'),
(8, 1, 1, '0000-00-00 00:00:00', 'asda'),
(9, 1, 1, '0000-00-00 00:00:00', 'sdasd'),
(10, 1, 1, '0000-00-00 00:00:00', 'asdasdasdasd'),
(11, 1, 1, '0000-00-00 00:00:00', 'asdasdasdasdasd'),
(12, 1, 1, '0000-00-00 00:00:00', 'dawdafaf waf aswf sf '),
(19, 1, 1, '0000-00-00 00:00:00', 'adsasd'),
(20, 1, 1, '0000-00-00 00:00:00', 'asdsa'),
(21, 1, 1, '0000-00-00 00:00:00', '&lt;&lt;&lt;&gt;&lt;&lt;'),
(22, 1, 1, '0000-00-00 00:00:00', 'Wooo'),
(23, 2, 1, '0000-00-00 00:00:00', '&lt;script&gt;lol&lt;/script&gt;'),
(24, 1, 1, '0000-00-00 00:00:00', 'hei mamma'),
(25, 2, 1, '0000-00-00 00:00:00', 'alert(&quot;I am an alert box!&quot;);'),
(26, 1, 1, '0000-00-00 00:00:00', 'alert(&quot;Take your XSS somewhere else!&quot;)'),
(27, 2, 1, '0000-00-00 00:00:00', 'FUCK'),
(28, 2, 1, '0000-00-00 00:00:00', '(Bare for test disclamer insert here&lt;)'),
(29, 2, 1, '0000-00-00 00:00:00', 'll9999'),
(30, 2, 1, '0000-00-00 00:00:00', '9999'),
(31, 2, 1, '0000-00-00 00:00:00', 'lolfdgdf'),
(32, 2, 1, '0000-00-00 00:00:00', 'gfgdfg'),
(33, 2, 1, '0000-00-00 00:00:00', 'dfgdfgfdg'),
(34, 2, 1, '0000-00-00 00:00:00', 'fdgfd'),
(35, 2, 1, '0000-00-00 00:00:00', 'gfdg'),
(36, 2, 1, '0000-00-00 00:00:00', 'fdgfdg'),
(37, 2, 1, '0000-00-00 00:00:00', 'fdgfdg'),
(38, 2, 1, '0000-00-00 00:00:00', 'fdgfdg'),
(39, 2, 1, '0000-00-00 00:00:00', 'fdgdfg'),
(40, 1, 1, '0000-00-00 00:00:00', 'HEI MAMMA!!!111'),
(41, 2, 1, '0000-00-00 00:00:00', 'Jeg er ganske kul :D Jeg er nr 2 i databasen og den andre til å teste chat :D'),
(42, 2, 1, '0000-00-00 00:00:00', 'Jegerfemtenår :D'),
(43, 1, 1, '0000-00-00 00:00:00', 'JEG er 16 år! Hah!'),
(44, 1, 1, '0000-00-00 00:00:00', 'Chatten fungerer!'),
(45, 1, 1, '0000-00-00 00:00:00', 'W00t w00t'),
(46, 1, 1, '0000-00-00 00:00:00', 'hei'),
(47, 1, 51, '0000-00-00 00:00:00', 'hei'),
(48, 1, 1, '0000-00-00 00:00:00', 'test123'),
(50, 1, 1, '0000-00-00 00:00:00', 'test'),
(51, 1, 1, '0000-00-00 00:00:00', 'hei hei'),
(52, 1, 80, '0000-00-00 00:00:00', '123'),
(53, 3, 1, '0000-00-00 00:00:00', 'hei hei'),
(54, 3, 1, '0000-00-00 00:00:00', 'hva skjer :)'),
(55, 3, 1, '0000-00-00 00:00:00', 'hei hei'),
(56, 1, 108, '0000-00-00 00:00:00', 'Dette er en test'),
(57, 1, 1, '0000-00-00 00:00:00', 'Dette er en test&#039;'),
(58, 3, 108, '0000-00-00 00:00:00', 'hei'),
(59, 3, 108, '0000-00-00 00:00:00', 'hvordan går det'),
(60, 1, 108, '0000-00-00 00:00:00', 'Hei'),
(61, 3, 108, '0000-00-00 00:00:00', ':)'),
(62, 1, 108, '0000-00-00 00:00:00', 'Ræva'),
(63, 3, 108, '0000-00-00 00:00:00', 'ikke bra'),
(64, 1, 1, '0000-00-00 00:00:00', 'hei'),
(65, 1, 112, '0000-00-00 00:00:00', 'jeg lager match'),
(66, 2, 1, '2015-02-16 22:55:36', 'Hei :)'),
(67, 2, 1, '2015-02-16 22:55:51', 'lol'),
(68, 2, 1, '2015-02-16 23:27:31', 'lol'),
(69, 2, 1, '2015-02-16 23:30:10', 'dette her er kult ass :)'),
(70, 2, 1, '2015-02-16 23:35:28', 'æåæ'),
(71, 2, 1, '2015-02-16 23:40:11', 'lol'),
(72, 2, 1, '2015-02-16 23:48:15', 'lol'),
(73, 2, 1, '2015-02-16 23:52:12', 'Oh :D'),
(74, 2, 1, '2015-02-19 15:19:25', 'lol'),
(75, 2, 1, '2015-02-19 15:19:27', 'lol'),
(76, 2, 1, '2015-02-19 15:19:28', 'lol'),
(77, 2, 1, '2015-02-19 15:19:29', 'lol'),
(78, 2, 1, '2015-02-19 15:19:30', 'lol'),
(79, 2, 1, '2015-02-19 15:19:31', 'lol'),
(80, 2, 1, '2015-02-19 15:19:31', 'lol'),
(81, 2, 1, '2015-02-19 15:19:32', 'lol'),
(82, 2, 1, '2015-02-19 15:28:09', 'lol'),
(83, 2, 1, '2015-02-19 15:28:14', 'Å, nå funker det.'),
(84, 2, 1, '2015-02-19 15:28:19', 'Haha var SQL bug.');

-- --------------------------------------------------------

--
-- Table structure for table `chats`
--

CREATE TABLE IF NOT EXISTS `chats` (
`id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `title` varchar(32) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chats`
--

INSERT INTO `chats` (`id`, `name`, `title`) VALUES
(1, 'Test chat', 'TEST!'),
(2, 'match chat', ''),
(3, 'match chat', ''),
(4, 'match chat', ''),
(5, 'match chat', ''),
(6, 'match chat', ''),
(7, 'match chat', ''),
(8, 'match chat', ''),
(9, 'match chat', ''),
(10, 'match chat', ''),
(11, 'match chat', ''),
(12, 'match chat', ''),
(13, 'match chat', ''),
(14, 'match chat', ''),
(15, 'match chat', ''),
(16, 'match chat', ''),
(17, 'match chat', ''),
(18, 'match chat', ''),
(19, 'match chat', ''),
(20, 'match chat', ''),
(21, 'match chat', ''),
(22, 'match chat', ''),
(23, 'match chat', ''),
(24, 'match chat', ''),
(25, 'match chat', ''),
(26, 'match chat', ''),
(27, 'match chat', ''),
(28, 'match chat', ''),
(29, 'match chat', ''),
(30, 'match chat', ''),
(31, 'match chat', ''),
(32, 'match chat', ''),
(33, 'match chat', ''),
(34, 'match chat', ''),
(35, 'match chat', ''),
(36, 'match chat', ''),
(37, 'match chat', ''),
(38, 'match chat', ''),
(39, 'match chat', ''),
(40, 'match chat', ''),
(41, 'match chat', ''),
(42, 'match chat', ''),
(43, 'match chat', ''),
(44, 'match chat', ''),
(45, 'match chat', ''),
(46, 'match chat', ''),
(47, 'match chat', ''),
(48, 'match chat', ''),
(49, 'match chat', ''),
(50, 'match chat', ''),
(51, 'match chat', ''),
(52, 'match chat', ''),
(53, 'match chat', ''),
(54, 'match chat', ''),
(55, 'match chat', ''),
(56, 'match chat', ''),
(57, 'match chat', ''),
(58, 'match chat', ''),
(59, 'match chat', ''),
(60, 'match chat', ''),
(61, 'match chat', ''),
(62, 'match chat', ''),
(63, 'match chat', ''),
(64, 'match chat', ''),
(65, 'match chat', ''),
(66, 'match chat', ''),
(67, 'match chat', ''),
(68, 'match chat', ''),
(69, 'match chat', ''),
(70, 'match chat', ''),
(71, 'match chat', ''),
(72, 'match chat', ''),
(73, 'match chat', ''),
(74, 'match chat', ''),
(75, 'match chat', ''),
(76, 'match chat', ''),
(77, 'match chat', ''),
(78, 'match chat', ''),
(79, 'match chat', ''),
(80, 'match chat', ''),
(81, 'match chat', ''),
(82, 'match chat', ''),
(83, 'match chat', ''),
(84, 'match chat', ''),
(85, 'match chat', ''),
(86, 'match chat', ''),
(87, 'match chat', ''),
(88, 'match chat', ''),
(89, 'match chat', ''),
(90, 'match chat', ''),
(91, 'match chat', ''),
(92, 'match chat', ''),
(93, 'match chat', ''),
(94, 'match chat', ''),
(95, 'match chat', ''),
(96, 'match chat', ''),
(97, 'match chat', ''),
(98, 'match chat', ''),
(99, 'match chat', ''),
(100, 'match chat', ''),
(101, 'match chat', ''),
(102, 'match chat', ''),
(103, 'match chat', ''),
(104, 'match chat', ''),
(105, 'match chat', ''),
(106, 'match chat', ''),
(107, 'match chat', ''),
(108, '123 chat', '123 chat'),
(109, 'match chat', ''),
(110, 'match chat', ''),
(111, 'match chat', ''),
(112, 'match chat', ''),
(113, 'match chat', ''),
(114, 'match chat', ''),
(115, 'match chat', ''),
(116, 'match chat', ''),
(117, 'match chat', ''),
(118, 'match chat', ''),
(119, 'match chat', ''),
(120, 'match chat', ''),
(121, 'match chat', ''),
(122, 'match chat', ''),
(123, 'match chat', ''),
(124, 'match chat', ''),
(125, 'match chat', ''),
(126, 'match chat', ''),
(127, 'match chat', ''),
(128, 'match chat', ''),
(129, 'match chat', ''),
(130, 'match chat', ''),
(131, 'match chat', ''),
(132, 'match chat', ''),
(133, 'match chat', ''),
(134, 'match chat', ''),
(135, 'match chat', ''),
(136, 'match chat', ''),
(137, 'match chat', ''),
(138, 'match chat', ''),
(139, 'match chat', '');

-- --------------------------------------------------------

--
-- Table structure for table `clans`
--

CREATE TABLE IF NOT EXISTS `clans` (
`id` int(11) NOT NULL,
  `eventId` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `title` varchar(32) NOT NULL,
  `tag` varchar(32) NOT NULL,
  `chiefId` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clans`
--

INSERT INTO `clans` (`id`, `eventId`, `name`, `title`, `tag`, `chiefId`) VALUES
(2, 4, 'dadad', 'dadad', 'dadada', 1),
(3, 4, 'Test 1 team', 'Test 1 team', 'TEST1', 5),
(4, 4, 'test 2', 'test 2', 'test2', 6),
(5, 4, 'test 3', 'test 3', 'test3', 7),
(6, 4, 'test4', 'test4', 'test 4', 8),
(7, 4, 'Test', 'Test', 'Test', 2),
(8, 4, 'Walkover 1', 'Walkover 1', 'W1', 1),
(9, 4, 'Walkover 1', 'Walkover 1', 'W1', 1),
(10, 4, 'Walkover 1', 'Walkover 1', 'W1', 1),
(11, 4, 'Walkover 1', 'Walkover 1', 'W1', 1),
(12, 4, 'Walkover 1', 'Walkover 1', 'W1', 1),
(13, 4, 'Walkover 2', 'Walkover 2', 'W2', 1),
(14, 4, 'Walkover 3', 'Walkover 3', 'W3', 1),
(15, 4, 'Walkover 4', 'Walkover 4', 'W4', 1),
(16, 4, 'Walkover 5', 'Walkover 5', 'W5', 1),
(17, 4, 'Walkover 6', 'Walkover 6', 'W6', 1),
(18, 4, 'Walkover 7', 'Walkover 7', 'W7', 1),
(19, 4, 'Walkover 8', 'Walkover 8', 'W8', 1),
(20, 4, 'Walkover 9', 'Walkover 9', 'W9', 1),
(21, 4, 'Walkover 10', 'Walkover 10', 'W10', 1),
(22, 4, 'warbo', 'warbo', 'wrb', 3),
(23, 5, 'Test clan', '', 'CLAN', 1),
(24, 5, 'the yolos', '', 'yolo', 1);

-- --------------------------------------------------------

--
-- Table structure for table `compos`
--

CREATE TABLE IF NOT EXISTS `compos` (
`id` int(11) NOT NULL,
  `eventId` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `title` varchar(32) NOT NULL,
  `tag` varchar(32) NOT NULL,
  `desciption` text NOT NULL,
  `mode` varchar(32) NOT NULL,
  `price` int(11) NOT NULL,
  `startTime` datetime NOT NULL,
  `registrationDeadline` datetime NOT NULL,
  `teamSize` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `compos`
--

INSERT INTO `compos` (`id`, `eventId`, `name`, `title`, `tag`, `desciption`, `mode`, `price`, `startTime`, `registrationDeadline`, `teamSize`) VALUES
(1, 3, 'Counter-Strike: Global Offensive', 'Counter-Strike: Global Offensive', 'CS:GO', '5on5', '5on5', 1000, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 5),
(2, 3, 'League of Legends', 'League of Legends', 'LoL', '', '5on5', 1000, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 5),
(3, 4, 'Counter:Strike Global offensive', 'Counter:Strike Global offensive', 'CS:GO', 'Placeholder for registrering :)', '5on5', 1000, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(4, 4, 'League of Legends', 'League of Legends', 'LoL', '', '5on5', 1000, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 5),
(5, 5, 'Test compo', '', 'COMPO', 'This is a test compo', '1v1', 1337, '2015-08-26 12:39:28', '2015-08-26 12:39:23', 5);

-- --------------------------------------------------------

--
-- Table structure for table `invites`
--

CREATE TABLE IF NOT EXISTS `invites` (
`id` int(11) NOT NULL,
  `eventId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `clanId` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `matches`
--

CREATE TABLE IF NOT EXISTS `matches` (
`id` int(11) NOT NULL,
  `scheduledTime` datetime NOT NULL,
  `connectDetails` varchar(64) NOT NULL,
  `state` int(11) NOT NULL,
  `winnerId` int(11) NOT NULL,
  `compoId` int(11) NOT NULL,
  `bracketOffset` int(8) NOT NULL,
  `chatId` int(11) NOT NULL,
  `bracket` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `matches`
--

INSERT INTO `matches` (`id`, `scheduledTime`, `connectDetails`, `state`, `winnerId`, `compoId`, `bracketOffset`, `chatId`, `bracket`) VALUES
(2, '0000-00-00 00:00:00', '', 0, 7, 3, 0, 109, 1),
(3, '0000-00-00 00:00:00', '', 0, 13, 3, 0, 110, 1),
(4, '0000-00-00 00:00:00', '', 0, 18, 3, 0, 111, 1),
(5, '0000-00-00 00:00:00', '', 0, 12, 3, 0, 112, 1),
(6, '0000-00-00 00:00:00', '', 0, 0, 3, 0, 113, 1),
(7, '0000-00-00 00:00:00', '', 0, 0, 3, 0, 114, 1),
(8, '0000-00-00 00:00:00', '', 0, 0, 3, 0, 115, 1),
(9, '0000-00-00 00:00:00', '', 0, 0, 3, 0, 116, 1),
(10, '0000-00-00 00:00:00', '', 0, 0, 3, 0, 117, 0),
(11, '0000-00-00 00:00:00', '', 0, 0, 3, 0, 118, 0),
(12, '0000-00-00 00:00:00', '', 0, 0, 3, 0, 119, 0),
(13, '0000-00-00 00:00:00', '', 0, 0, 3, 0, 120, 0),
(14, '0000-00-00 00:00:00', '', 0, 0, 3, 1, 121, 1),
(15, '0000-00-00 00:00:00', '', 0, 0, 3, 1, 122, 1),
(16, '0000-00-00 00:00:00', '', 0, 0, 3, 1, 123, 1),
(17, '0000-00-00 00:00:00', '', 0, 0, 3, 1, 124, 1),
(18, '0000-00-00 00:00:00', '', 0, 0, 3, 1, 125, 0),
(19, '0000-00-00 00:00:00', '', 0, 0, 3, 1, 126, 0),
(20, '0000-00-00 00:00:00', '', 0, 0, 3, 1, 127, 0),
(21, '0000-00-00 00:00:00', '', 0, 0, 3, 1, 128, 0),
(22, '0000-00-00 00:00:00', '', 0, 0, 3, 2, 129, 1),
(23, '0000-00-00 00:00:00', '', 0, 0, 3, 2, 130, 1),
(24, '0000-00-00 00:00:00', '', 0, 0, 3, 2, 131, 0),
(25, '0000-00-00 00:00:00', '', 0, 0, 3, 2, 132, 0),
(26, '0000-00-00 00:00:00', '', 0, 0, 3, 2, 133, 0),
(27, '0000-00-00 00:00:00', '', 0, 0, 3, 3, 134, 1),
(28, '0000-00-00 00:00:00', '', 0, 0, 3, 3, 135, 0),
(29, '0000-00-00 00:00:00', '', 0, 0, 3, 3, 136, 0),
(30, '0000-00-00 00:00:00', '', 0, 0, 3, 4, 137, 1),
(31, '0000-00-00 00:00:00', '', 0, 0, 3, 4, 138, 0),
(32, '0000-00-00 00:00:00', '', 0, 0, 3, 5, 139, 1);

-- --------------------------------------------------------

--
-- Table structure for table `matchrelationships`
--

CREATE TABLE IF NOT EXISTS `matchrelationships` (
`id` int(11) NOT NULL,
  `fromCompoId` int(11) NOT NULL,
  `toCompoId` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `matchrelationships`
--

INSERT INTO `matchrelationships` (`id`, `fromCompoId`, `toCompoId`) VALUES
(15, 2, 23),
(1, 3, 14),
(2, 4, 15),
(3, 5, 15),
(4, 6, 16),
(5, 7, 16),
(6, 8, 17),
(7, 9, 17),
(8, 10, 18),
(9, 11, 19),
(10, 12, 20),
(11, 13, 21),
(21, 14, 27),
(12, 15, 22),
(13, 16, 22),
(14, 17, 23),
(16, 18, 24),
(17, 19, 25),
(18, 20, 26),
(19, 21, 26),
(26, 22, 30),
(20, 23, 27),
(22, 24, 28),
(23, 25, 29),
(24, 26, 29),
(25, 27, 30),
(27, 28, 31),
(28, 29, 31),
(29, 30, 32),
(30, 30, 32);

-- --------------------------------------------------------

--
-- Table structure for table `memberof`
--

CREATE TABLE IF NOT EXISTS `memberof` (
`id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `clanId` int(11) NOT NULL,
  `stepinId` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `memberof`
--

INSERT INTO `memberof` (`id`, `userId`, `clanId`, `stepinId`) VALUES
(2, 1, 2, 0),
(8, 1, 12, 0),
(9, 1, 13, 0),
(10, 1, 14, 0),
(11, 1, 15, 0),
(12, 1, 16, 0),
(13, 1, 17, 0),
(14, 1, 18, 0),
(15, 1, 19, 0),
(16, 1, 20, 0),
(17, 1, 21, 0),
(19, 1, 23, 0),
(20, 1, 24, 0),
(7, 2, 7, 0),
(18, 3, 22, 0),
(3, 5, 3, 0),
(21, 5, 24, 0),
(4, 6, 4, 0),
(5, 7, 5, 0),
(6, 8, 6, 0);

-- --------------------------------------------------------

--
-- Table structure for table `memberofchat`
--

CREATE TABLE IF NOT EXISTS `memberofchat` (
`id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `chatId` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `memberofchat`
--

INSERT INTO `memberofchat` (`id`, `userId`, `chatId`) VALUES
(31, 1, 1),
(32, 1, 1),
(33, 1, 1),
(34, 1, 1),
(35, 1, 1),
(36, 1, 1),
(37, 1, 1),
(38, 1, 1),
(39, 1, 1),
(40, 1, 1),
(94, 1, 1),
(95, 1, 1),
(4, 1, 6),
(9, 1, 15),
(18, 1, 25),
(21, 1, 33),
(25, 1, 41),
(41, 1, 50),
(42, 1, 50),
(43, 1, 51),
(44, 1, 51),
(45, 1, 52),
(47, 1, 53),
(48, 1, 53),
(50, 1, 54),
(54, 1, 56),
(55, 1, 57),
(56, 1, 57),
(57, 1, 79),
(58, 1, 79),
(60, 1, 80),
(61, 1, 81),
(64, 1, 82),
(65, 1, 83),
(66, 1, 83),
(67, 1, 84),
(70, 1, 85),
(71, 1, 86),
(72, 1, 86),
(75, 1, 109),
(76, 1, 110),
(77, 1, 110),
(78, 1, 111),
(80, 1, 112),
(81, 1, 112),
(82, 1, 113),
(85, 1, 114),
(88, 1, 116),
(89, 1, 116),
(93, 1, 118),
(90, 1, 121),
(91, 1, 122),
(92, 1, 122),
(5, 2, 7),
(7, 2, 14),
(17, 2, 25),
(24, 2, 34),
(29, 2, 43),
(51, 2, 55),
(69, 2, 85),
(74, 2, 109),
(73, 3, 1),
(86, 3, 115),
(1, 5, 5),
(8, 5, 14),
(15, 5, 24),
(22, 5, 33),
(27, 5, 42),
(52, 5, 55),
(59, 5, 80),
(79, 5, 111),
(3, 6, 6),
(11, 6, 16),
(16, 6, 24),
(19, 6, 32),
(26, 6, 41),
(53, 6, 56),
(68, 6, 84),
(83, 6, 113),
(6, 7, 7),
(12, 7, 16),
(14, 7, 23),
(20, 7, 32),
(28, 7, 42),
(46, 7, 52),
(62, 7, 81),
(84, 7, 114),
(2, 8, 5),
(10, 8, 15),
(13, 8, 23),
(23, 8, 34),
(30, 8, 43),
(49, 8, 54),
(63, 8, 82),
(87, 8, 115);

-- --------------------------------------------------------

--
-- Table structure for table `participantof`
--

CREATE TABLE IF NOT EXISTS `participantof` (
`id` int(11) NOT NULL,
  `clanId` int(11) NOT NULL,
  `compoId` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `participantof`
--

INSERT INTO `participantof` (`id`, `clanId`, `compoId`) VALUES
(2, 2, 3),
(3, 3, 3),
(4, 4, 3),
(5, 5, 3),
(6, 6, 3),
(7, 7, 3),
(8, 12, 3),
(9, 13, 3),
(10, 14, 3),
(11, 15, 3),
(12, 16, 3),
(13, 17, 3),
(14, 18, 3),
(15, 19, 3),
(16, 20, 3),
(17, 21, 3),
(18, 22, 3),
(19, 23, 5),
(20, 24, 1);

-- --------------------------------------------------------

--
-- Table structure for table `participantofmatch`
--

CREATE TABLE IF NOT EXISTS `participantofmatch` (
`id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `participantId` int(11) NOT NULL,
  `matchId` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=271 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `participantofmatch`
--

INSERT INTO `participantofmatch` (`id`, `type`, `participantId`, `matchId`) VALUES
(209, 0, 7, 2),
(210, 0, 14, 2),
(211, 0, 13, 3),
(212, 0, 21, 3),
(213, 0, 18, 4),
(214, 0, 3, 4),
(215, 0, 12, 5),
(216, 0, 2, 5),
(217, 0, 17, 6),
(218, 0, 4, 6),
(219, 0, 5, 7),
(220, 0, 20, 7),
(221, 0, 22, 8),
(222, 0, 6, 8),
(223, 0, 15, 9),
(224, 0, 16, 9),
(225, 2, 2, 10),
(226, 2, 3, 10),
(227, 0, 18, 11),
(228, 0, 12, 11),
(229, 2, 6, 12),
(230, 2, 7, 12),
(231, 2, 8, 13),
(232, 2, 9, 13),
(233, 0, 19, 14),
(234, 0, 13, 14),
(235, 0, 18, 15),
(236, 0, 12, 15),
(237, 1, 6, 16),
(238, 1, 7, 16),
(239, 1, 8, 17),
(240, 1, 9, 17),
(241, 1, 10, 18),
(242, 2, 14, 18),
(243, 1, 11, 19),
(244, 2, 15, 19),
(245, 1, 12, 20),
(246, 2, 16, 20),
(247, 1, 13, 21),
(248, 2, 17, 21),
(249, 1, 15, 22),
(250, 1, 16, 22),
(251, 1, 17, 23),
(252, 0, 7, 23),
(253, 1, 18, 24),
(254, 2, 22, 24),
(255, 1, 19, 25),
(256, 2, 23, 25),
(257, 1, 20, 26),
(258, 1, 21, 26),
(259, 1, 23, 27),
(260, 1, 14, 27),
(261, 1, 24, 28),
(262, 2, 27, 28),
(263, 1, 25, 29),
(264, 1, 26, 29),
(265, 1, 27, 30),
(266, 1, 22, 30),
(267, 1, 28, 31),
(268, 1, 29, 31),
(269, 1, 30, 32),
(270, 1, 30, 32);

-- --------------------------------------------------------

--
-- Table structure for table `qualificationQueue`
--

CREATE TABLE IF NOT EXISTS `qualificationQueue` (
`id` int(11) NOT NULL,
  `clan` int(11) NOT NULL,
  `compo` int(11) NOT NULL,
  `time` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `readyhandlers`
--

CREATE TABLE IF NOT EXISTS `readyhandlers` (
`id` int(11) NOT NULL,
  `compoId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `readyusers`
--

CREATE TABLE IF NOT EXISTS `readyusers` (
`id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `matchId` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `readyusers`
--

INSERT INTO `readyusers` (`id`, `userId`, `matchId`) VALUES
(10, 1, 1),
(9, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `voteoptions`
--

CREATE TABLE IF NOT EXISTS `voteoptions` (
`id` int(11) NOT NULL,
  `compoId` int(11) NOT NULL,
  `thumbnailUrl` varchar(32) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `voteoptions`
--

INSERT INTO `voteoptions` (`id`, `compoId`, `thumbnailUrl`, `name`) VALUES
(1, 3, 'csgo_maps/cache', 'Cache'),
(2, 3, 'csgo_maps/dust2', 'Dust 2'),
(3, 3, 'csgo_maps/inferno', 'Inferno'),
(4, 3, 'csgo_maps/mirage', 'Mirage'),
(5, 3, 'csgo_maps/nuke', 'Nuke'),
(6, 3, 'csgo_maps/overpass', 'Overpass'),
(7, 3, 'csgo_maps/season', 'Season');

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

CREATE TABLE IF NOT EXISTS `votes` (
`id` int(11) NOT NULL,
  `consumerId` int(11) NOT NULL,
  `voteOptionId` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `votes`
--

INSERT INTO `votes` (`id`, `consumerId`, `voteOptionId`) VALUES
(1, 1, 1),
(3, 1, 2),
(6, 1, 3),
(2, 1, 4),
(5, 1, 5),
(4, 1, 7);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chatmessages`
--
ALTER TABLE `chatmessages`
 ADD PRIMARY KEY (`id`), ADD KEY `index` (`userId`,`chatId`);

--
-- Indexes for table `chats`
--
ALTER TABLE `chats`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clans`
--
ALTER TABLE `clans`
 ADD PRIMARY KEY (`id`), ADD KEY `index` (`eventId`,`chiefId`);

--
-- Indexes for table `compos`
--
ALTER TABLE `compos`
 ADD PRIMARY KEY (`id`), ADD KEY `index` (`eventId`);

--
-- Indexes for table `invites`
--
ALTER TABLE `invites`
 ADD PRIMARY KEY (`id`), ADD KEY `index` (`eventId`,`userId`,`clanId`);

--
-- Indexes for table `matches`
--
ALTER TABLE `matches`
 ADD PRIMARY KEY (`id`), ADD KEY `index` (`compoId`,`chatId`);

--
-- Indexes for table `matchrelationships`
--
ALTER TABLE `matchrelationships`
 ADD PRIMARY KEY (`id`), ADD KEY `index` (`fromCompoId`,`toCompoId`);

--
-- Indexes for table `memberof`
--
ALTER TABLE `memberof`
 ADD PRIMARY KEY (`id`), ADD KEY `index` (`userId`,`clanId`,`stepinId`);

--
-- Indexes for table `memberofchat`
--
ALTER TABLE `memberofchat`
 ADD PRIMARY KEY (`id`), ADD KEY `index` (`userId`,`chatId`);

--
-- Indexes for table `participantof`
--
ALTER TABLE `participantof`
 ADD PRIMARY KEY (`id`), ADD KEY `index` (`clanId`,`compoId`);

--
-- Indexes for table `participantofmatch`
--
ALTER TABLE `participantofmatch`
 ADD PRIMARY KEY (`id`), ADD KEY `index` (`participantId`,`matchId`);

--
-- Indexes for table `qualificationQueue`
--
ALTER TABLE `qualificationQueue`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `readyhandlers`
--
ALTER TABLE `readyhandlers`
 ADD PRIMARY KEY (`id`), ADD KEY `index` (`compoId`);

--
-- Indexes for table `readyusers`
--
ALTER TABLE `readyusers`
 ADD PRIMARY KEY (`id`), ADD KEY `index` (`userId`,`matchId`);

--
-- Indexes for table `voteoptions`
--
ALTER TABLE `voteoptions`
 ADD PRIMARY KEY (`id`), ADD KEY `index` (`compoId`);

--
-- Indexes for table `votes`
--
ALTER TABLE `votes`
 ADD PRIMARY KEY (`id`), ADD KEY `index` (`consumerId`,`voteOptionId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chatmessages`
--
ALTER TABLE `chatmessages`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=85;
--
-- AUTO_INCREMENT for table `chats`
--
ALTER TABLE `chats`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=140;
--
-- AUTO_INCREMENT for table `clans`
--
ALTER TABLE `clans`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `compos`
--
ALTER TABLE `compos`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `invites`
--
ALTER TABLE `invites`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `matches`
--
ALTER TABLE `matches`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `matchrelationships`
--
ALTER TABLE `matchrelationships`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `memberof`
--
ALTER TABLE `memberof`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `memberofchat`
--
ALTER TABLE `memberofchat`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=96;
--
-- AUTO_INCREMENT for table `participantof`
--
ALTER TABLE `participantof`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `participantofmatch`
--
ALTER TABLE `participantofmatch`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=271;
--
-- AUTO_INCREMENT for table `qualificationQueue`
--
ALTER TABLE `qualificationQueue`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `readyhandlers`
--
ALTER TABLE `readyhandlers`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `readyusers`
--
ALTER TABLE `readyusers`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `voteoptions`
--
ALTER TABLE `voteoptions`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `votes`
--
ALTER TABLE `votes`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
