-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 30. Jun, 2014 18:03 
-- Server-versjon: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `infecrjn_infected`
--

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `permissions`
--

CREATE TABLE IF NOT EXISTS `permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `value` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dataark for tabell `permissions`
--

INSERT INTO `permissions` (`id`, `userId`, `value`) VALUES
(1, 1, 'admin'),
(2, 2, 'admin');

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `resetcodes`
--

CREATE TABLE IF NOT EXISTS `resetcodes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(64) NOT NULL,
  `lastname` varchar(64) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(256) NOT NULL,
  `email` varchar(64) NOT NULL,
  `birthdate` date NOT NULL,
  `gender` tinyint(1) NOT NULL,
  `phone` int(8) NOT NULL,
  `address` varchar(64) NOT NULL,
  `postalCode` int(4) NOT NULL,
  `nickname` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dataark for tabell `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `password`, `email`, `birthdate`, `gender`, `phone`, `address`, `postalCode`, `nickname`) VALUES
(1, 'Halvor', 'Lyche Strandvoll', 'halvors', 'b4004f0aa8ee170259ce168a3c4a5af34aacb9e066c1845c229aa991479f29ce', 'halvors@halvors.org', '1995-01-17', 0, 97114646, 'Fiolveien 20', 1395, 'halvors'),
(2, 'Liam', 'Svanåsbakken Crouch', 'petterroea', 'b4004f0aa8ee170259ce168a3c4a5af34aacb9e066c1845c229aa991479f29ce', 'me@petterroea.com', '1998-04-27', 0, 94132789, 'Otto valstads vei 8e', 1395, 'petterroea');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
