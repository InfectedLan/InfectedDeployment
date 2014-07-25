-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Vert: localhost
-- Generert den: 23. Jul, 2014 00:55 AM
-- Tjenerversjon: 5.5.38-0ubuntu0.14.04.1
-- PHP-Versjon: 5.5.9-1ubuntu4.3

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
  `id` int(11) NOT NULL,
  `x` int(11) NOT NULL,
  `y` int(11) NOT NULL,
  `row` int(11) NOT NULL,
  `seatmap` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `seats`
--

CREATE TABLE IF NOT EXISTS `seats` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Unique id',
  `section` int(11) NOT NULL COMMENT 'Id of section the seat is part of',
  `number` int(11) NOT NULL COMMENT 'Seat number relative to section',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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
-- Tabellstruktur for tabell `ticketTypes`
--

CREATE TABLE IF NOT EXISTS `ticketTypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `humanName` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

CREATE TABLE IF NOT EXISTS `seatmaps` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID of seatmap',
  `humanName` varchar(64) NOT NULL COMMENT 'Human name of seatmap',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;