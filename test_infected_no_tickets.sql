-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Vert: localhost
-- Generert den: 08. Aug, 2014 13:16 PM
-- Tjenerversjon: 5.5.38-0ubuntu0.14.04.1
-- PHP-Versjon: 5.5.9-1ubuntu4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `test_infected_no_tickets`
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `seatmaps`
--

CREATE TABLE IF NOT EXISTS `seatmaps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `humanName` varchar(64) NOT NULL,
  `backgroundImage` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `seats`
--

CREATE TABLE IF NOT EXISTS `seats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rowId` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `tickets`
--

CREATE TABLE IF NOT EXISTS `tickets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `eventId` int(11) NOT NULL,
  `ownerId` int(11) NOT NULL,
  `typeId` int(11) NOT NULL,
  `seatId` int(11) NOT NULL,
  `seaterId` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `tickettypes`
--

CREATE TABLE IF NOT EXISTS `tickettypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `humanName` varchar(32) NOT NULL,
  `price` int(11) NOT NULL,
  `internalName` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;

--
-- Dataark for tabell `tickettypes`
--

INSERT INTO `tickettypes` (`id`, `humanName`, `price`, `internalName`) VALUES
(1, 'Deltaker', 350, 'deltaker');

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
  `ticketType` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;

-- --------------------------------------------------------

--
-- Table structure for table `paymentlog`
--

CREATE TABLE IF NOT EXISTS `paymentlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `timeLogged` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `ticketType` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `totalPrice` int(11) NOT NULL,
  `transactionId` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;