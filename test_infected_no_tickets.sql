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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dataark for tabell `rows`
--

INSERT INTO `rows` (`id`, `x`, `y`, `row`, `seatmap`) VALUES
(1, 1, 1, 1, 1),
(2, 52, 1, 2, 1),
(5, 112, 3, 3, 1);

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `seatmaps`
--

CREATE TABLE IF NOT EXISTS `seatmaps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `humanName` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dataark for tabell `seatmaps`
--

INSERT INTO `seatmaps` (`id`, `humanName`) VALUES
(1, 'sweg');

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `seats`
--

CREATE TABLE IF NOT EXISTS `seats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rowId` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1028 ;

--
-- Dataark for tabell `seats`
--

INSERT INTO `seats` (`id`, `rowId`, `number`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 2, 1),
(5, 2, 2),
(13, 2, 3),
(14, 2, 4),
(15, 2, 5),
(16, 2, 6),
(17, 2, 7);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dataark for tabell `tickets`
--

INSERT INTO `tickets` (`id`, `eventId`, `ownerId`, `typeId`, `seatId`, `seaterId`) VALUES
(1, 3, 2, 1, 1, 1);

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `tickettypes`
--

CREATE TABLE IF NOT EXISTS `tickettypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `humanName` varchar(32) NOT NULL,
  `price` int(11) NOT NULL COMMENT 'Price of ticket',
  `internalName` varchar(64) NOT NULL COMMENT 'Internal name. F.ex "Infected 2014 ticket"',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dataark for tabell `tickettypes`
--

INSERT INTO `tickettypes` (`id`, `humanName`, `price`, `internalName`) VALUES
(1, 'Test', 1337, 'Testbilett');

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
  `key` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `paymentlog`
--

CREATE TABLE IF NOT EXISTS `paymentlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Unique ID of log entry',
  `timeLogged` int(11) NOT NULL,
  `itemName` varchar(32) NOT NULL,
  `itemNumber` varchar(64) NOT NULL,
  `paymentStatus` varchar(64) NOT NULL,
  `paymentAmount` varchar(64) NOT NULL,
  `paymentCurrency` varchar(64) NOT NULL,
  `txnId` varchar(64) NOT NULL,
  `receiverEmail` varchar(64) NOT NULL,
  `payerEmail` varchar(64) NOT NULL,
  `quantity` varchar(64) NOT NULL,
  `userId` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;