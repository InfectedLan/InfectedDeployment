-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 28, 2015 at 10:34 PM
-- Server version: 5.6.19-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.5

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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `chatId` int(11) NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;

-- --------------------------------------------------------

--
-- Table structure for table `chats`
--

CREATE TABLE IF NOT EXISTS `chats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `title` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;

--
-- Table structure for table `matchrelationships`
--

CREATE TABLE IF NOT EXISTS `matchrelationships` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from` int(11) NOT NULL,
  `to` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;

-- --------------------------------------------------------

--
-- Table structure for table `clans`
--

CREATE TABLE IF NOT EXISTS `clans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `chief` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `tag` varchar(32) NOT NULL,
  `event` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;

-- --------------------------------------------------------

--
-- Table structure for table `compos`
--

CREATE TABLE IF NOT EXISTS `compos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `startTime` int(11) NOT NULL,
  `registrationDeadline` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `desc` varchar(500) NOT NULL,
  `event` int(11) NOT NULL,
  `teamSize` int(11) NOT NULL,
  `tag` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;

--
-- Dumping data for table `compos`
--

INSERT INTO `compos` (`id`, `startTime`, `registrationDeadline`, `name`, `desc`, `event`, `teamSize`, `tag`) VALUES
(1, 1411754400, 1411754400, 'Counter-Strike: Global Offensive', '5on5', 3, 5, 'CS:GO'),
(2, 1411754400, 1411754400, 'League of Legends', '', 3, 5, 'LoL'),
(3, 1423936800, 1423936800, 'Counter:Strike Global offensive', 'Placeholder for registrering :)', 4, 5, 'CS:GO'),
(4, 1423936800, 1423936800, 'League of Legends', '', 4, 5, 'LoL');

-- --------------------------------------------------------

--
-- Table structure for table `invites`
--

CREATE TABLE IF NOT EXISTS `invites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `clanId` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;

-- --------------------------------------------------------

--
-- Table structure for table `matches`
--

CREATE TABLE IF NOT EXISTS `matches` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `scheduledTime` int(11) NOT NULL,
  `connectDetails` varchar(64) NOT NULL,
  `state` int(11) NOT NULL,
  `winner` int(11) NOT NULL,
  `compoId` int(11) NOT NULL,
  `bracketOffset` int(8) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;

-- --------------------------------------------------------

--
-- Table structure for table `memberof`
--

CREATE TABLE IF NOT EXISTS `memberof` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `clanId` int(11) NOT NULL,
  `stepin` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;

-- --------------------------------------------------------

--
-- Table structure for table `memberofchat`
--

CREATE TABLE IF NOT EXISTS `memberofchat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `chatId` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;

-- --------------------------------------------------------

--
-- Table structure for table `participantof`
--

CREATE TABLE IF NOT EXISTS `participantof` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `clanId` int(11) NOT NULL,
  `compoId` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;

-- --------------------------------------------------------

--
-- Table structure for table `participantofmatch`
--

CREATE TABLE IF NOT EXISTS `participantofmatch` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL,
  `participantId` int(11) NOT NULL,
  `matchId` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;

-- --------------------------------------------------------

--
-- Table structure for table `readyhandlers`
--

CREATE TABLE IF NOT EXISTS `readyhandlers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `compoId` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;

-- --------------------------------------------------------

--
-- Table structure for table `readyusers`
--

CREATE TABLE IF NOT EXISTS `readyusers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `matchId` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;

-- --------------------------------------------------------

--
-- Table structure for table `voteoptions`
--

CREATE TABLE IF NOT EXISTS `voteoptions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `compoId` int(11) NOT NULL,
  `thumbnailUrl` varchar(32) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;

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
(7, 3, 'csgo_maps/train', 'Train');

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

CREATE TABLE IF NOT EXISTS `votes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `consumerId` int(11) NOT NULL,
  `voteOptionId` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
