-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 05. Aug, 2014 09:41 
-- Server-versjon: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `infectedlan_tk_tickets`
--

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `rows`
--

CREATE TABLE IF NOT EXISTS `rows` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `x` int(11) NOT NULL,
  `y` int(11) NOT NULL,
  `row` int(11) NOT NULL,
  `seatmap` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dataark for tabell `rows`
--

INSERT INTO `rows` (`id`, `x`, `y`, `row`, `seatmap`) VALUES
(1, 1, 1, 1, 1),
(2, 54, 1, 2, 1),
(3, 108, 1, 3, 1);

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `seatmaps`
--

CREATE TABLE IF NOT EXISTS `seatmaps` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID of seatmap',
  `humanName` varchar(64) NOT NULL COMMENT 'Human name of seatmap',
  `backgroundImage` varchar(64) NOT NULL COMMENT 'File name of background image. Does not contain path',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dataark for tabell `seatmaps`
--

INSERT INTO `seatmaps` (`id`, `humanName`, `backgroundImage`) VALUES
(1, 'sweg', '');

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `seats`
--

CREATE TABLE IF NOT EXISTS `seats` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Unique id',
  `section` int(11) NOT NULL COMMENT 'Id of section the seat is part of',
  `number` int(11) NOT NULL COMMENT 'Seat number relative to section',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dataark for tabell `seats`
--

INSERT INTO `seats` (`id`, `section`, `number`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 2, 1),
(5, 2, 2),
(6, 2, 3),
(7, 2, 4),
(8, 2, 5),
(9, 3, 1),
(10, 3, 2),
(11, 3, 3),
(12, 3, 4),
(13, 3, 5),
(14, 3, 6),
(15, 3, 7),
(16, 3, 8),
(17, 3, 9),
(18, 3, 10);

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `tickets`
--

CREATE TABLE IF NOT EXISTS `tickets` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Unique id',
  `event` int(11) NOT NULL COMMENT 'Event id(See infecrjn_infected.events)',
  `owner` int(11) NOT NULL COMMENT 'ID of user who purchased',
  `type` int(11) NOT NULL COMMENT 'Ticket type. See infecrjn_tickets.types',
  `seat` int(11) NOT NULL COMMENT 'ID of seat the ticket is seated at',
  `user` int(11) NOT NULL,
  `seater` int(11) NOT NULL COMMENT 'ID of user who will be seating this ticket',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dataark for tabell `tickets`
--

INSERT INTO `tickets` (`id`, `event`, `owner`, `type`, `seat`, `user`, `seater`) VALUES
(1, 1, 2, 1, 1, 0, 1);

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `tickettypes`
--

CREATE TABLE IF NOT EXISTS `tickettypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `humanName` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;


--
-- Tabellstruktur for tabell `storesessions`
--

CREATE TABLE IF NOT EXISTS `storesessions` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `userId` int(12) NOT NULL,
  `timeCreated` int(12) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;